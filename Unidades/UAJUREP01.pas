unit UAJUREP01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, RpDefine, RpRave, DB, dxmdaset,
  RpBase, RpSystem, RpCon, RpConDS, RpRender, RpRenderPDF;

type
  TFREP01 = class(TForm)
    cbFechaIni: TcxDateEdit;
    lbl1: TLabel;
    Label1: TLabel;
    cbFechaFin: TcxDateEdit;
    chkDetallado: TCheckBox;
    btnAceptar: TButton;
    btnCancelar: TButton;
    rvp1: TRvProject;
    RvSystem1x: TRvSystem;
    mem1: TdxMemData;
    mem1Combustible: TSmallintField;
    mem1Salidas: TCurrencyField;
    mem1Ajuste: TCurrencyField;
    mem1Diferencia: TCurrencyField;
    mem1Importe: TCurrencyField;
    RvDataSetConnection1: TRvDataSetConnection;
    mem1Precio: TCurrencyField;
    mem1Corte: TSmallintField;
    mem1SF: TStringField;
    mem1Fecha: TDateTimeField;
    mem1MenRendimiento: TCurrencyField;
    mem1NombreCMB: TStringField;
    memTotales: TdxMemData;
    MemTotalesCombustible: TSmallintField;
    MemTotalesSalidas: TCurrencyField;
    MemTotalesAjuste: TCurrencyField;
    MemTotalesDiferencia: TCurrencyField;
    MemTotalesImporte: TCurrencyField;
    MemTotalesPrecio: TCurrencyField;
    MemTotalesCorte: TSmallintField;
    MemTotalesSF: TStringField;
    MemTotalesFecha: TDateTimeField;
    MemTotalesRendimiento: TCurrencyField;
    MemTotalesNombreCMB: TStringField;
    RvDataSetConnection2: TRvDataSetConnection;
    mem1InvInical: TCurrencyField;
    mem1InvFinal: TCurrencyField;
    mem1SalidaTque: TCurrencyField;
    mem1Entradas: TCurrencyField;
    memTotalesInvInical: TCurrencyField;
    memTotalesInvFinal: TCurrencyField;
    memTotalesEntradas: TCurrencyField;
    memTotalesSalidaTque: TCurrencyField;
    mem1Jarreos: TStringField;
    memTotalesVentas: TStringField;
    mem1Ventas: TCurrencyField;
    memTotalesJarreos: TCurrencyField;
    CheckBox1: TCheckBox;
    mem1porPemx: TCurrencyField;
    memTotalesporPemx: TCurrencyField;
    mem1InvFisico: TFloatField;
    memTotalesInvFisico: TFloatField;
    RvRenderPDF1: TRvRenderPDF;
    RvSystem1: TRvSystem;
    procedure btnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }

    function dame_precio_combustible(AFechaIni,AFechaFin:TDateTime;Combustible:Byte):Real;
    function hay_combustible(combustible:shortint):boolean;
    function dame_inventario_inicial(Fecha:TDateTime;Corte,Combustible:Byte):Currency;
    function dame_inventario_final(Fecha:TDateTime;Corte,Combustible:Byte):Currency;
  public
    { Public declarations }
    procedure rep01(FechaIni,FechaFin:TDateTime; pRuta: string);
  end;

var
  FREP01: TFREP01;

implementation

uses UAJUMENU, FIBQuery, ServerController;

{$R *.dfm}

{ TFREP01 }

procedure TFREP01.rep01(FechaIni, FechaFin: TDateTime; pRuta: string);
var
  Q_Historia:TADIQuery;
  i:byte;
  FechaTmp:TDateTime;
  SalidasTanqueFisico:Real;
  LFile: string;
begin
  try
  RvSystem1.DoNativeOutput := false;
  RvSystem1.RenderObject := RvRenderPDF1;

  //Protect the PDF-File by wrting it to a non-guessable session directory
  //CleanUp is done in ServerController's OnClose event - having a subdir for each
  //session simplifies cleanup


    RvSystem1.OutputFileName := pRuta;

    ForceDirectories(ExtractFileDir(RvSystem1.OutputFileName));

    mem1.Close;
    mem1.Open;

    memTotales.Close;
    memTotales.Open;

    if chkDetallado.Checked then begin
       Q_Historia := TADIQuery.Create('SELECT * FROM HISTORIA WHERE FECHA>=:FECHAINI AND FECHA<=:FECHAFIN ORDER BY FECHA,CORTE,COMBUSTIBLE');
       Q_Historia.Params[0].AsDateTime := FechaIni;
       Q_Historia.Params[1].AsDateTime := FechaFin;
       Q_Historia.ExecQuery;

       while not Q_Historia.Eof do begin
         mem1.Insert;
         mem1Combustible.AsInteger := Q_Historia.FieldByName('COMBUSTIBLE').AsInteger;
         mem1Salidas.AsCurrency    := Q_Historia.FieldByName('SALIDAS').AsCurrency;
         mem1Ajuste.AsCurrency     := Q_Historia.FieldByName('AJUSTE').AsCurrency;
         mem1Diferencia.AsCurrency := Q_Historia.FieldByName('DIFERENCIA').AsCurrency;
         mem1Precio.AsCurrency     := dame_precio_combustible(FechaIni,FechaFin,Q_Historia.FieldByName('COMBUSTIBLE').AsInteger);
         mem1Importe.AsCurrency    := mem1Ajuste.AsCurrency * mem1Precio.AsCurrency;
         mem1Corte.AsInteger       := Q_Historia.FieldByName('CORTE').AsInteger;
         mem1.Post;
         Q_Historia.Next;
       end;

      {if CheckBox1.Checked then
         rvp1.SetParam('Enca',FAJUMENU.lblEstacion.Caption+'  Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin))
      else
         rvp1.SetParam( 'Enca','Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin));   }
      rvp1.SetParam('Enca',UserSession.Estacion+'  Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin));
      rvp1.ExecuteReport('Report2');

    end
    else begin
//      if CheckBox1.Checked then begin
//         rvp1.SetParam('Enca',FAJUMENU.lblEstacion.Caption+'  Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin))
//      end
//      else begin
//         rvp1.SetParam( 'Enca','Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin));
//      end;

    FechaTmp := FechaIni;
    while FechaIni<=FechaFin do begin
      for i:=1 to 3 do begin
        if not hay_combustible(i) then
         Continue;

        Q_Historia := TADIQuery.Create('SELECT SUM(SALIDAS) AS SALIDAS, SUM(AJUSTE) AS AJUSTE,SUM(DIFERENCIA) AS DIFERENCIA, SUM(ENTRADAS_TANQUE) AS ENTRADAS, '+
                                       'SUM(JARREOS) AS JARREOS, SUM(INVFISICO) AS INVFISICO FROM HISTORIA WHERE FECHA>=:FECHAINI AND FECHA<=:FECHAFIN AND COMBUSTIBLE=:COMBUSTIBLE');
        Q_Historia.Params[0].AsDateTime := FechaIni;
        Q_Historia.Params[1].AsDateTime := FechaIni;
        Q_Historia.Params[2].AsShort    := i;
        Q_Historia.ExecQuery;

        mem1.Append;
        mem1Combustible.AsInteger := i;
        mem1Jarreos.AsCurrency    := Q_Historia.FieldByName('JARREOS').AsCurrency;
        mem1Salidas.AsCurrency    := Q_Historia.FieldByName('SALIDAS').AsCurrency;
        mem1Ventas.AsCurrency     := mem1Salidas.AsCurrency - mem1Jarreos.AsCurrency;
        mem1Ajuste.AsCurrency     := Q_Historia.FieldByName('AJUSTE').AsCurrency;
        mem1Diferencia.AsCurrency := Q_Historia.FieldByName('DIFERENCIA').AsCurrency;
        mem1Precio.AsCurrency     := dame_precio_combustible(FechaIni,FechaFin,i);
        mem1Importe.AsCurrency    := mem1Ajuste.AsCurrency * mem1Precio.AsCurrency;
        mem1InvInical.AsCurrency  := dame_inventario_inicial(FechaIni,1,i);
        mem1InvFinal.AsCurrency   := dame_inventario_final(FechaIni,maximo_turno(FechaIni,i),i);
        mem1Entradas.AsCurrency   := Q_Historia.FieldByName('ENTRADAS').AsCurrency;
        mem1SalidaTque.AsCurrency := (mem1InvInical.AsCurrency + mem1Entradas.AsCurrency) - mem1InvFinal.AsCurrency;
        mem1InvFisico.AsFloat     := Q_Historia.FieldByName('INVFISICO').AsFloat;

        if mem1SalidaTque.AsCurrency<>0 then
          try
             SalidasTanqueFisico := ((mem1InvInical.AsCurrency + mem1InvFisico.AsCurrency) - mem1InvFinal.AsCurrency);
             mem1porPemx.AsCurrency    := ((mem1Diferencia.AsFloat-SalidasTanqueFisico)/SalidasTanqueFisico)*100;
          except
             mem1porPemx.AsCurrency := 0;
          end
        else
          mem1porPemx.AsCurrency := 0;


        mem1Fecha.AsDateTime      := FechaIni;

        case i of

          1:mem1NombreCMB.AsString := 'Magna';
          2:mem1NombreCMB.AsString := 'Premium'
          else
            mem1NombreCMB.AsString := 'Diesel';
        end;

        if mem1Salidas.AsCurrency > 0 then
           mem1MenRendimiento.AsCurrency := (mem1Ajuste.AsCurrency/mem1Ventas.AsCurrency) * 100
        else
           mem1MenRendimiento.AsCurrency := 0;
        Mem1SF.AsString           := FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;


        mem1.Post;


        if memTotales.Locate('Combustible',VarArrayOf([i]),[]) then begin

          MemTotales.Edit;
          MemTotalesSalidas.AsCurrency    := MemTotalesSalidas.AsCurrency + Q_Historia.FieldByName('SALIDAS').AsCurrency;
          memTotalesJarreos.AsCurrency    := memTotalesJarreos.AsCurrency + Q_Historia.FieldByName('JARREOS').AsCurrency;
          MemTotalesAjuste.AsCurrency     := MemTotalesAjuste.AsCurrency + Q_Historia.FieldByName('AJUSTE').AsCurrency;
          MemTotalesDiferencia.AsCurrency := MemTotalesDiferencia.AsCurrency + Q_Historia.FieldByName('DIFERENCIA').AsCurrency;
          MemTotalesImporte.AsCurrency    := MemTotalesImporte.AsCurrency + (MemTotalesAjuste.AsCurrency * MemTotalesPrecio.AsCurrency);
          MemTotalesFecha.AsDateTime      := FechaIni;
          MemTotalesEntradas.AsCurrency   := memTotalesEntradas.AsCurrency + mem1Entradas.AsCurrency;
          memTotalesVentas.AsCurrency     := (MemTotalesSalidas.AsCurrency - memTotalesJarreos.AsCurrency);
          memTotalesporPemx.AsCurrency    := ((memTotalesVentas.AsCurrency-memTotalesSalidaTque.AsCurrency)/memTotalesSalidaTque.AsCurrency)*100;

          memTotalesInvInical.AsCurrency  := memTotalesInvInical.AsCurrency + mem1InvInical.AsCurrency;
          memTotalesInvFinal.AsCurrency   := memTotalesInvFinal.AsCurrency + mem1InvFinal.AsCurrency;
          memTotalesInvFisico.AsFloat     := memTotalesInvFisico.AsFloat + mem1InvFisico.AsFloat;


          if MemTotalesSalidas.AsCurrency > 0 then
             MemTotalesRendimiento.AsCurrency := (MemTotalesAjuste.AsCurrency/memTotalesVentas.AsCurrency) * 100
          else
             MemTotalesRendimiento.AsCurrency := 0;
            MemTotalesSF.AsString:= FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;

          MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + MemTotalesEntradas.AsCurrency) - MemTotalesInvFinal.AsCurrency;

          memTotales.Post;
        end
        else begin
          MemTotales.Append;
          MemTotalesCombustible.AsInteger := i;
          memTotalesJarreos.AsCurrency    := Q_Historia.FieldByName('JARREOS').AsCurrency;
          MemTotalesSalidas.AsCurrency    := Q_Historia.FieldByName('SALIDAS').AsCurrency;
          MemTotalesAjuste.AsCurrency     := Q_Historia.FieldByName('AJUSTE').AsCurrency;
          MemTotalesDiferencia.AsCurrency := Q_Historia.FieldByName('DIFERENCIA').AsCurrency;
          MemTotalesPrecio.AsCurrency     := dame_precio_combustible(FechaIni,FechaFin,i);
          MemTotalesImporte.AsCurrency    := (MemTotalesAjuste.AsCurrency * MemTotalesPrecio.AsCurrency);
          MemTotalesFecha.AsDateTime      := FechaIni;
          memTotalesInvInical.AsCurrency  := mem1InvInical.AsCurrency;
          memTotalesEntradas.AsCurrency   := mem1Entradas.AsCurrency;
          memTotalesVentas.AsCurrency     := (MemTotalesSalidas.AsCurrency - memTotalesJarreos.AsCurrency);
          memTotalesInvFisico.AsFloat     := mem1InvFisico.AsFloat;


          case i of
            1:MemTotalesNombreCMB.AsString := 'Magna';
            2:MemTotalesNombreCMB.AsString := 'Premium'
            else
              MemTotalesNombreCMB.AsString := 'Diesel';
          end;


          memTotalesInvFinal.AsCurrency := mem1InvFinal.AsCurrency;

          if MemTotalesSalidas.AsCurrency > 0 then
             MemTotalesRendimiento.AsCurrency := (MemTotalesAjuste.AsCurrency/memTotalesVentas.AsCurrency) * 100
          else
             MemTotalesRendimiento.AsCurrency := 0;
          MemTotalesSF.AsString:= FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;

          MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + MemTotalesEntradas.AsCurrency) - MemTotalesInvFinal.AsCurrency;

        if mem1SalidaTque.AsCurrency<>0 then
          try
             SalidasTanqueFisico := ((mem1InvInical.AsCurrency + mem1InvFisico.AsCurrency) - mem1InvFinal.AsCurrency);
             memTotalesporPemx.AsCurrency    := ((mem1Diferencia.AsFloat-SalidasTanqueFisico)/SalidasTanqueFisico)*100;
          except
             memTotalesporPemx.AsCurrency := 0;
          end

        else
          memTotalesporPemx.AsCurrency := 0;
          memTotales.Post;
        end;
      end;
      FechaIni := FechaIni + 1;
     end;
      rvp1.ExecuteReport('Report1');
   end;
   memTotales.SaveToTextFile('c:\repx.txt');
  finally
    Q_Historia.Free;
  end;
end;

procedure TFREP01.btnAceptarClick(Sender: TObject);
begin
{  RvSystem1.DoNativeOutput := false;
  RvSystem1.RenderObject := RvRenderPDF1;

  //Protect the PDF-File by wrting it to a non-guessable session directory
  //CleanUp is done in ServerController's OnClose event - having a subdir for each
  //session simplifies cleanup
  RvSystem1.OutputFileName :=  'c:\rep.pdf';  }

end;

procedure TFREP01.FormCreate(Sender: TObject);
begin
//   cbFechaIni.Date := Date;
 //  cbFechaFin.Date := Date;
end;

procedure TFREP01.btnCancelarClick(Sender: TObject);
begin
   Close;
end;

function TFREP01.dame_precio_combustible(AFechaIni,AFechaFin: TDateTime;Combustible:Byte): Real;
var
  Q_Claves:TADIQuery;
begin
  try
    Q_Claves:=TADIQuery.Create('SELECT FIRST 1 PRECIO FROM CLAVES WHERE FECHA>=:FECHAINI AND FECHA<=:FECHAFIN AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Claves.Params[0].AsDateTime := AFechaIni;
    Q_Claves.Params[1].AsDateTime := AFechaFin;
    Q_Claves.Params[2].AsShort    := Combustible;
    Q_Claves.ExecQuery;

    Result := Q_Claves.Fields[0].AsFloat;
  finally
    Q_Claves.Free;
  end;

end;

function TFREP01.hay_combustible(combustible: shortint): boolean;
var
  Q_BomQuery:TPANQuery;
begin
  try
    Q_BomQuery := TPANQuery.Create('SELECT COUNT(*) FROM DPVGBOMB WHERE COMBUSTIBLE=:COMBUSTIBLE');
    Q_BomQuery.Params[0].AsShort := combustible;
    Q_BomQuery.ExecQuery;

    Result := Q_BomQuery.Fields[0].AsInteger > 0;
  finally
    Q_BomQuery.Free;
  end;
end;

function TFREP01.dame_inventario_inicial(Fecha: TDateTime; Corte,Combustible: Byte): Currency;
var
  Q_Historia:TADIQuery;
begin
 try
   Q_Historia := TADIQuery.Create('SELECT INVINICIAL_TANQUE  FROM HISTORIA WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE');
   Q_Historia.Params[0].AsDateTime := Fecha;
   Q_Historia.Params[1].AsShort := Corte;
   Q_Historia.Params[2].AsShort := Combustible;
   Q_Historia.ExecQuery;

   if Q_Historia.RowsAffected > 0 then
     Result := Q_Historia.Fields[0].AsCurrency;
 finally
   Q_Historia.Free;
 end;
end;

function TFREP01.dame_inventario_final(Fecha: TDateTime; Corte,
  Combustible: Byte): Currency;
var
  Q_Historia:TADIQuery;
begin
 try
   Q_Historia := TADIQuery.Create('SELECT INVFINAL_TANQUE  FROM HISTORIA WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE');
   Q_Historia.Params[0].AsDateTime := Fecha;
   Q_Historia.Params[1].AsShort := Corte;
   Q_Historia.Params[2].AsShort := Combustible;
   Q_Historia.ExecQuery;

   if Q_Historia.RowsAffected > 0 then
     Result := Q_Historia.Fields[0].AsCurrency;
 finally
   Q_Historia.Free;
 end;

end;

end.
