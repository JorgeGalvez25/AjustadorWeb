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
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, UFIBCLASS2,
  JvExControls, JvAnimatedImage, JvGIFCtrl, DBTables, ActiveX, ComObj;

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
    Mem_DatosFechaAdmin: TDateField;
    Mem_DatosTurnoAdmin: TIntegerField;
    memCortesOmitidos: TdxMemData;
    memCortesOmitidosFecha: TDateTimeField;
    memCortesOmitidosCorte: TIntegerField;
    chkAjusteDiasHistorico: TCheckBox;
    lblM: TLabel;
    EdAjuLtM: TEdit;
    EdAjuLtP: TEdit;
    lblP: TLabel;
    EdAjuLtD: TEdit;
    lblD: TLabel;
    btnPorcentajes: TButton;
    btnAjuLiq: TButton;
    SIBfibEventAlerter1: TSIBfibEventAlerter;
    pFIBDatabase1: TpFIBDatabase;
    JvGIFAnimator1: TJvGIFAnimator;
    Mem_DatosImpreso: TStringField;
    DBCONSOLA: TDatabase;
    QL_Cons: TQuery;
    tmr_levanta: TTimer;
    Mem_DatosFolioOG: TIntegerField;
    QL_Mang: TQuery;
    QL_MangMANGUERA: TIntegerField;
    QL_MangTOTAL: TFloatField;
    QL_Prod: TQuery;
    QL_ProdCOMBUSTIBLE: TIntegerField;
    QL_ProdVOLUMEN: TFloatField;
    QL_ProdIMPORTE: TFloatField;
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
    procedure cxSpinEdit1PropertiesChange(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnPorcentajesClick(Sender: TObject);
    procedure btnAjuLiqClick(Sender: TObject);
    procedure tmr_levantaTimer(Sender: TObject);
    procedure WMHotKey(var Msg: TWMHotKey); message WM_HOTKEY;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure monitorea_cortes;
    procedure CargaMemCortesomitosDeArchivo;
    function obtenerPendiente(combustible: Integer; fecha: TDateTime; corte: Byte):Real;
    procedure guardarPendiente(combustible: Integer; fecha: TDateTime; pendiente: Real; corte: Byte);
//    procedure AjustarEnBaseACortesAdministrativos(fecha, fechahora: TDateTime; Corte: Byte);
    procedure AjustarCortesAdministrativos(fecha, fechahora: TDateTime; Corte: Byte);
    function VolumenVentaTurnoAdministrativo(fecha: TDate; turno, comb: Byte): Double;
    function VolumenSalidaTurnoAdministrativo(fecha: TDate; turno, comb: Byte; HoraInicialTurno, HoraFinalTurno:TDateTime): Double;
    function ObtenerEntradas(horaIni, horaFin: TDateTime; comb: Byte): Double;
    function VtasTurnosVol(HoraIni,HoraFin:TDateTime; combustible:Integer):Double;
    procedure DifLecturasVtas(Fecha:TDateTime);
    function ObtenerCorte_OG(fecha:TDate):Integer;
    procedure DetalleMangueras_OG(fecha:TDate; corte:Integer);
    procedure DetalleProductos_OG(fecha:TDate; corte:Integer);

  public
    { Public declarations }
    procedure refresca_tabla_cortes;
    function ObtenerNumeroEstacion: string;
    function Lee_Variable(variable:string): string;
  end;

 TADIQuery=class(TIMGQuery)
    public
      Constructor Create(SQL:String); overload;
 end;

 TPANQuery=class(TIMGQuery)
    public
      Constructor Create(SQL:String); overload;
 end;

 TLIQQuery=class(TIMGQuery)
    public
      Constructor Create(SQL:string); overload;
 end;

var
  FAJUMENU: TFAJUMENU;
  DB: TFIBDatabase;
  PORCENTAJE, PORCENTAJEP, PORCENTAJED, TOPEM, TOPEP, TOPED, MINIMOTICKET, MERMAM, MERMAP: Real;
  MERMAD, LITROSAJUSTAR, LITROSAJUSTARP, LITROSAJUSTARD:real;
  fechax: TDateTime;
  cortex, MODOAJUSTE, TIPOTAG, DESCARTACOMB: Integer;
  CLAVEAUTOR, BORRARLECTURAS, NUMEROESTACION, ARRASTRE, PORCPEMEXPOSITIVO: string;
  LitrosAju: Real;
  Ajuste: Integer = 10;
  ES_AUTOMATICO: Boolean;
  TOPE_MAXIMO: Currency;
  DIF_MAXIMA: Real;
  INCLUIR_VENTAS_DESCARGA, USARTABLAMERMAS, CONEXION_OG: String;
  InvInicial, InvFinal, Entradas: Currency;
  es_manual: boolean = false;
  puede_cerrar: boolean = false;
  alcanzan: Boolean = false;
  SIFONM, SIFONP, SIFOND: Real;
  MINIMOLITROS: Real;
  AJUSTALITROS,FUSIONTANQUES,SOLOENTRADAS: string;
  litrosPrimerParte, primerAjuste : Real;
  bitaAju: TStringList;
  de6a6,REGISTRATICKDIF: Boolean;
  fhinicial,fhfinal:TDateTime;
  id1:Integer;
  cierreDirecto:Boolean;
  Licencia:String;
  FechaVence:TDateTime;
  _NOMBRESCOMBUSTIBLES: Array[1..3] of string;

  // Variables para el ajuste por turno administrativo
  VentasAdminitivo, SalidasAdmitivo, ajusteAdmitivo, EntradasAdmin, swJarreoAdmin : Double;
  VentasCorte1, VentasCorte2, VentasCorte3 : Double;
  SalCorte1, SalCorte2, SalCorte3 : Double;
  ajusteVol1, ajusteVol2, ajusteVol3 : Double;



procedure Carga_Conf;
procedure analisis_inicial(fecha,fechahora:TDateTime;Corte:Byte);
procedure llena_datos(fecha: TDateTime; turno, combustible: byte; antes6: Boolean);
procedure llena_datos6_6(fecha: TDateTime; corte, turno, combustible: byte);
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
function alcanza_litros(fecha:TDateTime;corte,combustible:Integer;meta,minimo:Real; antes6: Boolean):boolean;
function alcanza_litros6_6(fecha:TDateTime;corte,turno,combustible:Integer;meta,minimo:Real):boolean;
function existe_corte(fecha:TDateTime;Corte:Integer):boolean;
function dame_meta_metodo_3(Combustible: Integer; Fecha: TDateTime; Corte: SmallInt; Tope: Currency; antes6: Boolean = False): Currency;
function dame_inv_inicial_combustible(combustible:shortint):Currency;
function jarreos_turno(Fecha:TDateTime;Corte,Combustible:Byte):Currency;
function hay_combustible(combustible:shortint):boolean;
function maximo_turno(fecha:TDateTime;Combustible:ShortInt):ShortInt;
function corte_valido(AFecha:TDateTime;ACorte:ShortInt):Boolean;
function dame_maximo_turno_tanques(AFecha:TDateTime):Integer;
function dame_merma(AEntrada:Real;Combustible: ShortInt):Real; forward;
function numero_de_entradas(AFecha:TDateTime;ACombustible:ShortInt):ShortInt;
function dame_entradas_combustible(ACorte,ACombustible: Integer;AFecha: TDateTime):Real;
function Jarreos_FechaAdmin(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
procedure Ajustes_TurnoAdmin(pFechaAdmin:TDateTime; pCombustible:Integer; var pAjuste,pVolumen1,pVolumen2:Real);
function Ventas_NoAju(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
function Vol_Documentado(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
function obtenerCantidadTag5(fecha: TDateTime; corte, comb: Integer): Real;

function RestarMerma:Boolean;
function obtenerMediaMetaCorte2(fecha: TDateTime; comb: Integer; antes6: Boolean; porcMerma: Real): Real;
function Redondear(valor: Real; decimales: Integer): Real;
procedure selecciona_transacciones2_6_6(combustible:byte;meta:real);
function alcanza_litros2_6_6(fecha: TDateTime; corte, turno, combustible: Integer; meta, minimo: Real): boolean;
function alcanza_litros3_6_6(fecha: TDateTime; corte, turno, combustible: Integer; meta, minimo: Real): boolean;
procedure cargaCombustibles;


implementation


Uses
    INIFILES, UINIAJU, UAJUCONS, StrUtils, UAJUCONS2,ULibLicencias,
  UAJUREP01, UREP02I, UIMGENCRYP, UAJUFUN, UREP02a24, Ulibgral,
  UAJUPORCENTAJES, DateUtils, UAJULIQ, UAVANCE, Math, ULIBDATABASE,
  ConvUtils;

{$R *.dfm}

procedure cargaCombustibles;
var
  Q_Combustibles:TPANQuery;
  i:Integer;
begin
  try
    Q_Combustibles := TPANQuery.Create('SELECT CLAVE, NOMBRE FROM DPVGTCMB ORDER BY CLAVE');
    Q_Combustibles.ExecQuery;
    i:=0;
    if Q_Combustibles.RecordCount > 0  then begin
      while not Q_Combustibles.Eof do begin
        Inc(i);
        _NOMBRESCOMBUSTIBLES[i] := Q_Combustibles.FN('NOMBRE').AsString;
        Q_Combustibles.Next;
      end;
    end;
  finally
    Q_Combustibles.Close;
    Q_Combustibles.Free;
  end;
end;

function obtenerMediaMetaCorte2(fecha: TDateTime; comb: Integer; antes6: Boolean; porcMerma: Real): Real;
var
   Q_Inv : TPANQuery;
  invIni, invFin, entradas, salTanque, salDisp : Double;
begin
  // Inventario Inicial
  if antes6 then begin
    Q_Inv := TPANQuery.Create('select VOLUMENUTIL as InvInicial from dpvgcvolt where fecha = :fecha and combustible = :combustible and corte = 1');
    Q_Inv.Params[0].AsDate := fecha;
  end
  else begin
    Q_Inv := TPANQuery.Create('Select coalesce(VolumenUtil,0) as InvInicial from DPVGTURNT where Fecha=:fecha and ' +
                              'turno = 3 and Tanque in (select tanque from dpvgtanq where combustible = :combustible)');
    Q_Inv.Params[0].AsDate := IncDay(fecha, -1);
  end;

  Q_Inv.Params[1].AsInteger := comb;
  Q_Inv.ExecQuery;

  invIni := Q_Inv.FN('InvInicial').AsDouble;
  Q_Inv.Close;
  Q_Inv.Free;

  // Inventario Final
  if antes6 then begin
    Q_Inv := TPANQuery.Create('Select sum(coalesce(VolumenUtil,0)) as InvFinal from DPVGTURNT where Fecha=:fecha and ' +
                              'turno = 3 and Tanque in (select tanque from dpvgtanq where combustible = :combustible)');
    Q_Inv.Params[0].AsDate := IncDay(fecha, -1);
  end
  else begin
    Q_Inv := TPANQuery.Create('select VOLUMENUTIL as InvFinal from dpvgcvolt where fecha = :fecha and combustible = :combustible and corte = 2');
    Q_Inv.Params[0].AsDate := fecha;
  end;

  Q_Inv.Params[1].AsInteger := comb;
  Q_Inv.ExecQuery;

  invFin := Q_Inv.FN('InvFinal').AsDouble;
  Q_Inv.Close;
  Q_Inv.Free;

  // Entradas
  Q_Inv := TPANQuery.Create('Select coalesce(Sum(d.VolPemex),0) as EntFct from DPVGDOCU d where exists(select t.folio from DPVGETAN t ' +
                 'where fechahoraregistro between :fechaIni and :fechaFin and d.folioentrada = t.folio and combustible = :combustible)');
  if antes6 then begin
    Q_Inv.Params[0].AsDateTime := IncMinute(IncHour(fecha, 4), 1);
    Q_Inv.Params[1].AsDateTime := IncHour(fecha, 6);
  end
  else begin
    Q_Inv.Params[0].AsDateTime := IncMinute(IncHour(fecha, 6), 1);
    Q_Inv.Params[1].AsDateTime := IncHour(fecha, 8);
  end;

  Q_Inv.Params[2].AsInteger := comb;
  Q_Inv.ExecQuery;

  entradas := Q_Inv.FN('EntFct').AsDouble;
  Q_Inv.Close;
  Q_Inv.Free;

  // Salidas de tanque
  salTanque := invIni + entradas * 0.0863 - invFin;

  // Salidas de Dispensario
  Q_Inv := TPANQuery.Create('select sum(volumen) as salidaDispensario from dpvgmovi where hora between :fechaini and ' +
                            ':fechafin and combustible = :combustible and jarreo = ''No'' ');
  if antes6 then begin
    Q_Inv.Params[0].AsDateTime := IncMinute(IncHour(fecha, 4), 1);
    Q_Inv.Params[1].AsDateTime := IncHour(fecha, 6);
  end
  else begin
    Q_Inv.Params[0].AsDateTime := IncMinute(IncHour(fecha, 6), 1);
    Q_Inv.Params[1].AsDateTime := IncHour(fecha, 8);
  end;

  Q_Inv.Params[2].AsInteger := comb;
  Q_Inv.ExecQuery;

  salDisp := Q_Inv.FN('salidaDispensario').AsDouble;
  Q_Inv.Close;
  Q_Inv.Free;

  Result := salDisp - salTanque//; - porcMerma / 100 * salTanque;
end;

function Redondear(valor: Real; decimales: Integer): Real;
var
  potencia: Real;
begin
  potencia := Power(10.0, decimales);
  Result := Round(valor * potencia) / potencia;
end;

function RestarMerma:Boolean;
var
  Q_OPC:TADIQuery;
begin
  Result:=False;
  try
    Q_OPC := TADIQuery.Create('Select UsarTablaMermas from OPC');
    Q_OPC.ExecQuery;
    if Q_OPC.FN('UsarTablaMermas').AsString='Si' then
      Result:=True
    else
      Result:=False;
    Q_OPC.Free;
  except
    Q_OPC.Free;
    Result:=False;
  end;
end;

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
  Q_Entradas, Q_Docu: TPANQuery;
begin
  try
    Result := 0;
    Q_Entradas := TPANQuery.Create('SELECT SUM(VOLUMENRECEPCION) FROM DPVGETAN WHERE CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE AND FECHA=:FECHA AND TRASPASO=''No''');
    Q_Entradas.Params[0].AsInteger  := ACorte;
    Q_Entradas.Params[1].AsInteger  := ACombustible;
    Q_Entradas.Params[2].AsDateTime := AFecha;
    Q_Entradas.ExecQuery;
    Result := Q_Entradas.Fields[0].AsFloat;

    if (FUSIONTANQUES='Si') and (Result>0) then begin
       if SOLOENTRADAS='Si' then begin
         if (Result>=9000) and (Result<=11000) then
           Result:=10000
         else if (Result>=19000) and (Result<=21000) then
           Result:=20000;
       end
       else begin
         Q_Docu:=TPANQuery.Create('SELECT SUM(VOLPEMEX) AS FACT FROM DPVGDOCU WHERE '+
                                  'FOLIOENTRADA IN (SELECT FOLIO FROM DPVGETAN WHERE FECHA=:FECHA AND '+
                                  'CORTE=:CORTE AND COMBUSTIBLE=:COMB AND TRASPASO=''No'')');
         Q_Docu.ParamByName('FECHA').AsDateTime:=AFecha;
         Q_Docu.ParamByName('CORTE').AsInteger:=ACorte;
         Q_Docu.ParamByName('COMB').AsInteger:=ACombustible;
         Q_Docu.ExecQuery;
         Q_Entradas.Close;
         Q_Entradas.SQL.Add('AND FOLIO NOT IN(SELECT FOLIOENTRADA FROM DPVGDOCU WHERE FECHA=:FECHA AND COMBUSTIBLE=:COMBUSTIBLE)');
         Q_Entradas.Params[0].AsInteger  := ACorte;
         Q_Entradas.Params[1].AsInteger  := ACombustible;
         Q_Entradas.Params[2].AsDateTime := AFecha;
         Q_Entradas.ExecQuery;
         if Q_Entradas.Fields[0].AsFloat>1000 then
           Result:=Q_Docu.FieldByName('FACT').AsFloat+Trunc((Q_Entradas.Fields[0].AsFloat/1000)+1)*1000
         else
           Result:=Q_Docu.FieldByName('FACT').AsFloat;
       end;
    end
    else if (Q_Entradas.Fields[0].AsFloat > 0) and (USARTABLAMERMAS = 'Si') then
      Result := dame_merma(Q_Entradas.Fields[0].AsFloat,ACombustible);
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
begin
  Result := AEntrada * (1 - 0.00863);
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

procedure set_ajuste(fecha: TDateTime; Corte, Combustible: ShortInt; cantidad: Real);
var
  Q_Historia:TADIQuery;
  pend: Real;
begin
  pend := LitrosAju - cantidad;
  try
    if (ARRASTRE = 'S') or (ARRASTRE = 's') then begin
      Q_Historia:=TADIQuery.Create('UPDATE HISTORIA SET AJUSTE = :AJUSTE, PENDIENTE = :PENDIENTE WHERE FECHA = :FECHA AND CORTE = :CORTE AND COMBUSTIBLE = :COMBUSTIBLE');

      Q_Historia.Params[0].AsFloat := cantidad;
      Q_Historia.Params[1].AsFloat := pend;
      Q_Historia.Params[2].AsDateTime := fecha;
      Q_Historia.Params[3].AsShort := Corte;
      Q_Historia.Params[4].AsShort := Combustible;
    end
    else begin
      Q_Historia:=TADIQuery.Create('UPDATE HISTORIA SET AJUSTE = :AJUSTE WHERE FECHA = :FECHA AND CORTE = :CORTE AND COMBUSTIBLE = :COMBUSTIBLE');

      Q_Historia.Params[0].AsFloat := cantidad;
      Q_Historia.Params[1].AsDateTime := fecha;
      Q_Historia.Params[2].AsShort := Corte;
      Q_Historia.Params[3].AsShort := Combustible;
    end;
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
//         if (Mem_TanquesCombustible.AsInteger=combustible) and (Mem_TanquesTanque.) then
//            result:=result+Mem_TanquesSalidas.AsFloat;
//         Mem_Tanques.Next;
//      end;
 end;
end;

function dame_meta_metodo_3(Combustible: Integer; Fecha: TDateTime; Corte: SmallInt; Tope: Currency; antes6: Boolean = False): Currency;
var
  Variable_de_ajuste:Real;
  Factor_aleatorio:Integer;
  resta_aleatoria:Integer;
  Q_Proced,Q_Historia, Q_Proceda, Q_LtsAdi, Q_Procedb : TADIQuery;
  aux:Integer;
  swLtsAdi:Real;
  porcMerma:Real;
  xSuma:Real;
  xSalidaTque:Real;
  xDif:Real;
  xInvFinal, xInvIni, xEntrada:Double;
  xVenta, xSalidas, xJarreos, xAjuste : Double;

procedure actualizarMermaCTble(Porcentaje: Real; Combustible, Corte: Integer; Fecha: TDateTime);
var
  Q_ProcedActMerma : TADIQuery;
begin
  try
    Q_ProcedActMerma := TADIQuery.Create('UPDATE HISTORIA SET PORCMERMACTBLE=:PORC WHERE COMBUSTIBLE=:P_COMB AND FECHA=:P_FECHA AND CORTE=:P_TURNO');
    Q_ProcedActMerma.Params[0].AsFloat    := Porcentaje;
    Q_ProcedActMerma.Params[1].AsInteger  := Combustible;
    Q_ProcedActMerma.Params[2].AsDateTime := Fecha;
    Q_ProcedActMerma.Params[3].AsInteger  := Corte;
    Q_ProcedActMerma.ExecQuery;
    Q_ProcedActMerma.Commit;

    Q_ProcedActMerma.Free;
  except
    //
  end;
end;

function obtenerSalidaTanques(Corte, Combustible: Integer; Fecha: TDateTime): Double;
var
  Q_Entrada : TPANQuery;
  Q_Inventa : TADIQuery;
  Salidas, Entradas : Double;
begin
  Result := 0;
  Entradas := 0;
  Salidas := 0;

  try
    Q_Entrada := TPANQuery.Create('Select coalesce(Sum(d.VolPemex), 0) as EntFct from DPVGDOCU d where ' +
                                  'exists(select t.folio from DPVGETAN t where t.fecha = :FECHA and ' +
                                  'd.folioentrada = t.folio and t.combustible = :COMBUSTIBLE and t.corte = :CORTE)');
    Q_Entrada.Params[0].AsDate := Fecha;
    Q_Entrada.Params[1].AsInteger := Combustible;
    Q_Entrada.Params[2].AsInteger := Corte;

    Q_Entrada.ExecQuery;

    if Q_Entrada.RowsAffected > 0 then
      Entradas := Q_Entrada.FN('EntFct').AsFloat * (1 - 0.00863);

    Q_Entrada.Free;

    Q_Inventa := TADIQuery.Create('SELECT (INVINICIAL_TANQUE-INVFINAL_TANQUE) as DIF_INV '+
                                  'FROM HISTORIA WHERE COMBUSTIBLE = :COMBUSTIBLE AND '+
                                  'FECHA = :FECHA AND CORTE = :CORTE');
    Q_Inventa.Params[0].AsInteger := Combustible;
    Q_Inventa.Params[1].AsDate := Fecha;
    Q_Inventa.Params[2].AsInteger := Corte;

    Q_Inventa.ExecQuery;
    Salidas := Q_Inventa.FN('DIF_INV').AsDouble;

    Result := Salidas + Entradas;
  except
    //
  end;
end;

begin
  try
    aux := trunc(DIF_MAXIMA*200);

    Randomize;

    Factor_aleatorio := random(aux);
    Factor_aleatorio := Factor_aleatorio - (aux div 2);

    Variable_de_ajuste := (Factor_aleatorio / 100);//-(resta_aleatoria/100);

    Q_Proced := TADIQuery.Create('EXECUTE PROCEDURE DETERMINA_AJUSTE(:P_FECHA,:P_TURNO,:P_COMB,:P_POR_DIFERENCIA,:P_PORC_AJU_MAX)');
    Q_Proced.Params[0].AsDateTime := Fecha;
    Q_Proced.Params[1].AsInteger  := Corte;
    Q_Proced.Params[2].AsInteger  := Combustible;
    Q_Proced.Params[3].AsCurrency := Variable_de_ajuste;
    Q_Proced.Params[4].AsCurrency := Tope;//TOPE_MAXIMO;

    Q_Proced.ExecQuery;
    Q_Proced.Commit;

    //  ACTUALIZAR HISTORIA
    if (AJUSTALITROS = 'Si') and (MODOAJUSTE = 3) and (TIPOTAG = 3) then begin
      swLtsAdi:=0;
      if Corte>1 then begin
        try
          Q_LtsAdi := TADIQuery.Create('SELECT SUM(AJUSTE) FROM HISTORIA WHERE FECHA=:FECHA AND COMBUSTIBLE=:COMBUSTIBLE AND CORTE<>:CORTE');
          Q_LtsAdi.Params[0].AsDateTime := Fecha;
          Q_LtsAdi.Params[1].AsInteger  := Combustible;
          Q_LtsAdi.Params[2].AsInteger  := Corte;
          Q_LtsAdi.ExecQuery;
          if Combustible=1 then
            swLtsAdi:=((corte - 1) * LITROSAJUSTAR) - Q_LtsAdi.Fields[0].AsCurrency
          else if Combustible = 2 then
            swLtsAdi:=((corte - 1) * LITROSAJUSTARP) - Q_LtsAdi.Fields[0].AsCurrency
          else if Combustible = 3 then
            swLtsAdi:=((corte - 1) * LITROSAJUSTARD) - Q_LtsAdi.Fields[0].AsCurrency;
        finally
          Q_LtsAdi.Free;
        end;
      end;
      if Combustible=1 then begin
        Q_Proceda := TADIQuery.Create('UPDATE HISTORIA SET AJUSTE='+FloatToStr(LITROSAJUSTAR+swLtsAdi)+' WHERE COMBUSTIBLE=:P_COMB AND FECHA=:P_FECHA AND CORTE=:P_TURNO');
        Q_Proceda.Params[0].AsInteger  := Combustible;
        Q_Proceda.Params[1].AsDateTime := Fecha;
        Q_Proceda.Params[2].AsInteger  := Corte;
        Q_Proceda.ExecQuery;
        Q_Proceda.Commit;
      end
      else if Combustible=2 then begin
        Q_Proceda := TADIQuery.Create('UPDATE HISTORIA SET AJUSTE='+FloatToStr(LITROSAJUSTARP+swLtsAdi)+' WHERE COMBUSTIBLE=:P_COMB AND FECHA=:P_FECHA AND CORTE=:P_TURNO');
        Q_Proceda.Params[0].AsInteger  := Combustible;
        Q_Proceda.Params[1].AsDateTime := Fecha;
        Q_Proceda.Params[2].AsInteger  := Corte;
        Q_Proceda.ExecQuery;
        Q_Proceda.Commit;
      end
      else if Combustible=3 then begin
        Q_Proceda := TADIQuery.Create('UPDATE HISTORIA SET AJUSTE='+FloatToStr(LITROSAJUSTARD+swLtsAdi)+' WHERE COMBUSTIBLE=:P_COMB AND FECHA=:P_FECHA AND CORTE=:P_TURNO');
        Q_Proceda.Params[0].AsInteger  := Combustible;
        Q_Proceda.Params[1].AsDateTime := Fecha;
        Q_Proceda.Params[2].AsInteger  := Corte;
        Q_Proceda.ExecQuery;
        Q_Proceda.Commit;
      end;
    end;
//  FIN DE LA ACTUALIZACION
    if PORCPEMEXPOSITIVO = 'Si' then begin //Si se solicita el porciento de la merma contable positivo
      swLtsAdi := 0;
      try
        Randomize;
        Factor_aleatorio := random(19) + 1;
        porcMerma := Redondear(Factor_aleatorio / 100, 3);

        if Corte = 1 then begin
          actualizarMermaCTble(porcMerma, Combustible, Corte, Fecha);
        end
        else begin
          Q_Procedb := TADIQuery.Create('SELECT PORCMERMACTBLE FROM HISTORIA WHERE COMBUSTIBLE=:P_COMB AND FECHA=:P_FECHA ORDER BY PORCMERMACTBLE DESC');
          Q_Procedb.Params[0].AsInteger  := Combustible;
          Q_Procedb.Params[1].AsDateTime := Fecha;
          Q_Procedb.ExecQuery;

          if Q_Procedb.RowsAffected > 0 then
            porcMerma := Redondear(Q_Procedb.Fields[0].AsFloat, 3)
          else
            actualizarMermaCTble(porcMerma, Combustible, Corte, Fecha);
        end;

        Q_LtsAdi := TADIQuery.Create('SELECT SALIDAS, (INVINICIAL_TANQUE+INVFISICO-INVFINAL_TANQUE) as SALIDASFISICAS, '+
                                     'coalesce (JARREOS, 0) as JARREOS FROM HISTORIA WHERE COMBUSTIBLE = :P_COMB AND '+
                                     'FECHA = :P_FECHA AND CORTE = :P_TURNO');
        Q_LtsAdi.Params[0].AsInteger := Combustible;
        Q_LtsAdi.Params[1].AsDateTime := Fecha;
        Q_LtsAdi.Params[2].AsInteger := Corte;
        Q_LtsAdi.ExecQuery;
        xVenta := Q_LtsAdi.FN('SALIDAS').AsFloat;
        xSalidas := Q_LtsAdi.FN('SALIDASFISICAS').AsFloat;
        xJarreos := Q_LtsAdi.FN('JARREOS').AsFloat;

        xSalidas := obtenerSalidaTanques(Corte, Combustible, Fecha);
        xAjuste := xVenta - xSalidas - xJarreos - porcMerma / 100 * xSalidas;
      finally
        Q_LtsAdi.Free;
      end;

      try
        Q_Proceda := TADIQuery.Create('UPDATE HISTORIA SET Ajuste = ' + FloatToStr(xAjuste) +
                                        ' WHERE COMBUSTIBLE = :P_COMB AND FECHA = :P_FECHA AND CORTE = :P_TURNO');
        Q_Proceda.Params[0].AsInteger  := Combustible;
        Q_Proceda.Params[1].AsDateTime := Fecha;
        Q_Proceda.Params[2].AsInteger  := Corte;
        Q_Proceda.ExecQuery;
        Q_Proceda.Commit;
      finally
        Q_Proced.Free;
      end;
    end;

    if (PORCPEMEXPOSITIVO = 'Si') and (Corte = 2) then begin
      Result := Redondear(obtenerMediaMetaCorte2(Fecha, Combustible, antes6, porcMerma), 3);

      if antes6 then
        litrosPrimerParte := Result
      else if primerAjuste = 0 then
        Result := Result + litrosPrimerParte;
    end
    else begin
      try
        Q_Historia := TADIQuery.Create('SELECT AJUSTE FROM HISTORIA WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:COMBUSTIBLE');
        Q_Historia.Params[0].AsDateTime := Fecha;
        Q_Historia.Params[1].AsInteger  := Corte;
        Q_Historia.Params[2].AsInteger  := Combustible;
        Q_Historia.ExecQuery;

        Result := Q_Historia.Fields[0].AsCurrency;
      finally
        Q_Historia.Free;
      end;
    end;
  finally
    //Q_Historia.Free;
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
  Q_Tags,Q_BorraTags:TPANQuery;
  TagValue:String;
begin
  try
    if ES_AUTOMATICO then begin
      Q_Tags:=TPANQuery.Create('SELECT * FROM DPVGTAGS WHERE FECHA=:FECHA AND CORTE=:CORTE');
      Q_Tags.Params[0].AsDateTime:=Fecha;
      Q_Tags.Params[1].AsInteger:=Corte;
    end
    else
      Q_Tags := TPANQuery.Create('SELECT (CLAVE) AS COMBUSTIBLE,TAG FROM DPVGTCMB');

      Q_Tags.ExecQuery;

    PORCENTAJE:=0.05;
    PORCENTAJEP:=0.05;
    PORCENTAJED:=0.05;

    MERMAM := 0;
    MERMAP := 0;
    MERMAD := 0;

//    Q_Tags2:=TADIQuery.Create('INSERT INTO DPVGTAGS VALUES(:FECHA,:CORTE,:COMBUSTIBLE,:TAG)');

    if Q_Tags.RowsAffected > 0 then begin
       while not Q_Tags.Eof do begin
         TagValue:=Q_Tags.FieldByName('TAG').AsString;
         case Q_Tags.FieldByName('COMBUSTIBLE').AsInteger of
           1:PORCENTAJE:= letra_a_valor(Q_Tags.FieldByName('TAG').AsString)/100;
           2:PORCENTAJEP:=letra_a_valor(Q_Tags.FieldByName('TAG').AsString)/100;
           3:PORCENTAJED:=letra_a_valor(Q_Tags.FieldByName('TAG').AsString)/100;
         end;

         Q_Tags.Next;
       end;

       try
         Q_BorraTags:=TPANQuery.Create('DELETE FROM DPVGTAGS WHERE FECHA=:FECHA AND CORTE=:CORTE');
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
  Q_Corte:TPANQuery;
begin
  try
    if rb then
      Q_Corte:=TPANQuery.Create('UPDATE DPVGCVOL SET TAG=0 WHERE FECHA=:FECHA AND CORTE=:CORTE')
    else
      Q_Corte:=TPANQuery.Create('UPDATE DPVGCVOL SET TAG=1 WHERE FECHA=:FECHA AND CORTE=:CORTE');
    Q_Corte.Params[0].AsDateTime:=Fecha;
    Q_Corte.Params[1].AsInteger:=Corte;
    Q_Corte.ExecQuery;
    Q_Corte.Commit;
  finally
    Q_Corte.Free;
  end;

  try
    Q_Corte:=TPANQuery.Create('UPDATE DPVGCVOLD SET TOTAL01=0,TOTAL02=0, TOTAL03=0, TOTAL04=0 WHERE FECHA=:FECHA AND CORTE=:CORTE');
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

procedure completa_historico(Fecha: TDateTime; corte, combustible: Integer; Acumulado: Real);
var
  qu1Historia2: TADIQuery;
  pend: Real;
begin
  pend := LitrosAju - Acumulado;
  try
    if (ARRASTRE = 'S') or (ARRASTRE = 's') then begin
      qu1Historia2 := TADIQuery.Create('UPDATE HISTORIA SET AJUSTE = :AJUSTE,PENDIENTE = :PENDIENTE WHERE FECHA = :FECHA' +
                                       ' AND CORTE = :CORTE AND COMBUSTIBLE = :COMBUSTIBLE');

      qu1Historia2.Params[0].AsFloat := Acumulado;
      qu1Historia2.Params[1].AsFloat := pend;
      qu1Historia2.Params[2].AsDateTime := Fecha;
      qu1Historia2.Params[3].AsInteger := corte;
      qu1Historia2.Params[4].AsInteger := combustible;
    end
    else begin
      qu1Historia2 := TADIQuery.Create('UPDATE HISTORIA SET AJUSTE = :AJUSTE WHERE FECHA = :FECHA AND CORTE = :CORTE ' +
                                       'AND COMBUSTIBLE = :COMBUSTIBLE');
      qu1Historia2.Params[0].AsFloat := Acumulado;
      qu1Historia2.Params[1].AsDateTime := Fecha;
      qu1Historia2.Params[2].AsInteger := corte;
      qu1Historia2.Params[3].AsInteger := combustible;
    end;
    qu1Historia2.ExecQuery;
    qu1Historia2.Commit;
  finally
    qu1Historia2.Free;
  end;
end;

function alcanza_litros(fecha: TDateTime; corte, combustible: Integer; meta, minimo: Real; antes6: Boolean): boolean;
var
  Q_NoImpr: TPANQuery;
  total_ajuste: real;
  query: string;
begin
    minimo := 30;
    total_ajuste := 0;
    query := 'SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHA = :FECHA AND CORTE = :CORTE ' +
             'AND COMBUSTIBLE = :COMBUSTIBLE AND IMPORTE >= :IMPORTE AND IMPRESO = ''No'' ' +
             'AND JARREO = ''No'' AND CONSIGNACION = ''No'' AND TAG <> 5';


    if (TIPOTAG = 3) and (corte = 2) and (PORCPEMEXPOSITIVO = 'Si') then begin
      if antes6 then
        query := query + ' AND HORA <= :HORA'
      else
        query := query + ' AND HORA > :HORA';
    end;

    while (total_ajuste < meta) or (minimo >= 20) do begin

      try
        Q_NoImpr := TPANQuery.Create(query);
        Q_NoImpr.Params[0].AsDateTime := fecha;
        Q_NoImpr.Params[1].AsInteger := corte;
        Q_NoImpr.Params[2].AsInteger := combustible;
        Q_NoImpr.Params[3].AsFloat := minimo;
        if (TIPOTAG = 3) and (corte = 2) and (PORCPEMEXPOSITIVO = 'Si') then begin
          Q_NoImpr.Params[4].AsDateTime := IncHour(fecha, 6);
        end;
        Q_NoImpr.ExecQuery;

        total_ajuste := Q_NoImpr.Fields[0].AsFloat;

        if total_ajuste < meta then begin
           Result := False;
           break;
        end
        else begin
           Result := True;
           break;
        end;

        minimo := minimo - 10;
        break;
      finally
        Q_NoImpr.Free;
      end;
    end;
end;

function alcanza_litros2(fecha: TDateTime; corte, combustible: Integer; meta, minimo: Real; antes6: Boolean): boolean;
var
  Q_NoImpr: TPANQuery;
  total_ajuste: real;
  query: string;
begin
    minimo := 30;
    total_ajuste := 0;
    query := 'SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHA = :FECHA AND CORTE = :CORTE ' +
             'AND COMBUSTIBLE = :COMBUSTIBLE AND IMPORTE >= :IMPORTE AND FACTURADO = ''No'' AND ' +
             'JARREO = ''No'' sAND CONSIGNACION = ''No'' AND TAG <> 5';

    if (TIPOTAG = 3) and (corte = 2) and (PORCPEMEXPOSITIVO = 'Si') then begin
      if antes6 then
        query := query + ' AND HORA <= :HORA'
      else
        query := query + ' AND HORA > :HORA';
    end;

    while (total_ajuste<meta) or (minimo>=20) do begin

      try
        Q_NoImpr:=TPANQuery.Create(query);
        Q_NoImpr.Params[0].AsDateTime:=fecha;
        Q_NoImpr.Params[1].AsInteger:=corte;
        Q_NoImpr.Params[2].AsInteger:=combustible;
        Q_NoImpr.Params[3].AsFloat:=minimo;
        if (TIPOTAG = 3) and (corte = 2) and (PORCPEMEXPOSITIVO = 'Si') then begin
          Q_NoImpr.Params[4].AsDateTime := IncHour(fecha, 6);
        end;
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

function alcanza_litros3(fecha: TDateTime; corte, combustible: Integer; meta, minimo: Real; antes6: Boolean): boolean;
var
  Q_NoImpr: TPANQuery;
  total_ajuste: real;
  query: string;
begin
    minimo := 25;
    total_ajuste := 0;
    query := 'SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHA = :FECHA AND CORTE = :CORTE AND COMBUSTIBLE = :COMBUSTIBLE ' +
             'AND IMPORTE >= :IMPORTE AND JARREO= ''No'' AND CONSIGNACION = ''No'' AND TAG <> 5';

    if (TIPOTAG = 3) and (corte = 2) and (PORCPEMEXPOSITIVO = 'Si') then begin
      if antes6 then
        query := query + ' AND HORA <= :HORA'
      else
        query := query + ' AND HORA > :HORA';
    end;

    while (total_ajuste < meta) or (minimo >= 5) do begin

      try
        Q_NoImpr:=TPANQuery.Create(query);
        Q_NoImpr.Params[0].AsDateTime:=fecha;
        Q_NoImpr.Params[1].AsInteger:=corte;
        Q_NoImpr.Params[2].AsInteger:=combustible;
        Q_NoImpr.Params[3].AsFloat:=minimo;
        if (TIPOTAG = 3) and (corte = 2) and (PORCPEMEXPOSITIVO = 'Si') then begin
          Q_NoImpr.Params[4].AsDateTime := IncHour(fecha, 6);
        end;
        Q_NoImpr.ExecQuery;

        total_ajuste := Q_NoImpr.Fields[0].AsFloat;

        if total_ajuste < meta then begin
           Result := False;
           break;
        end
        else begin
           Result := True;
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
    Q_Fechas := TADIQuery.Create('SELECT FIRST 500 FECHA,CORTE,ESTATUS FROM FECHAS ORDER BY FECHA DESC');
    Q_Fechas.ExecQuery;

    with FAJUMENU do begin
      try
        cxGrid1DBTableView1.DataController.BeginUpdate;

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
        cxGrid1DBTableView1.DataController.GotoLast;

      finally
        cxGrid1DBTableView1.DataController.EndUpdate;
      end;
    end;
  finally
    Q_Fechas.Close;
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
        TOPEM := TOPE_MAXIMO;
        TOPEP := TOPE_MAXIMO;
        TOPED := TOPE_MAXIMO;
      except
        TOPEM := 0;
        TOPEP := 0;
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

    AJUSTALITROS:=Config.CONFIGAjusteLitros;
    MINIMOLITROS:=StrToFloatDef(Config.CONFIGMinimoLitros,0);
    LITROSAJUSTAR:= StrToFloatDef(Config.CONFIGLitrosAjustar,0);
    LITROSAJUSTARP:= StrToFloatDef(Config.CONFIGLitrosAjustarP,0);
    LITROSAJUSTARD:= StrToFloatDef(Config.CONFIGLitrosAjustarD,0);

//    MODOAJUSTE := 4;
//    TIPOTAG := 3;

    // Arrastrar el saldo que no logre ajustar debido a falta de venta
    ARRASTRE := Config.CONFIGArrastre;
    
    PORCPEMEXPOSITIVO := Config.CONFIGPorcPemexPositivo;

    FUSIONTANQUES := Config.CONFIGFusionTanques;
    SOLOENTRADAS  := Config.CONFIGSoloEntradas;

    de6a6 := Config.CONFIGDe6a6='Si';

    REGISTRATICKDIF := Config.CONFIGRegistraTickDif='Si';

    FAJUMENU.Caption := 'OK';
    FAJUMENU.Label3.Caption := 'TipoAju:'+IntToStr(TIPOTAG);
    FAJUMENU.Label4.Caption := 'ModoAju:'+IntToStr(MODOAJUSTE);

    DESCARTACOMB := StrToIntDef(Config.CONFIGDescartarCombustible,0);
    CONEXION_OG  := Config.CONFIGConexionOG;
    Licencia     := Config.CONFIGLicencia;
    FechaVence   := StrToDateDef(Config.CONFIGFechaVence,0);
  except
    on e: Exception do begin
      FAJUMENU.Caption := e.Message;
      PORCENTAJE:=0.05;
      PORCENTAJEP:=0.05;
      PORCENTAJED:=0.05;
      AJUSTALITROS:='No';
      MINIMOLITROS:=0;
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

function ExisteFolioEnClaves(AFolio: Integer): Boolean;
var
  Q_Claves: TADIQuery;
begin
  try
    Q_Claves := TADIQuery.Create('SELECT FOLIO FROM CLAVES WHERE FOLIO = :FOLIO');
    Q_Claves.ParamByName('FOLIO').AsInteger := AFolio;
    Q_Claves.ExecQuery;

    if Q_Claves.RowsAffected > 0 then
      Result := True
    else
      Result := False;
  finally
    Q_Claves.Free;
  end;
end;

procedure ActualizaAjuste(AFolio: Integer; AAjuste: Double);
var
  Q_Claves: TADIQuery;
begin
  try
    Q_Claves := TADIQuery.Create('UPDATE CLAVES SET VOLUMEN2 = :VOLUMEN2 WHERE FOLIO = :FOLIO');
    Q_Claves.ParamByName('FOLIO').AsInteger   := AFolio;
    Q_Claves.ParamByName('VOLUMEN2').AsDouble := AAjuste;
    Q_Claves.ExecQuery;
    Q_Claves.Commit;

  finally
    Q_Claves.Free;
  end;
end;

procedure aplica_cambios;
var
   Q_AplicaAjuste2: TPANQuery;
   QInsertaAju2: TADIQuery;
   dll : OleVariant;
   resp:string;
begin
   try
     with FAJUMENU do begin
        bitaAju.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',now)+' aplica_cambios ');
        Mem_Datos.First;
        if not DBCONSOLA.Connected then begin
          DBCONSOLA.Params[0]:='USER NAME='+VsDataBaseUsu;
          DBCONSOLA.Params[1]:='PASSWORD='+VsDataBaseClave;
          DBCONSOLA.Open;
        end;         
        if CONEXION_OG<>'' then
          dll := CreateOleObject('ConexionSQL.UpdateTickets');
        while not Mem_Datos.Eof do begin
          if Mem_Datostag.AsFloat <> 0 then begin
            QL_Cons.Params[0].AsFloat   := AjustaFloat(Mem_DatosAjuste.AsFloat,2);  //Mem_DatosVolumen.AsFloat - Mem_DatosDatosAju.AsFloat; //volumen
            QL_Cons.Params[1].AsFloat   := AjustaFloat(Mem_DatosAjuste.AsFloat*Mem_DatosPrecio.AsFloat,0);//importe
            QL_Cons.Params[3].AsInteger := Mem_DatosFolio.AsInteger;
            QL_Cons.Params[2].AsString  := EncriptaCadena(NUMEROESTACION, FormatFloat('###0.00', Mem_DatosImporte.AsFloat));
            try
              QL_Cons.ExecSQL;
              if CONEXION_OG<>'' then begin
                resp:=dll.ActualizarIdTicket(Mem_DatosFolioOG.AsInteger,AjustaFloat(Mem_DatosAjuste.AsFloat*Mem_DatosPrecio.AsFloat,0),AjustaFloat(Mem_DatosAjuste.AsFloat,2),CONEXION_OG);
                if StrToFloatDef(resp,-99)=-99 then
                  raise Exception.Create(resp);
              end;
            except
//              on E:Exception do
//                mmo1.Lines.Add(e.Message);
              on e:Exception do raise Exception.Create('Error aplicar cambios: '+e.Message);
            end;

            if (ExisteFolioEnClaves(Mem_DatosFolio.AsInteger)) then
              ActualizaAjuste(Mem_DatosFolio.AsInteger, Mem_DatosAjuste.AsFloat)
            else begin
              try
                QInsertaAju2 := TADIQuery.Create('INSERT INTO CLAVES (FOLIO, FECHA, CORTE, VOLUMEN1, VOLUMEN2, ' +
                                                 'COMBUSTIBLE, PRECIO, IMPORTE, FECHAADMIN, TURNOADMIN, IDTRANSACCIONOG) VALUES ('+
                                                 ':FOLIO, :FECHA, :CORTE, :VOLUMEN1, :VOLUMEN2, :COMBUSTIBLE, ' +
                                                 ':PRECIO, :IMPORTE, :FECHAADMIN, :TURNOADMIN, :IDTRANSACCIONOG)');
                QInsertaAju2.Params[0].AsInteger := Mem_DatosFolio.AsInteger;
                QInsertaAju2.Params[1].Value := fechax;
                QInsertaAju2.Params[2].AsInteger := cortex;
                QInsertaAju2.Params[3].AsFloat := Mem_DatosVolumen.AsFloat;
                QInsertaAju2.Params[4].AsFloat := Mem_DatosAjuste.Asfloat;
                QInsertaAju2.Params[5].AsFloat := Mem_DatosCombustible.AsInteger;
                QInsertaAju2.Params[6].AsFloat := Mem_DatosPrecio.AsFloat;
                QInsertaAju2.Params[7].AsFloat := Mem_DatosImporte.AsFloat;
                QInsertaAju2.Params[8].AsDateTime := Mem_DatosFechaAdmin.AsDateTime;
                QInsertaAju2.Params[9].AsInteger  := Mem_DatosTurnoAdmin.AsInteger;
                QInsertaAju2.Params[10].AsInteger  := Mem_DatosFolioOG.AsInteger;
                try
                  QInsertaAju2.ExecQuery;
                except
                  on E:Exception do begin
                    mmo1.Lines.Add(QInsertaAju2.Params[0].AsString);
                    mmo1.Lines.Add(E.Message);
                  end;
                end;
              finally
                QInsertaAju2.Free;
              end;
            end;
          end;
          Mem_Datos.Next;
        end;
     end;
   finally
     FAJUMENU.DBCONSOLA.Close;
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
  end;
end;

procedure selecciona_transacciones2_6_6(combustible:byte;meta:real);
var
   Acumulado_tmp,Acumulado,ajuste,_ca:Real;
   c:Integer;
   menor_a_limite:boolean;
   total_ticket:real;
   i:shortint;
begin
  try
    Acumulado:=0; Acumulado_tmp:=0; i:=2;
    menor_a_limite:=false;
    _ca:=MINIMOTICKET; //10;
    with FAJUMENU do begin
      Mem_Datos.First;
      while Acumulado < meta do begin
        if Mem_DatosAjuste.AsFloat>0 then
          Acumulado_tmp := Mem_DatosAjuste.AsFloat * Mem_DatosPrecio.AsFloat
        else
          Acumulado_tmp := Mem_DatosImporte.AsFloat;
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

procedure selecciona_transacciones2(combustible: byte; meta, primerAjuste: real);
var
   Acumulado_tmp, Acumulado, ajuste, _ca: Real;
   c: Integer;
   menor_a_limite: boolean;
   total_ticket: real;
   i: shortint;
begin
  try
    bitaAju.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',now)+' selecciona_transacciones2 ');
    Acumulado := 0;
    Acumulado_tmp := 0;
    i := 2;
    menor_a_limite := false;
    _ca := MINIMOTICKET; //10;

    with FAJUMENU do begin
      i:=3;
      Mem_Datos.First;
      while Acumulado < meta do begin
        if Mem_DatosAjuste.AsFloat>0 then
          Acumulado_tmp := Mem_DatosAjuste.AsFloat * Mem_DatosPrecio.AsFloat
        else
          Acumulado_tmp := Mem_DatosImporte.AsFloat;
        if (Mem_DatosImpreso.AsString='Si') and (i>0) then begin
          Mem_Datos.First;
          Dec(i);
          Continue;
        end;
        if Acumulado_tmp > MINIMOTICKET then begin
          menor_a_limite := True;
          Mem_Datos.Edit;
          ajuste := (1 / Mem_DatosPrecio.AsFloat) * 20;

          if ajuste > (Meta - Acumulado) then
            ajuste := Meta - Acumulado;

          Acumulado := Acumulado + Ajuste;

          if Mem_DatosAjuste.AsFloat - ajuste > 0 then begin
            Mem_DatosAjuste.AsFloat := Mem_DatosAjuste.AsFloat - ajuste;
            Mem_Datostag.AsInteger  := 1;
          end;

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
      completa_historico(fechax, cortex, combustible, Acumulado + primerAjuste);
      MINIMOTICKET:=_ca;
    end
  except
    on e:exception do
    FAJUMENU.mmo1.Lines.Add(FAJUMENU.Mem_DatosFolio.AsString + ' ' + e.Message);
  end;
end;


procedure llena_datos(fecha: TDateTime; turno, combustible: byte; antes6: Boolean);
var
  fechas, hora :string;
  Q_Temp1: TPANQuery;
  totalVol:Double;
begin
  with FAJUMENU do begin
    bitaAju.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',now)+' llena_datos ');
    cortex:=1;
    fechax:=fecha;
    fechas:=DateToStr(fecha);
    try
      Q_Temp1 := TPANQuery.Create('');
      Q_Temp1.SQL.Clear;
      Q_Temp1.SQL.Add('SELECT FOLIO, COMBUSTIBLE, VOLUMEN, IMPORTE, PRECIO, FECHATURNO, TURNO, IMPRESO, IDTRANSACCIONOG');
      Q_Temp1.SQL.Add('FROM');
      Q_Temp1.SQL.Add(' DPVGMOVI');
      if de6a6 then
        Q_Temp1.SQL.Add('WHERE HORA BETWEEN :FECHAI AND :FECHAF')
      else begin
        Q_Temp1.SQL.Add('WHERE FECHATURNO = :FECHA');
        Q_Temp1.SQL.Add('AND CORTE = :CORTE');
      end;
      Q_Temp1.SQL.Add('AND COMBUSTIBLE = :COMBUSTIBLE');
      Q_Temp1.SQL.Add('AND DESCUENTO = 0');
      Q_Temp1.SQL.Add('AND TAG <> 5');
      Q_Temp1.SQL.Add('AND IMPORTE >= 30');
      Q_Temp1.SQL.Add('AND JARREO = ''No''');
      Q_Temp1.SQL.Add('AND CONSIGNACION = ''No''');
      Q_Temp1.SQL.Add('ORDER BY IMPRESO, FACTURADO');
      //    MODOAJUSTE := 4;
      if MODOAJUSTE = 4 then  begin
        if (TIPOTAG = 3) and (turno = 2) and (PORCPEMEXPOSITIVO = 'Si') then begin
          if antes6 then
            hora := ' AND HORA <= :HORA'
          else
            hora := ' AND HORA > :HORA';
        end
        else
          hora := '';
        if (TIPOTAG = 3) and (turno = 2) and (PORCPEMEXPOSITIVO = 'Si') then begin
           Q_Temp1.Params[3].AsDateTime := IncHour(fecha, 6);
        end;
      end
      else
        Q_Temp1.SQL[6] := 'AND IMPRESO=''No''';

      Q_Temp1.Close;
      if de6a6 then begin
        Q_Temp1.Params[0].AsDateTime := fhinicial;
        Q_Temp1.Params[1].AsDateTime := fhfinal;
      end
      else begin
        Q_Temp1.Params[0].Value := fecha;
        Q_Temp1.Params[1].AsInteger := turno;
      end;
      Q_Temp1.Params[2].AsInteger := combustible;
      Q_Temp1.ExecQuery;
      if Q_Temp1.RowsAffected > 0 then begin
        alcanzan := True;
        while not Q_Temp1.Eof do begin
          Mem_Datos.Insert;
          Mem_DatosFolio.AsInteger := Q_Temp1.Fields[0].AsInteger;
          Mem_DatosCombustible.AsInteger := Q_Temp1.Fields[1].AsInteger;
          Mem_DatosVolumen.AsFloat := Q_Temp1.Fields[2].AsFloat;
          Mem_DatosImporte.AsFloat := Q_Temp1.Fields[3].AsFloat;
          Mem_DatosPrecio.AsFloat := Q_Temp1.Fields[4].AsFloat;
          Mem_DatosAjuste.AsFloat := Mem_DatosVolumen.AsFloat;
          Mem_Datostag.AsInteger := 0;
          Mem_DatosFechaAdmin.AsDateTime := Q_Temp1.Fields[5].AsDateTime;
          Mem_DatosTurnoAdmin.AsInteger := Q_Temp1.Fields[6].AsInteger;
          Mem_DatosImpreso.AsString := Q_Temp1.Fields[7].AsString;
          Mem_DatosFolioOG.AsInteger := Q_Temp1.Fields[8].AsInteger;
          Mem_Datos.Post;
          Q_Temp1.Next;
        end;
      end
      else begin
        alcanzan := false;
      end;
    finally
      Q_Temp1.Free;
    end;
  end;
end;


function ventas_turno(fecha:TDateTime; turno, combustible: byte):real;
var
  Q_Ventas:TPANQuery;
begin
  try
     Q_Ventas := TPANQuery.Create('SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHATURNO=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:combustible AND JARREO=''No''');
     Q_Ventas.Params[0].Value:=fecha;
     Q_Ventas.Params[1].AsInteger:=turno;
     Q_Ventas.Params[2].AsInteger:=combustible;
     Q_Ventas.ExecQuery;{-------------------------------------------------------------------------------
  Procedure: ventas_turno
  Author:    Administrador
  DateTime:  03/05/2013 02:13:24 p.m.
  Arguments: fecha:TDateTime;turno,combustible:byte
  Result:    real
-------------------------------------------------------------------------------}
    result:=Q_Ventas.Fields[0].AsFloat;
  finally
    Q_Ventas.Free;
  end;
end;


function dame_total_combustible(combustible:byte; var InvVeeder:Real):real;
var
  sifon:Boolean;

  function DameMerma(pCombustible:Integer; pEntrada:Real):Real;
  var
    Q_Merma:TADIQuery;
  begin
    try
      Q_Merma := TADIQuery.Create('Select coalesce(Entrada,0) as Entrada, coalesce(Merma,0) as Merma, coalesce(Tolerancia,0) as Toleracia from Mermas where Combustible=:pCombustible');
      Q_Merma.ParamByName('pCombustible').AsInteger:=pCombustible;
      Q_Merma.ExecQuery;
      while not Q_Merma.eof do begin
        if Abs(Q_Merma.FN('Entrada').AsFloat-pEntrada)<=Q_Merma.FN('Toleracia').AsFloat then begin
          Result := Q_Merma.FN('Entrada').AsFloat - (Q_Merma.FN('Entrada').AsFloat * Q_Merma.FN('Merma').AsFloat);
          Break;
        end;
        Q_Merma.Next;
      end;
      Q_Merma.Free;
    except
      Result:=184;
      Q_Merma.Free;
    end;
  end;
begin
  bitaAju.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',now)+' dame_total_combustible ');
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
            InvInicial := InvInicial + Mem_TanquesInvInivial.AsFloat;
            InvFinal   := InvFinal + Mem_TanquesInvFinal.AsFloat;
            if RestarMerma then
              Entradas := Entradas + DameMerma(combustible,Mem_TanquesEntradas.AsFloat)
            else
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
      result:=result+((InvInicial+Entradas)-InvFinal);
  end;
end;


function medicion_tanque_turno_anterior(corte:byte;tanque:string;fecha_completa:TDateTime):real;
var
 Ql_VoltAnt:TPANQUERY;
begin
  try
     QL_VoltAnt:=TPANQUERY.Create('');
     QL_VoltAnt.SQL.Clear;
     if FUSIONTANQUES='No' then begin
       Ql_VoltAnt.Sql.Add('SELECT *');
       Ql_VoltAnt.Sql.Add('FROM     ');
       if de6a6 then
         Ql_VoltAnt.Sql.Add('   DPVGTURNT')
       else
         Ql_VoltAnt.Sql.Add('   DPVGCVOLT');

       Ql_VoltAnt.Sql.Add('WHERE TANQUE='+tanque);
       Ql_VoltAnt.Sql.Add('AND FECHA=:FECHA');
       Ql_VoltAnt.Sql.Add('AND '+IfThen(de6a6,'TURNO','CORTE')+'=:CORTE');
     end
     else begin
       Ql_VoltAnt.SQL.Add('SELECT SUM(VOLUMEN) AS VOLUMEN');
       if de6a6 then
         Ql_VoltAnt.SQL.Add('FROM DPVGTURNT')
       else
         Ql_VoltAnt.SQL.Add('FROM DPVGCVOLT');

       Ql_VoltAnt.SQL.Add('WHERE COMBUSTIBLE='+tanque);
       Ql_VoltAnt.Sql.Add('AND FECHA=:FECHA');
       Ql_VoltAnt.Sql.Add('AND '+IfThen(de6a6,'TURNO','CORTE')+'=:CORTE');
     end;
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
   Ql_Recepcion2:TPANQuery;
   Q_Tanq:TPANQuery;
   Q_Docu:TPANQuery;

    function RestarMerma:Boolean;
    var
      Q_OPC:TADIQuery;
    begin
      Result:=False;
      try
        Q_OPC := TADIQuery.Create('Select UsarTablaMermas from OPC');
        Q_OPC.ExecQuery;
        if Q_OPC.FN('UsarTablaMermas').AsString='Si' then
          Result:=True
        else
          Result:=False;
        Q_OPC.Free;
      except
        Q_OPC.Free;
        Result:=False;
      end;
    end;

  function DameMerma(pCombustible:Integer; pEntrada:Real):Real;
  var
    Q_Merma:TADIQuery;
  begin
    try
      Result:=pEntrada;
      Q_Merma := TADIQuery.Create('Select coalesce(Entrada,0) as Entrada, coalesce(Merma,0) as Merma, coalesce(Tolerancia,0) as Toleracia from Mermas where Combustible=:pCombustible');
      Q_Merma.ParamByName('pCombustible').AsInteger:=pCombustible;
      Q_Merma.ExecQuery;
      while not Q_Merma.eof do begin
        if Abs(Q_Merma.FN('Entrada').AsFloat-pEntrada)<=Q_Merma.FN('Toleracia').AsFloat then begin
          Result := pEntrada-(Q_Merma.FN('Entrada').AsFloat * Q_Merma.FN('Merma').AsFloat);
          Break;
        end;
        Q_Merma.Next;
      end;
      Q_Merma.Free;
    except
      Result:=184;
      Q_Merma.Free;
    end;
  end;

begin
    try

       entradaveeder := 0;

       Q_Tanq := TPANQuery.Create('SELECT MAXIMAENTRADA FROM DPVGTANQ WHERE TANQUE=:TANQUE');
       if FUSIONTANQUES='Si' then
         Q_Tanq.SQL.Text:='SELECT SUM(MAXIMAENTRADA) AS MAXIMAENTRADA FROM DPVGTANQ WHERE COMBUSTIBLE=:TANQUE';
       Q_Tanq.Params[0].AsShort:= tanque;
       Q_Tanq.ExecQuery;

       if de6a6 then begin
         if INCLUIR_VENTAS_DESCARGA='Si' then begin
            if FUSIONTANQUES='Si' then
              QL_Recepcion2:=TPANQUery.Create('SELECT SUM(VOLUMENRECEPCION + COALESCE(VENTAS,0)) AS VOLUMENRECEPCION, SUM(VOLUMENRECEPCION) AS VOLUMENFISICO FROM DPVGETAN WHERE FECHAHORA BETWEEN :FECHAI AND :FECHAF AND COMBUSTIBLE=:TANQUE AND TRASPASO=''No''')
            else
              QL_Recepcion2:=TPANQUery.Create('SELECT SUM(VOLUMENRECEPCION + COALESCE(VENTAS,0)) AS VOLUMENRECEPCION, SUM(VOLUMENRECEPCION) AS VOLUMENFISICO FROM DPVGETAN WHERE FECHAHORA BETWEEN :FECHAI AND :FECHAF AND TANQUE=:TANQUE AND TRASPASO=''No''')
         end
         else begin
            if FUSIONTANQUES='Si' then
              QL_Recepcion2:=TPANQUery.Create('SELECT SUM(VOLUMENRECEPCION) AS VOLUMENRECEPCION FROM DPVGETAN WHERE FECHAHORA BETWEEN :FECHAI AND :FECHAF AND COMBUSTIBLE=:TANQUE AND TRASPASO=''No''')
            else
              QL_Recepcion2:=TPANQUery.Create('SELECT VOLUMENRECEPCION FROM DPVGETAN WHERE FECHAHORA BETWEEN :FECHAI AND :FECHAF AND TANQUE=:TANQUE AND TRASPASO=''No''');
         end;
         QL_Recepcion2.Params[0].AsDateTime:=fhinicial;
         QL_Recepcion2.Params[1].AsDateTime:=fhfinal;
         QL_Recepcion2.Params[2].AsInteger:=tanque;
       end
       else begin
         if INCLUIR_VENTAS_DESCARGA='Si' then begin
            if FUSIONTANQUES='Si' then
              QL_Recepcion2:=TPANQUery.Create('SELECT SUM(VOLUMENRECEPCION + COALESCE(VENTAS,0)) AS VOLUMENRECEPCION, SUM(VOLUMENRECEPCION) AS VOLUMENFISICO FROM DPVGETAN WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:TANQUE AND TRASPASO=''No''')
            else
              QL_Recepcion2:=TPANQUery.Create('SELECT SUM(VOLUMENRECEPCION + COALESCE(VENTAS,0)) AS VOLUMENRECEPCION, SUM(VOLUMENRECEPCION) AS VOLUMENFISICO FROM DPVGETAN WHERE FECHA=:FECHA AND CORTE=:CORTE AND TANQUE=:TANQUE AND TRASPASO=''No''')
         end
         else begin
            if FUSIONTANQUES='Si' then
              QL_Recepcion2:=TPANQUery.Create('SELECT SUM(VOLUMENRECEPCION) AS VOLUMENRECEPCION FROM DPVGETAN WHERE FECHA=:FECHA AND CORTE=:CORTE AND COMBUSTIBLE=:TANQUE AND TRASPASO=''No''')
            else
              QL_Recepcion2:=TPANQUery.Create('SELECT VOLUMENRECEPCION FROM DPVGETAN WHERE FECHA=:FECHA AND CORTE=:CORTE AND TANQUE=:TANQUE AND TRASPASO=''No''');
         end;
         QL_Recepcion2.Params[0].value:=Fecha;
         QL_Recepcion2.Params[1].AsInteger:=Corte;
         QL_Recepcion2.Params[2].AsInteger:=tanque;
       end;
       QL_Recepcion2.ExecQuery;
       if Ql_Recepcion2.Fields[0].AsFloat>0 then begin
           if INCLUIR_VENTAS_DESCARGA='Si' then
             entradaveeder := QL_Recepcion2.FieldByName('VOLUMENFISICO').AsFloat
           else
             entradaveeder := QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat;

           if FUSIONTANQUES='Si' then begin
             if SOLOENTRADAS='Si' then begin
               if (QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat>=9000) and (QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat<=11000) then
                 Result:=10000
               else if (QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat>=19000) and (QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat<=21000) then
                 Result:=20000;
             end
             else begin
               if de6a6 then begin
                 Q_Docu:=TPANQuery.Create('SELECT SUM(VOLPEMEX) AS FACT FROM DPVGDOCU WHERE '+
                                          'FOLIOENTRADA IN (SELECT FOLIO FROM DPVGETAN WHERE FECHAHORA BETWEEN :FECHAI AND '+
                                          ':FECHAF AND COMBUSTIBLE=:COMB AND TRASPASO=''No'')');
                 Q_Docu.ParamByName('FECHAI').AsDateTime:=fhinicial;
                 Q_Docu.ParamByName('FECHAF').AsDateTime:=fhfinal;
                 Q_Docu.ParamByName('COMB').AsInteger:=tanque;
               end
               else begin
                 Q_Docu:=TPANQuery.Create('SELECT SUM(VOLPEMEX) AS FACT FROM DPVGDOCU WHERE '+
                                          'FOLIOENTRADA IN (SELECT FOLIO FROM DPVGETAN WHERE FECHA=:FECHA AND '+
                                          'CORTE=:CORTE AND COMBUSTIBLE=:COMB AND TRASPASO=''No'')');
                 Q_Docu.ParamByName('FECHA').AsDateTime:=fecha;
                 Q_Docu.ParamByName('CORTE').AsInteger:=corte;
                 Q_Docu.ParamByName('COMB').AsInteger:=tanque;
               end;
               Q_Docu.ExecQuery;
               Ql_Recepcion2.Close;
               if de6a6 then begin
                 Ql_Recepcion2.SQL.Add('AND FOLIO NOT IN(SELECT FOLIOENTRADA FROM DPVGDOCU WHERE FECHA BETWEEN :FECHAI AND :FECHAF AND COMBUSTIBLE=:TANQUE)');
                 QL_Recepcion2.ParamByName('FECHAI').AsDateTime:=fhinicial-1;
                 QL_Recepcion2.ParamByName('FECHAF').AsDateTime:=fhfinal+1;
                 QL_Recepcion2.ParamByName('TANQUE').AsInteger:=tanque;
               end
               else begin
                 Ql_Recepcion2.SQL.Add('AND FOLIO NOT IN(SELECT FOLIOENTRADA FROM DPVGDOCU WHERE FECHA=:FECHA AND COMBUSTIBLE=:TANQUE)');
                 QL_Recepcion2.ParamByName('FECHA').AsDateTime:=Fecha;
                 QL_Recepcion2.ParamByName('CORTE').AsInteger:=Corte;
                 QL_Recepcion2.ParamByName('TANQUE').AsInteger:=tanque;
               end; 
               Ql_Recepcion2.ExecQuery;
               if QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat>1000 then
                 Result:=Q_Docu.FieldByName('FACT').AsFloat+Trunc((QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat/1000)+1)*1000
               else
                 Result:=Q_Docu.FieldByName('FACT').AsFloat;
               Q_Docu.Close;
               Q_Docu.Free;
             end;
           end
           else begin
             if RestarMerma then begin
                result:= DameMerma(combustible, QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat);
             end
             else
                result:=QL_Recepcion2.FieldByName('VOLUMENRECEPCION').AsFloat;

             if result > Q_Tanq.Fields[0].AsFloat then begin
               if RestarMerma then begin
                 Result:=DameMerma(combustible, Q_Tanq.Fields[0].AsFloat);
               end
               else
                 result := Q_Tanq.Fields[0].AsFloat;
             end;
           end;

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
       Q_Tanq.Close;
       Q_Tanq.Free;
       Ql_Recepcion2.Close;
       Ql_Recepcion2.Free;
    end;
end;

function obtenerCantidadTag5(fecha: TDateTime; corte, comb: Integer): Real;
var
  qTag5 : TPANQuery;
  valor : Real;
begin
  valor := 0.0;

  try
    qTag5 := TPANQuery.Create('SELECT SUM(VOLUMEN)VOLUMEN FROM DPVGMOVI WHERE FECHA = :FECHA AND CORTE = :CORTE AND COMBUSTIBLE = :COMBUSTIBLE AND TAG = 5');
    qTag5.Params[0].AsDate := fecha;
    qTag5.Params[1].AsInteger := corte;
    qTag5.ExecQuery;

    if qTag5.RecordCount > 0 then
      valor := qTag5.FieldByName('VOLUMEN').AsFloat;

    qTag5.Close;
    qTag5.Free;
  except
    //
  end;

  Result := valor;
end;

procedure analisis_inicial(fecha,fechahora:TDateTime;Corte:Byte);
var
   Q_Datos, Q_Turno_ant: TPANQuery;
   quHistoria, quFecha: TADIQuery;
   i: byte;
   fechas: String;
   M,P,D: Boolean;
   Combust: string;
   xfechahora: string;
   acu: real;
   topetmp, ev, pEntradas: Real;
   antes6, seguirAjustando: Boolean;
   jarreos:Double;
   corte_OG:Integer;
begin
 with FAJUMENU do begin
   try
     bitaAju.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',now)+' analisis_inicial ');
     JvGIFAnimator1.Visible:=True;
     if (MODOAJUSTE=3) and (TIPOTAG=3) and (AJUSTALITROS='Si') then begin
       LITROSAJUSTAR:=StrToFloatDef(EdAjuLtM.Text,0);
       LITROSAJUSTAR:=DivideFloat(LITROSAJUSTAR,1);

       LITROSAJUSTARP:=StrToFloatDef(EdAjuLtP.Text,0);
       LITROSAJUSTARP:=DivideFloat(LITROSAJUSTARP,1);

       LITROSAJUSTARD:=StrToFloatDef(EdAjuLtD.Text,0);
       LITROSAJUSTARD:=DivideFloat(LITROSAJUSTARD,1);
     end;

     borra_ajuste_de_historia(fecha,corte);

     Mem_Tanques.Close;
     Mem_Tanques.Open;
     fechas:=FormatDateTime('mm/dd/yyyy',fecha);

     if de6a6 then begin
       Q_Datos:=TPANQuery.Create('SELECT T.*, F.FECHAHORAFINAL FROM DPVGTURNT T, DPVGTURN F WHERE FECHA=:FECHA AND TURNO=3 '+
                                 'AND T.FECHA=F.FECHA AND T.TURNO=F.TURNO ORDER BY TANQUE ');
       if FUSIONTANQUES='Si' then
         Q_Datos.SQL.Text:='SELECT COMBUSTIBLE AS TANQUE,COMBUSTIBLE,SUM(VOLUMEN) AS VOLUMEN,F.FECHAHORAFINAL '+
                           'FROM DPVGTURNT T, DPVGTURN F WHERE FECHA=:FECHA  AND TURNO=3 '+
                           'AND T.FECHA=F.FECHA AND T.TURNO=F.TURNO GROUP BY COMBUSTIBLE, F.FECHAHORAFINAL ORDER BY COMBUSTIBLE';
       Q_Datos.Params[0].Value:=fecha;
       Q_Datos.ExecQuery;

       Q_Turno_Ant:=TPANQuery.Create('SELECT * FROM DPVGTURN WHERE FECHA=:FECHA AND TURNO=3');
       Q_Turno_ant.Params[0].AsDateTime := fecha-1;
     end
     else begin
       if REGISTRATICKDIF then
         DifLecturasVtas(fecha);
       Q_Datos:=TPANQuery.Create('SELECT * FROM DPVGCVOLT WHERE FECHA=:FECHA AND CORTE=:TURNO ORDER BY TANQUE');
       if FUSIONTANQUES='Si' then
         Q_Datos.SQL.Text:='SELECT COMBUSTIBLE AS TANQUE,COMBUSTIBLE,SUM(VOLUMEN) AS VOLUMEN '+
                           'FROM DPVGCVOLT WHERE FECHA=:FECHA  AND CORTE=:TURNO '+
                           'GROUP BY COMBUSTIBLE ORDER BY COMBUSTIBLE';
       Q_Datos.Params[0].Value:=fecha;
       Q_Datos.Params[1].AsInteger:=Corte;
       Q_Datos.ExecQuery;

       Q_Turno_Ant:=TPANQuery.Create('SELECT * FROM DPVGCVOL WHERE FECHA=:FECHA AND CORTE=:CORTE');

       if corte = 1 then begin
         Q_Turno_ant.Params[0].AsDateTime := fecha-1;
         Q_Turno_ant.Params[1].AsInteger := dame_maximo_turno_tanques(fecha-1) //6;
       end
       else begin
         Q_Turno_ant.Params[0].AsDateTime := fecha;
         Q_Turno_ant.Params[1].AsInteger := Corte -1;
       end;
     end;

     Q_Turno_Ant.ExecQuery;

     SIFONM := 0;
     SIFONP := 0;
     SIFOND := 0;

     if de6a6 then begin
       fhinicial:=Q_Turno_ant.FieldByName('FECHAHORAFINAL').AsDateTime;
       fhfinal:=Q_Datos.FieldByName('FECHAHORAFINAL').AsDateTime;
     end;

     if Q_Datos.RowsAffected>0 then begin
       while not Q_Datos.Eof do begin
         Mem_Tanques.Append;
         Mem_TanquesTanque.AsInteger:=Q_Datos.FieldByName('TANQUE').AsInteger;
         Mem_TanquesCombustible.AsInteger:=Q_Datos.FieldByName('COMBUSTIBLE').AsInteger;
         Mem_TanquesInvInivial.AsFloat:=medicion_tanque_turno_anterior(Q_Turno_Ant.FieldByName(IfThen(de6a6,'TURNO','CORTE')).AsInteger,Q_Datos.FieldByName('TANQUE').AsString,Q_Turno_ant.FieldByName('FECHA').AsDateTime);
         Mem_TanquesInvFinal.AsFloat:=Q_Datos.FieldByName('VOLUMEN').AsFloat;
         Mem_TanquesEntradas.AsFloat:=recepcion_tanque_turno(fecha,corte,Q_Datos.FieldByName('TANQUE').AsInteger,Q_Datos.FieldByName('COMBUSTIBLE').AsInteger,ev);
         Mem_TanquesInvVeeDeer.AsFloat := ev;
         Mem_TanquesSalidas.AsFloat:=(Mem_TanquesInvInivial.AsFloat+Mem_TanquesEntradas.AsFloat)-Mem_TanquesInvFinal.AsFloat;
         Mem_Tanques.Post;
         Q_Datos.Next;
       end;
     end
     else begin
       ShowMessage('[Dt_Combustibles] Tabla Vac�a');
       JvGIFAnimator1.Visible:=False;
       exit;
     end;
   finally
     Q_Datos.Close;
     Q_Datos.Free;
     Q_Turno_ant.Close;
     Q_Turno_ant.Free;
   end;
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

       jarreos:=jarreos_turno(fecha,Corte,Mem_AjuCombustible.AsInteger);
       quHistoria.Close;
       quHistoria.Params[0].AsDateTime:=fecha;
       quHistoria.Params[1].AsInteger:=corte;
       quHistoria.Params[2].AsFloat:=Mem_AjuVentas.AsFloat+jarreos; //Salidas
       quHistoria.Params[3].AsFloat:=Mem_AjuCombustible.AsInteger;
       quHistoria.Params[5].AsCurrency := InvInicial;
       quHistoria.Params[6].AsCurrency := InvFinal;
       quHistoria.Params[7].AsCurrency := dame_entradas_combustible(Corte,Mem_AjuCombustible.AsInteger,fecha);

       quHistoria.Params[4].AsFloat:=(Invinicial+quHistoria.Params[7].AsFloat)-InvFinal;//Mem_AjuSalida_Tanque.AsFloat;

       quHistoria.Params[8].AsCurrency := jarreos;
       quHistoria.Params[9].AsFloat    := Mem_AjuInvVeeder.AsFloat;
       quHistoria.ExecQuery;
       quHistoria.Commit;

       // Obtener Y restar la cantidad de tag5 de la base para calcular la meta
       case Mem_AjuCombustible.AsInteger of
         1:Mem_AjuMax_Aju.AsFloat := ((Mem_AjuVentas.AsFloat - obtenerCantidadTag5(fecha, Corte, 1)) * PORCENTAJE);// + MERMAM;
         2:Mem_AjuMax_Aju.AsFloat := ((Mem_AjuVentas.AsFloat - obtenerCantidadTag5(fecha, Corte, 2)) * PORCENTAJEP);// + MERMAP;
         3:Mem_AjuMax_Aju.AsFloat := ((Mem_AjuVentas.AsFloat - obtenerCantidadTag5(fecha, Corte, 3)) * PORCENTAJED);// + MERMAD;
       else
           Mem_AjuMax_Aju.AsFloat := (Mem_AjuVentas.AsFloat - obtenerCantidadTag5(fecha, Corte, 1)) * PORCENTAJE ;
       end;
       Mem_Aju.Post;
     end;
   finally
     quHistoria.Free;
   end;

   if PORCPEMEXPOSITIVO = 'Si' then begin
     AjustarCortesAdministrativos(fecha,fechahora,Corte);
     JvGIFAnimator1.Visible:=False;
     Exit;
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
       qufecha.Params[0].AsDate := fecha;
       qufecha.Params[1].AsInteger := Corte;
       qufecha.Params[2].AsString := '_';
       qufecha.ExecQuery;
       quFecha.Commit;
       JvGIFAnimator1.Visible:=False;
       Exit;
     end;
   finally
     quFecha.Free;
   end;

   Mem_Aju.First;
   M:=False; P:=False; D:=False;
   while not Mem_Aju.Eof do begin
     if Mem_AjuCombustible.AsInteger = DESCARTACOMB then begin
       Mem_Aju.Next;
       Continue;
     end;

     //se decuce el tipo de ajuste
     if TIPOTAG=1 then begin
       LitrosAju:=Mem_AjuMax_Aju.AsFloat;

       if ((ARRASTRE = 'S') or (ARRASTRE = 's')) and (MODOAJUSTE = 4) then
         LitrosAju := LitrosAju + obtenerPendiente(Mem_AjuCombustible.AsInteger, fecha, corte);

     end
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

     // Aqu� empieza el ajuste en dos partes....
     litrosPrimerParte := 0;
     if Corte = 2 then
        antes6 := True
     else
        antes6 := False;
     seguirAjustando := True;
     primerAjuste := 0;

     if TIPOTAG = 3 then
       LitrosAju := dame_meta_metodo_3(Mem_AjuCombustible.AsInteger, fecha, corte, topetmp, antes6);

     Mem_Datos.Close;
     Mem_Datos.Open;

     if LitrosAju > 0 then begin
       llena_datos(fecha, corte, Mem_AjuCombustible.AsInteger, antes6);
       Mem_Datos.SaveToTextFile('C:\ImagenCo\Mem_Datos.txt');
       if not alcanzan then begin
         mmo1.Lines.Add(DupeString('-', 50));
         mmo1.Lines.Add('No hay tickets impresos ' + Mem_AjuCombustible.AsString);
         mmo1.Lines.Add(FormatDateTime('dd/mmm/yyyy',fecha) + ' Corte ' + IntToStr(Corte));
         mmo1.Lines.Add(DupeString('-', 50));
         alcanzan := true;
         set_ajuste(fecha, Corte, Mem_AjuCombustible.AsInteger, 0);
         antes6 := False;
         Mem_Aju.Next;
       end;
       selecciona_transacciones2(Mem_AjuCombustible.AsInteger, LitrosAju, primerAjuste);
       Mem_Datos.SaveToTextFile('C:\ImagenCo\Mem_Datos.txt');
       aplica_cambios;
       primerAjuste := LitrosAju;
       case Mem_AjuCombustible.AsInteger of
         1:M:=True;
         2:P:=True;
         3:D:=True;
       end;
     end;
     antes6 := False;
     Mem_Aju.Next;
   end;

   corte_OG:=ObtenerCorte_OG(fecha);
   DetalleMangueras_OG(fecha,corte_OG);
   DetalleProductos_OG(fecha,corte_OG);

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
   JvGIFAnimator1.Visible:=False;
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
  if (chk1.Checked) and (EventName='cortecambiado') then
    tmr1Timer(SIBfibEventAlerter1);

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
  dll : OleVariant;
  resp:string;
  corte_OG:Integer;
begin
   if Application.MessageBox('Deshacer ajuste?','aj',4+MB_ICONQUESTION)=IDYES then begin

     try
       Q_RollBack := TADIQuery.Create('SELECT  VOLUMEN1,  IMPORTE, PRECIO, FOLIO, IDTRANSACCIONOG FROM CLAVES WHERE FECHA=:FECHA AND CORTE=:CORTE');

       quBorraFecha := TADIQuery.Create('DELETE FROM FECHAS WHERE FECHA=:FECHA AND CORTE=:CORTE');

       quBorraMovi := TADIQuery.Create('DELETE FROM CLAVES WHERE FECHA=:FECHA AND CORTE=:CORTE');

       Q_Rb := TPANQuery.Create('UPDATE DPVGMOVI SET VOLUMEN=:VOLUMEN, IMPORTE=:IMPORTE, PRECIO=:PRECIO, TAG = 0 WHERE FOLIO=:FOLIO');

       if CONEXION_OG<>'' then
         dll := CreateOleObject('ConexionSQL.UpdateTickets');

       Q_RollBack.Close;
       Q_RollBack.Params[0].Value:=memFechasFECHA.AsDateTime;
       Q_RollBack.Params[1].AsInteger:=memFechasCORTE.AsInteger;
       Q_RollBack.ExecQuery;
       if Q_RollBack.RowsAffected>0 then begin
          while not Q_RollBack.Eof do begin
            try
              if CONEXION_OG<>'' then begin
                resp:=dll.ActualizarIdTicket(Q_RollBack.Fields[4].AsInteger,Q_RollBack.Fields[1].AsFloat,Q_RollBack.Fields[0].AsFloat,CONEXION_OG);
                if StrToFloatDef(resp,-99)=-99 then
                  raise Exception.Create(resp);
              end;
            except
              on E:Exception do
                mmo1.Lines.Add(e.Message);
            end;

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

          corte_OG:=ObtenerCorte_OG(memFechasFECHA.AsDateTime);
          DetalleMangueras_OG(memFechasFECHA.AsDateTime,corte_OG);
          DetalleProductos_OG(memFechasFECHA.AsDateTime,corte_OG);
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
  bita:TStringList;
  //BookM:TBookmark;
  //pFecha:TDateTime;
  //pCorte:Integer;
begin
  try
//    SIBfibEventAlerter1.AutoRegister := false;
     bita:=TStringList.Create;
     if FileExists('C:\ImagenCo\Tmp\bitaaju.txt') then
       bita.LoadFromFile('C:\ImagenCo\Tmp\bitaaju.txt');
     if bita.Count>100 then begin
       DeleteFile('C:\ImagenCo\Tmp\bitaaju.txt');
       bita.Clear;
     end;
     bita.AddStrings(bitaAju);
     bita.SaveToFile('C:\ImagenCo\Tmp\bitaaju.txt');
     bita.Free;
     bitaAju.Clear;

    ES_AUTOMATICO := false;

    analisis_inicial(memCortes.fieldbyname('FECHA').asdatetime,memCortes.fieldbyname('FECHAHORAINICIAL').asdatetime,
    memCortes.fieldbyname('CORTE').asInteger);

    actualiza_corte(fechax,cortex);

    refresca_tabla_fechas;
  finally
//    SIBfibEventAlerter1.AutoRegister := true;
    es_manual:=false;

    DB.Close;
    DB.Open;
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
var
  bita:TStringList;
begin
 try
   if Visible then begin
     pb1.Position := pb1.Position + 1;
     lbl2.Caption := IntToStr(pb1.Position);
   end;
   bita:=TStringList.Create;
   if FileExists('C:\ImagenCo\Tmp\bitaaju.txt') then
     bita.LoadFromFile('C:\ImagenCo\Tmp\bitaaju.txt');
   if bita.Count>100 then begin
     DeleteFile('C:\ImagenCo\Tmp\bitaaju.txt');
     bita.Clear;
   end;
   bita.AddStrings(bitaAju);
   bita.SaveToFile('C:\ImagenCo\Tmp\bitaaju.txt');
   bita.Free;
   bitaAju.Clear;
 Except
 end;

 {if (pb1.Position >= (StrToIntDef(cxSpinEdit1.Value,2)*60)) or (sender=SIBfibEventAlerter1) then begin }
   try
     tmr1.Enabled := false;
     monitorea_cortes;
     refresca_tabla_cortes;
   finally
     if Visible then begin
       pb1.Position := 0;
       PostMessage(pb1.Handle, $0409, 0, clNavy);
     end;
     tmr1.Enabled := True;
   end;
 {end};

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
  Q_Licencia:TPANQuery;
  clavesis,version,tipolicencia,razon_social:string;
  Q_Conf : TPANQuery;
begin
  if not FileExists('levanta.txt') then begin
    try
      Carga_Conf;
      if not pasa_usuario('','',True) then
        Application.Terminate;
      Q_Licencia:=TPANQuery.Create('SELECT RAZONSOCIAL FROM DGENEMPR');
      Q_Licencia.ExecQuery;
      razon_social:=Q_Licencia.FieldByName('RAZONSOCIAL').AsString;
      clavesis:='CVLA';
      version:='3.1';
      TipoLicencia:='Abierta';

      if not LicenciaValida2(razon_social,
                            clavesis,
                            version,
                            TipoLicencia,
                            Licencia,
                            1,
                            FechaVence>0,
                            FechaVence)
      then begin
        MensajeErr('Licencia del sistema no valida: ' + Licencia);
        puede_cerrar:=True;
        cierreDirecto:=True;
        Close;
      end;

      refresca_tabla_cortes;
      refresca_tabla_fechas;

      NUMEROESTACION := ObtenerNumeroEstacion;

      cargaCombustibles;

      if (MODOAJUSTE=3) and (TIPOTAG=3) and (AJUSTALITROS='Si') then begin
        EdAjuLtM.Visible:=True;
        EdAjuLtM.Text:=FloatToStr(LITROSAJUSTAR);
        lblM.visible:=True;

        EdAjuLtP.Visible:=True;
        EdAjuLtP.Text:=FloatToStr(LITROSAJUSTARP);
        lblP.visible:=True;

        EdAjuLtD.Visible:=True;
        EdAjuLtD.Text:=FloatToStr(LITROSAJUSTARD);
        lblD.visible:=True;
      end;
      pFIBDatabase1.Connected:=False;
      pFIBDatabase1.DBName:=ParamStr(1);
      pFIBDatabase1.Open;
      bitaAju:=TStringList.Create;


      DBCONSOLA.AliasName:=ParamStr(2);
    except
      on e:exception do
        ShowMessage(e.message);
    end;
  end;
end;

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
     FUSION_TANQUES := FUSIONTANQUES;
     SOLO_ENTRADAS  := SOLOENTRADAS;
     de_6a6 := de6a6;
//     NOMBRESCOMBUSTIBLES[1] := _NOMBRESCOMBUSTIBLES[1];
//     NOMBRESCOMBUSTIBLES[2] := _NOMBRESCOMBUSTIBLES[2];
//     NOMBRESCOMBUSTIBLES[3] := _NOMBRESCOMBUSTIBLES[3];
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

{ TLIQQuery }
constructor TLIQquery.Create(SQL: string);
begin
  inherited Create(SQL, ParamStr(2));
end;

procedure TFAJUMENU.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if puede_cerrar then begin
     if cierreDirecto then
       CanClose:=True
     else begin
       CanClose := pasa_usuario('');
       puede_cerrar := CanClose;
     end;
  end
  else begin
    FAJUMENU.Hide;
    //VrTrayIcon1.Visible := true;
    CanClose := false;
    tmr_levanta.Enabled:=True;
  end;
end;

procedure TFAJUMENU.btn4Click(Sender: TObject);
var
  bita:TStringList;
begin
   puede_cerrar:=true;
   bita:=TStringList.Create;
   if FileExists('C:\ImagenCo\Tmp\bitaaju.txt') then
     bita.LoadFromFile('C:\ImagenCo\Tmp\bitaaju.txt');
   if bita.Count>100 then begin
     DeleteFile('C:\ImagenCo\Tmp\bitaaju.txt');
     bita.Clear;
   end;
   bitaAju.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',now)+' se cerr� sistema ');
   bita.AddStrings(bitaAju);
   bita.SaveToFile('C:\ImagenCo\Tmp\bitaaju.txt');
   bita.Free;
   Close;
end;

procedure TFAJUMENU.monitorea_cortes;
var
  Q_Cortes:TPANQuery;
  i:Byte;
  pPause: Integer;
begin
  try
    bitaAju.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',now)+' monitorea_cortes ');
    Q_Cortes := TPANQuery.Create('SELECT FECHA,FECHAHORAINICIAL,CORTE FROM DPVGCVOL C WHERE FECHA>=:FECHA AND ESTATUS=''C'' AND TAG=0'+
                IfThen(de6a6,' AND EXISTS(SELECT ESTATUS FROM DPVGTURN WHERE FECHA=C.FECHA+1)','')
                +' ORDER BY FECHA,CORTE');
    Q_Cortes.Params[0].AsDateTime := Date - 30;
    Q_Cortes.ExecQuery;

    pPause := cxSpinEdit1.Value * 1000;

    if Q_Cortes.RowsAffected > 0  then begin
       PostMessage(pb1.Handle, $0409, 0, clRed); //se cambia el color del progress a rojo.

//       pb1.Position := 0;
//       for i:=0 to (60*cxSpinEdit1.Value) do begin
//         Application.ProcessMessages;
//         pb1.Position := pb1.Position + 1;
//         Sleep(1000);
//       end;

//      try
//        PostMessage(FindWindow(Nil, Pchar('Panel Volumetricos Cliente')), WM_QUIT, 0, 0);
//      except
//        on e:exception do
//          bitaAju.Add(FormatDateTime('dd/mm/yyyy hh:nn:ss.zzz',now)+' error al cerrar panel: '+e.Message);
//      end;
      while not Q_Cortes.Eof do begin
        Sleep(3000);
        analisis_inicial(Q_Cortes.FN('FECHA').AsDateTime,Q_Cortes.FN('FECHAHORAINICIAL').AsDateTime,Q_Cortes.FN('CORTE').AsInteger);
        actualiza_corte(Q_Cortes.FN('FECHA').AsDateTime,Q_Cortes.FN('CORTE').AsInteger);
        refresca_tabla_fechas;
        Q_Cortes.Next;
      end;
    end;
  finally
    Q_Cortes.Close;
    Q_Cortes.Free;
  end;

  DB.Close;
  DB.Open;

  refresca_tabla_fechas;
end;

procedure TFAJUMENU.chk1Click(Sender: TObject);
begin
  tmr1.Enabled := chk1.Checked;

  if (chk1.Checked = true) then begin

    if (chkAjusteDiasHistorico.Checked = true) and (HayDiasSinAjustar) then
       if Application.MessageBox('La opci`n de no ajustar d�as hist�ricos esta activa por lo cual los d�as no ajustados quedaran asi, �Proseguir?', 'Ajuste', 4 + MB_ICONQUESTION ) = ID_YES then
          CambiaTagCortes;
  end;
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


    Q_Cortes := TPANQuery.Create('SELECT FIRST 500 FECHA, CORTE,FECHAHORAINICIAL,FECHAHORAFINAL FROM DPVGCVOL where estatus=''C'' ORDER BY FECHA DESC');
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

function TFAJUMENU.ObtenerNumeroEstacion: string;
var
  Q_Est: TPANQuery;
begin
  try
    Q_Est := TPANQuery.Create('SELECT NUMEROESTACION FROM DPVGESTS');
    Q_Est.ExecQuery;

    Result := Q_Est.FN('NUMEROESTACION').AsString;
  finally
    Q_Est.Free;
  end;
end;

procedure TFAJUMENU.CargaMemCortesomitosDeArchivo;
var
  pRuta: string;
begin
  pRuta := ExtractFilePath(Application.ExeName) + 'FechasOmitidas.dat';

end;

procedure TFAJUMENU.cxSpinEdit1PropertiesChange(Sender: TObject);
begin
  tmr1.Enabled:=False;
  pb1.Max:=(StrToIntDef(cxSpinEdit1.Value,2)*60);
  pb1.Position := 0;
  lbl2.Caption := IntToStr(pb1.Position);
  PostMessage(pb1.Handle, $0409, 0, clNavy);
  tmr1.Enabled:=True;
end;

procedure TFAJUMENU.Button5Click(Sender: TObject);
begin
  with TFREP02a24.Create(Self) do begin
     ShowModal;
     Free;
  end
end;

function TFAJUMENU.Lee_Variable(variable: string): string;
//var
//  Ini:TMemIniFile;
begin
  Result:='0';
//  With DM_PANEL Do Begin
//    Dt_Estacion2.Open;
//    DBMemo1.Lines.Insert(0,'[Var]');
//    try
//      DBMemo1.Lines.SaveToFile('c:\imagenco\tmp\varest.ini');
//    except
//     Result:='-1';
//    end;
//    Dt_Estacion2.Close;
//  End;    // with
//  Ini:=TMemIniFile.Create('c:\imagenco\tmp\varest.ini');
//  Result:=Ini.ReadString('Var',variable,'-1');
//  Ini.Free;
end;

function Jarreos_FechaAdmin(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
var
  Q_Movi:TPANQuery;
begin
  try
    Q_movi := TPANQuery.Create('select coalesce(Sum(dpvgmovi.volumen),0) as Jarreos from dpvgmovi,dpvgbomb where hora>=:hora1 and hora<=:hora2 '+
                               ' and dpvgmovi.combustible=dpvgbomb.combustible and dpvgmovi.poscarga=dpvgbomb.poscarga and combustible=:comb and Jarreo=''Si''');
    Q_movi.ParamByName('hora1').AsDateTime := pFechaAdmin+0.25;
    Q_movi.ParamByName('hora2').AsDateTime := (pFechaAdmin+1)+0.24930555556;
    Q_Movi.ParamByName('comb').AsInteger   := pCombustible;
    Q_movi.ExecQuery;
    Result:=Q_Movi.FN('Jarreos').AsFloat;
  finally
    Q_Movi.Free;
  end;
end;

procedure Ajustes_TurnoAdmin(pFechaAdmin:TDateTime; pCombustible:Integer; var pAjuste,pVolumen1,pVolumen2:Real);
var
  Q_Clave:TADIQuery;
begin
  try
    Q_Clave := TADIQuery.Create('SELECT coalesce(Sum(volumen1),0) as volumen1, coalesce(Sum(volumen2),0) as volumen2 FROM CLAVES '+
                                'WHERE FECHAADMIN=:FECHAADMIN AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Clave.ParamByName('FECHAADMIN').AsDateTime   := pFechaAdmin;
    Q_Clave.ParamByName('COMBUSTIBLE').AsInteger   := pCombustible;
    Q_Clave.ExecQuery;
    pVolumen1:= Q_Clave.FN('volumen1').AsFloat;
    pVolumen2:= Q_Clave.FN('volumen2').AsFloat;
    pAjuste  := pVolumen1 - pVolumen2;
  finally
    Q_Clave.Free;
  end;
end;

function Ventas_NoAju(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
var
  Q_Movi:TPANQuery;
begin
  try
    Q_Movi:=TPANQuery.Create('select coalesce(Sum(dpvgmovi.volumen),0) as Ventas from dpvgmovi,dpvgbomb where hora>=:hora1 and hora<=:hora2 '+
                                 ' and dpvgmovi.combustible=dpvgbomb.combustible and dpvgmovi.poscarga=dpvgbomb.poscarga and combustible=:comb and Tag=0');
    Q_movi.ParamByName('hora1').AsDateTime := pFechaAdmin+0.25;
    Q_movi.ParamByName('hora2').AsDateTime := (pFechaAdmin+1)+0.24930555556;
    Q_Movi.ParamByName('comb').AsInteger   := pCombustible;
    Q_Movi.ExecQuery;
    Result:=Q_Movi.FN('Ventas').AsFloat;
  finally
    Q_Movi.Free;
  end;
end;

function Vol_Documentado(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
var
  Q_VolD:TPANQuery;
begin
  try
    if (SOLOENTRADAS='Si') and (FUSIONTANQUES='Si') then begin
      Q_VolD := TPANQuery.Create('select coalesce(sum(volumenrecepcion),0) as volrec from dpvgetan '+
                                 'where fecha=:pFecha '+
                                 'and combustible=:pCombustible');
      Q_VolD.ParamByName('pFecha').AsDateTime     := pFechaAdmin;
      Q_VolD.ParamByName('pCombustible').AsInteger:= pCombustible;
      Q_VolD.ExecQuery;
      if Q_VolD.FN('volrec').AsFloat>1000 then
        Result:=Trunc((Q_VolD.FN('volrec').AsFloat/1000)+1)*1000;

      if (Q_VolD.FN('volrec').AsFloat>=9000) and (Q_VolD.FN('volrec').AsFloat<=11000) then
        Result:=10000
      else if (Q_VolD.FN('volrec').AsFloat>=19000) and (Q_VolD.FN('volrec').AsFloat<=21000) then
        Result:=20000
      else if Q_VolD.FN('volrec').AsFloat>1000 then
        Result:=Trunc((Q_VolD.FN('volrec').AsFloat/1000)+1)*1000
      else
        Result:=Q_VolD.FN('volrec').AsFloat;
    end
    else begin
      Q_VolD := TPANQuery.Create('select sum(d.volpemex) as volpemex from dpvgdocu d '+
                                 'where exists (select m.folio from dpvgetan m '+
                                 'where m.folio=d.folioentrada '+
                                 'and m.fecha=:pFecha '+
                                 'and m.combustible=:pCombustible) ');
      Q_VolD.ParamByName('pFecha').AsDateTime     := pFechaAdmin;
      Q_VolD.ParamByName('pCombustible').AsInteger:= pCombustible;
      Q_VolD.ExecQuery;
      Result:=Q_VolD.FN('volpemex').AsFloat;
      Q_VolD.Close;
      Q_VolD.SQL.Clear;
      Q_VolD.SQL.Add('select coalesce(sum(e.volumenrecepcion),0) as volrec from dpvgetan e '+
                                 'where not exists (select folioentrada from dpvgdocu '+
                                 'where folioentrada=e.folio '+
                                 'and fecha=e.fecha) '+
                                 'and combustible=:pCombustible '+
                                 'and fecha=:pFecha');
      Q_VolD.ParamByName('pFecha').AsDateTime     := pFechaAdmin;
      Q_VolD.ParamByName('pCombustible').AsInteger:= pCombustible;
      Q_VolD.ExecQuery;
      if (Q_VolD.FN('volrec').AsFloat>1000) and (FUSIONTANQUES='Si') then
        Result:=Result+Trunc((Q_VolD.FN('volrec').AsFloat/1000)+1)*1000
      else
        Result:=Result+Q_VolD.FN('volrec').AsFloat;
    end;
  finally
    Q_VolD.Close;
    Q_VolD.Free;
  end;
end;

procedure TFAJUMENU.btnPorcentajesClick(Sender: TObject);
var
  Q_Porc : TPANQuery;
  tMagna, tPremium, tDiesel : string;
  pMagna, pPremium, pDiesel : Double;
  valor1, valor2 : byte;
begin
  tMagna := 'AA';
  tPremium := 'AA';
  tDiesel := 'AA';

  Q_Porc := TPANQuery.Create('SELECT NOMBRE, TAG FROM DPVGTCMB ORDER BY CLAVE');
  Q_Porc.ExecQuery;

  while not Q_Porc.Eof do begin
    if Q_Porc.FN('NOMBRE').AsString = _NOMBRESCOMBUSTIBLES[1] then
      tMagna := Q_Porc.FN('TAG').AsString
    else if Q_Porc.FN('NOMBRE').AsString = _NOMBRESCOMBUSTIBLES[2] then
      tPremium := Q_Porc.FN('TAG').AsString
    else if Q_Porc.FN('NOMBRE').AsString = _NOMBRESCOMBUSTIBLES[3] then
      tDiesel := Q_Porc.FN('TAG').AsString;

    Q_Porc.Next;
  end;

  Q_Porc.Close;
  Q_Porc.Free;

  valor1 := ord(tMagna[1]) - 65;
  valor2 := ord(tMagna[2]) - 65;
  pMagna := StrToFloat(IntToStr(valor1) + '.' + IntToStr(valor2));

  valor1 := ord(tPremium[1]) - 65;
  valor2 := ord(tPremium[2]) - 65;
  pPremium := StrToFloat(IntToStr(valor1) + '.' + IntToStr(valor2));

  valor1 := ord(tDiesel[1]) - 65;
  valor2 := ord(tDiesel[2]) - 65;
  pDiesel := StrToFloat(IntToStr(valor1) + '.' + IntToStr(valor2));

  with FAJUPORCENTAJES do begin
    LlenarDatos(pMagna, pPremium, pDiesel);

    label3.Caption := _NOMBRESCOMBUSTIBLES[1];
    label4.Caption := _NOMBRESCOMBUSTIBLES[2];
    Label5.Caption := _NOMBRESCOMBUSTIBLES[3];

    ShowModal;
    if dialogResult then begin
      Q_Porc := TPANQuery.Create('UPDATE DPVGTCMB SET TAG = :TAG WHERE NOMBRE = :NOMBRE');

      pMagna := StrToFloat(txtPorcentajeMagna.Text);
      pPremium := StrToFloat(txtPorcentajePremium.Text);
      pDiesel := StrToFloat(txtPorcentajeDiesel.Text);

      valor1 := Byte(Trunc(pMagna) + 65);
      valor2 := Byte(Trunc(Frac(pMagna) * 100) + 65);
      tMagna := Char(valor1) + Char(valor2);

      valor1 := Byte(Trunc(pPremium) + 65);
      valor2 := Byte(Trunc(Frac(pPremium) * 100) + 65);
      tPremium := Char(valor1) + Char(valor2);

      valor1 := Byte(Trunc(pDiesel) + 65);
      valor2 := Byte(Trunc(Frac(pDiesel) * 100) + 65);
      tDiesel := Char(valor1) + Char(valor2);

      Q_Porc.Params[0].AsString := tMagna;
      Q_Porc.Params[1].AsString := _NOMBRESCOMBUSTIBLES[1];
      Q_Porc.ExecQuery;

      Q_Porc.Params[0].AsString := tPremium;
      Q_Porc.Params[1].AsString := _NOMBRESCOMBUSTIBLES[2];
      Q_Porc.ExecQuery;

      Q_Porc.Params[0].AsString := tDiesel;
      Q_Porc.Params[1].AsString := _NOMBRESCOMBUSTIBLES[3];
      Q_Porc.ExecQuery;

      Q_Porc.Close;
      Q_Porc.Free;
    end;
  end;
end;

procedure TFAJUMENU.guardarPendiente(combustible: Integer;
  fecha: TDateTime; pendiente: Real; corte: Byte);
var
  Q_Pend : TAJUQuery;
begin
  try
    Q_Pend := TAJUQuery.Create(nil, 'INSERT INTO PENDIENTES (COMBUSTIBLE,FECHA,VOLUMEN) VALUES (:COMBUSTIBLE,:FECHA,:VOLUMEN)');
    Q_Pend.Params[0].AsInteger := combustible;
    Q_Pend.Params[1].AsDate := fecha;
    Q_Pend.Params[2].AsFloat := pendiente;

    Q_Pend.ExecQuery();

    Q_Pend.Close;
    Q_Pend.Free;
  except
    //
  end;
end;

function TFAJUMENU.obtenerPendiente(combustible: Integer;
  fecha: TDateTime; corte: Byte): Real;
var
  Q_Pend : TADIQuery;
  fechaQuery : TDateTime;
  corteQuery : Byte;
begin
  Result := 0;

  if (DayOfTheMonth(fecha) > 1) or (corte > 1) then begin
    try
      if corte = 1 then begin
        fechaQuery := IncDay(fecha, -1);
        corteQuery := 6;
      end
      else begin
        fechaQuery := fecha;
        corteQuery := corte - 1;
      end;

      Q_Pend := TADIQuery.Create('select PENDIENTE from HISTORIA where fecha = :FECHA and corte = :CORTE and combustible = :COMBUSTIBLE');
      Q_Pend.Params[0].AsDateTime := fechaQuery;
      Q_Pend.Params[1].AsInteger := corteQuery;
      Q_Pend.Params[2].AsInteger := combustible;

      Q_Pend.ExecQuery;

      Result := Q_Pend.FN('PENDIENTE').AsFloat;

      Q_Pend.Close;
      Q_Pend.Free;
    except
      Result := 0;
    end;
  end;
end;

procedure TFAJUMENU.btnAjuLiqClick(Sender: TObject);
var
  fechaIni, fechaFin: TDateTime;
  Q_Liq : TLIQQuery;
  Q_Mov, Q_Tur : TPANQuery;
  iniTurno, finTurno : TDateTime;
  metaLiq, sumaMov : Double;
  ajustar : Boolean;
  comb : Integer;
  nombreComb, fechaProceso : string;

  procedure actualizarMovimiento(volumen, importe: Double; folio: Integer);
  var
    Q_ActMovi : TPANQuery;
  begin
    Q_ActMovi := TPANQuery.Create('update dpvgmovi set volumen = :volumen, importe = :importe where folio = :folio');
    Q_ActMovi.Params[0].AsDouble := volumen;
    Q_ActMovi.Params[1].AsDouble := importe;
    Q_ActMovi.Params[2].AsInteger := folio;

    Q_ActMovi.ExecQuery;
    Q_ActMovi.Commit;
    Q_ActMovi.Close;
    Q_ActMovi.Free;
  end;

  procedure procesoRollback;
  var
    Q_Movi : TPANQuery;
    Q_Aju  : TADIQuery;
  begin
    Q_Movi := TPANQuery.Create('select * from dpvgmovi where hora between :horaini and :horafin and combustible = :combustible and jarreo = ''No'' and Tag = 1');
    Q_Movi.Params[0].AsDateTime := iniTurno;
    Q_Movi.Params[1].AsDateTime := finTurno;
    Q_Movi.Params[2].AsInteger := comb;

    Q_Movi.ExecQuery;
    FAVANCE.PreparaAvance('Rollback d�a ' + fechaProceso + ' (' + nombreComb + ')...', True, Q_Movi.RowsAffected);

    while not Q_Movi.Eof do begin
      Q_Aju := TADIQuery.Create('select * from claves where folio = :folio ');
      Q_Aju.Params[0].AsInteger := Q_Movi.FN('FOLIO').AsInteger;

      Q_Aju.ExecQuery;
      actualizarMovimiento(Q_Aju.FN('VOLUMEN1').AsDouble, Q_Aju.FN('IMPORTE').AsDouble, Q_Movi.FN('FOLIO').AsInteger);

      Q_Aju.Close;
      Q_Aju.Free;

      Q_Movi.Next;
      FAVANCE.AvanzaPosicion;
    end;
    Q_Movi.Close;
    Q_Movi.Free;

    FAVANCE.Close;
  end;

  function ajustarVenta(folio, tag: Integer; volumen, importe, precio: Double;
                        hexhash: string; corte, turno, combustible: Byte; fechaTurno: TDateTime): Double;
  var
    Q_Movi : TPANQuery;
    Q_Aju : TADIQuery;
    ajusteVol, ajusteImp : Double;
  begin
    // Si no se ha ajustado, guardar los valores originales
    if (tag = 0) then
      hexhash := EncriptaCadena(NUMEROESTACION, FormatFloat('###0.00', importe));

    if importe - 10 > MINIMOTICKET then
      ajusteImp := 10
    else
      ajusteImp := importe - MINIMOTICKET;

    ajusteVol := ajusteImp / precio;

    if sumaMov - ajusteVol < metaLiq then
      ajusteVol := sumaMov - metaLiq;

    // Actualizar el registro en DPVGMOVI
    Q_Movi := TPANQuery.Create('update dpvgmovi set volumen = :volumen, importe = :importe, tag = 1, hexhash = :hexhash where folio = :folio');
    Q_Movi.Params[0].AsDouble := volumen - ajusteVol;
    Q_Movi.Params[1].AsDouble := importe - ajusteImp;
    //Q_Movi.Params[2].AsInteger := 1;
    Q_Movi.Params[2].AsString := hexhash;
    Q_Movi.Params[3].AsInteger := folio;

    Q_Movi.ExecQuery;
    Q_Movi.Commit;
    Q_Movi.Close;
    Q_Movi.Free;

    if tag = 0 then begin
      Q_Aju := TADIQuery.Create('insert into claves (folio, fecha, corte, volumen1, volumen2, combustible, precio, importe, fechaadmin, turnoadmin) ' +
                                'values (:folio, :fecha, :corte, :volumen1, :volumen2, :combustible, :precio, :importe, :fechaadmin, :turnoadmin)');
      Q_Aju.Params[0].AsInteger := folio;
      Q_Aju.Params[1].AsDate := Now;
      Q_Aju.Params[2].AsInteger := corte;
      Q_Aju.Params[3].AsDouble := volumen;
      Q_Aju.Params[4].AsDouble := volumen - ajusteVol;
      Q_Aju.Params[5].AsInteger := combustible;
      Q_Aju.Params[6].AsDouble := precio;
      Q_Aju.Params[7].AsDouble := importe;
      Q_Aju.Params[8].AsDate := fechaTurno;
      Q_Aju.Params[9].AsInteger := turno;
    end
    else begin
      Q_Aju := TADIQuery.Create('update claves set volumen2 = :volumen2 where folio = :folio');
      Q_Aju.Params[0].AsDouble := volumen - ajusteVol;
      Q_Aju.Params[1].AsInteger := folio;
    end;

    Q_Aju.ExecQuery;
    Q_Aju.Commit;
    Q_Aju.Close;
    Q_Aju.Free;

    Result := ajusteVol;
  end;

  function procesoAjuste(query: string): Boolean;
  var
    sumaTemp : Double;
  begin
    sumaTemp := sumaMov;

    Q_Mov := TPANQuery.Create(query);
    Q_Mov.Params[0].AsDateTime := iniTurno;
    Q_Mov.Params[1].AsDateTime := finTurno;
    Q_Mov.Params[2].AsInteger := comb;

    Q_Mov.ExecQuery;
    FAVANCE.PreparaAvance('Ajustando d�a ' + fechaProceso + ' (' + nombreComb + ')...', True, Q_Mov.RowsAffected);

    while not Q_Mov.Eof do begin
      if Q_Mov.FN('IMPORTE').AsDouble > MINIMOTICKET + 10 then begin
        sumaMov := sumaMov - ajustarVenta(Q_Mov.FN('FOLIO').AsInteger, Q_Mov.FN('TAG').AsInteger, Q_Mov.FN('VOLUMEN').AsDouble,
                                          Q_Mov.FN('IMPORTE').AsDouble, Q_Mov.FN('PRECIO').AsDouble, Q_Mov.FN('HEXHASH').AsString,
                                          Q_Mov.FN('CORTE').AsInteger, Q_Mov.FN('TURNO').AsInteger,Q_Mov.FN('COMBUSTIBLE').AsInteger,
                                          Q_Mov.FN('FECHATURNO').AsDateTime);

        if metaLiq >= sumaMov then
          Break;
      end;

      Q_Mov.Next;
      FAVANCE.AvanzaPosicion;
    end;

    Q_Mov.Close;
    Q_Mov.Free;

    Result := (sumaTemp <> sumaMov) and (metaLiq < sumaMov);
    FAVANCE.Close;
  end;

begin
  try
    with FAJULIQ do begin
      ShowModal;

      if dialogResult then begin
        fechaIni := FechaInicial;
        fechaFin := FechaFinal;

        try
          // Obtener los volumenes de las liquidaciones de las fechas involucradas
          Q_Liq := TLIQQuery.Create('select * from dgasajud2 where fecha between :fechaini and :fechafin order by fecha,combustible');
          Q_Liq.params[0].AsDate := fechaIni;
          Q_Liq.Params[1].AsDate:= fechaFin;

          Q_Liq.ExecQuery;

          //FAVANCE.PreparaAvance('Ajustando...', True, Q_Liq.RowsAffected);

          while not Q_Liq.Eof do begin
            // Inicializar las variables
            metaLiq := 0;
            sumaMov := 0;
            iniTurno := Now;
            finTurno := Now;

            // Obtener combustible, fecha y meta
            comb := Q_Liq.FN('COMBUSTIBLE').AsInteger;
            metaLiq := Q_Liq.FN('VOLUMEN').AsDouble;

            if comb = 1 then
              nombreComb := _NOMBRESCOMBUSTIBLES[1]
            else if comb = 2 then
              nombreComb := _NOMBRESCOMBUSTIBLES[2]
            else
              nombreComb := _NOMBRESCOMBUSTIBLES[3];

            fechaProceso := DateToStr(Q_Liq.FN('FECHA').AsDate);

            //Obtener la hora de inicio y fin.
            Q_Tur := TPANQuery.Create('select min(fechahorainicial)HORAINI,max(fechahorafinal)HORAFIN from dpvgturn where fecha =:fecha');
            Q_Tur.Params[0].AsDate := Q_Liq.FN('FECHA').AsDate;

            Q_Tur.ExecQuery;
            if not Q_Tur.Eof then begin
              iniTurno := Q_Tur.FN('HORAINI').AsDateTime;
              finTurno := Q_Tur.FN('HORAFIN').AsDateTime;
            end;
            Q_Tur.Close;
            Q_Tur.Free;

            //Aplicar Rollback
            procesoRollback;

            // Obtener el volumen de las ventas en el turno administrativo
            Q_Mov := TPANQuery.Create('select sum(volumen)Cantidad from dpvgmovi where hora between :horaini and :horafin and combustible = :combustible and jarreo = ''No'' and consignacion = ''No''');
            Q_Mov.Params[0].AsDateTime := iniTurno;
            Q_Mov.Params[1].AsDateTime := finTurno;
            Q_Mov.Params[2].AsInteger := Q_Liq.FN('COMBUSTIBLE').AsInteger;

            Q_Mov.ExecQuery;

            if not Q_Mov.Eof then
              sumaMov := Q_Mov.FN('CANTIDAD').AsDouble;

            Q_Mov.Close;
            Q_Mov.Free;

            // Ajustar las ventas hasta la liquidaci�n
            // Obtener todos los movimientos de las ventas del turno No Facturadas y No Impresas
            ajustar := metaLiq < sumaMov;
            while ajustar do begin
              ajustar := procesoAjuste('select * from dpvgmovi where hora between :horaini and :horafin and combustible = :combustible and jarreo = ''No'' and impreso = ''No'' and facturado = ''No'' and consignacion = ''No''');
            end;

            // Obtener todos los movimientos de las ventas del turno No Facturadas e Impresas
            ajustar := metaLiq < sumaMov;
            while ajustar do begin
              ajustar := procesoAjuste('select * from dpvgmovi where hora between :horaini and :horafin and combustible = :combustible and jarreo = ''No'' and impreso = ''Si'' and facturado = ''No'' and consignacion = ''No''');
            end;

            // Obtener todos los movimientos de las ventas del turno Facturadas e Impresas
            ajustar := metaLiq < sumaMov;
            while ajustar do begin
              ajustar := procesoAjuste('select * from dpvgmovi where hora between :horaini and :horafin and combustible = :combustible and jarreo = ''No'' and impreso = ''Si'' and facturado = ''Si'' and consignacion = ''No''');
            end;

            Q_Liq.Next;
            //FAVANCE.AvanzaPosicion;
          end;

          Q_Liq.Close;
          Q_Liq.Free;

        except
          on e:Exception do
            MensajeErr(e.Message);
        end;
      end;
    end;
  finally
    FAVANCE.Close;
  end;

  MensajeInfo('Ajuste a Liquidaciones Finalizado.');
end;

//procedure TFAJUMENU.AjustarEnBaseACortesAdministrativos(fecha, fechahora: TDateTime; Corte: Byte);
//var
//  Q_Turnos : TPANQuery;
//  //VentasAdminitivo, SalidasAdmitivo, ajusteAdmitivo : Real;
//  HoraInicialTurno, HoraFinalTurno : TDateTime;
//  fechaCorte1, fechaCorte2, fechaCorte3 : TDateTime;
//  turno, comb, corteUno, corteDos, corteTres : Byte;
//  sumaMov, meta1, meta2, meta3 : Double;
//
//  function ObtenerEntradas(horaIni, horaFin: TDateTime; comb: Byte): Double;
//  var
//    Q_Entradas : TPANQuery;
//  begin
//    Result := 0;
//
//    Q_Entradas:= TPANQuery.Create('Select coalesce(Sum(d.VolPemex),0) as EntFct from DPVGDOCU d where exists(select t.folio from DPVGETAN t ' +
//                 'where fechahoraregistro between :fechaIni and :fechaFin and d.folioentrada = t.folio and combustible = :combustible)');
//    Q_Entradas.Params[0].AsDateTime := horaIni;
//    Q_Entradas.Params[1].AsDateTime := horaFin;
//    Q_Entradas.Params[2].AsInteger := comb;
//
//    Q_Entradas.ExecQuery;
//    Result := Q_Entradas.FN('EntFct').AsDouble;
//
//    Q_Entradas.Close;
//    Q_Entradas.Free;
//  end;
//
//  function VolumenVentaTurnoAdministrativo(fecha: TDate; turno, comb: Byte): Double;
//  var
//    Q_TurnoAdmitivo : TPANQuery;
//  begin
//    Result := 0;
//
//    Q_TurnoAdmitivo := TPANQuery.Create('SELECT SUM(VOLUMEN)VOLUMEN FROM DPVGMOVI WHERE FECHATURNO = :FECHA AND TURNO = :TURNO AND COMBUSTIBLE = :COMBUSTIBLE AND TAG = 0 AND JARREO = ''No''');
//    Q_TurnoAdmitivo.Params[0].AsDate := fecha;
//    Q_TurnoAdmitivo.Params[1].AsInteger := turno;
//    Q_TurnoAdmitivo.Params[2].AsInteger := comb;
//
//    Q_TurnoAdmitivo.ExecQuery;
//    Result := Q_TurnoAdmitivo.FN('VOLUMEN').AsFloat;
//
//    Q_TurnoAdmitivo.Close;
//    Q_TurnoAdmitivo.Free;
//  end;
//
//  function VolumenSalidaTurnoAdministrativo(fecha: TDate; turno, comb: Byte): Double;
//  var
//    Q_TurnoAdmitivo : TPANQuery;
//  begin
//    Result := 0;
//
//    // Volumen inicial
//    Q_TurnoAdmitivo := TPANQuery.Create('SELECT SUM(COALESCE(VOLUMENUTIL, 0)) AS VOLUMENINICIAL FROM DPVGTURNT WHERE FECHA = :FECHA AND TURNO = :TURNO AND COMBUSTIBLE = :COMBUSTIBLE');
//    if turno > 1 then begin
//      Q_TurnoAdmitivo.Params[0].AsDate := fecha;
//      Q_TurnoAdmitivo.Params[1].AsInteger := turno - 1
//    end
//    else begin
//      Q_TurnoAdmitivo.Params[0].AsDate := IncDay(fecha, -1);
//      Q_TurnoAdmitivo.Params[1].AsInteger := 3
//    end;
//    Q_TurnoAdmitivo.Params[2].AsInteger := comb;
//
//    Q_TurnoAdmitivo.ExecQuery;
//    Result := Q_TurnoAdmitivo.FN('VOLUMENINICIAL').AsDouble;
//
//    // Volumen final
//    Q_TurnoAdmitivo.Close;
//    Q_TurnoAdmitivo.Params[0].AsDate := fecha;
//    Q_TurnoAdmitivo.Params[1].AsInteger := turno;
//    Q_TurnoAdmitivo.Params[2].AsInteger := comb;
//
//    Q_TurnoAdmitivo.ExecQuery;
//    Result := Result - Q_TurnoAdmitivo.FN('VOLUMENINICIAL').AsDouble;
//
//    Q_TurnoAdmitivo.Close;
//    Q_TurnoAdmitivo.RollBack;
//    Q_TurnoAdmitivo.Free;
//
//    // Entradas
//    Result := Result + ObtenerEntradas(HoraInicialTurno, HoraFinalTurno, comb);
//  end;
//
//  function VolumenVentaCorteVolumetrico(fecha: TDate; corte, comb, turno: Byte): Double;
//  var
//    Q_Corte : TPANQuery;
//  begin
//    Result := 0;
//
//    Q_Corte := TPANQuery.Create('SELECT SUM(VOLUMEN)VOLUMEN FROM DPVGMOVI WHERE FECHA = :FECHA AND CORTE = :CORTE AND COMBUSTIBLE = :COMBUSTIBLE AND TURNO = :TURNO AND TAG = 0 AND JARREO = ''No''');// AND HORA BETWEEN :HORAINI AND :HORAFIN');
//    Q_Corte.Params[0].AsDate := fecha;
//    Q_Corte.params[1].AsInteger := corte;
//    Q_Corte.Params[2].AsInteger := comb;
//    Q_Corte.Params[3].AsInteger := turno;
//    //Q_Corte.params[3].AsDateTime := HoraInicialTurno;
//    //Q_Corte.params[4].AsDateTime := HoraFinalTurno;
//
//    Q_Corte.ExecQuery;
//    Result := Q_Corte.FN('VOLUMEN').AsDouble;
//
//    Q_Corte.Close;
//    Q_Corte.Free;
//  end;
//
//  function  VolumenSalidaCorteVolumentrico(fecha, horaInicial, horaFinal: TDate; corte, comb, turno, parte: Byte): Double;
//  var
//    Q_Corte : TPANQuery;
//    Q_TurnoAdmitivo : TPANQuery;
//    volInicial, volFinal, entradas : Double;
//  begin
//    Result := 0;
//
//    // Volumen inicial
//    Q_Corte := TPANQuery.Create('SELECT SUM(VOLUMENUTIL)VOLUMEN FROM DPVGCVOLT WHERE FECHA = :FECHA AND CORTE = :CORTE AND COMBUSTIBLE = :COMBUSTIBLE ');
//    if corte > 1 then begin
//      Q_Corte.Params[0].AsDate := fecha;
//      Q_Corte.Params[1].AsInteger := corte - 1
//    end
//    else begin
//      Q_Corte.Params[0].AsDate := IncDay(fecha, -1);
//      Q_Corte.Params[1].AsInteger := 6;
//    end;
//    Q_Corte.params[2].AsInteger := comb;
//
//    Q_Corte.ExecQuery;
//    volInicial := Q_Corte.FN('VOLUMEN').AsDouble;
//
//    // Volumen final
//    Q_Corte.Params[0].AsDate := fecha;
//    Q_Corte.Params[1].AsInteger := corte;
//
//    Q_Corte.ExecQuery;
//
//    volFinal := Q_Corte.FN('VOLUMEN').AsDouble;
//
//    Q_Corte.Close;
//    Q_Corte.Free;
//
//    if parte = 1 then begin
//      Q_TurnoAdmitivo := TPANQuery.Create('SELECT SUM(COALESCE(VOLUMENUTIL, 0)) AS VOLUMENINICIAL FROM DPVGTURNT WHERE FECHA = :FECHA AND TURNO = :TURNO AND COMBUSTIBLE = :COMBUSTIBLE');
//      if turno > 1 then begin
//        Q_TurnoAdmitivo.Params[0].AsDate := horaInicial;
//        Q_TurnoAdmitivo.Params[1].AsInteger := turno - 1
//      end
//      else begin
//        Q_TurnoAdmitivo.Params[0].AsDate := IncDay(horaInicial, -1);
//        Q_TurnoAdmitivo.Params[1].AsInteger := 3
//      end;
//      Q_TurnoAdmitivo.Params[2].AsInteger := comb;
//
//      Q_TurnoAdmitivo.ExecQuery;
//      volInicial := Q_TurnoAdmitivo.FN('VOLUMENINICIAL').AsDouble;
//
//      Q_TurnoAdmitivo.Close;
//      Q_TurnoAdmitivo.Free;
//    end
//    else if parte = 3 then begin
//      Q_TurnoAdmitivo := TPANQuery.Create('SELECT SUM(COALESCE(VOLUMENUTIL, 0)) AS VOLUMENINICIAL FROM DPVGTURNT WHERE FECHA = :FECHA AND TURNO = :TURNO AND COMBUSTIBLE = :COMBUSTIBLE');
//      Q_TurnoAdmitivo.Params[0].AsDate := horaInicial;
//      Q_TurnoAdmitivo.Params[1].AsInteger := turno;
//      Q_TurnoAdmitivo.Params[2].AsInteger := comb;
//
//      Q_TurnoAdmitivo.ExecQuery;
//      volFinal := Q_TurnoAdmitivo.FN('VOLUMENINICIAL').AsDouble;
//
//      Q_TurnoAdmitivo.Close;
//      Q_TurnoAdmitivo.Free;
//    end;
//
//    // Entradas
//    entradas := ObtenerEntradas(horaInicial, horaFinal, comb);
//
//    Result := volInicial + entradas - volFinal;
//  end;
//
//  function ObtenerAjustadoCorte(fecha: TDateTime; corte, comb: Integer): Double;
//  var
//    Q_CorteAju : TADIQuery;
//  begin
//    Result := 0;
//
//    Q_CorteAju := TADIQuery.Create('select sum(volumen1) - sum(volumen2) as AJUSTE from claves where fecha = :fecha and corte = :corte and combustible = :comb');
//    Q_CorteAju.Params[0].AsDate := fecha;
//    Q_CorteAju.Params[1].AsInteger := corte;
//    Q_CorteAju.Params[2].AsInteger := comb;
//
//    Q_CorteAju.ExecQuery;
//
//    Result := Q_CorteAju.FN('AJUSTE').AsDouble;
//
//    Q_CorteAju.Close;
//    Q_CorteAju.Free;
//  end;
//
//  procedure ajustar(fecha: TDateTime; turno, corte, comb: Byte; meta, sumaMov: Double);
//  var
//    ajuste, sumaTemp : Double;
//    vuelta : Integer;
//    ajustar : Boolean;
//
//    function ajustarVenta(folio, tag: Integer; volumen, importe, precio: Double;
//                        hexhash: string; corte, turno, combustible: Byte; fechaTurno: TDateTime): Double;
//    var
//      Q_Movi : TPANQuery;
//      Q_Aju : TADIQuery;
//      ajusteVol, ajusteImp : Double;
//    begin
//      // Si no se ha ajustado, guardar los valores originales
//      if tag = 0 then
//        hexhash := EncriptaCadena(NUMEROESTACION, FormatFloat('###0.00', importe));
//
//      if importe - 10 > MINIMOTICKET then
//        ajusteImp := 10
//      else
//        ajusteImp := importe - MINIMOTICKET;
//
//      ajusteVol := ajusteImp / precio;
//
//      if sumaMov - ajusteVol < meta then
//        ajusteVol := sumaMov - meta;
//
//      // Actualizar el registro en DPVGMOVI
//      Q_Movi := TPANQuery.Create('update dpvgmovi set volumen = :volumen, importe = :importe, tag = 1, hexhash = :hexhash where folio = :folio');
//      Q_Movi.Params[0].AsDouble := volumen - ajusteVol;
//      Q_Movi.Params[1].AsDouble := importe - ajusteImp;
//      //Q_Movi.Params[2].AsInteger := 1;
//      Q_Movi.Params[2].AsString := hexhash;
//      Q_Movi.Params[3].AsInteger := folio;
//
//      Q_Movi.ExecQuery;
//      Q_Movi.Commit;
//      Q_Movi.Close;
//      Q_Movi.Free;
//
//      if tag = 0 then begin
//        Q_Aju := TADIQuery.Create('insert into claves (folio, fecha, corte, volumen1, volumen2, combustible, precio, importe, fechaadmin, turnoadmin) ' +
//                                  'values (:folio, :fecha, :corte, :volumen1, :volumen2, :combustible, :precio, :importe, :fechaadmin, :turnoadmin)');
//        Q_Aju.Params[0].AsInteger := folio;
//        Q_Aju.Params[1].AsDate := fecha;
//        Q_Aju.Params[2].AsInteger := corte;
//        Q_Aju.Params[3].AsDouble := volumen;
//        Q_Aju.Params[4].AsDouble := volumen - ajusteVol;
//        Q_Aju.Params[5].AsInteger := combustible;
//        Q_Aju.Params[6].AsDouble := precio;
//        Q_Aju.Params[7].AsDouble := importe;
//        Q_Aju.Params[8].AsDate := fechaTurno;
//        Q_Aju.Params[9].AsInteger := turno;
//      end
//      else begin
//        Q_Aju := TADIQuery.Create('update claves set volumen2 = :volumen2 where folio = :folio');
//        Q_Aju.Params[0].AsDouble := volumen - ajusteVol;
//        Q_Aju.Params[1].AsInteger := folio;
//      end;
//
//      Q_Aju.ExecQuery;
//      Q_Aju.Commit;
//      Q_Aju.Close;
//      Q_Aju.Free;
//
//      Result := ajusteVol;
//    end;
//
//    function procesoAjuste(query: string; meta: Double; fecha: TDateTime; corte, comb, turno: Integer): Boolean;
//    var
//      sumaTemp : Double;
//      Q_Mov : TPANQuery;
//    begin
//      sumaTemp := sumaMov;
//
//      Q_Mov := TPANQuery.Create(query);
//      Q_Mov.Params[0].AsDate := fecha;
//      Q_Mov.Params[1].AsInteger := corte;
//      Q_Mov.Params[2].AsInteger := comb;
//      Q_Mov.Params[3].AsInteger := turno;
//
//      Q_Mov.ExecQuery;
//
//      while not Q_Mov.Eof do begin
//        if Q_Mov.FN('IMPORTE').AsDouble > MINIMOTICKET + 10 then begin
//          sumaMov := sumaMov - ajustarVenta(Q_Mov.FN('FOLIO').AsInteger, Q_Mov.FN('TAG').AsInteger, Q_Mov.FN('VOLUMEN').AsDouble,
//                                            Q_Mov.FN('IMPORTE').AsDouble, Q_Mov.FN('PRECIO').AsDouble, Q_Mov.FN('HEXHASH').AsString,
//                                            Q_Mov.FN('CORTE').AsInteger, Q_Mov.FN('TURNO').AsInteger,Q_Mov.FN('COMBUSTIBLE').AsInteger,
//                                            Q_Mov.FN('FECHATURNO').AsDateTime);
//
//          if meta >= sumaMov then
//            Break;
//        end;
//
//        Q_Mov.Next;
//      end;
//
//      Q_Mov.Close;
//      Q_Mov.Free;
//
//      Result := (sumaTemp <> sumaMov) and (meta < sumaMov);
//    end;
//
//  begin
//    // Los movimientos no impresos y no facturados
//    ajustar := meta < sumaMov;
//    while ajustar do begin
//      ajustar := procesoAjuste('SELECT * FROM DPVGMOVI WHERE FECHA = :FECHA AND CORTE = :CORTE AND ' +
//                               'COMBUSTIBLE = :COMB AND TURNO = :TURNO AND TAG <> 5 AND JARREO = ''No'' AND ' +
//                               'IMPRESO = ''No'' AND FACTURADO = ''No''',
//                                meta, fecha, corte, comb, turno);
//    end;
//
//    // Los movimientos impresos y no facturados
//    ajustar := meta < sumaMov;
//    while ajustar do begin
//      ajustar := procesoAjuste('SELECT * FROM DPVGMOVI WHERE FECHA = :FECHA AND CORTE = :CORTE AND '+
//                               'COMBUSTIBLE = :COMB AND TURNO = :TURNO AND TAG <> 5 AND JARREO = ''No'' AND ' +
//                               'IMPRESO = ''Si'' AND FACTURADO = ''No''',
//                                meta, fecha, corte, comb, turno);
//    end;
//
//    // Los movimientos impresos y facturados
//    ajustar := meta < sumaMov;
//    while ajustar do begin
//      ajustar := procesoAjuste('SELECT * FROM DPVGMOVI WHERE FECHA = :FECHA AND CORTE = :CORTE AND ' +
//                               'COMBUSTIBLE = :COMB AND TURNO = :TURNO AND TAG <> 5 AND JARREO = ''No'' AND ' +
//                               'IMPRESO = ''Si'' AND FACTURADO = ''Si''',
//                                meta, fecha, corte, comb, turno);
//    end;
//  end;
//
//begin
//  // Obtener el turno Administativo
//  Q_Turnos := TPANQuery.Create('select a.* from DPVGTURN a where a.fechahorainicial<=:fechahora and a.fechahorafinal>=:fechahora');
//
//  case Corte of
//    1:begin
//        turno:=3;
//        fecha := IncDay(fecha, -1);
//      end;
//    2:begin
//        begin
//          turno:=3;
//          fecha := IncDay(fecha, -1);
//        end;
//        begin
//          turno:=1;
//        end;
//      end;
//    3:begin
//        turno:=1;
//      end;
//    4:begin
//        begin
//          turno:=1;
//        end;
//        begin
//          turno:=2;
//        end;
//      end;
//    5:begin
//        turno:=2;
//      end;
//    6:begin
//        begin
//          turno:=2;
//        end;
//        begin
//          turno:=3;
//        end;
//      end;
//  end;
//
//
////  if Corte = 2 then begin
////    turno := 3;
////    fecha := IncDay(fecha, -1)
////  end
////  else if Corte = 4 then
////    turno := 1
////  else if Corte = 6 then
////    turno := 2
////  else
////    Exit;
//
//  Q_Turnos.Params[0].AsDate := fecha;
//  Q_Turnos.Params[1].AsInteger := turno;
//
//  Q_Turnos.ExecQuery;
//
//  HoraInicialTurno := Q_Turnos.FN('FECHAHORAINICIAL').AsDateTime;
//  HoraFinalTurno := Q_Turnos.FN('FECHAHORAFINAL').AsDateTime;
//
//  if Q_Turnos.FN('ESTATUS').AsString='C' then begin
//    VentasAdminitivo := VolumenVentaTurnoAdministrativo(fecha, turno, comb);
//    SalidasAdmitivo := VolumenSalidaTurnoAdministrativo(fecha, turno, comb);
//  end;
//
//  for comb := 1 to 3 do begin
//    // Obtener la meta de todo el Turno Administrativo
//    VentasAdminitivo := 0;
//    VentasAdminitivo := VolumenVentaTurnoAdministrativo(fecha, turno, comb);
//    SalidasAdmitivo := VolumenSalidaTurnoAdministrativo(fecha, turno, comb);
//
//     ajusteAdmitivo := VentasAdminitivo - SalidasAdmitivo;
//
//    // Obtener la meta de cada corte
//    if turno = 1 then begin
//      corteUno := 2; fechaCorte1 := fecha;
//      corteDos := 3; fechaCorte2 := fecha;
//      corteTres := 4; fechaCorte3 := fecha;
//    end
//    else if turno = 2 then begin
//      corteUno := 4; fechaCorte1 := fecha;
//      corteDos := 5; fechaCorte2 := fecha;
//      corteTres := 6; fechaCorte3 := fecha;
//    end
//    else begin
//      corteUno := 6; fechaCorte1 := fecha;
//      corteDos := 1; fechaCorte2 := IncDay(fecha);
//      corteTres := 2; fechaCorte3 := IncDay(fecha);
//    end;
//
//    VentasCorte1 := VolumenVentaCorteVolumetrico(fechaCorte1, corteUno, comb, turno);
//    VentasCorte2 := VolumenVentaCorteVolumetrico(fechaCorte2, corteDos, comb, turno);
//    VentasCorte3 := VolumenVentaCorteVolumetrico(fechaCorte3, corteTres, comb, turno);
//
//    SalCorte1 := VolumenSalidaCorteVolumentrico(fechaCorte1, HoraInicialTurno, HoraFinalTurno, corteUno, comb, turno, 1);
//    SalCorte2 := VolumenSalidaCorteVolumentrico(fechaCorte2, HoraInicialTurno, HoraFinalTurno, corteDos, comb, turno, 2);
//    SalCorte3 := VolumenSalidaCorteVolumentrico(fechaCorte3, HoraInicialTurno, HoraFinalTurno, corteTres, comb, turno, 3);
//
//    ajusteVol1 := VentasCorte1 - SalCorte1;
//    ajusteVol2 := VentasCorte2 - SalCorte2;
//    ajusteVol3 := VentasCorte3 - SalCorte3;
//
//    if ajusteVol1 > ajusteAdmitivo then
//      ajusteVol1 := ajusteAdmitivo;
//
//    if ajusteVol2 > ajusteAdmitivo - ajusteVol1 then
//      ajusteVol2 := ajusteAdmitivo - ajusteVol1;
//
//    if ajusteVol3 > ajusteAdmitivo - ajusteVol1 - ajusteVol2 then
//      ajusteVol3 := ajusteAdmitivo - ajusteVol1 - ajusteVol2;
//
//    meta1 := VentasCorte1 - ajusteVol1;
//    meta2 := VentasCorte2 - ajusteVol2;
//    meta3 := VentasCorte3 - ajusteVol3;
//
//    //Iniciar Ajustes
//    // ajustar la segunda parte del primer corte
//    ajustar(fechaCorte1, turno, corteUno, comb, meta1, VentasCorte1);
//    // ajustar el segundo corte completo
//    ajustar(fechaCorte2, turno, corteDos, comb, meta2, VentasCorte2);
//    // ajustar la primera parte del tercer corte
//    ajustar(fechaCorte3, turno, corteTres, comb, meta3, VentasCorte3);
//
//  end;
//
//  Q_Turnos.Close;
//  Q_Turnos.Free;
//
//end;

//TODO//
procedure TFAJUMENU.AjustarCortesAdministrativos(fecha,
  fechahora: TDateTime; Corte: Byte);
var
  Q_Turnos:TPANQuery;
  Q_Admin:TADIQuery;
  HoraInicialTurno, HoraFinalTurno : TDateTime;
  turno, turno1:Integer;
  comb:Integer;
  swFechaAdmin,swFechaTmp:TDateTime;
  swExiste:Boolean;
  VtasTurno1,VtasTurno2,VtasTurno3:Real;
  acu:real;
  i:Integer;
  quFecha: TADIQuery;
  M,P,D:Boolean;
  Combust:string;

  function HoraTurno(fecha:TDateTime;corte:Integer; final:Boolean):TDateTime;
  var
    Q_Hor:TPANQuery;
  begin
    try
      if final then
        Q_Hor:=TPANQuery.Create('Select FechaHoraFinal as Hora from DPVGCVOL where Fecha=:pFecha and Corte=:pCorte')
      else
        Q_Hor:=TPANQuery.Create('Select FechaHoraInicial as Hora from DPVGCVOL where Fecha=:pFecha and Corte=:pCorte');
      Q_Hor.ParamByName('pFecha').AsDateTime:=fecha;
      Q_Hor.ParamByName('pCorte').AsInteger:=corte;
      Q_Hor.ExecQuery;
      Result:=Q_Hor.FN('Hora').AsDateTime;
    finally
      Q_Hor.RollBack;
      Q_Hor.Close;
      Q_Hor.Free;
    end;
  end;
begin
  // Obtener el turno Administativo
  try
    Q_Turnos := TPANQuery.Create('select a.* from DPVGTURN a where a.fechahorainicial<=:fechahora and a.fechahorafinal>=:fechahora');
    Q_Turnos.ParamByName('fechahora').AsDateTime:=fechahora;
    Q_Turnos.ExecQuery;
    EntradasAdmin:=0;
    turno:=0;
    swJarreoAdmin:=0;
    if Q_Turnos.FN('ESTATUS').AsString='C' then begin
      turno:=Q_Turnos.FN('TURNO').AsInteger;
      swFechaAdmin:=Q_Turnos.FN('FECHA').AsDateTime;
      HoraInicialTurno := Q_Turnos.FN('FECHAHORAINICIAL').AsDateTime;
      HoraFinalTurno := Q_Turnos.FN('FECHAHORAFINAL').AsDateTime;
      M:=False; P:=False; D:=False;
      for comb:= 1 to 3 do begin
        swExiste:=False;
        try
          Q_Admin:=TADIQuery.Create('select coalesce(count(*),0) as existe from turnosadmin Where Fecha=:pFecha and Turno=:pTurno and combustible=:pComb');
          Q_Admin.ParamByName('pFecha').AsDateTime:=swFechaAdmin;
          Q_Admin.ParamByName('pTurno').AsInteger :=turno;
          Q_Admin.ParamByName('pComb').AsInteger  :=comb;
          Q_Admin.ExecQuery;
          if Q_Admin.FN('existe').AsInteger>0 then begin
            swExiste:=True;
          end;
        finally
          Q_Admin.RollBack;
          Q_Admin.Close;
          Q_Admin.Free;
        end;
        if not swExiste then begin
          VentasAdminitivo := 0;
          VentasAdminitivo := VolumenVentaTurnoAdministrativo(swFechaAdmin, turno, comb);
          SalidasAdmitivo := 0;
          SalidasAdmitivo := VolumenSalidaTurnoAdministrativo(swFechaAdmin, turno, comb,HoraInicialTurno, HoraFinalTurno);
          ajusteAdmitivo := 0;
          ajusteAdmitivo := VentasAdminitivo - SalidasAdmitivo;
          if turno=1 then begin
            VtasTurno1:=VtasTurnosVol(HoraInicialTurno,HoraTurno(fecha,2,True),comb);
            VtasTurno2:=VtasTurnosVol(HoraTurno(fecha,3,False),HoraTurno(fecha,3,True),comb);
            VtasTurno3:=VtasTurnosVol(HoraTurno(fecha,4,False),HoraFinalTurno,comb);
          end
          else if turno=2 then begin
            VtasTurno1:=VtasTurnosVol(HoraInicialTurno,HoraTurno(fecha,4,True),comb);
            VtasTurno2:=VtasTurnosVol(HoraTurno(fecha,5,False),HoraTurno(fecha,5,True),comb);
            VtasTurno3:=VtasTurnosVol(HoraTurno(fecha,6,False),HoraFinalTurno,comb);
          end
          else if turno=3 then begin
            VtasTurno1:=VtasTurnosVol(HoraInicialTurno,HoraTurno(fecha-1,6,True),comb);
            VtasTurno2:=VtasTurnosVol(HoraTurno(fecha,1,False),HoraTurno(fecha,1,True),comb);
            VtasTurno3:=VtasTurnosVol(HoraTurno(fecha,2,False),HoraFinalTurno,comb);
          end;
          try
            Q_Admin:=TADIQuery.Create('INSERT INTO TURNOSADMIN (FECHA, TURNO, SALIDAS, AJUSTE, DIFERENCIA, COMBUSTIBLE, TANQUE, INVINICIAL, INVFINAL, ENTRADA, JARREO, INVFISICO, TURNO1, TURNO2, TURNO3) '+
                                      'VALUES (:FECHA, :TURNO, :SALIDAS, :AJUSTE, :DIFERENCIA, :COMBUSTIBLE, :TANQUE, :INVINICIAL, :INVFINAL, :ENTRADA, :JARREO, :INVFISICO, :TURNO1, :TURNO2, :TURNO3)');
            Q_Admin.ParamByName('FECHA').AsDateTime       := swFechaAdmin;
            Q_Admin.ParamByName('TURNO').AsInteger        := turno;
            Q_Admin.ParamByName('SALIDAS').AsFloat        := VentasAdminitivo;
            Q_Admin.ParamByName('AJUSTE').AsFloat         := ajusteAdmitivo;
            Q_Admin.ParamByName('DIFERENCIA').AsFloat     := SalidasAdmitivo;
            Q_Admin.ParamByName('COMBUSTIBLE').AsInteger  := comb;
            Q_Admin.ParamByName('TANQUE').AsInteger       := 0;
            Q_Admin.ParamByName('INVINICIAL').AsFloat     := 0;
            Q_Admin.ParamByName('ENTRADA').AsFloat        := EntradasAdmin;
            Q_Admin.ParamByName('JARREO').AsFloat         := swJarreoAdmin;
            Q_Admin.ParamByName('INVFISICO').AsFloat      := 0;
            if (VtasTurno1>0) and (VentasAdminitivo>0) then
              Q_Admin.ParamByName('TURNO1').AsFloat         := (VtasTurno1/VentasAdminitivo)*ajusteAdmitivo
            else
              Q_Admin.ParamByName('TURNO1').AsFloat         := 0;
            if (VtasTurno2>0) and (VentasAdminitivo>0) then
              Q_Admin.ParamByName('TURNO2').AsFloat         := (VtasTurno2/VentasAdminitivo)*ajusteAdmitivo
            else
              Q_Admin.ParamByName('TURNO2').AsFloat         := 0;
            if (VtasTurno3>0) and (VentasAdminitivo>0) then
              Q_Admin.ParamByName('TURNO3').AsFloat         := (VtasTurno3/VentasAdminitivo)*ajusteAdmitivo
            else
              Q_Admin.ParamByName('TURNO3').AsFloat         := 0;
            Q_Admin.ExecQuery;
            Q_Admin.Commit;
          finally
            Q_Admin.Close;
            Q_Admin.free;
          end;
        end;
        try
          Q_Admin:=TADIQuery.Create('select SALIDAS, DIFERENCIA, AJUSTE, TURNO1, TURNO2, TURNO3 from turnosadmin Where Fecha=:pFecha and Turno=:pTurno and combustible=:pComb');
          Q_Admin.ParamByName('pFecha').AsDateTime:=swFechaAdmin;
          Q_Admin.ParamByName('pTurno').AsInteger :=turno;
          Q_Admin.ParamByName('pComb').AsInteger  :=comb;
          Q_Admin.ExecQuery;
          VentasAdminitivo  := Q_Admin.FN('SALIDAS').AsFloat;
          SalidasAdmitivo   := Q_Admin.FN('DIFERENCIA').AsFloat;
          ajusteAdmitivo    := Q_Admin.FN('AJUSTE').AsFloat;
          VtasTurno1        := Q_Admin.FN('TURNO1').AsFloat;
          VtasTurno2        := Q_Admin.FN('TURNO2').AsFloat;
          VtasTurno3        := Q_Admin.FN('TURNO3').AsFloat;
        finally
          Q_Admin.RollBack;
          Q_Admin.Close;
          Q_Admin.Free;
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
        if Mem_Aju.Locate('Combustible',comb,[]) then begin

          case Corte of
            1:begin
              LitrosAju := VtasTurno2;
            end;
            2:begin
              if turno=3 then
                LitrosAju := VtasTurno3
              else if turno=1 then
                LitrosAju := VtasTurno1
            end;
            3:begin
              LitrosAju := VtasTurno2;
            end;
            4:begin
              if turno=1 then
                LitrosAju := VtasTurno3
              else if turno=2 then
                LitrosAju := VtasTurno1
            end;
            5:begin
              LitrosAju := VtasTurno2;
            end;
            6:begin
              if turno=3 then
                LitrosAju := VtasTurno1
              else if turno=2 then
                LitrosAju := VtasTurno3
            end;
          end;

          Mem_Datos.Close;
          Mem_Datos.Open;

          if LitrosAju>0 then begin
            llena_datos6_6(fecha,corte,turno,Mem_AjuCombustible.AsInteger);
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
            selecciona_transacciones2_6_6(Mem_AjuCombustible.AsInteger,LitrosAju);
            aplica_cambios;
            case Mem_AjuCombustible.AsInteger of
              1:M:=True;
              2:P:=True;
              3:D:=True;
            end;
          end;

//          Mem_Aju.Next;
        end;

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
  finally
    Q_Turnos.RollBack;
    Q_Turnos.Close;
    Q_Turnos.Free;
  end;
end;

function TFAJUMENU.VolumenVentaTurnoAdministrativo(fecha: TDate; turno,
  comb: Byte): Double;
var
  Q_TurnoAdmitivo : TPANQuery;
begin
  Result := 0;

  Q_TurnoAdmitivo := TPANQuery.Create('SELECT SUM(COALESCE(VOLUMEN, 0)) as VOLUMEN FROM DPVGMOVI '+
                                      'WHERE FECHATURNO = :FECHA AND TURNO = :TURNO AND COMBUSTIBLE = :COMBUSTIBLE AND TAG = 0 AND JARREO = '+QuotedStr('No'));
  Q_TurnoAdmitivo.Params[0].AsDate := fecha;
  Q_TurnoAdmitivo.Params[1].AsInteger := turno;
  Q_TurnoAdmitivo.Params[2].AsInteger := comb;

  Q_TurnoAdmitivo.ExecQuery;
  Result := Q_TurnoAdmitivo.FN('VOLUMEN').AsFloat;

  Q_TurnoAdmitivo.Close;
  Q_TurnoAdmitivo.SQL.Clear;
  Q_TurnoAdmitivo.SQL.Add('SELECT SUM(COALESCE(VOLUMEN, 0)) as VOLUMEN FROM DPVGMOVI '+
                                      'WHERE FECHATURNO = :FECHA AND TURNO = :TURNO AND COMBUSTIBLE = :COMBUSTIBLE AND JARREO = '+QuotedStr('Si'));
  Q_TurnoAdmitivo.Params[0].AsDate := fecha;
  Q_TurnoAdmitivo.Params[1].AsInteger := turno;
  Q_TurnoAdmitivo.Params[2].AsInteger := comb;
  Q_TurnoAdmitivo.ExecQuery;
  swJarreoAdmin := Q_TurnoAdmitivo.FN('VOLUMEN').AsFloat;

  Q_TurnoAdmitivo.RollBack;
  Q_TurnoAdmitivo.Close;
  Q_TurnoAdmitivo.Free;

end;

function TFAJUMENU.VolumenSalidaTurnoAdministrativo(fecha: TDate; turno,
  comb: Byte; HoraInicialTurno, HoraFinalTurno:TDateTime): Double;
var
  Q_TurnoAdmitivo : TPANQuery;
  swVolumenIni,swVolumenFinal:Double;
begin
  Result := 0;
  // Volumen inicial
  Q_TurnoAdmitivo := TPANQuery.Create('SELECT SUM(COALESCE(VOLUMENUTIL, 0)) AS VOLUMENINICIAL FROM DPVGTURNT WHERE FECHA = :FECHA AND TURNO = :TURNO AND COMBUSTIBLE = :COMBUSTIBLE');
  if turno > 1 then begin
    Q_TurnoAdmitivo.ParamByName('FECHA').AsDate := fecha;
    Q_TurnoAdmitivo.ParamByName('TURNO').AsInteger := turno - 1
  end
  else begin
    Q_TurnoAdmitivo.ParamByName('FECHA').AsDate := IncDay(fecha, -1);
    Q_TurnoAdmitivo.ParamByName('TURNO').AsInteger := 3
  end;
  Q_TurnoAdmitivo.ParamByName('COMBUSTIBLE').AsInteger := comb;
  Q_TurnoAdmitivo.ExecQuery;
  swVolumenIni := Q_TurnoAdmitivo.FN('VOLUMENINICIAL').AsDouble;

  // Volumen final
  Q_TurnoAdmitivo.Close;
  Q_TurnoAdmitivo.ParamByName('FECHA').AsDate := fecha;
  Q_TurnoAdmitivo.ParamByName('TURNO').AsInteger := turno;
  Q_TurnoAdmitivo.ParamByName('COMBUSTIBLE').AsInteger := comb;
  Q_TurnoAdmitivo.ExecQuery;
  swVolumenFinal:= Q_TurnoAdmitivo.FN('VOLUMENINICIAL').AsDouble;

  Q_TurnoAdmitivo.Close;
  Q_TurnoAdmitivo.RollBack;
  Q_TurnoAdmitivo.Free;

  // Entradas
  Result := (swVolumenIni -swVolumenFinal) + ObtenerEntradas(HoraInicialTurno, HoraFinalTurno, comb);

end;

function TFAJUMENU.ObtenerEntradas(horaIni, horaFin: TDateTime;
  comb: Byte): Double;
var
  Q_Entradas : TPANQuery;
begin
  Result := 0;
  EntradasAdmin:=0;
  Q_Entradas:= TPANQuery.Create('Select coalesce(Sum(d.VolPemex),0) as EntFct from DPVGDOCU d where exists(select t.folio from DPVGETAN t ' +
               'where fechahoraregistro between :fechaIni and :fechaFin and d.folioentrada = t.folio and combustible = :combustible)');
  Q_Entradas.Params[0].AsDateTime := horaIni;
  Q_Entradas.Params[1].AsDateTime := horaFin;
  Q_Entradas.Params[2].AsInteger := comb;

  Q_Entradas.ExecQuery;
  EntradasAdmin:=Q_Entradas.FN('EntFct').AsDouble;
  Result := EntradasAdmin;

  Q_Entradas.Close;
  Q_Entradas.Free;

end;

function TFAJUMENU.VtasTurnosVol(HoraIni,HoraFin:TDateTime; combustible:Integer):Double;
var
  Q_VtasTurno:TPANQuery;
begin
  try
    Q_VtasTurno:=TPANQuery.create('SELECT coalesce(SUM(VOLUMEN),0) as VOLUMEN FROM DPVGMOVI '+
                                  'WHERE Hora>=:pHoraIni '+
                                  '  and Hora<=:pHoraFin '+
                                  '  and COMBUSTIBLE=:pcomb');
    Q_VtasTurno.ParamByName('pHoraIni').AsDateTime:=HoraIni;
    Q_VtasTurno.ParamByName('pHoraFin').AsDateTime:=HoraFin;
    Q_VtasTurno.ParamByName('pcomb').AsInteger    :=combustible;
    Q_VtasTurno.ExecQuery;
    Result:=Q_VtasTurno.FN('VOLUMEN').AsFloat;
  finally
    Q_VtasTurno.RollBack;
    Q_VtasTurno.Close;
    Q_VtasTurno.Free;
  end;
end;

procedure llena_datos6_6(fecha: TDateTime; corte, turno, combustible: byte);
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
       Q_Temp1.SQL.Add('SELECT FOLIO,COMBUSTIBLE,VOLUMEN,IMPORTE,PRECIO, FECHATURNO, TURNO ');
       Q_Temp1.SQL.Add('FROM');
       Q_Temp1.SQL.Add(' DPVGMOVI');
       Q_Temp1.SQL.Add('WHERE FECHATURNO = :pFechaTurno');
       Q_Temp1.SQL.Add('  AND TURNO = :pTurno');
       Q_Temp1.SQL.Add('  AND CORTE = :pCorte');
       Q_Temp1.SQL.Add('  AND COMBUSTIBLE = :pComb');
       Q_Temp1.SQL.Add('  AND 0 = 0');
       Q_Temp1.SQL.Add('  AND TAG <> 5');
       Q_Temp1.SQL.Add('  AND IMPORTE >= 30');
       Q_Temp1.SQL.Add('  AND JARREO = '+QuotedStr('No'));
       Q_Temp1.SQL.Add('  AND CONSIGNACION = '+QuotedStr('No'));
       Q_Temp1.SQL.Add('ORDER BY IMPRESO, FACTURADO');

       //    MODOAJUSTE := 4;

       if MODOAJUSTE=4 then  begin

         if alcanza_litros6_6(fecha,corte,turno,combustible,LitrosAju,30) then begin
           Q_Temp1.SQL[7]:='AND IMPRESO=''No''';
         end
         else if alcanza_litros2_6_6(fecha,corte, turno,combustible,LitrosAju,30) then begin
           Q_Temp1.SQL[7]:='AND FACTURADO=''No''';
         end
         else if not alcanza_litros3_6_6(fecha,corte,turno,combustible,LitrosAju,30) then begin
           alcanzan:=false;
           Exit;
         end;
       end
       else
         Q_Temp1.SQL[7]:='AND IMPRESO=''No''';

       Q_Temp1.Close;
       Q_Temp1.ParamByName('pFechaTurno').AsDateTime:=fecha;
       Q_Temp1.ParamByName('pTurno').AsInteger:=turno;
       Q_Temp1.ParamByName('pCorte').AsInteger:=corte;
       Q_Temp1.ParamByName('pComb').AsInteger:=combustible;
       Q_Temp1.ExecQuery;
       if Q_Temp1.RowsAffected>0 then begin
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
              Mem_DatosFechaAdmin.AsDateTime := Q_Temp1.Fields[5].AsDateTime;
              Mem_DatosTurnoAdmin.AsInteger := Q_Temp1.Fields[6].AsInteger;
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

function alcanza_litros6_6(fecha:TDateTime;corte,turno,combustible:Integer;meta,minimo:Real):boolean;
var
  Q_NoImpr:TPANQuery;
  total_ajuste:real;
begin
  minimo := 30;
  total_ajuste := 0;

  while (total_ajuste<meta) or (minimo>=20) do begin

    try
      Q_NoImpr:=TPANQuery.Create('SELECT SUM(VOLUMEN) FROM DPVGMOVI '+
                                 'WHERE FECHATURNO = :pFechaTurno AND TURNO = :pTurno AND CORTE = :pCorte '+
                                 'AND COMBUSTIBLE=:COMBUSTIBLE AND IMPORTE>=:IMPORTE '+
                                 'AND IMPRESO=''No'' AND JARREO=''No'' AND CONSIGNACION = ''No''');
      Q_NoImpr.ParamByName('pFechaTurno').AsDateTime:=fecha;
      Q_NoImpr.ParamByName('pTurno').AsInteger:=turno;
      Q_NoImpr.ParamByName('pCorte').AsInteger:=corte;
      Q_NoImpr.ParamByName('COMBUSTIBLE').AsInteger:=combustible;
      Q_NoImpr.ParamByName('IMPORTE').AsFloat:=minimo;
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

function alcanza_litros2_6_6(fecha: TDateTime; corte,turno,combustible: Integer; meta, minimo: Real): boolean;
var
  Q_NoImpr: TPANQuery;
  total_ajuste: real;
  query: string;
begin
  minimo := 30;
  total_ajuste := 0;
  query := 'SELECT SUM(VOLUMEN) FROM DPVGMOVI where FECHATURNO = :pFechaTurno AND TURNO = :pTurno AND CORTE = :pCorte ' +
           'AND COMBUSTIBLE = :COMBUSTIBLE AND IMPORTE >= :IMPORTE AND FACTURADO = ''No'' AND ' +
           'JARREO = ''No'' AND CONSIGNACION = ''No'' AND TAG <> 5';

  while (total_ajuste<meta) or (minimo>=20) do begin

    try
      Q_NoImpr:=TPANQuery.Create(query);
      Q_NoImpr.ParamByName('pFechaTurno').AsDateTime:=fecha;
      Q_NoImpr.ParamByName('pTurno').AsInteger:=turno;
      Q_NoImpr.ParamByName('pCorte').AsInteger:=corte;
      Q_NoImpr.ParamByName('COMBUSTIBLE').AsFloat:=combustible;
      Q_NoImpr.ParamByName('IMPORTE').AsFloat:=minimo;
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
      Q_NoImpr.RollBack;
      Q_NoImpr.Close;
      Q_NoImpr.Free;
    end;
  end;
end;

function alcanza_litros3_6_6(fecha: TDateTime; corte, turno, combustible: Integer; meta, minimo: Real): boolean;
var
  Q_NoImpr: TPANQuery;
  total_ajuste: real;
  query: string;
begin
  minimo := 25;
  total_ajuste := 0;
  query := 'SELECT SUM(VOLUMEN) FROM DPVGMOVI WHERE FECHATURNO = :pFechaTurno AND TURNO = :pTurno AND CORTE = :pCorte '+
           'AND COMBUSTIBLE = :COMBUSTIBLE ' +
           'AND IMPORTE >= :IMPORTE AND JARREO= ''No'' AND CONSIGNACION = ''No'' AND TAG <> 5';

  while (total_ajuste < meta) or (minimo >= 5) do begin

    try
      Q_NoImpr:=TPANQuery.Create(query);
      Q_NoImpr.ParamByName('pFechaTurno').AsDateTime:=fecha;
      Q_NoImpr.ParamByName('pTurno').AsInteger:=turno;
      Q_NoImpr.ParamByName('pCorte').AsInteger:=corte;
      Q_NoImpr.ParamByName('COMBUSTIBLE').AsFloat:=combustible;
      Q_NoImpr.ParamByName('IMPORTE').AsFloat:=minimo;
      Q_NoImpr.ExecQuery;

      total_ajuste := Q_NoImpr.Fields[0].AsFloat;

      if total_ajuste < meta then begin
         Result := False;
         break;
      end
      else begin
         Result := True;
         break;
      end;

      minimo:=minimo-10;
    finally
      Q_NoImpr.Free;
    end;
  end;
end;


procedure TFAJUMENU.DifLecturasVtas(Fecha: TDateTime);
var
  Q_Bomb,Q_Cons:TPANQuery;
  TotLect,TotVtas,Dif,AcuTick:Double;
  PrecM,PrecP,PrecD:Double;

  function GeneraHoraAleatoria:TDateTime;
  var
    hora,minuto,segundo:Integer;
  begin
    hora:=RandomRange(7,21);
    minuto:=Random(59);
    segundo:=Random(59);
    Result:=IncHour(Fecha,hora);
    Result:=IncMinute(Result,minuto);
    Result:=IncSecond(Result,segundo);
  end;

begin
  Q_Cons:=TPANQuery.Create('SELECT COMBUSTIBLE,PRECIO FROM DPVGPREC WHERE FOLIO=(SELECT MAX(FOLIO) FROM DPVGPREC) AND APLICADO=''Si'' ORDER BY COMBUSTIBLE');
  Q_Cons.ExecQuery;
  while not Q_Cons.Eof do begin
    case Q_Cons.FN('COMBUSTIBLE').AsInteger of
      1:PrecM:=Q_Cons.FN('PRECIO').AsFloat;
      2:PrecP:=Q_Cons.FN('PRECIO').AsFloat;
      3:PrecD:=Q_Cons.FN('PRECIO').AsFloat;
    end;
    Q_Cons.Next;
  end;
  Q_Cons.Close;
  Q_Cons.RollBack;
  Q_Cons.Free;
  Q_Bomb:=TPANQuery.Create('SELECT POSCARGA,COMBUSTIBLE,CAMPOLECTURA FROM DPVGBOMB ORDER BY MANGUERA');
  Q_Bomb.ExecQuery;
  while not Q_Bomb.Eof do begin
    Q_Cons:=TPANQuery.Create('SELECT '+Q_Bomb.FN('CAMPOLECTURA').AsString+'-(SELECT '+Q_Bomb.FN('CAMPOLECTURA').AsString+' FROM DPVGTURND WHERE FECHA=:FECHA-1');
    Q_Cons.SQL.Add('AND TURNO=(SELECT MAX(TURNO) FROM DPVGTURND WHERE FECHA=:FECHA-1 AND POSCARGA=:POSCARGA)');
    Q_Cons.SQL.Add('AND POSCARGA=:POSCARGA) AS TOTAL FROM DPVGTURND WHERE FECHA=:FECHA AND TURNO=(SELECT MAX(TURNO)');
    Q_Cons.SQL.Add('FROM DPVGTURND WHERE FECHA=:FECHA AND POSCARGA=:POSCARGA) AND POSCARGA=:POSCARGA');
    Q_Cons.ParamByName('FECHA').AsDateTime:=Fecha;
    Q_Cons.ParamByName('POSCARGA').AsInteger:=Q_Bomb.FN('POSCARGA').AsInteger;
    Q_Cons.ExecQuery;
    TotLect:=Q_Cons.FN('TOTAL').AsFloat;
    if TotLect<=0 then begin
      Q_Bomb.Next;
      Continue;
    end;
    Q_Cons.Close;
    Q_Cons.RollBack;
    Q_Cons.Free;
    Q_Cons:=TPANQuery.Create('SELECT SUM(VOLUMEN) AS TOTAL FROM DPVGMOVI WHERE FECHA=:FECHA AND POSCARGA=:POSCARGA AND COMBUSTIBLE=:COMBUSTIBLE');
    Q_Cons.ParamByName('FECHA').AsDateTime:=Fecha;
    Q_Cons.ParamByName('POSCARGA').AsInteger:=Q_Bomb.FN('POSCARGA').AsInteger;
    Q_Cons.ParamByName('COMBUSTIBLE').AsInteger:=Q_Bomb.FN('COMBUSTIBLE').AsInteger;
    Q_Cons.ExecQuery;
    TotVtas:=Q_Cons.FN('TOTAL').AsFloat;
    if TotVtas=0 then begin
      Q_Bomb.Next;
      Continue;
    end;
    Q_Cons.Close;
    Q_Cons.RollBack;
    Q_Cons.Free;
    Dif:=TotLect-TotVtas;
    if Dif<=0 then begin
      Q_Bomb.Next;
      Continue;
    end;
    while True do begin
      Q_Cons:=TPANQuery.Create('INSERT INTO DPVGMOVI (FECHA,HORA,POSCARGA,COMBUSTIBLE,VOLUMEN,IMPORTE,PRECIO,HORASTR,TIPOPAGO) VALUES');
      Q_Cons.SQL.Add('(:FECHA,:HORA,:POSCARGA,:COMBUSTIBLE,:VOLUMEN,:IMPORTE,:PRECIO,:HORASTR,:TIPOPAGO)');
      Q_Cons.ParamByName('FECHA').AsDateTime:=Fecha;
      Q_Cons.ParamByName('HORA').AsDateTime:=GeneraHoraAleatoria;
      Q_Cons.ParamByName('POSCARGA').AsInteger:=Q_Bomb.FN('POSCARGA').AsInteger;
      Q_Cons.ParamByName('COMBUSTIBLE').AsInteger:=Q_Bomb.FN('COMBUSTIBLE').AsInteger;
      if Dif-AcuTick<50 then
        Q_Cons.ParamByName('VOLUMEN').AsFloat:=Dif-AcuTick
      else
        Q_Cons.ParamByName('VOLUMEN').AsFloat:=50;
      AcuTick:=AcuTick+Q_Cons.ParamByName('VOLUMEN').AsFloat;
      case Q_Bomb.FN('COMBUSTIBLE').AsInteger of
        1:begin
            Q_Cons.ParamByName('IMPORTE').AsFloat:=PrecM*Q_Cons.ParamByName('VOLUMEN').AsFloat;
            Q_Cons.ParamByName('PRECIO').AsFloat:=PrecM;
          end;
        2:begin
            Q_Cons.ParamByName('IMPORTE').AsFloat:=PrecP*Q_Cons.ParamByName('VOLUMEN').AsFloat;
            Q_Cons.ParamByName('PRECIO').AsFloat:=PrecP;
          end;
        3:begin
            Q_Cons.ParamByName('IMPORTE').AsFloat:=PrecD*Q_Cons.ParamByName('VOLUMEN').AsFloat;
            Q_Cons.ParamByName('PRECIO').AsFloat:=PrecD;
          end;
      end;
      Q_Cons.ParamByName('HORASTR').AsString:=FormatDateTime('hh:mm:ss',Q_Cons.ParamByName('HORA').AsDateTime);
      Q_Cons.ParamByName('TIPOPAGO').AsInteger:=0;
      Q_Cons.ExecQuery;
      Q_Cons.Commit;
      Q_Cons.Close;
      Q_Cons.Free;
      if AcuTick>=Dif then begin
        AcuTick:=0;
        Break;
      end;
    end;
    Q_Bomb.Next;
  end;
  Q_Bomb.Close;
  Q_Bomb.RollBack;
  Q_Bomb.Free;
end;

procedure TFAJUMENU.tmr_levantaTimer(Sender: TObject);
begin
  if FileExists('levanta.txt') then begin
    tmr_levanta.Enabled:=False;
    if pasa_usuario('','',True) then
      Show
    else
      tmr_levanta.Enabled:=True;
    DeleteFile('levanta.txt');
  end;
end;

procedure TFAJUMENU.WMHotKey(var Msg: TWMHotKey);
var
  archivo:TextFile;
begin
  if (Msg.HotKey = id1) and (tmr_levanta.Enabled) then begin
    AssignFile( archivo, ExtractFilePath( Application.ExeName ) + 'levanta.txt' );
    Rewrite( archivo );
    WriteLn( archivo, 'X' );
    CloseFile( archivo );
  end;  
end;

procedure TFAJUMENU.FormCreate(Sender: TObject);
const
  MOD_ALT = 1;
  MOD_CONTROL = 2;
  VK_A = $41;
begin
  id1 := GlobalAddAtom('Hotkey1');
  RegisterHotKey(Handle, id1, MOD_CONTROL + MOD_Alt, VK_A);
end;

procedure TFAJUMENU.FormDestroy(Sender: TObject);
begin
  UnRegisterHotKey(Handle, id1);
  GlobalDeleteAtom(id1);
end;

procedure TFAJUMENU.DetalleMangueras_OG(fecha: TDate; corte: Integer);
var
  dll : OleVariant;
  resp:string;
begin
  if CONEXION_OG<>'' then begin
    dll := CreateOleObject('ConexionSQL.UpdateTickets');
    try
      QL_Mang.ParamByName('FECHA').AsDate:=fecha;
      QL_Mang.Open;
      while not QL_Mang.Eof do begin
        resp:=dll.ActualizarCorteManguera(corte,QL_MangMANGUERA.AsInteger,QL_MangTOTAL.AsFloat,CONEXION_OG);
        if StrToFloatDef(resp,-99)=-99 then
          raise Exception.Create(resp);
        QL_Mang.Next;
      end;
    finally
      QL_Mang.Close;
    end;
  end;
end;

procedure TFAJUMENU.DetalleProductos_OG(fecha: TDate; corte: Integer);
var
  dll : OleVariant;
  resp:string;
  totVol,totImp:Double;
begin
  if CONEXION_OG<>'' then begin
    dll := CreateOleObject('ConexionSQL.UpdateTickets');
    try
      QL_Prod.ParamByName('FECHA').AsDate:=fecha;
      QL_Prod.Open;
      while not QL_Prod.Eof do begin
        resp:=dll.ActualizarCorteProducto(corte,QL_ProdCOMBUSTIBLE.AsInteger,QL_ProdVOLUMEN.AsFloat,QL_ProdIMPORTE.AsFloat,CONEXION_OG);
        if StrToFloatDef(resp,-99)=-99 then
          raise Exception.Create(resp);
        totVol:=totVol+QL_ProdVOLUMEN.AsFloat;
        totImp:=totImp+QL_ProdIMPORTE.AsFloat;
        QL_Prod.Next;
      end;
      resp:=dll.ActualizarCorte(corte,totVol,totImp,CONEXION_OG);
      if StrToFloatDef(resp,-99)=-99 then
        raise Exception.Create(resp);
    finally
      QL_Prod.Close;
    end;
  end;
end;

function TFAJUMENU.ObtenerCorte_OG(fecha: TDate): Integer;
var
  dll : OleVariant;
  resp:string;
begin
  if CONEXION_OG<>'' then begin
    dll := CreateOleObject('ConexionSQL.UpdateTickets');
    resp:=dll.ObtenerIdCorte(FechaToStr(fecha),CONEXION_OG);
    if StrToFloatDef(resp,-99)=-99 then
      raise Exception.Create(resp);
    Result:=StrToInt(resp)
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
