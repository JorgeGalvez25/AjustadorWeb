unit UAJUMENU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FIBDatabase, pFIBDatabase,UAJUCLASS, DB, dxmdaset, Grids,
  DBGrids, FIBDataSet, pFIBDataSet, StdCtrls, FIBQuery, pFIBQuery,
  SIBEABase, SIBFIBEA, cxCurrencyEdit, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, ComCtrls, Menus,
  VrControls, VrSystem, HTMLText, ExtCtrls,UFIBCLASS,UPANPASS, Buttons,
  XPMan, cxSpinEdit, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, UFIBCLASS2;

type
  TFAJUMENU = class(TForm)
    Mem_Tanques: TdxMemData;
    Mem_TanquesTanque: TSmallintField;
    Mem_TanquesCombustible: TSmallintField;
    Mem_TanquesEntradas: TFloatField;
    Mem_TanquesInvInivial: TFloatField;
    Mem_TanquesInvFinal: TFloatField;
    Mem_TanquesSalidas: TFloatField;
    Button1: TButton;
    pFIBDatabase1: TpFIBDatabase;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DataSource2: TDataSource;
    Mem_Aju: TdxMemData;
    Mem_AjuCombustible: TIntegerField;
    Mem_AjuSalida_Tanque: TFloatField;
    Mem_AjuVentas_Dif: TFloatField;
    Mem_AjuPor_Dif: TFloatField;
    Mem_AjuPor_Aju: TFloatField;
    Mem_AjuFolios: TIntegerField;
    Mem_AjuMax_Aju: TFloatField;
    Mem_AjuAjuste_Real: TStringField;
    Mem_AjuVentas: TFloatField;
    Mem_AjuAjuste_Propuesto: TFloatField;
    Mem_AjuOK: TIntegerField;
    DataSource3: TDataSource;
    Mem_Datos: TdxMemData;
    Mem_DatosFolio: TIntegerField;
    Mem_DatosVolumen: TFloatField;
    Mem_DatosImporte: TFloatField;
    Mem_DatosCombustible: TIntegerField;
    DataSource4: TDataSource;
    Mem_DatosAjuste: TStringField;
    Mem_DatosPrecio: TStringField;
    DBAju: TpFIBDatabase;
    Mem_Datostag: TSmallintField;
    Button2: TButton;
    cxDateEdit1: TcxDateEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    dsFechas: TDataSource;
    pm1: TPopupMenu;
    RollBack1: TMenuItem;
    pm2: TPopupMenu;
    Ajustar1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Button3: TButton;
    N1: TMenuItem;
    Consultadetransacciones1: TMenuItem;
    VrTrayIcon1: TVrTrayIcon;
    mmo1: TMemo;
    chk1: TCheckBox;
    lbl1: TLabel;
    tmr1: TTimer;
    pm3: TPopupMenu;
    Ocultar1: TMenuItem;
    ConsultadeAjustes1: TMenuItem;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    Mem_DatosDatosAju: TFloatField;
    lblEstacion: TLabel;
    btn4: TBitBtn;
    Mem_TanquesInvVeeDeer: TFloatField;
    Mem_AjuInvVeeder: TFloatField;
    pb1: TProgressBar;
    lbl2: TLabel;
    XPManifest1: TXPManifest;
    Button4: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxSpinEdit1: TcxSpinEdit;
    memFechas: TdxMemData;
    memFechasFecha: TDateField;
    memFechasCorte: TIntegerField;
    memFechasEstatus: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    ds1: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    memCortes: TdxMemData;
    memCortesFecha: TDateField;
    memCortesCorte: TIntegerField;
    memCortesFechaHoraFinal: TDateTimeField;
    memCortesFechaHoraInicial: TDateTimeField;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    ds2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure SIBfibEventAlerter1EventAlert(Sender: TObject;
      EventName: String; EventCount: Integer);
    procedure Button2Click(Sender: TObject);
    procedure RollBack1Click(Sender: TObject);
    procedure pm2Popup(Sender: TObject);
    procedure Ajustar1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Consultadetransacciones1Click(Sender: TObject);
    procedure VrTrayIcon1DblClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure Ocultar1Click(Sender: TObject);
    procedure ConsultadeAjustes1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btn4Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
    procedure monitorea_cortes;
  public
    { Public declarations }
    procedure refresca_tabla_cortes;
  end;

 TADIQuery=class(TIMGQuery)
    public
      Constructor Create(SQL:String); overload;
 end;

 TPANQuery=class(TIMGQuery)
    public
      Constructor Create(SQL:String); overload;
 end;


var
  FAJUMENU: TFAJUMENU;
  DB:TFIBDatabase;
  PORCENTAJE,PORCENTAJEP,PORCENTAJED,TOPEM,TOPEP,TOPED,MINIMOTICKET:real;
  fechax:TDateTime;
  cortex,MODOAJUSTE,TIPOTAG:Integer;
  CLAVEAUTOR,BORRARLECTURAS:string;
  LitrosAju:Real;
  Ajuste:Integer = 10;
  ES_AUTOMATICO:Boolean;
  TOPE_MAXIMO:Currency;
  DIF_MAXIMA:Real;
  INCLUIR_VENTAS_DESCARGA,USARTABLAMERMAS:String;
  InvInicial,InvFinal,Entradas:Currency;
  es_manual:boolean = false;
  puede_cerrar:boolean = false;
  alcanzan:Boolean = false;
  SIFONM,SIFONP,SIFOND:Real;



procedure Carga_Conf;
procedure analisis_inicial(fecha,fechahora:TDateTime;Corte:Byte);
procedure llena_datos(fecha:TDateTime;turno,combustible:byte);
procedure selecciona_transacciones(combustible:byte;meta:real);
procedure aplica_cambios;
procedure refresca_tabla_fechas;
procedure completa_historico(Fecha:TDateTime;corte,combustible:Integer;Acumulado:Real);
procedure actualiza_corte(Fecha:TDateTime;Corte:SmallInt;rb:Boolean=false);
procedure borra_ajuste_de_historia(fecha:TDateTime;Corte:Integer);
procedure llena_porcentajes(Fecha:TDateTime;Corte:SmallInt);
procedure set_ajuste(fecha:TDateTime;Corte,Combustible:ShortInt;cantidad:Real);
procedure borra_lecturas(AFecha: TDateTime);
//procedure graba_fecha(D);

function medicion_tanque_turno_anterior(corte:byte;tanque:string;fecha_completa:TDateTime):real;
function recepcion_tanque_turno(fecha:TDateTime;corte:byte;tanque,combustible:byte;var entradaveeder:Real):real;
function ventas_turno(fecha:TDateTime;turno,combustible:byte):real ;
function alcanza_litros(fecha:TDateTime;corte,combustible:Integer;meta,minimo:Real):boolean;
function existe_corte(fecha:TDateTime;Corte:Integer):boolean;
function dame_meta_metodo_3(Combustible:SmallInt;Fecha:TDateTime;Corte:SmallInt;Tope:Currency):Currency;
function dame_inv_inicial_combustible(combustible:shortint):Currency;
function jarreos_turno(Fecha:TDateTime;Corte,Combustible:Byte):Currency;
function hay_combustible(combustible:shortint):boolean;
function maximo_turno(fecha:TDateTime;Combustible:ShortInt):ShortInt;
function corte_valido(AFecha:TDateTime;ACorte:ShortInt):Boolean;
function dame_maximo_turno_tanques(AFecha:TDateTime):Integer;
function dame_merma(AEntrada:Real;Combustible: ShortInt):Real; forward;
function numero_de_entradas(AFecha:TDateTime;ACombustible:ShortInt):ShortInt;
function dame_entradas_combustible(ACorte,ACombustible: Integer;AFecha: TDateTime):Real;


implementation


Uses
    INIFILES, UINIAJU, UAJUCONS, StrUtils, UAJUCONS2,ULibLicencias,
  UAJUREP01, UREP02I;

{$R *.dfm}


procedure borra_lecturas(AFecha: TDateTime);
var
  Q_CVol: TPANQuery;
begin
 try
    Q_CVol := TPANQuery.Create('UPDATE DPVGCVOLD SET TOTAL01=0,TOTAL02=0,TOTAL03=0,TOTAL04=0 WHERE FECHA=:FECHA');
    Q_CVol.Params[0].AsDateTime := AFecha;
    Q_CVol.ExecQuery;
    Q_CVol.Commit;
 finally
    Q_CVol.Free;
 end;

 try
    Q_CVol := TPANQuery.Create('UPDATE DPVGTURND SET TOTAL01=0,TOTAL02=0,TOTAL03=0,TOTAL04=0 WHERE FECHA=:FECHA');
    Q_CVol.Params[0].AsDateTime := AFecha-1;
    Q_CVol.ExecQuery;
    Q_CVol.Commit;
 finally
    Q_CVol.Free;
 end;
end;

function dame_entradas_combustible(ACorte,ACombustible: Integer;AFecha: TDateTime):Real;
var
  Q_Entradas: TPANQuery;
begin
  try



    Result := 0;
    Q_Entradas := TPANQuery.Create('SELECT SUM(VOLUMENRECEPCION) FROM DPVGETAN WHERE CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE AND FECHA=:FECHA AND TRASPASO=''No''');
    Q_Entradas.Params[0].AsInteger := ACorte;
    Q_Entradas.Params[1].AsInteger := ACombustible;
    Q_Entradas.Params[2].AsDateTime := AFecha;
    Q_Entradas.ExecQuery;

    Result := Q_Entradas.Fields[0].AsFloat;

    if (Q_Entradas.Fields[0].AsFloat > 0) and (USARTABLAMERMAS = 'Si') then
      Result := dame_merma(Q_Entradas.Fields[0].AsFloat,ACombustible)
//    else if (Q_Entradas.Fields[0].AsFloat > 0) begin
//       try
//         Q_Tanq := TPANQuery.Create('SELECT FIRST 1 MAXIMAENTRADA FROM DPVGTANQ WHERE COMBUSTIBLE=:COMBUSTIBLE');
//         Q_Tanq.Params[0].AsShort:= ACombustible;
//         Q_Tanq.ExecQuery;
//
//         if Q_Tanq.RowsAffected > 0 then
//           if Q_Tanq.FN('MAXIMAENTRADA').AsFloat > 0 then
//             Result := Q_Tanq.FN('MAXIMAENTRADA').AsFloat;
//       finally
//          Q_Tanq.Free;
//       end;
//    end;
  finally
    Q_Entradas.Free;
  end;
end;

function numero_de_entradas(AFecha:TDateTime;ACombustible:ShortInt):ShortInt;
var
  Q_Ent: TPANQuery;
begin
   try
     Q_Ent := TPANQuery.Create('SELECT COUNT(*) FROM DPVGETAN WHERE FECHA=:FECHA AND COMBUSTIBLE=:COMBUSTIBLE');
     Q_Ent.Params[0].AsDateTime := AFecha;
     Q_Ent.Params[1].AsShort    := ACombustible;
     Q_Ent.ExecQuery;
     Result := Q_Ent.Fields[0].AsShort;
   finally
     Q_Ent.Free;
   end;
end;

function dame_merma(AEntrada:Real;Combustible: ShortInt):Real;
var
  Q_Merma: TADIQuery;
  Merma,MermaTmp,Factor,FactorTmp,Tolerancia, EntMerma,Tope,EntradaTmp: Real;
begin
  try
    Merma := 0; Factor := 30000;
    Q_Merma := TADIQuery.Create('SELECT ENTRADA,MERMA,TOLERANCIA FROM MERMAS WHERE COMBUSTIBLE=:COMBUSTIBLE');
    Q_Merma.Params[0].AsInteger := Combustible;
    Q_Merma.ExecQuery;


//    ShowMessage(Q_Merma.Database.DBFileName);


    if Q_Merma.RowsAffected > 0 then begin
      while not Q_Merma.Eof do begin

        FactorTmp  := Abs(Q_Merma.FN('ENTRADA').AsFloat - AEntrada);

        if (FactorTmp < Factor) then begin
//          Merma := Q_Merma.FN('MERMA').AsFloat;
          Merma := Q_Merma.FN('ENTRADA').AsFloat*Q_Merma.FN('MERMA').AsFloat;
          EntMerma := Q_Merma.FN('ENTRADA').AsFloat - Merma;
          Tolerancia := Q_Merma.FN('TOLERANCIA').AsFloat;
          Tope := Q_Merma.FN('ENTRADA').AsFloat;
          Factor := FactorTmp;
        end;

        Q_Merma.Next;
      end;
    end else begin
      Result := AEntrada;
      FreeAndNil(Q_Merma);
      Exit;
    end;

  finally

    if (AEntrada >= (tope-tolerancia)) and (AEntrada <= (tope+tolerancia))  then
      Result := Tope - Merma
    else
      Result := AEntrada;

    if Q_Merma.FN('MERMA').AsFloat <= 0 then
      Result := AEntrada;

    if Assigned(Q_Merma) then
      Q_Merma.Free;
  end;

//  try
//    Merma := 0; Factor := 30000;
//    Q_Merma := TADIQuery.Create('SELECT MERMA FROM MERMAS WHERE COMBUSTIBLE=:COMBUSTIBLE');
//    Q_Merma.Params[0].AsShort := Combustible;
//    Q_Merma.ExecQuery;
//
//    if  Q_Merma.RowsAffected > 0 then
//      Result := AEntrada - (AEntrada * Q_Merma.FN('MERMA').AsFloat)
//    else
//      Result := AEntrada;
//
//  finally
//    Q_Merma.Free;
//  end;

end;


function dame_maximo_turno_tanques(AFecha:TDateTime):Integer;
var
  Q_Volt: TPANQuery;
begin
  try
    Q_Volt := TPANQuery.Create('SELECT MAX(CORTE) FROM DPVGCVOLT WHERE FECHA=:FECHA');
    Q_Volt.Params[0].AsDateTime := AFecha;
    Q_Volt.ExecQuery;

    Result := Q_Volt.Fields[0].AsInteger;
  finally
    Q_Volt.Free;
  end;
end;

function corte_valido(AFecha:TDateTime;ACorte:ShortInt):Boolean;
var
  Q_Fechas:TADIQuery;
  valor1,valor2:string;
begin
  try
    Q_Fechas := TADIQuery.Create('SELECT FECHA,CORTE FROM FECHAS ORDER BY FECHA DESC, CORTE DESC');
    Q_Fechas.ExecQuery;

    if Q_Fechas.RowsAffected = 0 then begin
      Result := True;
      Exit;
    end;


    valor1 := FormatDateTime('yymmdd',AFecha)+IntToStr(ACorte);
    valor2 := FormatDateTime('yymmdd',Q_Fechas.FN('FECHA').AsDateTime)+IntToStr(Q_Fechas.FN('CORTE').AsInteger);

    if valor1 > valor2 then
      Result := True
    else
      Result := false;
  finally
    Q_Fechas.Free;
  end;
end;

function maximo_turno(fecha:TDateTime;Combustible:ShortInt):ShortInt;
var
  Q_Historia:TADIQuery;
begin
  try
    Q_Historia:=TADIQuery.Create('SELECT MAX(CORTE) FROM HISTORIA WHERE FECHA=:FECHA AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Historia.Params[0].AsDateTime := fecha;
    Q_Historia.Params[1].AsShort := Combustible;
    Q_Historia.ExecQuery;

    Result := Q_Historia.Fields[0].AsShort;
  finally
    Q_Historia.Free;
  end;
end;

function hay_combustible(combustible:shortint):boolean;
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

procedure set_ajuste(fecha:TDateTime;Corte,Combustible:ShortInt;cantidad:Real);
var
  Q_Historia:TADIQuery;
begin
  try
    Q_Historia:=TADIQuery.Create('UPDATE HISTORIA SET AJUSTE=:AJUSTE WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Historia.Params[0].AsFloat := cantidad;
    Q_Historia.Params[1].AsDateTime := fecha;
    Q_Historia.Params[2].AsShort := Corte;
    Q_Historia.Params[3].AsShort := Combustible;
    Q_Historia.ExecQuery;
    Q_Historia.Commit;
  finally
    Q_Historia.Free;
    end;
end;

function jarreos_turno(Fecha:TDateTime;Corte,Combustible:Byte):Currency;
var
  Q_Movi:TPANQuery;
begin
  try
    Q_Movi := TPANQuery.Create('SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE JARREO=''Si'' AND FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Movi.Params[0].AsDateTime := Fecha;
    Q_Movi.Params[1].AsShort := Corte;
    Q_Movi.Params[2].AsShort := Combustible;
    Q_Movi.ExecQuery;

    Result := Q_Movi.Fields[0].AsCurrency;
  finally
    Q_Movi.Free;
  end;
end;

function dame_inv_inicial_combustible(combustible:shortint):Currency;
begin
  with FAJUMENU do begin
//      result:=0;
//      Mem_Tanques.First;
//      while not Mem_Tanques.Eof do begin
//         if (Mem_TanquesCombustible.AsInteger=combustible) and (Mem_TanquesTan) then
//            result:=result+Mem_TanquesSalidas.AsFloat;
//         Mem_Tanques.Next;
//      end;
  end;
end;

function dame_meta_metodo_3(Combustible:SmallInt;Fecha:TDateTime;Corte:SmallInt;Tope:Currency):Currency;
var
  Variable_de_ajuste:Real;
  Factor_aleatorio:Integer;
  resta_aleatoria:Integer;
  Q_Proced,Q_Historia : TADIQuery;
  aux:Integer;
begin
  try
    aux := trunc(DIF_MAXIMA*200);

    Randomize;

    Factor_aleatorio := random(aux);
    Factor_aleatorio := Factor_aleatorio - (aux div 2);

  //  resta_aleatoria  := random(DIF_MAXIMA);

    Variable_de_ajuste := (Factor_aleatorio/100);//-(resta_aleatoria/100);

//    if Variable_de_ajuste = 0 then
//      Variable_de_ajuste := Variable_de_ajuste +0.01;

    Q_Proced := TADIQuery.Create('EXECUTE PROCEDURE DETERMINA_AJUSTE(:P_FECHA,:P_TURNO,:P_COMB,:P_POR_DIFERENCIA,:P_PORC_AJU_MAX)');
    Q_Proced.Params[0].AsDateTime := Fecha;
    Q_Proced.Params[1].AsInteger  := Corte;
    Q_Proced.Params[2].AsInteger  := Combustible;
    Q_Proced.Params[3].AsCurrency := Variable_de_ajuste;
    Q_Proced.Params[4].AsCurrency := Tope;//TOPE_MAXIMO;

    Q_Proced.ExecQuery;
    Q_Proced.Commit;

    Q_Historia := TADIQuery.Create('SELECT AJUSTE FROM HISTORIA WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Historia.Params[0].AsDateTime := Fecha;
    Q_Historia.Params[1].AsInteger  := Corte;
    Q_Historia.Params[2].AsInteger  := Combustible;
    Q_Historia.ExecQuery;

    Result := Q_Historia.Fields[0].AsCurrency;
  finally
    Q_Proced.Free;
    Q_Historia.Free;
  end;
end;

function letra_a_valor(letras: string): Real;
var
  valor1,valor2:byte;
begin
   valor1:=ord(letras[1])-65;
   valor2:=ord(letras[2])-65;
   Result:=StrToFloat(IntToStr(valor1)+'.'+IntToStr(valor2));
end;


procedure llena_porcentajes(Fecha:TDateTime;Corte:SmallInt);
var
  Q_Tags,Q_BorraTags:TAJUQuery;
  TagValue:String;
begin
  try
    if ES_AUTOMATICO then begin
      Q_Tags:=TAJUQuery.Create(nil,'SELECT * FROM DPVGTAGS WHERE FECHA=:FECHA AND CORTE=:CORTE');
      Q_Tags.Params[0].AsDateTime:=Fecha;
      Q_Tags.Params[1].AsInteger:=Corte;
    end
    else
      Q_Tags := TAJUQuery.Create(nil,'SELECT (CLAVE) AS COMBUSTIBLE,TAG FROM DPVGTCMB');

      Q_Tags.ExecQuery;

    PORCENTAJE:=0.05;
    PORCENTAJEP:=0.05;
    PORCENTAJED:=0.05;

//    Q_Tags2:=TADIQuery.Create('INSERT INTO DPVGTAGS VALUES(:FECHA,:CORTE,:COMBUSTIBLE,:TAG)');

    if Q_Tags.RowsAffected > 0 then begin
       while not Q_Tags.Eof do begin
         TagValue:=Q_Tags.FieldByName('TAG').AsString;
         case Q_Tags.FieldByName('COMBUSTIBLE').AsInteger of
           1:PORCENTAJE:= letra_a_valor(Q_Tags.FieldByName('TAG').AsString)/100;
           2:PORCENTAJEP:=letra_a_valor(Q_Tags.FieldByName('TAG').AsString)/100;
           3:PORCENTAJED:=letra_a_valor(Q_Tags.FieldByName('TAG').AsString)/100;
         end;
//
//         Q_Tags2.Close;
//         Q_Tags2.Params[0].AsDateTime:=Fecha;
//         Q_Tags2.Params[1].AsInteger:=Corte;
//         Q_Tags2.Params[2].AsInteger:=Q_Tags.FieldByName('COMBUSTIBLE').AsInteger;
//         Q_Tags2.Params[3].AsString:=Q_Tags.FieldByName('TAG').AsString;
//         Q_Tags2.ExecQuery;
//         Q_Tags2.Commit;

         Q_Tags.Next;
       end;

       try
         Q_BorraTags:=TAJUQuery.Create(nil,'DELETE FROM DPVGTAGS WHERE FECHA=:FECHA AND CORTE=:CORTE');
         Q_BorraTags.Params[0].AsDateTime:=Fecha;
         Q_BorraTags.Params[1].AsInteger:=Corte;
         Q_BorraTags.ExecQuery;
         Q_BorraTags.Commit;
       finally
         Q_BorraTags.Free;
       end;
    end;

  finally
    Q_Tags.free;
  end;
end;

procedure borra_ajuste_de_historia(fecha:TDateTime;Corte:Integer);
var
  Q_Claves:TADIQuery;
begin
  try
    Q_Claves:=TADIQuery.Create('DELETE FROM HISTORIA WHERE FECHA=:FECHA AND CORTE=:CORTE');
    Q_Claves.Params[0].AsDateTime:=Fecha;
    Q_Claves.Params[1].AsInteger:=Corte;
    Q_Claves.ExecQuery;
    Q_Claves.Commit;
  finally
    Q_Claves.Free;
  end;
end;

procedure actualiza_corte(Fecha:TDateTime;Corte:SmallInt;rb:Boolean=false);
var
  Q_Corte:TAJUQuery;
begin
  try
    if rb then
      Q_Corte:=TAJUQuery.Create(nil,'UPDATE DPVGCVOL SET TAG=0 WHERE FECHA=:FECHA AND CORTE=:CORTE')
    else
      Q_Corte:=TAJUQuery.Create(nil,'UPDATE DPVGCVOL SET TAG=1 WHERE FECHA=:FECHA AND CORTE=:CORTE');
    Q_Corte.Params[0].AsDateTime:=Fecha;
    Q_Corte.Params[1].AsInteger:=Corte;
    Q_Corte.ExecQuery;
    Q_Corte.Commit;
  finally
    Q_Corte.Free;
  end;

  try
    Q_Corte:=TAJUQuery.Create(nil,'UPDATE DPVGCVOLD SET TOTAL01=0,TOTAL02=0, TOTAL03=0, TOTAL04=0 WHERE FECHA=:FECHA AND CORTE=:CORTE');
    Q_Corte.Params[0].AsDateTime:=Fecha;
    Q_Corte.Params[1].AsInteger:=Corte;
    Q_Corte.ExecQuery;
    Q_Corte.Commit;
  finally
    Q_Corte.Free;
  end;
end;

function existe_corte(fecha:TDateTime;Corte:Integer):boolean;
var
  quFechas2: TADIQuery;
begin
    try
      quFechas2 := TADIQuery.Create('SELECT * FROM FECHAS WHERE FECHA=:FECHA AND CORTE=:CORTE');
      quFechas2.Params[0].AsDateTime:=fecha;
      quFechas2.Params[1].AsInteger:=Corte;
      quFechas2.ExecQuery;
      if quFechas2.RowsAffected>0 then
        Result:=True
      else
        Result:=False;

     quFechas2.Free;
    finally
     quFechas2.Free;
    end;
end;

procedure completa_historico(Fecha:TDateTime;corte,combustible:Integer;Acumulado:Real);
var
  qu1Historia2: TADIQuery;

begin
  try
    qu1Historia2 := TADIQuery.Create('UPDATE HISTORIA SET AJUSTE=:AJUSTE WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE');

    with FAJUMENU do begin
      qu1Historia2.Params[0].AsFloat:=Acumulado;
      qu1Historia2.Params[1].AsDateTime:=Fecha;
      qu1Historia2.Params[2].AsInteger:=corte;
      qu1Historia2.Params[3].AsInteger:=combustible;
      qu1Historia2.ExecQuery;
      qu1Historia2.Commit;
    end;
  finally
    qu1Historia2.Free;
  end;          
end;

function alcanza_litros(fecha:TDateTime;corte,combustible:Integer;meta,minimo:Real):boolean;
var
  Q_NoImpr:TAJUQuery;
  total_ajuste:real;
begin
    minimo := 30;
    total_ajuste := 0;

    while (total_ajuste<meta) or (minimo>=20) do begin

      try
        Q_NoImpr:=TAJUQuery.Create(nil,'SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE AND IMPORTE>=:IMPORTE AND IMPRESO=''No'' AND JARREO=''No''');
        Q_NoImpr.Params[0].AsDateTime:=fecha;
        Q_NoImpr.Params[1].AsInteger:=corte;
        Q_NoImpr.Params[2].AsInteger:=combustible;
        Q_NoImpr.Params[3].AsFloat:=minimo;
        Q_NoImpr.ExecQuery;

        total_ajuste := Q_NoImpr.Fields[0].AsFloat;

        if total_ajuste<meta then begin
           Result:=False;
           break;
        end
        else begin
           Result:=True;
           break;
        end;

        minimo:=minimo-10;
        break;
      finally
        Q_NoImpr.Free;
      end;
    end;
end;

function alcanza_litros2(fecha:TDateTime;corte,combustible:Integer;meta,minimo:Real):boolean;
var
  Q_NoImpr:TAJUQuery;
  total_ajuste:real;
begin
    minimo := 30;
    total_ajuste := 0;

    while (total_ajuste<meta) or (minimo>=20) do begin

      try
        Q_NoImpr:=TAJUQuery.Create(nil,'SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE AND IMPORTE>=:IMPORTE AND FACTURADO=''No'' AND JARREO=''No''');
        Q_NoImpr.Params[0].AsDateTime:=fecha;
        Q_NoImpr.Params[1].AsInteger:=corte;
        Q_NoImpr.Params[2].AsInteger:=combustible;
        Q_NoImpr.Params[3].AsFloat:=minimo;
        Q_NoImpr.ExecQuery;

        total_ajuste := Q_NoImpr.Fields[0].AsFloat;

        if total_ajuste<meta then begin
           Result:=False;
           break;
        end
        else begin
           Result:=True;
           break;
        end;

        minimo:=minimo-10;
      finally
        Q_NoImpr.Free;
      end;
    end;
end;


function alcanza_litros3(fecha:TDateTime;corte,combustible:Integer;meta,minimo:Real):boolean;
var
  Q_NoImpr:TAJUQuery;
  total_ajuste:real;
begin
    minimo := 25;
    total_ajuste := 0;

    while (total_ajuste<meta) or (minimo>=5) do begin

      try
        Q_NoImpr:=TAJUQuery.Create(nil,'SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE AND IMPORTE>=:IMPORTE AND JARREO=''No''');
        Q_NoImpr.Params[0].AsDateTime:=fecha;
        Q_NoImpr.Params[1].AsInteger:=corte;
        Q_NoImpr.Params[2].AsInteger:=combustible;
        Q_NoImpr.Params[3].AsFloat:=minimo;
        Q_NoImpr.ExecQuery;

        total_ajuste := Q_NoImpr.Fields[0].AsFloat;

        if total_ajuste<meta then begin
           Result:=False;
           break;
        end
        else begin
           Result:=True;
           break;
        end;

        minimo:=minimo-10;
      finally
        Q_NoImpr.Free;
      end;
    end;
end;


procedure refresca_tabla_fechas;
var
  Q_Fechas: TADIQuery;
begin

  try
    Q_Fechas := TADIQuery.Create('SELECT FIRST 60 FECHA,CORTE,ESTATUS FROM FECHAS ORDER BY FECHA DESC');

    Q_Fechas.ExecQuery;

    with FAJUMENU do begin
      memFechas.Close;
      memFechas.Open;

      while not Q_Fechas.Eof do begin
        memFechas.Insert;
        memFechasFecha.AsDateTime := Q_Fechas.FN('FECHA').AsDateTime;
        memFechasCorte.AsInteger  := Q_Fechas.FN('CORTE').AsInteger;
        memFechasEstatus.AsString := Q_Fechas.FN('ESTATUS').AsString;

        Q_Fechas.Next;
      end;

      memFechas.First;
      cxGrid1DBTableView1.DataController.GotoFirst;

   end;
  finally
    Q_Fechas.Free;
  end;
end;

function GetWindowsDir: TFileName;
var
  WinDir: array [0..MAX_PATH-1] of char;
begin
  SetString(Result, WinDir, GetWindowsDirectory(WinDir, MAX_PATH));
  if Result = '' then
    raise Exception.Create(SysErrorMessage(GetLastError));
end;


procedure Carga_Conf;
var
  Config:TIniAju;
  IniFile:TIniFile;
  archivo:string;
  Q_Opc:TADIQuery;
  Q_Est:TPANQuery;
  rutaini: string;
begin
//  archivo:=IncludeTrailingPathDelimiter(GetWindowsDir)+'ajuconf.ini';
  rutaini := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName))+'ajuconf.ini';

  FAJUMENU.Label5.Caption := rutaini;

  archivo:= rutaini;
  IniFile:=TIniFile.Create(archivo);
  Config:=TIniAju.Create;
  Config.LoadSettings(IniFile);
  try

    TOPEM := 0;
    TOPEP := 0;
    TOPED := 0;

    try
      Q_Opc := TADIQuery.Create('SELECT * FROM OPC');
      Q_Opc.ExecQuery;

      TOPE_MAXIMO := Q_Opc.Fields[0].AsCurrency;
      DIF_MAXIMA  := Q_Opc.Fields[1].AsFloat;
      INCLUIR_VENTAS_DESCARGA := Q_Opc.Fields[2].AsString;
      USARTABLAMERMAS := Q_Opc.FN('USARTABLAMERMAS').AsString;

      try
        TOPEM := Q_Opc.FieldbyName('TOPE1').AsFloat;
      except
        TOPEM := 0;
      end;
      try
        TOPEP := Q_Opc.FieldbyName('TOPE2').AsFloat;
      except
        TOPEP := 0;
      end;
      try
        TOPED := Q_Opc.FieldbyName('TOPE3').AsFloat;
      except
        TOPED := 0;
      end;
    finally
      Q_Opc.Free;
    end;

    PORCENTAJE:=StrToFloat(Config.CONFIGPorcentaje);
    PORCENTAJEP:=StrToFloat(Config.CONFIGPorcentajeP);
    PORCENTAJED:=StrToFloat(Config.CONFIGPorcentajeD);
    MINIMOTICKET:=StrToFloat(Config.CONFIGMinimoTicket);
    CLAVEAUTOR:=Config.CONFIGDatox;
    BORRARLECTURAS := Config.CONFIGBorrarLecturas;

    //Modo ajuste = 3 hasta donde llegue
    //Modo ajutes= 4 corte forozoso
    MODOAJUSTE:=StrToInt(Config.CONFIGModoAjuste);

    //TipoTag 1 = Porcentaje en DPGVTAGS
    //TipoTag <> 1 = Lo que alcance
    TIPOTAG:=StrToInt(Config.CONFIGTipoTag);

//    MODOAJUSTE := 4;
//    TIPOTAG := 3;

    FAJUMENU.Caption := 'OK';
    FAJUMENU.Label3.Caption := 'TipoAju:'+IntToStr(TIPOTAG);
    FAJUMENU.Label4.Caption := 'ModoAju:'+IntToStr(MODOAJUSTE);


  except
    on e: Exception do begin
      FAJUMENU.Caption := e.Message;
      PORCENTAJE:=0.05;
      PORCENTAJEP:=0.05;
      PORCENTAJED:=0.05;
    end;
  end;

  try
    Q_Est := TPANQuery.Create('SELECT NOMBRE FROM DPVGESTS');
    Q_Est.ExecQuery;
    FAJUMENU.lblEstacion.Caption := Q_Est.Fields[0].AsString;
  except
    Q_Est.Free;
  end;
end;

procedure aplica_cambios;
var
   Q_AplicaAjuste2: TPANQuery;
   QInsertaAju2, QInsertaAju: TADIQuery;
begin
   try
     QInsertaAju := TADIQuery.Create('INSERT INTO CLAVES (FOLIO,FECHA,CORTE,VOLUMEN1,VOLUMEN2,COMBUSTIBLE,PRECIO,IMPORTE VALUES (:FOLIO,:FECHA,:CORTE,:VOLUMEN1,:VOLUMEN2,:COMBUSTIBLE,:PRECIO,:IMPORTE)');

     with FAJUMENU do begin
        Mem_Datos.First;
        while not Mem_Datos.Eof do begin
          if Mem_Datostag.AsFloat<>0 then begin

              try
                Q_AplicaAjuste2 := TPANQuery.Create('UPDATE DPVGMOVI SET VOLUMEN=:VOLUMEN,IMPORTE=:IMPORTE,TAG=1 WHERE FOLIO=:FOLIO');
                Q_AplicaAjuste2.Params[0].AsFloat:=Mem_DatosAjuste.AsFloat;  //Mem_DatosVolumen.AsFloat - Mem_DatosDatosAju.AsFloat; //volumen
                Q_AplicaAjuste2.Params[1].AsFloat:=Mem_DatosAjuste.AsFloat*Mem_DatosPrecio.AsFloat;//importe
                Q_AplicaAjuste2.Params[2].AsInteger:=Mem_DatosFolio.AsInteger;

                try
                  Q_AplicaAjuste2.ExecQuery;
                  Q_AplicaAjuste2.Commit;
                except
                  on E:Exception do
                    //CodeSiteLogger1.Send(IntToStr(Mem_DatosFolio.AsInteger)+ 'Exception:',e.Message);
                end;
              finally
                Q_AplicaAjuste2.Free;
              end;

              try
                QInsertaAju2 := TADIQuery.Create('INSERT INTO CLAVES(FOLIO,FECHA,CORTE,VOLUMEN1,VOLUMEN2,COMBUSTIBLE,PRECIO,IMPORTE) VALUES('+
                                                 ':FOLIO,:FECHA,:CORTE,:VOLUMEN1,:VOLUMEN2,:COMBUSTIBLE,:PRECIO,:IMPORTE)');
                QInsertaAju2.Params[0].AsInteger:=Mem_DatosFolio.AsInteger;
                QInsertaAju2.Params[1].Value:=fechax;
                QInsertaAju2.Params[2].AsInteger:=cortex;
                QInsertaAju2.Params[3].AsFloat:=Mem_DatosVolumen.AsFloat;
                QInsertaAju2.Params[4].AsFloat:=Mem_DatosAjuste.Asfloat;
                QInsertaAju2.Params[5].AsFloat:=Mem_DatosCombustible.AsInteger;
                QInsertaAju2.Params[6].AsFloat:=Mem_DatosPrecio.AsFloat;
                QInsertaAju2.Params[7].AsFloat:=Mem_DatosImporte.AsFloat;
                try
                  QInsertaAju2.ExecQuery;
                except
                  on E:Exception do begin
                    mmo1.Lines.Add(QInsertaAju.Params[0].AsString);
                    mmo1.Lines.Add(E.Message);
                  end;
                end;
              finally
                QInsertaAju2.Free;
              end;
          end;
          Mem_Datos.Next;
        end;
     end;
   finally
     QInsertaAju.Free;
   end;             
end;

procedure selecciona_transacciones(combustible:byte;meta:real);
var
   Acumulado_tmp,Acumulado,ajuste:Real;
   c:Integer;
   menor_a_limite:boolean;
begin
     Acumulado:=0; Acumulado_tmp:=0;

     menor_a_limite:=false;
     with FAJUMENU do begin
         if Mem_Datos.RecordCount=0 then Exit;
         Mem_Datos.First;
         while Acumulado<meta do begin
             c:=combustible;
             Mem_Datos.Edit;
  //           try
  //              Mem_DatosAjuste.AsFloat:=Mem_DatosAjuste.AsFloat+10;
  //           except
  //              Mem_DatosAjuste.AsFloat:=10;
  //           end;
             Acumulado_Tmp:=acumulado;
             Acumulado:=Acumulado+(10/Mem_DatosPrecio.AsFloat);
             ajuste:=(10/Mem_DatosPrecio.AsFloat);
             Mem_DatosAjuste.AsFloat:=Mem_DatosAjuste.AsFloat-Ajuste;
             Mem_Datostag.AsInteger:=1;
             Mem_Datos.Post;
             Mem_Datos.Next;
             if Mem_Datos.Eof then
               if Acumulado_tmp=Acumulado then
                  Exit
               else
                  Mem_Datos.First;
         end;
         completa_historico(fechax,cortex,combustible,Acumulado);
//        if combustible=1 then
//           Mem_Datos.SaveToTextFile('c:\datos.txt');
        end
end;


procedure selecciona_transacciones2(combustible:byte;meta:real);
var
   Acumulado_tmp,Acumulado,ajuste,_ca:Real;
   c:Integer;
   menor_a_limite:boolean;
   total_ticket:real;
   i:shortint;
begin
//     try
//       Acumulado:=0; Acumulado_tmp:=0; i:=2;
//
//       menor_a_limite:=false;
//       _ca:=10;//MINIMOTICKET; //10;
//       with FAJUMENU do begin
//
//          Mem_Datos.First;
//
//          while Acumulado < meta do begin
//
//           if (Mem_DatosVolumen.AsFloat*Mem_DatosPrecio.AsFloat)> 28 then
//             ajuste := Mem_DatosVolumen.AsFloat - (Mem_DatosVolumen.AsFloat-(_ca/Mem_DatosPrecio.AsFloat));
//
//           if ajuste > (Meta - Acumulado) then
//              ajuste := Meta - Acumulado;
//
//           Acumulado := Acumulado + ajuste;
//
//           Mem_Datos.Edit;
//           Mem_DatosDatosAju.AsFloat := Mem_DatosDatosAju.AsFloat + ajuste;
//           Mem_DatosAjuste.AsFloat := ajuste;
//           Mem_Datostag.AsInteger := 1;
//           Mem_Datos.Post;
//
//           CodeSiteLogger1.Send('Folio:',Mem_DatosFolio.AsInteger);
//
//            Mem_Datos.Next;
//            if Mem_Datos.Eof then
//              Mem_Datos.First;
//          end;
//
//          completa_historico(fechax,cortex,combustible,Acumulado);
//       end
//     except
//       on e:exception do
//         FAJUMENU.mmo1.Lines.Add(FAJUMENU.Mem_DatosFolio.AsString+' '+e.Message);
//     end;
//
//     FAJUMENU.Mem_Datos.SaveToTextFile('c:\imagenco\tmp\logadidatos'+FormatDateTime('ddmmmyyyyhhmmss',now)+'.txt');




     try
       Acumulado:=0; Acumulado_tmp:=0; i:=2;

       menor_a_limite:=false;
       _ca:=MINIMOTICKET; //10;
       with FAJUMENU do begin

          Mem_Datos.First;

          while Acumulado < meta do begin

            Acumulado_tmp := Mem_DatosAjuste.AsFloat*Mem_DatosPrecio.AsFloat;

            if Acumulado_tmp > MINIMOTICKET then begin
              menor_a_limite := True;
              Mem_Datos.Edit;
              ajuste := 10/Mem_DatosPrecio.AsFloat;

              if ajuste > (Meta - Acumulado) then
                ajuste := Meta - Acumulado;

              Acumulado := Acumulado + Ajuste;

              Mem_DatosAjuste.AsFloat := Mem_DatosAjuste.AsFloat - ajuste;
              Mem_Datostag.AsInteger  := 1;
              Mem_Datos.Post;

            end;

            Mem_Datos.Next;

            if Mem_Datos.Eof then begin
              if not menor_a_limite then
                MINIMOTICKET := MINIMOTICKET - 10;

              if MINIMOTICKET <= 5 then
                Break;

              menor_a_limite := false;
              Mem_Datos.First;
            end;

        end;
       completa_historico(fechax,cortex,combustible,Acumulado);
      end
     except
       on e:exception do
         FAJUMENU.mmo1.Lines.Add(FAJUMENU.Mem_DatosFolio.AsString+' '+e.Message);
     end;

//     FAJUMENU.Mem_Datos.SaveToTextFile('c:\imagenco\tmp\logadidatos'+FormatDateTime('ddmmmyyyyhhmmss',now)+'.txt');

end;


procedure llena_datos(fecha:TDateTime;turno,combustible:byte);
var
  fechas:string;
  Q_Temp1: TPANQuery;
begin
  with FAJUMENU do begin
     cortex:=turno;
     fechax:=fecha;
     fechas:=DateToStr(fecha);
     try

       Q_Temp1 := TPANQuery.Create('');
       Q_Temp1.SQL.Clear;
       Q_Temp1.SQL.Add('SELECT FOLIO,COMBUSTIBLE,VOLUMEN,IMPORTE,PRECIO');
       Q_Temp1.SQL.Add('FROM');
       Q_Temp1.SQL.Add(' DPVGMOVI');
       Q_Temp1.SQL.Add('WHERE FECHA=:FECHA');
       Q_Temp1.SQL.Add('AND CORTE=:CORTE');
       Q_Temp1.SQL.Add('AND COMBUSTIBLE=:COMBUSTIBLE');
       Q_Temp1.SQL.Add('AND 0=0');
       Q_Temp1.SQL.Add('AND IMPORTE>=30');
       Q_Temp1.SQL.Add('AND JARREO = ''No''');
       Q_Temp1.SQL.Add('ORDER BY IMPRESO,FACTURADO');

       //    MODOAJUSTE := 4;

       if MODOAJUSTE=4 then  begin

         if alcanza_litros(fecha,turno,combustible,LitrosAju,20) then begin
           Q_Temp1.SQL[6]:='AND IMPRESO=''No''';
         end
         else if alcanza_litros2(fecha,turno,combustible,LitrosAju,20) then begin
           Q_Temp1.SQL[6]:='AND FACTURADO=''No''';
         end
         else if not alcanza_litros2(fecha,turno,combustible,LitrosAju,20) then begin
           alcanzan:=false;
           Exit;
         end;
       end
       else
         Q_Temp1.SQL[6]:='AND IMPRESO=''No''';

       Q_Temp1.Close;
       Q_Temp1.Params[0].Value:=fecha;
       Q_Temp1.Params[1].AsInteger:=turno;
       Q_Temp1.Params[2].AsInteger:=combustible;
       Q_Temp1.ExecQuery;
       if Q_Temp1.RowsAffected>0 then begin
  //        Mem_Datos.Close;
  //        Mem_Datos.Open ;
          alcanzan:=True;
          while not Q_Temp1.Eof do begin
              Mem_Datos.Insert;
              Mem_DatosFolio.AsInteger:=Q_Temp1.Fields[0].AsInteger;
              Mem_DatosCombustible.AsInteger:=Q_Temp1.Fields[1].AsInteger;
              Mem_DatosVolumen.AsFloat:=Q_Temp1.Fields[2].AsFloat;
              Mem_DatosImporte.AsFloat:=Q_Temp1.Fields[3].AsFloat;
              Mem_DatosPrecio.AsFloat:=Q_Temp1.Fields[4].AsFloat;
              Mem_DatosAjuste.AsFloat:=Mem_DatosVolumen.AsFloat;
              Mem_Datostag.AsInteger:=0;
              Mem_Datos.Post;
              Q_Temp1.Next;
          end;
       end
       else begin
            alcanzan:=false;
       end;
     finally
       Q_Temp1.Free;
     end;
  end;
end;


function ventas_turno(fecha:TDateTime;turno,combustible:byte):real;
var
  Q_Ventas:TPANQuery;
begin
  try
     Q_Ventas := TPANQuery.Create('SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:combustible');
     Q_Ventas.Params[0].Value:=fecha;
     Q_Ventas.Params[1].AsInteger:=turno;
     Q_Ventas.Params[2].AsInteger:=combustible;
     Q_Ventas.ExecQuery;
     result:=Q_Ventas.Fields[0].AsFloat;

  finally
     Q_Ventas.Free;
  end;
end;


function dame_total_combustible(combustible:byte; var InvVeeder:Real):real;
var
  sifon:Boolean;
begin
  sifon:=False;
  with FAJUMENU do begin
      result:=0;
      InvInicial := 0;
      InvFinal := 0;
      Entradas := 0;
      InvVeeder := 0;
      Mem_Tanques.First;
      while not Mem_Tanques.Eof do begin
         if Mem_TanquesCombustible.AsInteger=combustible then begin
            result:=result+Mem_TanquesSalidas.AsFloat;

            InvInicial := InvInicial + Mem_TanquesInvInivial.AsFloat;
            InvFinal   := InvFinal + Mem_TanquesInvFinal.AsFloat;
            Entradas   := Entradas + Mem_TanquesEntradas.AsFloat;

            InvVeeder  := InvVeeder + Mem_TanquesInvVeeDeer.AsFloat;

            case combustible of
              1: if SIFONM>0 then begin
                       Entradas := SIFONM;
                 end;
              2: if SIFONP>0 then begin
                       Entradas := SIFONP;
                 end;
              else
                if SIFOND>0 then begin
                         Entradas := SIFOND
                end;
            end;
         end;
         Mem_Tanques.Next;
      end;
  end;
end;


function medicion_tanque_turno_anterior(corte:byte;tanque:string;fecha_completa:TDateTime):real;
var
 Ql_VoltAnt:TAJUQUERY;
begin
    try
       QL_VoltAnt:=TAJUQUERY.Create(nil,'');
       QL_VoltAnt.SQL.Clear;
       Ql_VoltAnt.Sql.Add('SELECT *');
       Ql_VoltAnt.Sql.Add('FROM     ');
       Ql_VoltAnt.Sql.Add('   DPVGCVOLT');
       Ql_VoltAnt.Sql.Add('WHERE TANQUE='+tanque);
       Ql_VoltAnt.Sql.Add('AND FECHA=:FECHA');
       Ql_VoltAnt.Sql.Add('AND CORTE=:CORTE');
       Ql_VoltAnt.Params[0].Value:=fecha_completa;
       Ql_VoltAnt.Params[1].Value:=corte;
       Ql_VoltAnt.ExecQuery;
       if Ql_VoltAnt.RowsAffected>0 then begin
          result:=QL_VoltAnt.FieldByName('VOLUMEN').AsFloat;
       end
       else begin
          result:=0;
       end;
    finally
       Ql_VoltAnt.Free;
    end;
end;

function recepcion_tanque_turno(fecha:TDateTime;corte:byte;tanque,combustible:byte;var entradaveeder:Real):real;
var
   Ql_Recepcion2:TAJUQuery;
   Q_Tanq:TPANQuery;
begin
    try

       entradaveeder := 0;

       Q_Tanq := TPANQuery.Create('SELECT MAXIMAENTRADA FROM DPVGTANQ WHERE TANQUE=:TANQUE');
       Q_Tanq.Params[0].AsShort:= tanque;
       Q_Tanq.ExecQuery;

       if INCLUIR_VENTAS_DESCARGA='Si' then
          QL_Recepcion2:=TAJUQUery.Create(nil,'SELECT SUM(VOLUMENRECEPCION + COALESCE(VENTAS,0)) AS VOLUMENRECEPCION, SUM(VOLUMENRECEPCION) AS VOLUMENFISICO FROM DPVGETAN WHERE FECHA=:FECHA AND CORTE=:CORTE AND TANQUE=:TANQUE AND TRASPASO=''No''')
       else
          QL_Recepcion2:=TAJUQUery.Create(nil,'SELECT VOLUMENRECEPCION FROM DPVGETAN WHERE FECHA=:FECHA AND CORTE=:CORTE AND TANQUE=:TANQUE AND TRASPASO=''No''');
       QL_Recepcion2.Params[0].value:=Fecha;
       QL_Recepcion2.Params[1].AsInteger:=Corte;
       QL_Recepcion2.Params[2].AsInteger:=tanque;
       QL_Recepcion2.ExecQuery;
       if Ql_Recepcion2.Fields[0].AsFloat>0 then begin
           result:=QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat;


           if INCLUIR_VENTAS_DESCARGA='Si' then
             entradaveeder := QL_Recepcion2.FieldByName('VOLUMENFISICO').AsFloat
           else
             entradaveeder := QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat;

           if result > Q_Tanq.Fields[0].AsFloat then
             result := Q_Tanq.Fields[0].AsFloat;

//           if USARTABLAMERMAS = 'Si' then
//             Result := dame_merma(QL_Recepcion2.FieldByName('VOLUMENFISICO').AsFloat,combustible);

           if (result <=3200) and (numero_de_entradas(fecha,corte)>1) then begin
             Result := 0;
             case combustible of
                1:SIFONM:=Q_Tanq.Fields[0].AsFloat;
                2:SIFONP:=Q_Tanq.Fields[0].AsFloat
                else
                   SIFOND:=Q_Tanq.Fields[0].AsFloat;
             end;
           end;
       end
       else
           result:=0;

    finally
       Q_Tanq.Free;
       Ql_Recepcion2.Free;
    end;
end;

procedure analisis_inicial(fecha,fechahora:TDateTime;Corte:Byte);
var
   Q_Datos,Q_Turno_ant:TAJUQuery;
   quHistoria, quFecha: TADIQuery;
   i:byte;
   fechas:String;
   M,P,D:Boolean;
   Combust:string;
   xfechahora:string;
   acu:real;
   topetmp,ev,pEntradas:Real;
begin

 with FAJUMENU do begin
   try
     borra_ajuste_de_historia(fecha,corte);

     Mem_Tanques.Close;
     Mem_Tanques.Open;
     fechas:=FormatDateTime('mm/dd/yyyy',fecha);
     Q_Datos:=TAJUQuery.Create(nil,'SELECT * FROM DPVGCVOLT WHERE FECHA=:FECHA AND CORTE=:TURNO ORDER BY TANQUE');
     Q_Datos.Params[0].Value:=fecha;
     Q_Datos.Params[1].AsInteger:=Corte;
     Q_Datos.ExecQuery;

//     Q_Turno_Ant:=TAJUQuery.Create(nil,'SELECT FIRST 1 SKIP 1 * FROM DPVGCVOL WHERE FECHAHORAINICIAL<=:FECHA - 0.001 ORDER BY FECHA DESC,CORTE DESC');
     Q_Turno_Ant:=TAJUQuery.Create(nil,'SELECT * FROM DPVGCVOL WHERE FECHA=:FECHA AND CORTE=:CORTE');
//     Q_Turno_Ant.Params[0].Value:=fechahora;
     if corte = 1 then begin
       Q_Turno_ant.Params[0].AsDateTime := fecha-1;
       Q_Turno_ant.Params[1].AsInteger := dame_maximo_turno_tanques(fecha-1) //6;
     end
     else begin
       Q_Turno_ant.Params[0].AsDateTime := fecha;
       Q_Turno_ant.Params[1].AsInteger := Corte -1;
     end;
     Q_Turno_Ant.ExecQuery;

     SIFONM := 0;
     SIFONP := 0;
     SIFOND := 0;

     if Q_Datos.RowsAffected>0 then begin
       while not Q_Datos.Eof do begin
         Mem_Tanques.Append;
         Mem_TanquesTanque.AsInteger:=Q_Datos.FieldByName('TANQUE').AsInteger;
         Mem_TanquesCombustible.AsInteger:=Q_Datos.FieldByName('COMBUSTIBLE').AsInteger;
         Mem_TanquesInvInivial.AsFloat:=medicion_tanque_turno_anterior(Q_Turno_Ant.FieldByName('CORTE').AsInteger,Q_Datos.FieldByName('TANQUE').AsString,Q_Turno_ant.FieldByName('FECHA').AsDateTime);
         Mem_TanquesInvFinal.AsFloat:=Q_Datos.FieldByName('VOLUMEN').AsFloat;
         Mem_TanquesEntradas.AsFloat:=recepcion_tanque_turno(fecha,corte,Q_Datos.FieldByName('TANQUE').AsInteger,Q_Datos.FieldByName('COMBUSTIBLE').AsInteger,ev);
         Mem_TanquesInvVeeDeer.AsFloat := ev;
         Mem_TanquesSalidas.AsFloat:=(Mem_TanquesInvInivial.AsFloat+Mem_TanquesEntradas.AsFloat)-Mem_TanquesInvFinal.AsFloat;
         Mem_Tanques.Post;
         Q_Datos.Next;
       end;
     end
     else begin
       ShowMessage('[Dt_Combustibles] Tabla Vacía');
       exit;
     end;
   finally
     Q_Datos.Free;
     Q_Turno_ant.Free;
   end;

   Mem_Tanques.SaveToTextFile('c:\retp.txt');

//------------------------------------------------------------------------------------------
   if TIPOTAG = 1 then
     llena_porcentajes(fecha,Corte);


   Mem_Aju.Close;
   Mem_Aju.Open;

   try
     quHistoria := TADIQuery.Create('INSERT INTO HISTORIA (FECHA,CORTE,SALIDAS,COMBUSTIBLE,TANQUE,INVINICIAL_TANQUE,INVFINAL_TANQUE,ENTRADAS_TANQUE,JARREOS,INVFISICO) ' +
                                    'VALUES (:FECHA,:CORTE,:SALIDAS,:COMBUSTIBLE,:TANQUE,:INVINICIAL_TANQUE,:INVFINAL_TANQUE,:ENTRADAS_TANQUE,:JARREOS,:INVFISICO)');


     for i := 1 to 3 do begin
           Mem_Aju.Append;
           Mem_AjuCombustible.AsInteger:=i;
           Mem_AjuSalida_Tanque.AsFloat:=dame_total_combustible(i,ev);
           Mem_AjuInvVeeder.AsFloat := ev;

           Mem_AjuVentas.AsFloat:=ventas_turno(fecha,corte,i);
           Mem_AjuVentas_Dif.AsFloat:=Mem_AjuVentas.AsFloat-Mem_AjuSalida_Tanque.AsFloat;
           if Mem_AjuSalida_Tanque.AsFloat>0 then
              Mem_AjuPor_Dif.AsFloat:=((Mem_AjuVentas_Dif.AsFloat/Mem_AjuSalida_Tanque.AsFloat)*100)
           else
              Mem_AjuPor_Dif.AsFloat:=0;


           case Mem_AjuCombustible.AsInteger of
             1:Mem_AjuMax_Aju.AsFloat:=Mem_AjuVentas.AsFloat*PORCENTAJE;
             2:Mem_AjuMax_Aju.AsFloat:=Mem_AjuVentas.AsFloat*PORCENTAJEP;
             3:Mem_AjuMax_Aju.AsFloat:=Mem_AjuVentas.AsFloat*PORCENTAJED
             else
               Mem_AjuMax_Aju.AsFloat:=Mem_AjuVentas.AsFloat*PORCENTAJE ;
           end;
           Mem_Aju.Post;

           quHistoria.Close;
           quHistoria.Params[0].AsDateTime:=fecha;
           quHistoria.Params[1].AsInteger:=corte;
           quHistoria.Params[2].AsFloat:=Mem_AjuVentas.AsFloat; //Salidas
           quHistoria.Params[3].AsFloat:=Mem_AjuCombustible.AsInteger;
  //         quHistoria.Params[4].AsFloat:=(Invinicial+Entradas)-InvFinal;//Mem_AjuSalida_Tanque.AsFloat;
           quHistoria.Params[5].AsCurrency := InvInicial;
           quHistoria.Params[6].AsCurrency := InvFinal;
           quHistoria.Params[7].AsCurrency := dame_entradas_combustible(Corte,Mem_AjuCombustible.AsInteger,fecha);

           quHistoria.Params[4].AsFloat:=(Invinicial+quHistoria.Params[7].AsFloat)-InvFinal;//Mem_AjuSalida_Tanque.AsFloat;

           quHistoria.Params[8].AsCurrency := jarreos_turno(fecha,Corte,Mem_AjuCombustible.AsInteger);
           quHistoria.Params[9].AsFloat    := Mem_AjuInvVeeder.AsFloat;
           quHistoria.ExecQuery;
           quHistoria.Commit;
     end;
   finally
     quHistoria.Free;
   end;

  Mem_Aju.First;

  acu:=0;
  for i:=1 to 3 do begin
    acu := acu + Mem_AjuVentas.AsFloat;

    Mem_Aju.Next;

    if Mem_Aju.Eof then
       break;
  end;

  try
    quFecha := TADIQuery.Create('INSERT INTO FECHAS(FECHA,CORTE,ESTATUS) VALUES(:FECHA,:CORTE,:ESTATUS)');

    if acu = 0 then begin
      actualiza_corte(fecha,Corte);
      qufecha.Close;
      qufecha.Params[0].AsDate:=fecha;
      qufecha.Params[1].AsInteger:=Corte;
      qufecha.Params[2].AsString:='_';
      qufecha.ExecQuery;
      quFecha.Commit;
      Exit;
    end;
  finally
    quFecha.Free;
  end;          

  Mem_Aju.First;
//inicia ajuste
  M:=False; P:=False; D:=False;
  while not Mem_Aju.Eof do begin
     //se decuce el tipo de ajuste
     if TIPOTAG=1 then
       LitrosAju:=Mem_AjuMax_Aju.AsFloat
     else
       LitrosAju:=Mem_AjuVentas_Dif.AsFloat;

//     TIPOTAG:=3;

     case Mem_AjuCombustible.AsInteger of
       1:topetmp := TOPEM;
       2:topetmp := TOPEP
       else
         topetmp := TOPED;
     end;

     if topetmp = 0 then
       topetmp := TOPE_MAXIMO;

//     TIPOTAG:=3;

     if TIPOTAG=3 then
       LitrosAju := dame_meta_metodo_3(Mem_AjuCombustible.AsInteger,fecha,corte,topetmp);
//
//     if TIPOTAG = 1 then
//       LitrosAju := Mem_AjuMax_Aju.AsFloat;

     Mem_Datos.Close;
     Mem_Datos.Open;

      if LitrosAju>0 then begin
//      if alcanza_litros(fecha,corte,Mem_AjuCombustible.AsInteger,LitrosAju) then begin
         if 1=1 then begin

         llena_datos(fecha,corte,Mem_AjuCombustible.AsInteger);
         if not alcanzan then begin
           mmo1.Lines.Add(DupeString('-',50));
           mmo1.Lines.Add('No hay tickets impresos '+Mem_AjuCombustible.AsString);
           mmo1.Lines.Add(FormatDateTime('dd/mmm/yyyy',fecha)+ ' Corte '+IntToStr(Corte));
           mmo1.Lines.Add(DupeString('-',50));
           //tmr1.Enabled:=True;
           alcanzan:=true;
           set_ajuste(fecha,Corte,Mem_AjuCombustible.AsInteger,0);
           Mem_Aju.Next;
           Continue;
         end;
         selecciona_transacciones2(Mem_AjuCombustible.AsInteger,LitrosAju);
         aplica_cambios;
         case Mem_AjuCombustible.AsInteger of
           1:M:=True;
           2:P:=True;
           3:D:=True;
         end;
     end;
     end;

      Mem_Aju.Next;
  end;

  Combust:='_';
  if M then Combust:=Combust+'M';
  if P then Combust:=Combust+'P';
  if D then Combust:=Combust+'D';


  try
    quFecha := TADIQuery.Create('INSERT INTO FECHAS(FECHA,CORTE,ESTATUS) VALUES(:FECHA,:CORTE,:ESTATUS)');

    if Length(Combust)>0 then begin
      qufecha.Close;
      qufecha.Params[0].AsDate:=fecha;
      qufecha.Params[1].AsInteger:=Corte;
      qufecha.Params[2].AsString:=Combust;
      qufecha.ExecQuery;
    end;
  finally
    quFecha.free;
  end;          

 end;

 if (Corte = 6) and (BORRARLECTURAS='Si') then
   borra_lecturas(fecha);

end;


procedure TFAJUMENU.Button1Click(Sender: TObject);
begin
//   analisis_inicial(memCortes.fieldbyname('FECHA').asdatetime,memCortes.fieldbyname('FECHAHORAINICIAL').asdatetime,
//                    memCortes.fieldbyname('CORTE').asInteger);

  ShowMessage(FloatToStr(dame_merma(18400,1)));
end;

procedure TFAJUMENU.SIBfibEventAlerter1EventAlert(Sender: TObject;
  EventName: String; EventCount: Integer);
//var
//  Q_Cortes:TAJUQuery;
//  Lista:TStringList;
begin
// if chk1.Checked then
//      try
//         Q_Cortes:=TAJUQuery.Create(nil,'select first 1 * from dpvgcvol where estatus=''C'' and fecha>=:fecha order by fecha desc, corte desc');
//         Q_Cortes.Params[0].AsDateTime := (Date - 3);
//
////         Q_Cortes:=TAJUQuery.Create(nil,'select first 1 * from dpvgcvol where estatus='+QuotedStr('C')+' order by fecha desc, corte desc');
//         Q_Cortes.ExecQuery;
//         if (not existe_corte(Q_Cortes.FieldByName('FECHA').AsDateTime,Q_Cortes.FieldByName('CORTE').AsInteger)) and (corte_valido(Q_Cortes.FieldByName('FECHA').AsDateTime,Q_Cortes.FieldByName('CORTE').AsInteger)) then
//           if EventName='cortecambiado' then begin
//              ES_AUTOMATICO := true;
//
//              Lista := TStringList.Create;
//              Lista.Add(FormatDateTime('dd/mm/yyyy HH:mm:ss',now));
//              Lista.SaveToFile('c:\imagenco\tmp\logaju'+FormatDateTime('ddmmyyyy-hhmmsszzz',now)+'.txt');
//              analisis_inicial(Q_Cortes.FieldByName('FECHA').AsDateTime,Q_Cortes.FieldByName('FECHAHORAINICIAL').AsDateTime,Q_Cortes.FieldByName('CORTE').AsInteger);
//                if not tmr1.Enabled then
//                actualiza_corte(Q_Cortes.FieldByName('FECHA').AsDateTime,Q_Cortes.FieldByName('CORTE').AsInteger);
//              Lista.Free;
//           end;
//      finally
//           Q_Cortes.Free;
//          refresca_tabla_fechas;
//      end;
end;

procedure TFAJUMENU.Button2Click(Sender: TObject);
var
  Q_Rollback, quBorraFecha, quBorraMovi:TADIQuery;
  Q_Rb: TPANQuery;
begin
   try
     Q_Rollback := TADIQuery.Create('SELECT VOLUMEN1, IMPORTE, PRECIO, FOLIO FROM CLAVES WHERE FECHA=:FECHA AND CORTE=:CORTE');

     quBorraFecha := TADIQuery.Create('DELETE FROM FECHAS WHERE FECHA=:FECHA AND CORTE=:CORTE');

     quBorraMovi := TADIQuery.Create('DELETE FROM CLAVES WHERE FECHA=:FECHA AND CORTE=:CORTE');

     Q_Rb := TPANQuery.Create('UPDATE DPVGMOVI SET VOLUMEN=:VOLUMEN, IMPORTE=:IMPORTE, PRECIO=:PRECIO, TAG = 0 WHERE FOLIO=:FOLIO');

     Q_RollBack.Close;
     Q_RollBack.Params[0].Value:=cxDateEdit1.Date;
     Q_RollBack.Params[1].AsFloat:=cxCurrencyEdit1.Value;
     Q_RollBack.ExecQuery;
     if Q_RollBack.RowsAffected>0 then begin
        while not Q_RollBack.Eof do begin
           Q_Rb.Close;
           Q_Rb.Params[0].AsFloat:=Q_RollBack.Fields[0].AsFloat;
           Q_Rb.Params[1].AsFloat:=Q_RollBack.Fields[1].AsFloat;
           Q_Rb.Params[2].AsFloat:=Q_RollBack.Fields[2].AsFloat;
           Q_Rb.Params[3].AsFloat:=Q_RollBack.Fields[3].AsFloat;
           Q_Rb.ExecQuery;
           Q_Rb.Commit;
           Q_RollBack.Next;
        end;
        quBorraMovi.Close;
        quBorraMovi.Params[0].AsDateTime:=cxDateEdit1.Date;
        quBorraMovi.Params[1].AsFloat:=cxCurrencyEdit1.Value;
        quBorraMovi.ExecQuery;
        quBorraMovi.Commit;

        quBorraFecha.Close;
        quBorraFecha.Params[0].AsDateTime:=cxDateEdit1.Date;
        quBorraFecha.Params[1].AsFloat:=cxCurrencyEdit1.Value;
        quBorraFecha.ExecQuery;

        refresca_tabla_fechas;
     end;
   finally
     Q_Rb.Free;
     Q_Rollback.Free;
     quBorraFecha.Free;
     quBorraMovi.Free;
   end;
end;


procedure TFAJUMENU.RollBack1Click(Sender: TObject);
var
  Q_Tags,Q_RollBack, quBorraFecha, quBorraMovi:TADIQuery;
  Q_Rb: TPANQuery;
begin
   if Application.MessageBox('¿Deshacer ajuste?','aj',4+MB_ICONQUESTION)=IDYES then begin

     try
       Q_RollBack := TADIQuery.Create('SELECT  VOLUMEN1,  IMPORTE, PRECIO, FOLIO FROM CLAVES WHERE FECHA=:FECHA AND CORTE=:CORTE');

       quBorraFecha := TADIQuery.Create('DELETE FROM FECHAS WHERE FECHA=:FECHA AND CORTE=:CORTE');

       quBorraMovi := TADIQuery.Create('DELETE FROM CLAVES WHERE FECHA=:FECHA AND CORTE=:CORTE');

       Q_Rb := TPANQuery.Create('UPDATE DPVGMOVI SET VOLUMEN=:VOLUMEN, IMPORTE=:IMPORTE, PRECIO=:PRECIO, TAG = 0 WHERE FOLIO=:FOLIO');

       Q_RollBack.Close;
       Q_RollBack.Params[0].Value:=memFechasFECHA.AsDateTime;
       Q_RollBack.Params[1].AsInteger:=memFechasCORTE.AsInteger;
       Q_RollBack.ExecQuery;
       if Q_RollBack.RowsAffected>0 then begin
          while not Q_RollBack.Eof do begin
             Q_Rb.Close;
             Q_Rb.Params[0].AsFloat:=Q_RollBack.Fields[0].AsFloat;
             Q_Rb.Params[1].AsFloat:=Q_RollBack.Fields[1].AsFloat;
             Q_Rb.Params[2].AsFloat:=Q_RollBack.Fields[2].AsFloat;
             Q_Rb.Params[3].AsFloat:=Q_RollBack.Fields[3].AsFloat;
             Q_Rb.ExecQuery;
             Q_Rb.Commit;
             Q_RollBack.Next;
          end;
          try
            quBorraMovi.Close;
            quBorraMovi.Params[0].AsDateTime:=memFechasFECHA.AsDateTime;
            quBorraMovi.Params[1].AsFloat:=memFechasCORTE.AsInteger;
            quBorraMovi.ExecQuery;
            quBorraMovi.Commit;

            quBorraFecha.Close;
            quBorraFecha.Params[0].AsDateTime:=memFechasFECHA.AsDateTime;
            quBorraFecha.Params[1].AsInteger:=memFechasCORTE.AsInteger;
            quBorraFecha.ExecQuery;
            quBorraFecha.Commit;

            borra_ajuste_de_historia(memFechasFECHA.AsDateTime,memFechasCORTE.AsInteger);
          except
             raise;
          end;

          try
            Q_Tags:=TADIQuery.Create('DELETE FROM DPVGTAGS WHERE FECHA=:FECHA AND CORTE=:CORTE');
            Q_Tags.Params[0].AsDateTime:=memFechasFECHA.AsDateTime;
            Q_Tags.Params[1].AsInteger:=memFechasCORTE.AsInteger;
            Q_Tags.ExecQuery;
            Q_Tags.Commit;
          finally
            Q_Tags.Free;
          end;

          actualiza_corte(memFechasFECHA.AsDateTime,memFechasCORTE.AsInteger,true);
       end
       else begin
            //ShowMessage('Nada que deshacer');
            quBorraMovi.Close;
            quBorraMovi.Params[0].AsDateTime:=memFechasFECHA.AsDateTime;
            quBorraMovi.Params[1].AsFloat:=memFechasCORTE.AsInteger;
            quBorraMovi.ExecQuery;
            quBorraMovi.Commit;

            quBorraFecha.Close;
            quBorraFecha.Params[0].AsDateTime:=memFechasFECHA.AsDateTime;
            quBorraFecha.Params[1].AsInteger:=memFechasCORTE.AsInteger;
            quBorraFecha.ExecQuery;
            quBorraFecha.Commit;
       end;
       refresca_tabla_fechas;
     finally
       Q_RollBack.Free;
       quBorraFecha.Free;
       Q_Rb.Free;
     end;
   end;
end;


procedure TFAJUMENU.pm2Popup(Sender: TObject);
begin
  if memFechas.Locate('FECHA;CORTE',VarArrayOf([memCortesFECHA.AsDateTime,memCortesCORTE.AsInteger]),[]) then
     Ajustar1.Enabled:=False
  else
    Ajustar1.Enabled:=True;
end;



procedure TFAJUMENU.Ajustar1Click(Sender: TObject);
var
  BookM:TBookmark;
  pFecha:TDateTime;
  pCorte:Integer;
begin
   try
//     SIBfibEventAlerter1.AutoRegister := false;

        ES_AUTOMATICO := false;

     analisis_inicial(memCortes.fieldbyname('FECHA').asdatetime,memCortes.fieldbyname('FECHAHORAINICIAL').asdatetime,
                      memCortes.fieldbyname('CORTE').asInteger);

     actualiza_corte(fechax,cortex);

     refresca_tabla_fechas;
   finally
//     SIBfibEventAlerter1.AutoRegister := true;
     es_manual:=false;


  DB.Close;
  DB.Open;

  DBAju.Close;
  DBAju.Open;

  pFIBDatabase1.Close;
  pFIBDatabase1.Open;


   end;
end;

procedure TFAJUMENU.Button3Click(Sender: TObject);
var
  Config:TIniAju;
  IniFile:TIniFile;
  archivo,por:string;
begin
  archivo:=IncludeTrailingPathDelimiter(GetWindowsDir)+'ajuconf.ini';
  IniFile:=TIniFile.Create(archivo);
  Config:=TIniAju.Create;
  Config.LoadSettings(IniFile);

  case TControl(Sender).Tag of
    1:por:=Config.CONFIGPorcentaje;
    2:por:=Config.CONFIGPorcentajeP;
    3:por:=Config.CONFIGPorcentajeD;
  end;

  if InputQuery('Config','Porcentaje',por) then begin
    case TControl(Sender).Tag of
      1:Config.CONFIGPorcentaje:=por;
      2:Config.CONFIGPorcentajeP:=por;
      3:Config.CONFIGPorcentajeD:=por;
    end;
    Config.SaveSettings(IniFile);
  end;
  IniFile.Free;
  Config.Free;
  Carga_Conf;
end;

procedure TFAJUMENU.Consultadetransacciones1Click(Sender: TObject);
begin
  consulta_de_transacciones(memFechasFECHA.AsDateTime,memFechasCORTE.AsInteger);
end;

procedure TFAJUMENU.VrTrayIcon1DblClick(Sender: TObject);
begin
   VrTrayIcon1.ShowMainForm;
   Application.BringToFront;
end;

procedure TFAJUMENU.tmr1Timer(Sender: TObject);
begin
 pb1.Position := pb1.Position + 1;
 lbl2.Caption := IntToStr(pb1.Position);

 if pb1.Position >= 120 then begin
   try
     tmr1.Enabled := false;
     monitorea_cortes;
     refresca_tabla_cortes;
   finally
     pb1.Position := 0;
     PostMessage(pb1.Handle, $0409, 0, clNavy);
     tmr1.Enabled := True;
   end;
 end;

//  lbl1.Visible:=not lbl1.Visible;
end;

procedure TFAJUMENU.Ocultar1Click(Sender: TObject);
begin
   tmr1.Enabled:=False;
   lbl1.Visible:=False;
end;

procedure TFAJUMENU.ConsultadeAjustes1Click(Sender: TObject);
begin
  consulta_de_ajustes(memFechasFECHA.AsDateTime,memFechasCORTE.AsInteger);
end;

procedure TFAJUMENU.FormShow(Sender: TObject);
var
  Q_Licencia:TAJUQuery;
  clavesis,version,tipolicencia,razon_social:string;
  Q_Conf : TADIQuery;
begin
  try
    Q_Licencia:=TAJUQuery.Create(nil,'SELECT RAZONSOCIAL FROM DGENEMPR');
    Q_Licencia.ExecQuery;
    razon_social:=Q_Licencia.FieldByName('RAZONSOCIAL').AsString;
    clavesis:='TRS22';
    version:='3.1';
    TipoLicencia:='';
    try
      Q_Conf := TADIQuery.Create('SELECT LICENCIA3 FROM DPVGCONF');
      Q_Conf.ExecQuery;
      CLAVEAUTOR := Q_Conf.Fields[0].AsString;
    finally
      Q_Conf.Free;
    end;

    if not LicenciaValida(razon_social,'TRS2','3.1','Abierta',CLAVEAUTOR,1) then begin
       ShowMessage('Error 99');
       Application.Terminate;
    end;
  except
  end;
end;

{ TAJUQuery }


{ TADIQuery }

constructor TADIQuery.Create(SQL: String);
var
  pRuta: string;
begin
  pRuta := ExtractFilePath(ParamStr(0)) + 'Ajusta.fdb';
  inherited Create(SQL, pRuta);
  
end;

procedure TFAJUMENU.btn3Click(Sender: TObject);
begin
   with TFREP01.Create(Self) do begin
     ShowModal;
     Free;
   end;
end;

procedure TFAJUMENU.FormDblClick(Sender: TObject);
begin
   dame_meta_metodo_3(1,Date,1,7);
end;

{ TPANQuery }

constructor TPANQuery.Create(SQL: String);
begin
  inherited Create(SQL, ParamStr(1));
end;

procedure TFAJUMENU.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if puede_cerrar then begin
     CanClose := pasa_usuario('');
     puede_cerrar := CanClose;
  end
  else begin
    FAJUMENU.Hide;
    VrTrayIcon1.Visible := true;
    CanClose := false;
  end;
end;

procedure TFAJUMENU.btn4Click(Sender: TObject);
begin
   puede_cerrar:=true;
   Close;
end;

procedure TFAJUMENU.monitorea_cortes;
var
  Q_Cortes:TPANQuery;
  i:Byte;
  pPause: Integer;
begin
  try
    Q_Cortes := TPANQuery.Create('SELECT FECHA,FECHAHORAINICIAL,CORTE FROM DPVGCVOL WHERE FECHA>=:FECHA AND ESTATUS=''C'' AND TAG<>1 ORDER BY FECHA,CORTE');
    Q_Cortes.Params[0].AsDateTime := Date - 3;
    Q_Cortes.ExecQuery;

    pPause := cxSpinEdit1.Value * 1000;

    if Q_Cortes.RowsAffected > 0  then begin
       PostMessage(pb1.Handle, $0409, 0, clRed); //se cambia el color del progress a rojo.

       pb1.Position := 0;
       for i:=0 to (60*cxSpinEdit1.Value) do begin
         Application.ProcessMessages;
         pb1.Position := pb1.Position + 1;
         Sleep(1000);
       end;

      while not Q_Cortes.Eof do begin
       Sleep(3000);
       analisis_inicial(Q_Cortes.FN('FECHA').AsDateTime,Q_Cortes.FN('FECHAHORAINICIAL').AsDateTime,Q_Cortes.FN('CORTE').AsInteger);
       actualiza_corte(Q_Cortes.FN('FECHA').AsDateTime,Q_Cortes.FN('CORTE').AsInteger);
       refresca_tabla_fechas;
       Q_Cortes.Next;
     end;
   end;
  finally
    Q_Cortes.Free;
  end;

  DB.Close;
  DB.Open;

  DBAju.Close;
  DBAju.Open;

  pFIBDatabase1.Close;
  pFIBDatabase1.Open;


  refresca_tabla_fechas;

end;

procedure TFAJUMENU.chk1Click(Sender: TObject);
begin
  tmr1.Enabled := chk1.Checked;
end;

procedure TFAJUMENU.Button4Click(Sender: TObject);
begin
   with TFREP02.Create(Self) do begin
     ShowModal;
     Free;
   end;
end;

procedure TFAJUMENU.refresca_tabla_cortes;
var
  Q_Cortes: TPANQuery;
begin
  try
    Q_Cortes := TPANQuery.Create('SELECT FIRST 400 FECHA, CORTE,FECHAHORAINICIAL,FECHAHORAFINAL FROM DPVGCVOL where estatus=''C'' ORDER BY FECHA DESC');
    Q_Cortes.ExecQuery;

    memCortes.Close;
    memCortes.Open;

    while not Q_Cortes.Eof do begin
      memCortes.Insert;
      memCortesFecha.AsDateTime            := Q_Cortes.FN('FECHA').AsDateTime;
      memCortesCorte.AsInteger             := Q_Cortes.FN('CORTE').AsInteger;
      memCortesFechaHoraInicial.AsDateTime := Q_Cortes.FN('FECHAHORAINICIAL').AsDateTime;
      memCortesFechaHoraFinal.AsDateTime   := Q_Cortes.FN('FECHAHORAFinal').AsDateTime;
      memCortes.Post;
      Q_Cortes.Next;
    end;

    memCortes.First;

    cxGridDBTableView1.DataController.GotoFirst;

  finally
    Q_Cortes.Free;
  end;
end;

initialization
  DB:=TpFIBDatabase.Create(nil);
  DB.DatabaseName:=ParamStr(1);
  DB.DBParams.Clear;
  DB.DBParams.Add('user_name=SYSDBA');
  DB.DBParams.Add('password=masterkey');

finalization
  DB.Free;

end.


select first 1 * from dpvgcvol
where estatus='C'
order by fecha desc, corte desc
