unit UREP02a24;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar,UAJUMENU, RpDefine, RpRave,
  RpBase, RpSystem, RpRender, RpRenderPDF, cxSpinEdit, JvDataEmbedded;

type
  TFRep02a24 = class(TForm)
    lbl1: TLabel;
    cbFechaIni: TcxDateEdit;
    Label1: TLabel;
    btnCancelar: TButton;
    btnAceptar: TButton;
    CheckBox1: TCheckBox;
    cbFechaFin: TcxDateEdit;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    edtFechaIni: TcxDateEdit;
    edtTurno: TcxSpinEdit;
    rsTickets: TJvDataEmbedded;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
  private
    { Private declarations }

    procedure ventas_antes(FechaIni,FechaFin:TDateTime;ACombustible: SmallInt; var AVolumen: Real; var AImporte: Real);
    procedure ventas_despues(FechaIni,FechaFin:TDateTime;ACombustible: SmallInt; var AVolumen: Real; var AImporte: Real);
    procedure GeneraRep02;
  public
    { Public declarations }
    Ruta: string;
  end;

var
  FRep02a24: TFRep02a24;

implementation

uses DateUtils, Math;

{$R *.dfm}

procedure TFRep02a24.FormCreate(Sender: TObject);
begin
  if not FileExists(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Rep02Aju.rav') then
    rsTickets.DataSaveToFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Rep02Aju.rav');
  RvProject1.ProjectFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Rep02Aju.rav';
  cbFechaIni.Date  := Yesterday + EncodeTime(0,0,0,0);
  cbFechaFin.Date  := Date + EncodeTime(0,0,0,0);
  edtFechaIni.Date := Yesterday;
end;

procedure TFRep02a24.ventas_antes(FechaIni,FechaFin:TDateTime;ACombustible: SmallInt; var AVolumen: Real; var AImporte: Real);
var
 Q_Movi: TPANQuery;
 Q_Aju: TADIQuery;
 VolumenTmp,ImporteTmp, VolumenTmp2,ImporteTmp2: Real;
begin
  try
    Q_Movi := TPANQuery.Create('SELECT SUM(VOLUMEN) AS VOLUMEN, SUM(IMPORTE) AS IMPORTE FROM DPVGMOVI WHERE HORA>=:HORA1 AND HORA<=:HORA2 AND COMBUSTIBLE=:COMBUSTIBLE AND TAG=0');
    Q_Movi.Params[0].AsDateTime := FechaIni;
    Q_Movi.Params[1].AsDateTime := FechaFin;
    Q_Movi.Params[2].AsShort := ACombustible;
    Q_Movi.ExecQuery;

    VolumenTmp := Q_Movi.FN('VOLUMEN').AsFloat;
    ImporteTmp := Q_Movi.FN('IMPORTE').AsFloat;

  finally
    Q_Movi.Free;
  end;

  try
    Q_Movi := TPANQuery.Create('SELECT FOLIO FROM DPVGMOVI WHERE HORA>=:HORA1 AND HORA<=:HORA2 AND COMBUSTIBLE=:COMBUSTIBLE AND TAG=1');
    Q_Movi.Params[0].AsDateTime := FechaIni;
    Q_Movi.Params[1].AsDateTime := FechaFin;
    Q_Movi.Params[2].AsShort := ACombustible;
    Q_Movi.ExecQuery;

    Q_Aju := TADIQuery.Create('SELECT VOLUMEN1,IMPORTE FROM CLAVES WHERE FOLIO=:FOLIO');


    VolumenTmp2 := 0;
    ImporteTmp2 := 0;

    while not Q_Movi.Eof do begin
      Q_Aju.Close;
      Q_Aju.Params[0].AsInteger := Q_Movi.FN('FOLIO').AsInteger;
      Q_Aju.ExecQuery;

      if Q_Aju.RowsAffected > 0 then begin
        VolumenTmp2 := VolumenTmp2 + Q_Aju.FN('VOLUMEN1').AsFloat;
        ImporteTmp2 := ImporteTmp2 + Q_Aju.FN('IMPORTE').AsFloat;
      end;


      Q_Movi.Next;
    end;

    AVolumen := VolumenTmp + VolumenTmp2;
    AImporte := ImporteTmp + ImporteTmp2;

  finally
    Q_Movi.Free;
    Q_Aju.Free;
  end;

end;

procedure TFRep02a24.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFRep02a24.ventas_despues(FechaIni, FechaFin: TDateTime;
  ACombustible: SmallInt; var AVolumen, AImporte: Real);
var
 Q_Movi: TPANQuery;
begin
  try
    Q_Movi := TPANQuery.Create('SELECT SUM(VOLUMEN) AS VOLUMEN, SUM(IMPORTE) AS IMPORTE FROM DPVGMOVI WHERE HORA>=:HORA1 AND HORA<=:HORA2 AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Movi.Params[0].AsDateTime := FechaIni;
    Q_Movi.Params[1].AsDateTime := FechaFin;
    Q_Movi.Params[2].AsShort := ACombustible;
    Q_Movi.ExecQuery;

    AVolumen := Q_Movi.FN('VOLUMEN').AsFloat;
    AImporte := Q_Movi.FN('IMPORTE').AsFloat;

  finally
    Q_Movi.Free;
  end;

end;

procedure TFRep02a24.btnAceptarClick(Sender: TObject);
var
  i:Byte;
  volumen1,Importe1: Real;
  volumen2,Importe2: Real;
begin
  GeneraRep02;
  exit;
 // RvSystem1.DoNativeOutput := false;
//  RvSystem1.RenderObject := RvRenderPDF1;

  //Protect the PDF-File by wrting it to a non-guessable session directory
  //CleanUp is done in ServerController's OnClose event - having a subdir for each
  //session simplifies cleanup


//  RvSystem1.OutputFileName := Ruta;


  RvProject1.SetParam('Empresa', '');

  RvProject1.SetParam('FechaHoraIni',FormatDateTime('dddddd HH:mm',cbFechaIni.Date));
  RvProject1.SetParam('FechaHoraFin',FormatDateTime('dddddd HH:mm',cbFechaFin.Date));

  for i:=1 to 3 do begin
     ventas_antes(cbFechaIni.Date,cbFechaFin.Date,i,volumen1,Importe1);
     ventas_despues(cbFechaIni.Date,cbFechaFin.Date,i,volumen2,Importe2);

     case i of
       1: begin
            RvProject1.SetParam('volMagAntes',FormatFloat('##,#0.00',volumen1));
            RvProject1.SetParam('volMagDespues',FormatFloat('##,#0.00',volumen2));
            RvProject1.SetParam('volMagDif',FormatFloat('##,#0.00',volumen1-volumen2));
            RvProject1.SetParam('impMagAntes',FormatFloat('##,#0.00',Importe1));
            RvProject1.SetParam('impMagDespues',FormatFloat('##,#0.00',Importe2));
            RvProject1.SetParam('impMagDif',FormatFloat('##,#0.00',importe1-Importe2));
          end;
       2: begin
            RvProject1.SetParam('volPreAntes',FormatFloat('##,#0.00',volumen1));
            RvProject1.SetParam('volPreDespues',FormatFloat('##,#0.00',volumen2));
            RvProject1.SetParam('volPreDif',FormatFloat('##,#0.00',volumen1-volumen2));
            RvProject1.SetParam('impPreAntes',FormatFloat('##,#0.00',Importe1));
            RvProject1.SetParam('impPreDespues',FormatFloat('##,#0.00',Importe2));
            RvProject1.SetParam('impPreDif',FormatFloat('##,#0.00',importe1-Importe2));
          end;
       3: begin
            RvProject1.SetParam('volDieAntes',FormatFloat('##,#0.00',volumen1));
            RvProject1.SetParam('volDieDespues',FormatFloat('##,#0.00',volumen2));
            RvProject1.SetParam('volDieDif',FormatFloat('##,#0.00',volumen1-volumen2));
            RvProject1.SetParam('impDieAntes',FormatFloat('##,#0.00',Importe1));
            RvProject1.SetParam('impDieDespues',FormatFloat('##,#0.00',Importe2));
            RvProject1.SetParam('impDieDif',FormatFloat('##,#0.00',importe1-Importe2));
          end;
     end;
  end;
  RvProject1.Execute;
end;

function GetPrecioCumbustible(const ACombustible: Integer): Double;
var
  Q_Claves: TADIQuery;
begin
  try
    Q_Claves := TADIQuery.Create('SELECT PRECIO FROM CLAVES WHERE COMBUSTIBLE = :COMBUSTIBLE ORDER BY FECHA DESC ROWS 1');
    Q_Claves.ParamByName('COMBUSTIBLE').AsInteger := ACombustible;
    Q_Claves.ExecQuery;

    if (Q_Claves.RowsAffected > 0) then
      Result := Q_Claves.FN('PRECIO').AsDouble
    else
      Result := 0;
  finally
    Q_Claves.Free;
  end;
end;

function ObtenerAjusteAdmin(AFecha: TDateTime; ACombustible: Integer): Double;
var
  Q_Claves: TADIQuery;
begin
  try
    Q_Claves := TADIQuery.Create('SELECT SUM(VOLUMEN1 - VOLUMEN2) AS AJUSTE FROM CLAVES WHERE FECHA=:FECHA AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Claves.ParamByName('FECHA').AsDateTime := AFecha;
    Q_Claves.ParamByName('COMBUSTIBLE').AsInteger := ACombustible;
    Q_Claves.ExecQuery;

    Result := Q_Claves.Fields[0].AsDouble;

  finally
     Q_Claves.Free;
  end;
end;

procedure TFRep02a24.GeneraRep02;
var
  Q_Rep: TADIQuery;
  i: Integer;
  pVolumen, pPrecio, pImporte: Double;
  pTotVolumen,pTotImporte: Double;
begin
  RvProject1.SetParam('Empresa',FAJUMENU.lblEstacion.Caption);
//  RvProject1.SetParam('Empresa', '');

  RvProject1.SetParam('FechaHoraIni',FormatDateTime('dddddd HH:mm', edtFechaIni.Date));
  RvProject1.SetParam('FechaHoraFin', '');

  pTotVolumen:=0;
  pTotImporte:=0;

  for i := 1 to 3 do begin

    pPrecio := GetPrecioCumbustible(i);

    try
      //Q_Rep :=  TADIQuery.Create('SELECT * FROM DAME_AJUSTE_ADMIN_GLOBAL24(:FECHA, :COMBUSTIBLE)');
      //Q_Rep.ParamByName('FECHA').AsDateTime       := edtFechaIni.Date;
      //Q_Rep.ParamByName('COMBUSTIBLE').AsInteger  := i;
      //Q_Rep.ExecQuery;

      pVolumen := ObtenerAjusteAdmin(edtFechaIni.Date, i);
      pImporte := RoundTo(pVolumen * pPrecio,  -2);

      case i of
        1: begin
          RvProject1.SetParam('volMagAntes',FormatFloat('##,#0.00', pVolumen));
          RvProject1.SetParam('volMagDespues',FormatFloat('##,#0.00', pImporte));
        end;
        2: begin
          RvProject1.SetParam('volPreAntes',FormatFloat('##,#0.00', pVolumen));
          RvProject1.SetParam('volPreDespues',FormatFloat('##,#0.00', pImporte));
        end;
        3: begin
          RvProject1.SetParam('volDieAntes',FormatFloat('##,#0.00', pVolumen));
          RvProject1.SetParam('volDieDespues',FormatFloat('##,#0.00', pImporte));
        end;
      end;
      pTotVolumen:=pTotVolumen+pVolumen;
      pTotImporte:=pTotImporte+pImporte;
    finally
      //Q_Rep.Free;
    end;

  end;

  RvProject1.SetParam('TVolAntes',FormatFloat('##,#0.00', pTotVolumen));
  RvProject1.SetParam('TVolDesp', FormatFloat('##,#0.00', pTotImporte));

  RvProject1.Execute;

end;

end.
