unit UAJUREP01;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, RpDefine, RpRave, DB, dxmdaset,
  RpBase, RpSystem, RpCon, RpConDS, RpRender, RpRenderPDF, OleServer,
  Excel2000, JvDataEmbedded, UFIBCLASS2, StrUtils;

type
  TFREP01 = class(TForm)
    cbFechaIni: TcxDateEdit;
    lbl1: TLabel;
    Label1: TLabel;
    cbFechaFin: TcxDateEdit;
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
    memTotalesVentas: TStringField;
    mem1Ventas: TCurrencyField;
    memTotalesJarreos: TCurrencyField;
    mem1porPemx: TCurrencyField;
    memTotalesporPemx: TCurrencyField;
    mem1InvFisico: TFloatField;
    memTotalesInvFisico: TFloatField;
    RvRenderPDF1: TRvRenderPDF;
    RvSystem1: TRvSystem;
    mem1VtasImpDesp: TFloatField;
    mem1VtasImpAnt: TFloatField;
    mem1DifVtaContavsVtaTanque: TFloatField;
    mem1AcumDifVtas: TFloatField;
    mem1PorcMenRend: TFloatField;
    memTotalesVtasImpAnt: TFloatField;
    memTotalesVtasImpDesp: TFloatField;
    memTotalesDifVtaContavsVtaTanque: TFloatField;
    memTotalesAcumDifVtas: TFloatField;
    memTotalesPorcMenRend: TStringField;
    cb6a6: TCheckBox;
    CheckBox2: TCheckBox;
    mem1EntradaFct: TFloatField;
    mem1LtsMermaConta: TFloatField;
    mem1ImpMermaConta: TFloatField;
    memTotalesLtsMermaConta: TFloatField;
    memTotalesImpMermaConta: TFloatField;
    memTotalesEntradaFct: TFloatField;
    mem1Pendiente: TCurrencyField;
    rsTickets: TJvDataEmbedded;
    TM_Auxi: TdxMemData;
    TM_AuxiCombustible: TIntegerField;
    TM_AuxiNombre: TStringField;
    TM_AuxiEntFact: TFloatField;
    TM_AuxiEntFisica: TFloatField;
    TM_AuxiEntMermas: TFloatField;
    TM_AuxiInvFinal: TFloatField;
    TM_AuxiSaliTanque: TFloatField;
    TM_AuxiSalidaDisp: TFloatField;
    TM_AuxiJarreos: TFloatField;
    TM_AuxiVtasLtsAntes: TFloatField;
    TM_AuxiVtasLtsDesp: TFloatField;
    TM_AuxiInvInicial: TFloatField;
    TM_AuxiFecha: TDateTimeField;
    TM_AuxiAjuste: TFloatField;
    mem1Jarreos: TStringField;
    CheckBox3: TCheckBox;
//    mem1Pendiente: TCurrencyField;
    procedure btnAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure cb6a6Click(Sender: TObject);
  private
    { Private declarations }
    function dame_precio_combustible(AFechaIni,AFechaFin:TDateTime;Combustible:Byte):Real;
    function hay_combustible(combustible:shortint):boolean;
    function dame_inventario_inicial(Fecha:TDateTime;Corte,Combustible:Byte):Currency;
    function dame_inventario_final(Fecha:TDateTime;Corte,Combustible:Byte):Currency;
    function ObtenerPendientePeriodo(FechaIni, FechaFin:TDateTime; i:Byte):Double;

  public
    { Public declarations }
    procedure rep01(FechaIni,FechaFin:TDateTime; pRuta: string);
    procedure rep01_6a6(FechaIni,FechaFin:TDateTime; pRuta: string);
    procedure Rep01_6(FechaIni,FechaFin:TDateTime; pRuta: string);
  end;

 TADIQuery=class(TIMGQuery)
    public
      Constructor Create(SQL:String); overload;
 end;

 TPANQuery=class(TIMGQuery)
    public
      Constructor Create(SQL:String); overload;
 end;

const
  // Para JAG es 0.00863 y para el resto es 0.0074
  //PORCMERMAS=0.0074;
  PORCMERMAS=0.00863;

var
  FREP01: TFREP01;
  FUSION_TANQUES,SOLO_ENTRADAS:string;
  de_6a6:Boolean;
  nombreEst:string;

    function Jarreos_FechaAdmin(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
    procedure Ajustes_TurnoAdmin(pFechaAdmin:TDateTime; pCombustible:Integer; var pAjuste,pVolumen1,pVolumen2:Real);
    function Ventas_NoAju(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
    function Vol_Documentado(pFechaAdmin:TDateTime; pCombustible:Integer):Real;
    function medicion_tanque_turno_anterior(corte:byte;tanque:string;fecha_completa:TDateTime):real;

implementation

uses FIBQuery, Ulibgral, UAVANCE;

{$R *.dfm}


{ TPANQuery }

constructor TPANQuery.Create(SQL: String);
begin
  if AnsiPos(UpperCase('PAJUMENU'),UpperCase(ParamStr(0)))>0 then
    inherited Create(SQL, ParamStr(1))
  else
    inherited Create(SQL, ParamStr(3));
end;

constructor TADIQuery.Create(SQL: String);
var
  pRuta: string;
begin
  if AnsiPos(UpperCase('PAJUMENU'),UpperCase(ParamStr(0)))>0 then
    pRuta := ExtractFilePath(ParamStr(0)) + 'Ajusta.fdb'
  else
    pRuta := ParamStr(2);
  inherited Create(SQL, pRuta);
end;

{ TFREP01 }

procedure TFREP01.rep01(FechaIni, FechaFin: TDateTime; pRuta: string);
var
  Q_Historia:TADIQuery;
  i:byte;
  FechaTmp:TDateTime;
  SalidasTanqueFisico:Real;
  LFile: string;
  xDias:Integer;
  xPrecio:Real;
  swAcumDifVtas:array [1..3] of Real;
  swTotAcumDifVtas:Real;
  swAcumDif:array [1..3] of Real;
  xcont:Byte;
  swPorcAte, swPorcAteTot:array[1..3] of Real;
  swVolumenDocu:Real;
  swVentasVR:Real;
begin
  try
//  RvSystem1.DoNativeOutput := false;
//  RvSystem1.RenderObject := RvRenderPDF1;

  //Protect the PDF-File by wrting it to a non-guessable session directory
  //CleanUp is done in ServerController's OnClose event - having a subdir for each
  //session simplifies cleanup


//    RvSystem1.OutputFileName := $;

//    ForceDirectories(ExtractFileDir(RvSystem1.OutputFileName));

    mem1.Close;
    mem1.Open;

    memTotales.Close;
    memTotales.Open;

//    if chkDetallado.Checked then begin
       Q_Historia := TADIQuery.Create('SELECT * FROM HISTORIA WHERE FECHA>=:FECHAINI AND FECHA<=:FECHAFIN ORDER BY FECHA,CORTE,COMBUSTIBLE');
       Q_Historia.Params[0].AsDateTime := FechaIni;
       Q_Historia.Params[1].AsDateTime := FechaFin;
       Q_Historia.ExecQuery;

       while not Q_Historia.Eof do begin
         mem1.Insert;
         mem1Combustible.AsInteger := Q_Historia.FieldByName('COMBUSTIBLE').AsInteger;
         mem1Salidas.AsCurrency    := Q_Historia.FieldByName('SALIDAS').AsCurrency;
         mem1Ajuste.AsCurrency     := Q_Historia.FieldByName('AJUSTE').AsCurrency;
         mem1Diferencia.AsCurrency := Q_Historia.FieldByName('DIFERENCIA').AsCurrency - Q_Historia.FieldByName('JARREOS').AsCurrency;
         mem1Precio.AsCurrency     := dame_precio_combustible(FechaIni,FechaFin,Q_Historia.FieldByName('COMBUSTIBLE').AsInteger);
         mem1Importe.AsCurrency    := mem1Ajuste.AsCurrency * mem1Precio.AsCurrency;
         mem1Corte.AsInteger       := Q_Historia.FieldByName('CORTE').AsInteger;
         mem1Pendiente.AsCurrency  := Q_Historia.FieldByName('PENDIENTE').AsCurrency;
         mem1.Post;
         Q_Historia.Next;
       end;

       Q_Historia.Close;
       Q_Historia.Free;
       
//      if CheckBox1.Checked then
         rvp1.SetParam('Enca',nombreEst+'  Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin));
//      else
//         rvp1.SetParam( 'Enca','Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin));
//      rvp1.SetParam('Enca',UserSession.Estacion+'  Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin));
      rvp1.ExecuteReport('Report2');

//    end
//    else begin
//      if CheckBox1.Checked then begin
//         rvp1.SetParam('Enca',FAJUMENU.lblEstacion.Caption+'  Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin))
//      end
//      else begin
//         rvp1.SetParam( 'Enca','Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin));
//      end;
//
//      FechaTmp := FechaIni;
//      xDias:=DiasEntre(FechaIni, FechaFin);
//
//      try
//        FAVANCE.PreparaAvance('Preparando reporte...',True,xDias);
//        swTotAcumDifVtas:=0;
//        for xcont:= 1 to 3 do begin
//          swAcumDif[xcont]:=0;
//          swPorcAteTot[xcont]:=0;
//        end;
//        while FechaIni<=FechaFin do begin
//          swAcumDifVtas[1]:=0;
//          swAcumDifVtas[2]:=0;
//          swAcumDifVtas[3]:=0;
//          for xcont := 1 to 3 do begin
//            swPorcAte[xcont]:=0;
//          end;
//          for i:=1 to 3 do begin
//            if not hay_combustible(i) then
//             Continue;
//
//            Q_Historia := TADIQuery.Create('SELECT SUM(SALIDAS) AS SALIDAS, SUM(AJUSTE) AS AJUSTE,SUM(DIFERENCIA) AS DIFERENCIA, SUM(ENTRADAS_TANQUE) AS ENTRADAS, '+
//                                           'SUM(JARREOS) AS JARREOS, SUM(INVFISICO) AS INVFISICO, SUM(PENDIENTE) AS PENDIENTE FROM HISTORIA WHERE FECHA>=:FECHAINI AND FECHA<=:FECHAFIN AND COMBUSTIBLE=:COMBUSTIBLE');
//            Q_Historia.Params[0].AsDateTime := FechaIni;
//            Q_Historia.Params[1].AsDateTime := FechaIni;
//            Q_Historia.Params[2].AsShort    := i;
//            Q_Historia.ExecQuery;
//
//            mem1.Append;
//            mem1Combustible.AsInteger := i;
//            mem1Jarreos.AsCurrency    := Q_Historia.FieldByName('JARREOS').AsCurrency;
//            mem1Salidas.AsCurrency    := Q_Historia.FieldByName('SALIDAS').AsCurrency;
//            mem1Ventas.AsCurrency     := mem1Salidas.AsCurrency - mem1Jarreos.AsCurrency;
//            mem1Ajuste.AsCurrency     := Q_Historia.FieldByName('AJUSTE').AsCurrency;
//            mem1Diferencia.AsCurrency := Q_Historia.FieldByName('DIFERENCIA').AsCurrency - Q_Historia.FieldByName('JARREOS').AsCurrency;
//  //          mem1Precio.AsCurrency     := dame_precio_combustible(FechaIni,FechaFin,i);
//            mem1Precio.AsCurrency     := dame_precio_combustible(FechaIni,FechaIni,i);
//            mem1Importe.AsCurrency    := mem1Ajuste.AsCurrency * mem1Precio.AsCurrency;
//            mem1InvInical.AsCurrency  := dame_inventario_inicial(FechaIni,1,i);
//            mem1InvFinal.AsCurrency   := dame_inventario_final(FechaIni,maximo_turno(FechaIni,i),i);
//
//            swVolumenDocu             := Vol_Documentado(FechaIni,i);
//            if not CheckBox3.Checked then begin
//              if RestarMerma then
//                mem1Entradas.AsCurrency   := swVolumenDocu - (swVolumenDocu*PORCMERMAS)
//              else
//                mem1Entradas.AsCurrency   := swVolumenDocu;
//            end
//            else begin
//               mem1Entradas.AsCurrency   := Q_Historia.FieldByName('INVFISICO').AsFloat;
//            end;
//            mem1EntradaFct.AsFloat    := swVolumenDocu;
////            mem1Entradas.AsCurrency   := Q_Historia.FieldByName('ENTRADAS').AsCurrency;
//            mem1SalidaTque.AsCurrency := (mem1InvInical.AsCurrency + mem1Entradas.AsCurrency) - mem1InvFinal.AsCurrency;
//            mem1InvFisico.AsFloat     := Q_Historia.FieldByName('INVFISICO').AsFloat;
//            mem1Pendiente.AsFloat     := Q_Historia.FieldByName('PENDIENTE').AsFloat;
//
//            if mem1SalidaTque.AsCurrency<>0 then
//              try
//                 SalidasTanqueFisico := ((mem1InvInical.AsCurrency + mem1InvFisico.AsCurrency) - mem1InvFinal.AsCurrency);
//
//                 mem1porPemx.AsCurrency     := ((mem1Diferencia.AsFloat - mem1SalidaTque.AsCurrency) / mem1SalidaTque.AsCurrency) *100;
//                 mem1LtsMermaConta.AsFloat  := (mem1Diferencia.AsFloat - mem1SalidaTque.AsCurrency);
//                 mem1ImpMermaConta.AsFloat  := AjustaFloat(mem1LtsMermaConta.AsFloat * mem1Precio.AsCurrency, 2);
////                 mem1porPemx.AsCurrency    := ((mem1Diferencia.AsFloat-SalidasTanqueFisico)/SalidasTanqueFisico)*100;
//              except
//                 mem1porPemx.AsCurrency := 0;
//                 mem1LtsMermaConta.AsFloat  := 0;
//                 mem1ImpMermaConta.AsFloat  := 0;
//              end
//            else begin
//              mem1porPemx.AsCurrency := 0;
//              mem1LtsMermaConta.AsFloat  := 0;
//              mem1ImpMermaConta.AsFloat  := 0;
//            end;
//
//
//            mem1Fecha.AsDateTime      := FechaIni;
//
//            case i of
//
//              1:mem1NombreCMB.AsString := 'Magna';
//              2:mem1NombreCMB.AsString := 'Premium'
//              else
//                mem1NombreCMB.AsString := 'Diesel';
//            end;
//
//            if mem1Salidas.AsCurrency > 0 then
//               mem1MenRendimiento.AsCurrency := (mem1Ajuste.AsCurrency/mem1Ventas.AsCurrency) * 100
//            else
//               mem1MenRendimiento.AsCurrency := 0;
//            Mem1SF.AsString           := FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;
//
//            //Nuevas columnas de ventas antes en importe y ventas despues en importe
//            Mem1VtasImpAnt.AsFloat            := AjustaFloat(mem1Ventas.AsCurrency*mem1Precio.AsCurrency,2);
//            Mem1VtasImpDesp.AsFloat           := AjustaFloat(mem1Diferencia.AsCurrency*mem1Precio.AsCurrency,2);
//
//            swVentasVR:=AjustaFloat((mem1InvInical.AsCurrency+mem1Entradas.AsCurrency-mem1InvFinal.AsCurrency),2);
//            mem1DifVtaContavsVtaTanque.AsFloat:=mem1Diferencia.AsFloat - swVentasVR;
////            mem1DifVtaContavsVtaTanque.AsFloat:= AjustaFloat((mem1InvInical.AsCurrency+mem1Entradas.AsCurrency)-(mem1InvFisico.AsCurrency*PORCMERMAS)-mem1InvFinal.AsCurrency,2);
//            //swAcumDifVtas:=swAcumDifVtas+mem1DifVtaContavsVtaTanque.AsFloat;
//            swAcumDifVtas[TM_AuxiCombustible.AsInteger]:=swAcumDifVtas[TM_AuxiCombustible.AsInteger] + mem1DifVtaContavsVtaTanque.AsFloat;
//            mem1AcumDifVtas.AsFloat := mem1AcumDifVtas.AsFloat + swAcumDifVtas[TM_AuxiCombustible.AsInteger];
//            swPorcAte[1]:=swPorcAte[1]+mem1Importe.AsFloat;
//            swPorcAte[2]:=swPorcAte[2]+mem1VtasImpAnt.AsFloat;
//
//            mem1.Post;
//
//
//            if memTotales.Locate('Combustible',VarArrayOf([i]),[]) then begin
//
//              MemTotales.Edit;
//              MemTotalesSalidas.AsCurrency    := MemTotalesSalidas.AsCurrency + Q_Historia.FieldByName('SALIDAS').AsCurrency;
//              memTotalesJarreos.AsCurrency    := memTotalesJarreos.AsCurrency + Q_Historia.FieldByName('JARREOS').AsCurrency;
//              MemTotalesAjuste.AsCurrency     := MemTotalesAjuste.AsCurrency + Q_Historia.FieldByName('AJUSTE').AsCurrency;
//  //            MemTotalesDiferencia.AsCurrency := MemTotalesDiferencia.AsCurrency + Q_Historia.FieldByName('DIFERENCIA').AsCurrency;
//              MemTotalesDiferencia.AsCurrency := MemTotalesDiferencia.AsCurrency + AjustaFloat(Q_Historia.FieldByName('DIFERENCIA').AsCurrency,2);
//
//              xPrecio:=dame_precio_combustible(FechaIni,FechaIni,i);
//              MemTotalesImporte.AsCurrency    := AjustaFloat(MemTotalesImporte.AsCurrency + AjustaFloat((AjustaFloat(Q_Historia.FieldByName('AJUSTE').AsCurrency,2) * xPrecio),2),2);
//  //            MemTotalesImporte.AsCurrency    := {MemTotalesImporte.AsCurrency +} (MemTotalesAjuste.AsCurrency * MemTotalesPrecio.AsCurrency);
//              MemTotalesFecha.AsDateTime      := FechaIni;
//
//              swVolumenDocu             := Vol_Documentado(FechaIni,i);
//              MemTotalesEntradas.AsCurrency   := memTotalesEntradas.AsCurrency + (swVolumenDocu - (swVolumenDocu*PORCMERMAS));
//              MemTotalesEntradaFct.AsFloat    := MemTotalesEntradaFct.AsFloat + swVolumenDocu;
////              MemTotalesEntradas.AsCurrency   := memTotalesEntradas.AsCurrency + mem1Entradas.AsCurrency;
//              memTotalesVentas.AsCurrency     := (MemTotalesSalidas.AsCurrency - memTotalesJarreos.AsCurrency);
//
//              memTotalesporPemx.AsCurrency     := ((memTotalesDiferencia.AsFloat - memTotalesSalidaTque.AsCurrency) / memTotalesSalidaTque.AsCurrency) *100;
////              memTotalesporPemx.AsCurrency    := ((memTotalesVentas.AsCurrency-memTotalesSalidaTque.AsCurrency)/memTotalesSalidaTque.AsCurrency)*100;
//
//              //memTotalesInvInical.AsCurrency  := memTotalesInvInical.AsCurrency + mem1InvInical.AsCurrency;
//              memTotalesInvFinal.AsCurrency   := {memTotalesInvFinal.AsCurrency + }mem1InvFinal.AsCurrency;
//              memTotalesInvFisico.AsFloat     := memTotalesInvFisico.AsFloat + mem1InvFisico.AsFloat;
//
//
//              if MemTotalesSalidas.AsCurrency > 0 then
//                 MemTotalesRendimiento.AsCurrency := (MemTotalesAjuste.AsCurrency/memTotalesVentas.AsCurrency) * 100
//              else
//                 MemTotalesRendimiento.AsCurrency := 0;
//                MemTotalesSF.AsString:= FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;
//
//              MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + MemTotalesEntradas.AsCurrency) - MemTotalesInvFinal.AsCurrency;
//
//              //Nuevas Columnas del reporte
//              MemTotalesVtasImpAnt.AsFloat            := AjustaFloat(memTotalesVentas.AsCurrency*xPrecio,2);
//              MemTotalesVtasImpDesp.AsFloat           := AjustaFloat(MemTotalesDiferencia.AsCurrency*xPrecio,2);
//  //                swTotAcumDifVtas:=memTotalesDifVtaContavsVtaTanque.AsFloat;
//
//              swVentasVR:=AjustaFloat((memTotalesInvInical.AsCurrency+MemTotalesEntradas.AsCurrency-memTotalesInvFinal.AsCurrency),2);
//              memTotalesDifVtaContavsVtaTanque.AsFloat:=AjustaFloat(MemTotalesDiferencia.AsFloat - swVentasVR,2);
////              memTotalesDifVtaContavsVtaTanque.AsFloat:= AjustaFloat((memTotalesInvInical.AsCurrency+MemTotalesEntradas.AsCurrency)-(memTotalesInvFisico.AsFloat*PORCMERMAS)-memTotalesInvFinal.AsCurrency,2);
//              swTotAcumDifVtas:=AjustaFloat((mem1InvInical.AsCurrency+mem1Entradas.AsCurrency)-(mem1InvFisico.AsCurrency*PORCMERMAS)-mem1InvFinal.AsCurrency,2);
//              if i = 1 then begin
//                swAcumDif[i]:= memTotalesDifVtaContavsVtaTanque.AsFloat;
//                MemTotalesAcumDifVtas.AsFloat := memTotalesDifVtaContavsVtaTanque.AsFloat;
//              end
//              else if i = 2 then begin
//                swAcumDif[i]:= swAcumDif[i]+ swTotAcumDifVtas;
//                MemTotalesAcumDifVtas.AsFloat := swAcumDif[1] + swAcumDif[i];
//              end
//              else if i = 3 then begin
//                 swAcumDif[i]:= swAcumDif[i]+ swTotAcumDifVtas;
//                MemTotalesAcumDifVtas.AsFloat := swAcumDif[1] + swAcumDif[2] + swAcumDif[i];
//              end;
//
//              if i=1 then begin
//                swPorcAteTot[1]:=MemTotalesImporte.AsFloat;
//                swPorcAteTot[2]:=MemTotalesVtasImpAnt.AsFloat;
//              end
//              else begin
//                swPorcAteTot[1]:=swPorcAteTot[1]+MemTotalesImporte.AsFloat;
//                swPorcAteTot[2]:=swPorcAteTot[2]+MemTotalesVtasImpAnt.AsFloat;
//              end;
//
//              memTotales.Post;
//            end
//            else begin
//              MemTotales.Append;
//              MemTotalesCombustible.AsInteger := i;
//              memTotalesJarreos.AsCurrency    := Q_Historia.FieldByName('JARREOS').AsCurrency;
//              MemTotalesSalidas.AsCurrency    := Q_Historia.FieldByName('SALIDAS').AsCurrency;
//              MemTotalesAjuste.AsCurrency     := Q_Historia.FieldByName('AJUSTE').AsCurrency;
//              MemTotalesDiferencia.AsCurrency := Q_Historia.FieldByName('DIFERENCIA').AsCurrency;
//              xPrecio:=dame_precio_combustible(FechaIni,FechaIni,i);
//              MemTotalesPrecio.AsCurrency     := xPrecio;
//  //            MemTotalesPrecio.AsCurrency     := dame_precio_combustible(FechaIni,FechaFin,i);
//              MemTotalesImporte.AsCurrency    := (MemTotalesAjuste.AsCurrency * MemTotalesPrecio.AsCurrency);
//              MemTotalesFecha.AsDateTime      := FechaIni;
//              memTotalesInvInical.AsCurrency  := mem1InvInical.AsCurrency;
//              memTotalesEntradas.AsCurrency   := mem1Entradas.AsCurrency;
//              MemTotalesEntradaFct.AsFloat    := swVolumenDocu;
//              memTotalesVentas.AsCurrency     := (MemTotalesSalidas.AsCurrency - memTotalesJarreos.AsCurrency);
//              memTotalesInvFisico.AsFloat     := mem1InvFisico.AsFloat;
//
//
//              case i of
//                1:MemTotalesNombreCMB.AsString := 'Magna';
//                2:MemTotalesNombreCMB.AsString := 'Premium'
//                else
//                  MemTotalesNombreCMB.AsString := 'Diesel';
//              end;
//
//
//              memTotalesInvFinal.AsCurrency := mem1InvFinal.AsCurrency;
//
//              if MemTotalesSalidas.AsCurrency > 0 then
//                 MemTotalesRendimiento.AsCurrency := (MemTotalesAjuste.AsCurrency/memTotalesVentas.AsCurrency) * 100
//              else
//                 MemTotalesRendimiento.AsCurrency := 0;
//              MemTotalesSF.AsString:= FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;
//
//              MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + MemTotalesEntradas.AsCurrency) - MemTotalesInvFinal.AsCurrency;
//
//              if mem1SalidaTque.AsCurrency<>0 then
//                try
//                   SalidasTanqueFisico := ((mem1InvInical.AsCurrency + mem1InvFisico.AsCurrency) - mem1InvFinal.AsCurrency);
//                   memTotalesporPemx.AsCurrency     := ((mem1Diferencia.AsFloat - mem1SalidaTque.AsCurrency) / mem1SalidaTque.AsCurrency) *100;
//                   memTotalesLtsMermaConta.AsFloat  := (mem1Diferencia.AsFloat - mem1SalidaTque.AsCurrency);
//                   memTotalesImpMermaConta.AsFloat  := AjustaFloat(mem1LtsMermaConta.AsFloat * mem1Precio.AsCurrency, 2);
////                   memTotalesporPemx.AsCurrency    := ((mem1Diferencia.AsFloat-SalidasTanqueFisico)/SalidasTanqueFisico)*100;
//                except
//                   memTotalesporPemx.AsCurrency := 0;
//                   memTotalesLtsMermaConta.AsFloat  := 0;
//                   memTotalesImpMermaConta.AsFloat  := 0;
//                end
//
//              else begin
//                memTotalesporPemx.AsCurrency := 0;
//                memTotalesLtsMermaConta.AsFloat  := 0;
//                memTotalesImpMermaConta.AsFloat  := 0;
//              end;
//
//              //nuevas Columnas
//              MemTotalesVtasImpAnt.AsFloat    := AjustaFloat(memTotalesVentas.AsCurrency*xPrecio,2);
//              MemTotalesVtasImpDesp.AsFloat   := AjustaFloat(MemTotalesDiferencia.AsCurrency*xPrecio,2);
//
//              MemTotalesDifVtaContavsVtaTanque.AsFloat:=mem1Diferencia.AsFloat - swVentasVR;
////              memTotalesDifVtaContavsVtaTanque.AsFloat:= AjustaFloat((memTotalesInvInical.AsCurrency+MemTotalesEntradas.AsCurrency)-(memTotalesInvFisico.AsFloat*PORCMERMAS)-memTotalesInvFinal.AsCurrency,2);
//              swTotAcumDifVtas:=memTotalesDifVtaContavsVtaTanque.AsFloat;
//              MemTotalesAcumDifVtas.AsFloat := MemTotalesAcumDifVtas.AsFloat + swTotAcumDifVtas;
//              swAcumDif[i]:=MemTotalesAcumDifVtas.AsFloat;
//
//              swPorcAteTot[1]:=swPorcAteTot[1]+MemTotalesImporte.AsFloat;
//              swPorcAteTot[2]:=swPorcAteTot[2]+MemTotalesVtasImpAnt.AsFloat;
//              memTotales.Post;
//            end;
//            Q_Historia.Close;
//            Q_Historia.Free;
//          end;
//          //Recalcula %ATE
//          mem1.First;
//          while not mem1.Eof do begin
//            if mem1Fecha.AsDateTime = FechaIni then begin
//              mem1.Edit;
//              mem1PorcMenRend.AsFloat:= DivideFloat(swPorcAte[1]*100,swPorcAte[2]);
//              mem1.Post;
//            end;
//            mem1.Next;
//          end;
//          FechaIni := FechaIni + 1;
//          FAVANCE.AvanzaPosicion;
//        end;
//      finally
//        memTotales.First;
//        while not memTotales.Eof do begin
//          memTotales.Edit;
//          memTotalesPorcMenRend.AsString:= FormatFloat('##,##0.00',AjustaFloat(DivideFloat(swPorcAteTot[1]*100,swPorcAteTot[2]),2));
//          memTotales.Post;
//          memTotales.Next;
//        end;
//        FAVANCE.Close;
//      end;
//      if CheckBox3.Checked then
//        rvp1.ExecuteReport('Report1')
//      else
//        rvp1.ExecuteReport('Report3');
//    end;
//   memTotales.SaveToTextFile('c:\repx.txt');
  except
    on e:exception do
      raise exception.create('Error: '+e.message)
  end;
end;

procedure TFREP01.btnAceptarClick(Sender: TObject);
begin
  Rep01_6(cbFechaIni.Date, cbFechaFin.Date, '');
end;

procedure TFREP01.FormCreate(Sender: TObject);
var
  Q_Est:TPANQuery;
begin
  if not FileExists(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Rep01Aju4.rav') then
    rsTickets.DataSaveToFile(IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Rep01Aju4.rav');
  rvp1.ProjectFile := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'Rep01Aju4.rav';
  cbFechaIni.Date := Date;
  cbFechaFin.Date := Date;

  try
    Q_Est := TPANQuery.Create('SELECT NOMBRE FROM DPVGESTS');
    Q_Est.ExecQuery;
    nombreEst:= Q_Est.Fields[0].AsString;
  except
    Q_Est.Free;
  end;
//  if de6a6 then begin
//    CheckBox2.Visible:=False;
//    cb6a6.Visible:=False;
//  end;
end;

procedure TFREP01.btnCancelarClick(Sender: TObject);
begin
   Close;
end;

function TFREP01.dame_precio_combustible(AFechaIni,AFechaFin: TDateTime;Combustible:Byte): Real;
var
  Q_Claves:TPANQuery;
begin
  try
    Q_Claves:=TPANQuery.Create('SELECT FIRST 1 PRECIO FROM DPVGPREC WHERE FECHAHORA<=:FECHA AND COMBUSTIBLE=:COMBUSTIBLE ORDER BY FECHAHORA DESC');
    Q_Claves.Params[0].AsDateTime := AFechaFin;
    Q_Claves.Params[1].AsShort    := Combustible;
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
    Q_BomQuery.Close;
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
   Q_Historia.Close;
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
   Q_Historia.Close;
   Q_Historia.Free;
 end;

end;

procedure TFREP01.rep01_6a6(FechaIni, FechaFin: TDateTime; pRuta: string);
var
  Q_Historia:TADIQuery;
  Q_Clave:TADIQuery;
  Q_movi:TPANQuery;
  i:byte;
  FechaTmp:TDateTime;
  SalidasTanqueFisico:Real;
  LFile: string;
  xDias:Integer;
  xPrecio:Real;
  swAcumDifVtas:Real;
  swTotAcumDifVtas:Real;
  swAcumDif:array [1..3] of Real;
  xcont:Byte;
  swPorcAte, swPorcAteTot:array[1..3] of Real;

  procedure DatosTurnoAdmin(swFechaIni:TDateTime; xComb:Integer);
  var Salidas,Entradas,Traspasos, Jarreo,Total,
    InvInicial,InvFinal,
    Ventas,Diferencia,
    Porcentaje:real;
    FechaAnt,
    FechaMax:tDateTime;
    CorteAnt,CorteMax,
    CmbAux,i:integer;
    swEntradas:Boolean;
    nomAux:string;
    j:byte;
    fecha1,fecha2,pFolioDoc:string;
    pVolDoc: Double;
    QL_Tcmb, QL_Tanq, Q_Auxi1, Q_Auxi2, Q_Auxi3, Q_Auxi4, Q_Auxi5, Q_Auxi6, Q_Auxi7,
    Q_Auxi8, Q_Auxi9:TPANQuery;
    xAjuste,xVolumen1,xVolumen2, xJarreos, xVtasNoAju:Real;
    ev:Real;
    swVolumenDocu:Real;
    swVentasVR:Real;
  begin
      swEntradas:=false;
      QL_Tcmb:= TPANQuery.Create('Select * from DPVGTCMB Order by Clave');
      QL_Tcmb.ExecQuery;
      InvInicial:=0;
      QL_Tanq:= TPANQuery.Create('Select * from DPVGTANQ where combustible='+IntToStr(xComb)+' and activo='+QuotedStr('Si')+' Order by Tanque');
      QL_Tanq.ExecQuery;
      while not QL_Tanq.Eof do begin
  //Fecha Anterior a la fecha inicial
        try
          Q_Auxi1:=TPANQuery.Create('Select Max(Fecha) as Date1 from DPVGTURNT Where Fecha<"'+FechaToStrSQL(swFechaIni)+'" and Tanque='+InttoStr(QL_Tanq.FN('Tanque').AsInteger));
          Q_Auxi1.ExecQuery;
          if Q_Auxi1.RecordCount>0 then
            FechaAnt:=Q_Auxi1.FN('Date1').AsDateTime
          else
            FechaAnt:=FechaIni;
        finally
          Q_Auxi1.Close;
          Q_Auxi1.Free;
        end;
  //Se obtiene el corte mayor a la fecha anterior
        try
          Q_Auxi2:=TPANQuery.Create('Select Max(Turno) as Entero1 from DPVGTURNT Where Fecha="'+FechaToStrSQL(FechaAnt)+'" and Tanque='+InttoStr(QL_Tanq.FN('Tanque').AsInteger));
          Q_Auxi2.ExecQuery;
          if Q_Auxi2.RecordCount>0 then begin
            CorteAnt:=Q_Auxi2.FN('Entero1').AsInteger;
    //Se obtiene el Inventario Inicial a la fecha y corte anterior:
            try
              Q_Auxi3:=TPANQuery.Create('Select Volumen as Real1 from DPVGTURNT Where Fecha="'+FechaToStrSQL(FechaAnt)+'" and Turno='+InttoStr(CorteAnt)+'  and Tanque='+InttoStr(QL_Tanq.FN('Tanque').AsInteger));
              Q_Auxi3.ExecQuery;
              if Q_Auxi3.RecordCount>0 then
                InvInicial:=Q_Auxi3.FN('Real1').AsFloat;
            finally
              Q_Auxi3.Close;
              Q_Auxi3.Free;
            end;
          end;
        finally
          Q_Auxi2.Close;
          Q_Auxi2.free;
        end;
  //Calcular Entradas del per�odo
        Entradas:=0;
        try
          Q_Auxi4:= TPANQuery.Create('Select Sum(VolumenRecepcion) as Real1 from DPVGETAN Where FechaTurno>="'+FechaToStrSQL(swFechaIni)+'" and FechaTurno<="'+FechaToStrSQL(swFechaIni)+'"'+
                                      '  and Tanque='+InttoStr(QL_Tanq.FN('Tanque').AsInteger)+' and VOLUMENRECEPCION>0 and traspaso='+QuotedStr('No'));
          Q_Auxi4.ExecQuery;
          if Q_Auxi4.RecordCount>0 then begin
            Entradas:=Q_Auxi4.FN('Real1').AsFloat;
            SwEntradas:=true;
          end;
        finally
          Q_Auxi4.Close;
          Q_Auxi4.Free;
        end;

  //Calcular Traspasos del per�odo
        Traspasos:=0;
        try
          Q_Auxi5:=TPANQuery.Create('Select Sum(VolumenRecepcion) as Real1 from DPVGETAN Where FechaTurno>="'+FechaToStrSQL(swFechaIni)+'" and FechaTurno<="'+FechaToStrSQL(swFechaIni)+'"'+
                                   '  and Tanque='+InttoStr(QL_Tanq.FN('Tanque').AsInteger)+' and VOLUMENRECEPCION>0 and traspaso='+QuotedStr('Si'));
          Q_Auxi5.ExecQuery;
          if Q_Auxi5.RecordCount>0 then
            Traspasos:=Q_Auxi5.FN('Real1').AsFloat;
        finally
          Q_Auxi5.Close;
          Q_Auxi5.free;
        end;

  //Transpasos en contra
       if {RESTARTRASPASOS}'-1'<>'No' then begin
         try
           Q_Auxi6:=TPANQuery.Create('Select Sum(VolumenRecepcion) as Real1 from DPVGETAN Where FechaTurno>="'+FechaToStrSQL(swFechaIni)+'" and FechaTurno<="'+FechaToStrSQL(swFechaIni)+'"'+
                                      '  and Tanque_Origen='+InttoStr(QL_Tanq.FN('Tanque').AsInteger)+' and VOLUMENRECEPCION>0'+
                                      ' and traspaso='+QuotedStr('Si'));
           Q_Auxi6.ExecQuery;
           if Q_Auxi6.RecordCount>0 then
             Traspasos:=Traspasos-Q_Auxi6.FN('Real1').AsFloat;
         finally
           Q_Auxi6.Close;
           Q_Auxi6.Free;
         end;
       end
       else
          Traspasos:=Traspasos-0;

  //Calcular Inventario Final: Se requiere la maxima fecha y el maximo corte en el periodo solicitado
        InvFinal:=0;
        try
          Q_Auxi7:=TPANQuery.Create('Select Max(Fecha) as Date1 from DPVGTURNT Where Fecha>="'+FechaToStrSQL(swFechaIni)+'" and Fecha<="'+FechaToStrSQL(swFechaIni)+'"'+
                                    '  and Tanque='+InttoStr(QL_Tanq.FN('Tanque').AsInteger));
          Q_Auxi7.ExecQuery;
          if Q_Auxi7.RecordCount>0 then
            FechaMax:=Q_Auxi7.FN('Date1').AsDateTime
          else
            FechaMax:=FechaIni;
        finally
          Q_Auxi7.Close;
          Q_Auxi7.Free;
        end;
  //Se obtiene el corte mayor a la fecha maximo
        try
          Q_Auxi8:=TPANQuery.Create('Select Max(Turno) as Entero1 from DPVGTURNT Where Fecha="'+FechaToStrSQL(FechaMax)+'" and Tanque='+InttoStr(QL_Tanq.FN('Tanque').AsInteger));
          Q_Auxi8.ExecQuery;
          if Q_Auxi8.RecordCount>0 then begin
            CorteMax:=Q_Auxi8.FN('Entero1').AsInteger;
    //Se obtiene el Inventario Final a la fecha y corte anterior:
            try
              Q_Auxi9:=TPANQuery.Create('Select Volumen as Real1 from DPVGTURNT Where Fecha="'+FechaToStrSQL(FechaMax)+'" and Turno='+InttoStr(CorteMax)+
                                        '  and Tanque='+InttoStr(QL_Tanq.FN('Tanque').AsInteger));
              Q_Auxi9.ExecQuery;
              if Q_Auxi9.RecordCount>0 then
                InvFinal:=Q_Auxi9.FN('Real1').AsFloat;
            finally
              Q_Auxi9.Close;
              Q_Auxi9.Free;
            end;
          end;
        finally
          Q_Auxi8.Close;
          Q_Auxi8.Free;
        end;
        if not SwEntradas then begin
          SwEntradas:=Entradas>0;
        end;
        Salidas:=(InvInicial+Entradas+Traspasos)-InvFinal;

        mem1.Append;
        mem1Combustible.AsInteger := xComb;
        xJarreos:=Jarreos_FechaAdmin(swFechaIni,xComb);
        mem1Jarreos.AsCurrency    := xJarreos;
        mem1Salidas.AsCurrency    := Salidas;
        mem1Ventas.AsCurrency     := mem1Salidas.AsCurrency - mem1Jarreos.AsCurrency;

        Ajustes_TurnoAdmin(swFechaIni,xComb,xAjuste,xVolumen1,xVolumen2);

        mem1Ajuste.AsCurrency     := xAjuste;
        xVtasNoAju                := Ventas_NoAju(swFechaIni,xComb);
        mem1Diferencia.AsFloat    := xVolumen2 + xVtasNoAju - xJarreos;
//          mem1Precio.AsCurrency     := dame_precio_combustible(FechaIni,FechaFin,i);
        mem1Precio.AsCurrency     := dame_precio_combustible(FechaIni,FechaIni,xComb);
        mem1Importe.AsCurrency    := mem1Ajuste.AsCurrency * mem1Precio.AsCurrency;
        mem1InvInical.AsCurrency  := InvInicial;
        mem1InvFinal.AsCurrency   := InvFinal;

        swVolumenDocu             := Vol_Documentado(FechaIni,xComb);
        mem1Entradas.AsCurrency   := swVolumenDocu - (swVolumenDocu*PORCMERMAS);
        mem1EntradaFct.AsFloat    := swVolumenDocu;
//        mem1Entradas.AsCurrency   := Entradas;
        mem1SalidaTque.AsCurrency := (mem1InvInical.AsCurrency + mem1Entradas.AsCurrency) - mem1InvFinal.AsCurrency;
        mem1InvFisico.AsFloat     := Q_Historia.FieldByName('INVFISICO').AsFloat;

        if mem1SalidaTque.AsCurrency<>0 then
          try
             SalidasTanqueFisico        := ((mem1InvInical.AsCurrency + mem1InvFisico.AsCurrency) - mem1InvFinal.AsCurrency);
             mem1porPemx.AsCurrency     := 0.15;
             mem1LtsMermaConta.AsFloat  := (mem1Diferencia.AsFloat - mem1SalidaTque.AsCurrency);
             mem1ImpMermaConta.AsFloat  := AjustaFloat(mem1LtsMermaConta.AsFloat * mem1Precio.AsCurrency, 2);
//             mem1porPemx.AsCurrency    := ((mem1Diferencia.AsFloat-SalidasTanqueFisico)/SalidasTanqueFisico)*100;
          except
             mem1porPemx.AsCurrency     := 0;
             mem1LtsMermaConta.AsFloat  := 0;
             mem1ImpMermaConta.AsFloat  := 0;
          end
        else begin
          mem1porPemx.AsCurrency := 0;
          mem1LtsMermaConta.AsFloat  := 0;
          mem1ImpMermaConta.AsFloat  := 0;
        end;


        mem1Fecha.AsDateTime      := FechaIni;

        case xComb of

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

        //Nuevas columnas de ventas antes en importe y ventas despues en importe
        Mem1VtasImpAnt.AsFloat            := AjustaFloat(mem1Ventas.AsCurrency*mem1Precio.AsCurrency,2);
        Mem1VtasImpDesp.AsFloat           := AjustaFloat(mem1Diferencia.AsCurrency*mem1Precio.AsCurrency,2);

        swVentasVR:=AjustaFloat((mem1InvInical.AsCurrency+mem1Entradas.AsCurrency-mem1InvFinal.AsCurrency),2);
        mem1DifVtaContavsVtaTanque.AsFloat:=mem1Diferencia.AsFloat - mem1SalidaTque.AsFloat;
//        mem1DifVtaContavsVtaTanque.AsFloat:= AjustaFloat((mem1InvInical.AsCurrency+mem1Entradas.AsCurrency)-(mem1InvFisico.AsCurrency*PORCMERMAS)-mem1InvFinal.AsCurrency,2);
        swAcumDifVtas:=swAcumDifVtas+mem1DifVtaContavsVtaTanque.AsFloat;
        mem1AcumDifVtas.AsFloat := mem1AcumDifVtas.AsFloat + swAcumDifVtas;
        swPorcAte[1]:=swPorcAte[1]+mem1Importe.AsFloat;
        swPorcAte[2]:=swPorcAte[2]+mem1VtasImpAnt.AsFloat;

        mem1.Post;

        if memTotales.Locate('Combustible',VarArrayOf([xComb]),[]) then begin

          MemTotales.Edit;
          MemTotalesSalidas.AsCurrency    := MemTotalesSalidas.AsCurrency + Salidas;
          memTotalesJarreos.AsCurrency    := memTotalesJarreos.AsCurrency + xJarreos;
          MemTotalesAjuste.AsCurrency     := MemTotalesAjuste.AsCurrency + xAjuste;
//            MemTotalesDiferencia.AsCurrency := MemTotalesDiferencia.AsCurrency + Q_Historia.FieldByName('DIFERENCIA').AsCurrency;

          MemTotalesDiferencia.AsCurrency := MemTotalesDiferencia.AsCurrency + AjustaFloat( xVolumen2+xVtasNoAju,2);
//          MemTotalesDiferencia.AsCurrency := MemTotalesDiferencia.AsCurrency + AjustaFloat(xVolumen2,2);

          xPrecio:=dame_precio_combustible(FechaIni,FechaIni,xComb);
          MemTotalesImporte.AsCurrency    := AjustaFloat(MemTotalesImporte.AsCurrency + AjustaFloat((AjustaFloat(xAjuste,2) * xPrecio),2),2);
//            MemTotalesImporte.AsCurrency    := {MemTotalesImporte.AsCurrency +} (MemTotalesAjuste.AsCurrency * MemTotalesPrecio.AsCurrency);
          MemTotalesFecha.AsDateTime      := FechaIni;

          swVolumenDocu             := Vol_Documentado(FechaIni,xComb);
          MemTotalesEntradas.AsCurrency   := memTotalesEntradas.AsCurrency + (swVolumenDocu - (swVolumenDocu*PORCMERMAS));
          MemTotalesEntradaFct.AsFloat    := MemTotalesEntradaFct.AsFloat + swVolumenDocu;

//          MemTotalesEntradas.AsCurrency   := memTotalesEntradas.AsCurrency + mem1Entradas.AsCurrency;
//
//          MemTotalesEntradaFct.AsFloat    := MemTotalesEntradaFct.AsFloat+ memTotalesEntradaFct.AsFloat;

          memTotalesVentas.AsCurrency     := (MemTotalesSalidas.AsCurrency - memTotalesJarreos.AsCurrency);

          memTotalesporPemx.AsCurrency     := 0.15;
//          memTotalesporPemx.AsCurrency    := ((memTotalesVentas.AsCurrency-memTotalesSalidaTque.AsCurrency)/memTotalesSalidaTque.AsCurrency)*100;

          memTotalesInvInical.AsCurrency  := memTotalesInvInical.AsCurrency + mem1InvInical.AsCurrency;
          memTotalesInvFinal.AsCurrency   := memTotalesInvFinal.AsCurrency + mem1InvFinal.AsCurrency;
          memTotalesInvFisico.AsFloat     := memTotalesInvFisico.AsFloat + mem1InvFisico.AsFloat;


          if MemTotalesSalidas.AsCurrency > 0 then
             MemTotalesRendimiento.AsCurrency := (MemTotalesAjuste.AsCurrency/memTotalesVentas.AsCurrency) * 100
          else
             MemTotalesRendimiento.AsCurrency := 0;
          MemTotalesSF.AsString:= FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;

          MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + MemTotalesEntradas.AsCurrency) - MemTotalesInvFinal.AsCurrency;

          //Nuevas Columnas del reporte
          MemTotalesVtasImpAnt.AsFloat            := AjustaFloat(memTotalesVentas.AsCurrency*xPrecio,2);
          MemTotalesVtasImpDesp.AsFloat           := AjustaFloat(MemTotalesDiferencia.AsCurrency*xPrecio,2);
//                swTotAcumDifVtas:=memTotalesDifVtaContavsVtaTanque.AsFloat;

          swVentasVR:=AjustaFloat((memTotalesInvInical.AsCurrency+MemTotalesEntradas.AsCurrency-memTotalesInvFinal.AsCurrency),2);
          memTotalesDifVtaContavsVtaTanque.AsFloat:=AjustaFloat(MemTotalesDiferencia.AsFloat - memTotalesSalidaTque.AsFloat,2);
          swTotAcumDifVtas:=AjustaFloat(MemTotalesDiferencia.AsFloat - swVentasVR,2);
          memTotalesLtsMermaConta.AsFloat  := MemTotalesDiferencia.AsFloat*0.0015;
          memTotalesImpMermaConta.AsFloat  := AjustaFloat(memTotalesLtsMermaConta.AsFloat * MemTotalesPrecio.AsCurrency, 2);
//          memTotalesDifVtaContavsVtaTanque.AsFloat:= AjustaFloat((memTotalesInvInical.AsCurrency+MemTotalesEntradas.AsCurrency)-(memTotalesInvFisico.AsFloat*PORCMERMAS)-memTotalesInvFinal.AsCurrency,2);
//          swTotAcumDifVtas:=AjustaFloat((mem1InvInical.AsCurrency+mem1Entradas.AsCurrency)-(mem1InvFisico.AsCurrency*PORCMERMAS)-mem1InvFinal.AsCurrency,2);
          if xComb = 1 then begin
            swAcumDif[i]:= memTotalesDifVtaContavsVtaTanque.AsFloat;
            MemTotalesAcumDifVtas.AsFloat := memTotalesDifVtaContavsVtaTanque.AsFloat;
          end
          else if xComb = 2 then begin
            swAcumDif[i]:= swAcumDif[i]+ swTotAcumDifVtas;
            MemTotalesAcumDifVtas.AsFloat := swAcumDif[1] + swAcumDif[i];
          end
          else if xComb = 3 then begin
             swAcumDif[i]:= swAcumDif[i]+ swTotAcumDifVtas;
            MemTotalesAcumDifVtas.AsFloat := swAcumDif[1] + swAcumDif[2] + swAcumDif[i];
          end;

          if xComb=1 then begin
            swPorcAteTot[1]:=MemTotalesImporte.AsFloat;
            swPorcAteTot[2]:=MemTotalesVtasImpAnt.AsFloat;
          end
          else begin
            swPorcAteTot[1]:=swPorcAteTot[1]+MemTotalesImporte.AsFloat;
            swPorcAteTot[2]:=swPorcAteTot[2]+MemTotalesVtasImpAnt.AsFloat;
          end;

          memTotales.Post;
        end
        else begin
          MemTotales.Append;
          MemTotalesCombustible.AsInteger := xComb;
          memTotalesJarreos.AsCurrency    := xJarreos;
          MemTotalesSalidas.AsCurrency    := Salidas;
          MemTotalesAjuste.AsCurrency     := xAjuste;
          MemTotalesDiferencia.AsCurrency := xVolumen2+xVtasNoAju;
          xPrecio:=dame_precio_combustible(FechaIni,FechaIni,xComb);
          MemTotalesPrecio.AsCurrency     := xPrecio;
//            MemTotalesPrecio.AsCurrency     := dame_precio_combustible(FechaIni,FechaFin,i);
          MemTotalesImporte.AsCurrency    := (MemTotalesAjuste.AsCurrency * MemTotalesPrecio.AsCurrency);
          MemTotalesFecha.AsDateTime      := FechaIni;
          memTotalesInvInical.AsCurrency  := mem1InvInical.AsCurrency;
          memTotalesEntradas.AsCurrency   := mem1Entradas.AsCurrency;
          MemTotalesEntradaFct.AsFloat    := swVolumenDocu;
          memTotalesVentas.AsCurrency     := (MemTotalesSalidas.AsCurrency - memTotalesJarreos.AsCurrency);
          memTotalesInvFisico.AsFloat     := mem1InvFisico.AsFloat;


          case xComb of
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
               memTotalesporPemx.AsCurrency     := 0.15;
               memTotalesLtsMermaConta.AsFloat  := MemTotalesDiferencia.AsFloat*0.0015;
               memTotalesImpMermaConta.AsFloat  := AjustaFloat(memTotalesLtsMermaConta.AsFloat * MemTotalesPrecio.AsCurrency, 2);
//               memTotalesporPemx.AsCurrency    := ((mem1Diferencia.AsFloat-SalidasTanqueFisico)/SalidasTanqueFisico)*100;
            except
               memTotalesporPemx.AsCurrency     := 0;
               memTotalesLtsMermaConta.AsFloat  := 0;
               memTotalesImpMermaConta.AsFloat  := 0;
            end

          else begin
            memTotalesporPemx.AsCurrency     := 0;
            memTotalesLtsMermaConta.AsFloat  := 0;
            memTotalesImpMermaConta.AsFloat  := 0;
          end;

          //nuevas Columnas
          MemTotalesVtasImpAnt.AsFloat    := AjustaFloat(memTotalesVentas.AsCurrency*xPrecio,2);
          MemTotalesVtasImpDesp.AsFloat   := AjustaFloat(MemTotalesDiferencia.AsCurrency*xPrecio,2);

          swVentasVR:=AjustaFloat((mem1InvInical.AsCurrency+mem1Entradas.AsCurrency-mem1InvFinal.AsCurrency),2);
          MemTotalesDifVtaContavsVtaTanque.AsFloat:=mem1Diferencia.AsFloat - memTotalesSalidaTque.AsFloat;
//          memTotalesDifVtaContavsVtaTanque.AsFloat:= AjustaFloat((memTotalesInvInical.AsCurrency+MemTotalesEntradas.AsCurrency)-(memTotalesInvFisico.AsFloat*PORCMERMAS)-memTotalesInvFinal.AsCurrency,2);
          swTotAcumDifVtas:=swTotAcumDifVtas+memTotalesDifVtaContavsVtaTanque.AsFloat;
          MemTotalesAcumDifVtas.AsFloat := MemTotalesAcumDifVtas.AsFloat + swTotAcumDifVtas;
          swAcumDif[i]:=MemTotalesAcumDifVtas.AsFloat;

          swPorcAteTot[1]:=swPorcAteTot[1]+MemTotalesImporte.AsFloat;
          swPorcAteTot[2]:=swPorcAteTot[2]+MemTotalesVtasImpAnt.AsFloat;
          memTotales.Post;
        end;

        QL_Tanq.Next;
      end;
      QL_Tanq.Close;
      QL_Tanq.Free;
  end;

begin
  try

    mem1.Close;
    mem1.Open;

    memTotales.Close;
    memTotales.Open;

    begin
      begin
         rvp1.SetParam('Enca','Reporte de Turnos Administrativos '+nombreEst+'  Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin))
      end;

      FechaTmp := FechaIni;
      xDias:=DiasEntre(FechaIni, FechaFin);

      try
        FAVANCE.PreparaAvance('Preparando reporte...',True,xDias);
        swTotAcumDifVtas:=0;
        for xcont:= 1 to 3 do begin
          swAcumDif[xcont]:=0;
          swPorcAteTot[xcont]:=0;
        end;
        while FechaIni<=FechaFin do begin
          swAcumDifVtas:=0;
          for xcont := 1 to 3 do begin
            swPorcAte[xcont]:=0;
          end;
          for i:=1 to 3 do begin
            if not hay_combustible(i) then
             Continue;


            Q_Historia := TADIQuery.Create('SELECT SUM(SALIDAS) AS SALIDAS, SUM(AJUSTE) AS AJUSTE,SUM(DIFERENCIA) AS DIFERENCIA, SUM(ENTRADAS_TANQUE) AS ENTRADAS, '+
                                           'SUM(JARREOS) AS JARREOS, SUM(INVFISICO) AS INVFISICO FROM HISTORIA WHERE FECHA>=:FECHAINI AND FECHA<=:FECHAFIN AND COMBUSTIBLE=:COMBUSTIBLE');
            Q_Historia.Params[0].AsDateTime := FechaIni;
            Q_Historia.Params[1].AsDateTime := FechaIni;
            Q_Historia.Params[2].AsShort    := i;
            Q_Historia.ExecQuery;

            DatosTurnoAdmin(FechaIni,i);


          end;
          //Recalcula %ATE
          mem1.First;
          while not mem1.Eof do begin
//            if mem1Fecha.AsDateTime = FechaIni then begin
              mem1.Edit;
              mem1PorcMenRend.AsFloat:= DivideFloat(swPorcAte[1]*100,swPorcAte[2]);
              mem1.Post;
//            end;
            mem1.Next;
          end;
          FechaIni := FechaIni + 1;
          FAVANCE.AvanzaPosicion;
        end;
      finally
        memTotales.First;
        while not memTotales.Eof do begin
          memTotales.Edit;
          memTotalesPorcMenRend.AsString:= FormatFloat('##,##0.00',AjustaFloat(DivideFloat(swPorcAteTot[1]*100,swPorcAteTot[2]),2));
          memTotales.Post;
          memTotales.Next;
        end;
        FAVANCE.Close;
      end;

      rvp1.ExecuteReport('Report3');
    end;
//   memTotales.SaveToTextFile('c:\repx.txt');
  finally
    Q_Historia.Free;
  end;
end;

procedure TFREP01.CheckBox2Click(Sender: TObject);
begin
  cb6a6.Checked:=not CheckBox2.Checked;
end;

procedure TFREP01.cb6a6Click(Sender: TObject);
begin
  CheckBox2.Checked:=not cb6a6.Checked;
end;

function TFREP01.ObtenerPendientePeriodo(FechaIni, FechaFin: TDateTime;
  i: Byte): Double;
var
  Q_Pendiente:TADIQuery;
begin
  Result := 0.0;
  try
    Q_Pendiente := TADIQuery.Create('SELECT FIRST 1 PENDIENTE FROM HISTORIA WHERE FECHA>=:FECHAINI AND FECHA<=:FECHAFIN AND COMBUSTIBLE=:COMBUSTIBLE ORDER BY CORTE DESC');
    Q_Pendiente.Params[0].AsDateTime := FechaIni;
    Q_Pendiente.Params[1].AsDateTime := FechaIni;
    Q_Pendiente.Params[2].AsShort    := i;
    Q_Pendiente.ExecQuery;

    Result := Q_Pendiente.FieldByName('PENDIENTE').AsDouble;

    Q_Pendiente.Close;
    Q_Pendiente.Free;
  except
    Result := 0.0;
  end;
end;

procedure TFREP01.Rep01_6(FechaIni, FechaFin: TDateTime; pRuta: string);
var
  xcomb:Integer;
  Q_Inv, QL_Tanq, QL_Docu, QL_Vol:TPANQuery;
  xFecha:TDateTime;
  Q_Clave, Q_Merma :TADIQuery;
  SalidasTanqueFisico:Real;
  swVentasVR:Real;
  swAcumDifVtas:array [1..3] of Real;
  swPorcAte, swPorcAteTot:array[1..3] of Real;
  xcont:Integer;
  swAcumDif:array [1..3] of Real;
  xPrecio:Real;
  swTotAcumDifVtas, porcMerma: Real;
begin
  TM_Auxi.Active:=False;
  TM_Auxi.Active:=True;
  xFecha:=FechaIni;
  FAVANCE.PreparaAvance('Preparando datos...',True,DiasEntre(FechaIni,FechaFin));
  try
    While xFecha<=FechaFin do begin
      FAVANCE.PreparaAvance2(True,3);
      try
        for xcomb:= 1 to 3 do begin
          try
            QL_Tanq:= TPANQuery.Create('Select t.Tanque,(select c.nombre from DPVGTCMB c where c.clave=t.combustible) as Combustible from DPVGTANQ t where t.combustible='+IntToStr(xComb)+' and t.activo='+QuotedStr('Si')+' Order by t.Tanque');
            QL_Tanq.ExecQuery;
            if QL_Tanq.RecordCount<=0 then begin
              Continue;
            end;
            if TM_Auxi.Locate('Fecha;Combustible',VarArrayOf([xFecha,xcomb]),[]) then begin
              TM_Auxi.Edit;
            end
            else begin
              TM_Auxi.Append;
              TM_AuxiCombustible.AsInteger:=xcomb;
              TM_AuxiNombre.AsString      :=QL_Tanq.FN('Combustible').AsString;
              TM_AuxiFecha.AsDateTime     :=xFecha;
            end;
            while not QL_Tanq.Eof do begin
              try
                if cb6a6.Checked then begin
                  Q_Inv:=TPANQuery.Create('Select coalesce(Volumen,0) as InvInicial from DPVGTURNT where Fecha='+quotedStr(FechaToStrSQL(xFecha-1))+' and Tanque='+IntToStr(QL_Tanq.FN('Tanque').AsInteger)+' and Turno=3');
                  Q_Inv.ExecQuery;
                  TM_AuxiInvInicial.AsFloat:=TM_AuxiInvInicial.AsFloat+Q_Inv.FN('InvInicial').AsFloat;

                  Q_Inv.Close;
                  Q_Inv.SQL.Clear;
                  Q_Inv.SQL.Add('Select coalesce(Volumen,0) as InvFinal from DPVGTURNT where Fecha='+quotedStr(FechaToStrSQL(xFecha))+' and Tanque='+IntToStr(QL_Tanq.FN('Tanque').AsInteger)+' and Turno=3');
                  Q_Inv.ExecQuery;
                  TM_AuxiInvFinal.AsFloat:=TM_AuxiInvFinal.AsFloat+Q_Inv.FN('InvFinal').AsFloat;
                end
                else begin
                  if FUSION_TANQUES='Si' then begin
                    TM_AuxiInvInicial.AsFloat:=medicion_tanque_turno_anterior(1,IntToStr(xcomb),xFecha-1);
                    Q_Inv:=TPANQuery.Create('SELECT SUM(VOLUMEN)  AS InvFinal '+
                           'FROM DPVGCVOLT WHERE FECHA='+quotedStr(FechaToStrSQL(xFecha))+' AND TANQUE ='+IntToStr(QL_Tanq.FN('Tanque').AsInteger)+' '+
                           'GROUP BY COMBUSTIBLE ORDER BY COMBUSTIBLE');
                  end
                  else begin
                    TM_AuxiInvInicial.AsFloat:=TM_AuxiInvInicial.AsFloat+medicion_tanque_turno_anterior(1,IntToStr(QL_Tanq.FN('Tanque').AsInteger),xFecha-1);
                    Q_Inv:=TPANQuery.Create('SELECT coalesce(VOLUMEN,0) as InvFinal FROM DPVGCVOLT WHERE TANQUE='+IntToStr(QL_Tanq.FN('Tanque').AsInteger)+' AND FECHA='+quotedStr(FechaToStrSQL(xFecha)));
                  end;
                  Q_Inv.ExecQuery;
                  TM_AuxiInvFinal.AsFloat:=TM_AuxiInvFinal.AsFloat+Q_Inv.FN('InvFinal').AsFloat;
                end;
              finally
                Q_Inv.Free;
              end;
              try
                QL_Docu:=TPANQuery.Create('Select coalesce(Sum(d.VolPemex),0) as EntFct from DPVGDOCU d where exists(select t.folio from DPVGETAN t '+
                                          'where fecha='+QuotedStr(FechaToStrSQL(xFecha))+' and d.folioentrada=t.folio and tanque='+IntToStr(QL_Tanq.FN('Tanque').AsInteger)+')');
                QL_Docu.ExecQuery;
                TM_AuxiEntFact.AsFloat  :=TM_AuxiEntFact.AsFloat+QL_Docu.FN('EntFct').AsFloat;
              finally
                QL_Docu.Free;
              end;
              TM_AuxiEntMermas.AsFloat:=TM_AuxiEntFact.AsFloat;
              try
                QL_Vol:=TPANQuery.Create('select coalesce(Sum(t.volumenrecepcion),0) as Volumen from DPVGETAN t where fecha='+quotedStr(FechaToStrSQL(xFecha))+' and Combustible='+IntToStr(xcomb));
                QL_Vol.ExecQuery;
                TM_AuxiEntFisica.AsFloat:=QL_vol.FN('Volumen').AsFloat;

                QL_Vol.Close;
                QL_Vol.SQL.Clear;
                QL_Vol.SQL.Add('Select coalesce(sum(Volumen),0) as volumen from dpvgmovi where Tag<>1 and '+
                               'fechaturno='+quotedStr(FechaToStrSQL(xFecha))+
                               ' and combustible='+IntToStr(xcomb)+' ');
                QL_Vol.ExecQuery;
                TM_AuxiSalidaDisp.AsFloat := QL_Vol.FN('Volumen').AsFloat;

                QL_Vol.Close;
                QL_Vol.SQL.Clear;
                QL_Vol.SQL.Add('Select coalesce(sum(Volumen),0) as volumen from dpvgmovi where (hora>='+QuotedStr(FechaToStrSQL(xFecha)+' 06:00:00')
                              +'  and hora<='+QuotedStr(FechaToStrSQL(xFecha+1)+' 05:59:59')+')'+
                               ' and combustible='+IntToStr(xcomb)+' and jarreo='+QuotedStr('Si'));
                QL_Vol.ExecQuery;
                TM_AuxiJarreos.AsFloat := QL_Vol.FN('Volumen').AsFloat;
              finally
                QL_Vol.Close;
                QL_Vol.Free;
              end;
              try
                Q_Clave := TADIQuery.Create('select coalesce(Sum(Volumen1),0) as Volumen, coalesce(Sum(Volumen2),0) as Volumen2 from Claves where FechaAdmin='
                                           +QuotedStr(FechaToStrSQL(xFecha))+' and combustible='+IntToStr(xcomb));
                Q_Clave.ExecQuery;
                TM_AuxiSalidaDisp.AsFloat := TM_AuxiSalidaDisp.AsFloat + Q_Clave.FN('Volumen').AsFloat;
                TM_AuxiAjuste.AsFloat     := Q_Clave.FN('Volumen').AsFloat - Q_Clave.FN('Volumen2').AsFloat;
              finally
                Q_Clave.Close;
                Q_Clave.Free;
              end;

              if CheckBox3.Checked then
                TM_AuxiSaliTanque.AsFloat := TM_AuxiInvInicial.AsFloat + TM_AuxiEntFisica.AsFloat - TM_AuxiInvFinal.AsFloat
              else
                TM_AuxiSaliTanque.AsFloat := TM_AuxiInvInicial.AsFloat + TM_AuxiEntFact.AsFloat - TM_AuxiInvFinal.AsFloat;
              TM_AuxiVtasLtsAntes.AsFloat := TM_AuxiSalidaDisp.AsFloat - TM_AuxiJarreos.AsFloat;
              TM_AuxiVtasLtsDesp.AsFloat  := TM_AuxiVtasLtsAntes.AsFloat - TM_AuxiAjuste.AsFloat;

              QL_Tanq.Next;
            end;
            QL_Tanq.Close;
            QL_Tanq.Free;

            TM_Auxi.Post;

          except
            TM_Auxi.Cancel;
          end;
          FAVANCE.AvanzaPosicion2;
        end;
      finally
        FAVANCE.Close2;
      end;
      xFecha:=xFecha+1;
      FAVANCE.AvanzaPosicion;
    end;
  finally
    FAVANCE.Close;
  end;
  TM_Auxi.First;
  
  mem1.Close;
  mem1.Open;

  memTotales.Close;
  memTotales.Open;
  for xcont:= 1 to 3 do begin
    swAcumDif[xcont]:=0;
    swPorcAteTot[xcont]:=0;
    swAcumDifVtas[xcont]:=0;
  end;
  FAVANCE.PreparaAvance('Preparando reporte...',True,TM_Auxi.RecordCount);
  try
    while not TM_Auxi.Eof do begin
      mem1.Append;
      mem1Combustible.AsInteger := TM_AuxiCombustible.AsInteger;
      mem1Jarreos.AsString      := FormatFloat('###,##0.00',AjustaFloat(TM_AuxiJarreos.AsFloat,2));
      mem1Salidas.AsCurrency    := TM_AuxiSalidaDisp.AsFloat;                       //SALIDAS DISPS
      mem1Ventas.AsCurrency     := TM_AuxiVtasLtsAntes.AsFloat;                     //VENTAS LTS ANTES

      mem1Ajuste.AsCurrency     := TM_AuxiAjuste.AsFloat;
      mem1Diferencia.AsFloat    := TM_AuxiVtasLtsDesp.AsFloat;               //VTAS LTS DESP
      mem1Precio.AsCurrency     := dame_precio_combustible(TM_AuxiFecha.AsDateTime,TM_AuxiFecha.AsDateTime,TM_AuxiCombustible.AsInteger);
      mem1Importe.AsCurrency    := mem1Ajuste.AsCurrency * mem1Precio.AsCurrency;
      mem1InvInical.AsCurrency  := TM_AuxiInvInicial.AsFloat;
      mem1InvFinal.AsCurrency   := TM_AuxiInvFinal.AsFloat;

      mem1Entradas.AsCurrency   := TM_AuxiEntFisica.AsFloat;
      mem1EntradaFct.AsFloat    := TM_AuxiEntFact.AsFloat;
      mem1SalidaTque.AsCurrency := TM_AuxiSaliTanque.AsFloat;
      mem1InvFisico.AsFloat     := TM_AuxiEntFisica.AsFloat;

      if mem1SalidaTque.AsCurrency<>0 then
        try
           SalidasTanqueFisico        := ((mem1InvInical.AsCurrency + mem1InvFisico.AsCurrency) - mem1InvFinal.AsCurrency);
           mem1porPemx.AsCurrency     :=  0.15;
           mem1LtsMermaConta.AsFloat  := TM_AuxiVtasLtsDesp.AsFloat*0.0015;
           mem1ImpMermaConta.AsFloat  := AjustaFloat(mem1LtsMermaConta.AsFloat * mem1Precio.AsCurrency, 2);
        except
           mem1porPemx.AsCurrency     := 0;
           mem1LtsMermaConta.AsFloat  := 0;
           mem1ImpMermaConta.AsFloat  := 0;
        end
      else begin
        mem1porPemx.AsCurrency := 0;
        mem1LtsMermaConta.AsFloat  := 0;
        mem1ImpMermaConta.AsFloat  := 0;
      end;
      mem1Fecha.AsDateTime      := TM_AuxiFecha.AsDateTime;
      mem1NombreCMB.AsString    := TM_AuxiNombre.AsString;

      if mem1Salidas.AsCurrency > 0 then
         mem1MenRendimiento.AsCurrency := (mem1Ajuste.AsCurrency/mem1Ventas.AsCurrency) * 100
      else
         mem1MenRendimiento.AsCurrency := 0;
      Mem1SF.AsString           := FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;

      //Nuevas columnas de ventas antes en importe y ventas despues en importe
      Mem1VtasImpAnt.AsFloat            := AjustaFloat(mem1Ventas.AsCurrency*mem1Precio.AsCurrency,2);
      Mem1VtasImpDesp.AsFloat           := AjustaFloat(mem1Diferencia.AsCurrency*mem1Precio.AsCurrency,2);

      swVentasVR:=AjustaFloat((mem1InvInical.AsCurrency+mem1Entradas.AsCurrency-mem1InvFinal.AsCurrency),2);
      mem1DifVtaContavsVtaTanque.AsFloat:=mem1Diferencia.AsFloat - mem1SalidaTque.AsFloat;
      swAcumDifVtas[TM_AuxiCombustible.AsInteger]:=swAcumDifVtas[TM_AuxiCombustible.AsInteger] + mem1DifVtaContavsVtaTanque.AsFloat;
      mem1AcumDifVtas.AsFloat := mem1AcumDifVtas.AsFloat + {swAcumDifVtas}swAcumDifVtas[TM_AuxiCombustible.AsInteger];
      swPorcAte[1]:=swPorcAte[1]+mem1Importe.AsFloat;
      swPorcAte[2]:=swPorcAte[2]+mem1VtasImpAnt.AsFloat;
      if TM_AuxiCombustible.AsInteger=3 then begin
        mem1PorcMenRend.AsFloat:= DivideFloat(swPorcAte[1]*100,swPorcAte[2]);
        swPorcAte[1]:=0;
        swPorcAte[2]:=0;
      end;      
      mem1.Post;
      if memTotales.Locate('Combustible',VarArrayOf([TM_AuxiCombustible.AsInteger]),[]) then begin
        MemTotales.Edit;
        MemTotalesSalidas.AsCurrency    := MemTotalesSalidas.AsCurrency + TM_AuxiSalidaDisp.AsFloat;
        memTotalesJarreos.AsCurrency    := memTotalesJarreos.AsCurrency + TM_AuxiJarreos.AsFloat;
        MemTotalesAjuste.AsCurrency     := MemTotalesAjuste.AsCurrency + TM_AuxiAjuste.AsFloat;

        MemTotalesDiferencia.AsCurrency := MemTotalesDiferencia.AsCurrency + TM_AuxiVtasLtsDesp.AsFloat;

        xPrecio:=dame_precio_combustible(TM_AuxiFecha.AsDateTime,TM_AuxiFecha.AsDateTime,TM_AuxiCombustible.AsInteger);
        MemTotalesImporte.AsCurrency    := AjustaFloat(MemTotalesImporte.AsCurrency + AjustaFloat((AjustaFloat(TM_AuxiAjuste.AsFloat,2) * xPrecio),2),2);
        MemTotalesFecha.AsDateTime      := TM_AuxiFecha.AsDateTime;

        MemTotalesEntradas.AsCurrency   := memTotalesEntradas.AsCurrency + mem1Entradas.AsCurrency;
        MemTotalesEntradaFct.AsFloat    := MemTotalesEntradaFct.AsFloat + TM_AuxiEntFact.AsFloat;
        memTotalesVentas.AsCurrency     := AjustaFloat((MemTotalesSalidas.AsCurrency - memTotalesJarreos.AsCurrency),2);

        memTotalesporPemx.AsCurrency     := 0.15;

        memTotalesInvInical.AsCurrency  := memTotalesInvInical.AsCurrency;
        memTotalesInvFinal.AsCurrency   := mem1InvFinal.AsCurrency;
        memTotalesInvFisico.AsFloat     := memTotalesInvFisico.AsFloat + mem1InvFisico.AsFloat;


        if MemTotalesSalidas.AsCurrency > 0 then
           MemTotalesRendimiento.AsCurrency := (MemTotalesAjuste.AsCurrency/memTotalesVentas.AsCurrency) * 100
        else
           MemTotalesRendimiento.AsCurrency := 0;
        MemTotalesSF.AsString:= FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;

        if CheckBox3.Checked then
          MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + memTotalesEntradas.AsCurrency) - MemTotalesInvFinal.AsCurrency
        else
          MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + memTotalesEntradaFct.AsCurrency) - MemTotalesInvFinal.AsCurrency;

        //Nuevas Columnas del reporte
        MemTotalesVtasImpAnt.AsFloat            := MemTotalesVtasImpAnt.AsFloat + AjustaFloat((TM_AuxiSalidaDisp.AsFloat - TM_AuxiJarreos.AsFloat)*xPrecio,2);
        MemTotalesVtasImpDesp.AsFloat           := MemTotalesVtasImpDesp.AsFloat+AjustaFloat(TM_AuxiVtasLtsDesp.AsFloat*xPrecio,2);

        swVentasVR:=AjustaFloat((memTotalesInvInical.AsCurrency+MemTotalesEntradas.AsCurrency-memTotalesInvFinal.AsCurrency),2);
        memTotalesDifVtaContavsVtaTanque.AsFloat:=AjustaFloat(MemTotalesDiferencia.AsFloat - memTotalesSalidaTque.AsFloat,2);
        swTotAcumDifVtas:=AjustaFloat(MemTotalesDiferencia.AsFloat - TM_AuxiSaliTanque.AsFloat,2);
        MemTotalesAcumDifVtas.AsFloat := swAcumDifVtas[TM_AuxiCombustible.AsInteger];//MemTotalesAcumDifVtas.AsFloat + {swAcumDifVtas}swAcumDifVtas[TM_AuxiCombustible.AsInteger];
        memTotalesLtsMermaConta.AsFloat  := MemTotalesDiferencia.AsFloat*0.0015;
        memTotalesImpMermaConta.AsFloat  := AjustaFloat(memTotalesLtsMermaConta.AsFloat * MemTotalesPrecio.AsCurrency, 2);

        if TM_AuxiCombustible.AsInteger=1 then begin
          swPorcAteTot[1]:=MemTotalesImporte.AsFloat;
          swPorcAteTot[2]:=MemTotalesVtasImpAnt.AsFloat;
        end
        else begin
          swPorcAteTot[1]:=swPorcAteTot[1]+MemTotalesImporte.AsFloat;
          swPorcAteTot[2]:=swPorcAteTot[2]+MemTotalesVtasImpAnt.AsFloat;
        end;
        memTotalesVentas.AsString       := FormatFloat('###,##0.00',memTotalesVentas.AsCurrency);
        memTotales.Post;
      end
      else begin
        MemTotales.Append;
        MemTotalesCombustible.AsInteger := TM_AuxiCombustible.AsInteger;
        memTotalesJarreos.AsCurrency    := TM_AuxiJarreos.AsFloat;
        MemTotalesSalidas.AsCurrency    := TM_AuxiSalidaDisp.AsFloat;
        MemTotalesAjuste.AsCurrency     := TM_AuxiAjuste.AsFloat;
        MemTotalesDiferencia.AsCurrency := TM_AuxiVtasLtsDesp.AsFloat;
        xPrecio:=dame_precio_combustible(TM_AuxiFecha.AsDateTime,TM_AuxiFecha.AsDateTime,TM_AuxiCombustible.AsInteger);
        MemTotalesPrecio.AsCurrency     := xPrecio;
        MemTotalesImporte.AsCurrency    := AjustaFloat((AjustaFloat(TM_AuxiAjuste.AsFloat,2) * xPrecio),2);
        MemTotalesFecha.AsDateTime      := TM_AuxiFecha.AsDateTime;;
        memTotalesInvInical.AsCurrency  := mem1InvInical.AsCurrency;
        memTotalesEntradas.AsCurrency   := mem1Entradas.AsCurrency;
        MemTotalesEntradaFct.AsFloat    := TM_AuxiEntFact.AsFloat;
        memTotalesVentas.AsCurrency     := AjustaFloat((MemTotalesSalidas.AsCurrency - memTotalesJarreos.AsCurrency),2);
        memTotalesInvFisico.AsFloat     := mem1InvFisico.AsFloat;
        MemTotalesNombreCMB.AsString    := TM_AuxiNombre.AsString;
        memTotalesInvFinal.AsCurrency := mem1InvFinal.AsCurrency;

        if MemTotalesSalidas.AsCurrency > 0 then
           MemTotalesRendimiento.AsCurrency := (MemTotalesAjuste.AsCurrency/memTotalesVentas.AsCurrency) * 100
        else
           MemTotalesRendimiento.AsCurrency := 0;
        MemTotalesSF.AsString:= FormatDateTime('yyyymmdd',FechaIni) + mem1Corte.AsString + mem1Combustible.AsString;

        if CheckBox3.Checked then
          MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + memTotalesEntradas.AsCurrency) - MemTotalesInvFinal.AsCurrency
        else
          MemTotalesSalidaTque.AsCurrency := (memTotalesInvInical.AsCurrency + memTotalesEntradaFct.AsCurrency) - MemTotalesInvFinal.AsCurrency;

        if mem1SalidaTque.AsCurrency<>0 then
          try
             SalidasTanqueFisico := ((mem1InvInical.AsCurrency + mem1InvFisico.AsCurrency) - mem1InvFinal.AsCurrency);
             memTotalesporPemx.AsCurrency     := 0.15;
             memTotalesLtsMermaConta.AsFloat  := MemTotalesDiferencia.AsFloat*0.0015;
             memTotalesImpMermaConta.AsFloat  := AjustaFloat(memTotalesLtsMermaConta.AsFloat * MemTotalesPrecio.AsCurrency, 2);
          except
             memTotalesporPemx.AsCurrency     := 0;
             memTotalesLtsMermaConta.AsFloat  := 0;
             memTotalesImpMermaConta.AsFloat  := 0;
          end

        else begin
          memTotalesporPemx.AsCurrency     := 0;
          memTotalesLtsMermaConta.AsFloat  := 0;
          memTotalesImpMermaConta.AsFloat  := 0;
        end;


        //nuevas Columnas
        MemTotalesVtasImpAnt.AsFloat    := AjustaFloat(memTotalesVentas.AsCurrency*xPrecio,2);
        MemTotalesVtasImpDesp.AsFloat   := AjustaFloat(MemTotalesDiferencia.AsCurrency*xPrecio,2);
        MemTotalesDifVtaContavsVtaTanque.AsFloat:=mem1Diferencia.AsFloat - TM_AuxiSaliTanque.AsFloat;
        swTotAcumDifVtas:=swTotAcumDifVtas+memTotalesDifVtaContavsVtaTanque.AsFloat;
        MemTotalesAcumDifVtas.AsFloat:=MemTotalesAcumDifVtas.AsFloat + swAcumDifVtas[TM_AuxiCombustible.AsInteger];
        swAcumDif[TM_AuxiCombustible.AsInteger]:=MemTotalesAcumDifVtas.AsFloat;
        swPorcAteTot[1]:=swPorcAteTot[1]+MemTotalesImporte.AsFloat;
        swPorcAteTot[2]:=swPorcAteTot[2]+MemTotalesVtasImpAnt.AsFloat;
        memTotalesVentas.AsString       := FormatFloat('###,##0.00',memTotalesVentas.AsCurrency);
        memTotales.Post;
      end;

      //Recalcula %ATE
//      mem1.First;
//      while not mem1.Eof do begin
//        if mem1Fecha.AsDateTime = FechaIni then begin
//          mem1.Edit;
//          mem1PorcMenRend.AsFloat:= DivideFloat(swPorcAte[1]*100,swPorcAte[2]);
//          mem1.Post;
//        end;
//        mem1.Next;
//      end;

      TM_Auxi.Next;
      FAVANCE.AvanzaPosicion;
    end;
  finally
    memTotales.First;
    while not memTotales.Eof do begin
      memTotales.Edit;
      memTotalesPorcMenRend.AsString:= FormatFloat('##,##0.00',AjustaFloat(DivideFloat(swPorcAteTot[1]*100,swPorcAteTot[2]),2));
      memTotales.Post;
      memTotales.Next;
    end;
    FAVANCE.Close;
  end;
  rvp1.SetParam('Enca',nombreEst+'  Fecha Ini:'+ DateToStr(FechaIni)+'     Fecha Fin:'+DateToStr(FechaFin));
  rvp1.ExecuteReport('Report3');
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
    if (SOLO_ENTRADAS='Si') and (FUSION_TANQUES='Si') then begin
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
//      Q_VolD.Close;
//      Q_VolD.SQL.Clear;
//      Q_VolD.SQL.Add('select coalesce(sum(e.volumenrecepcion),0) as volrec from dpvgetan e '+
//                                 'where not exists (select folioentrada from dpvgdocu '+
//                                 'where folioentrada=e.folio '+
//                                 'and fecha=e.fecha) '+
//                                 'and combustible=:pCombustible '+
//                                 'and fecha=:pFecha');
//      Q_VolD.ParamByName('pFecha').AsDateTime     := pFechaAdmin;
//      Q_VolD.ParamByName('pCombustible').AsInteger:= pCombustible;
//      Q_VolD.ExecQuery;
//      if (Q_VolD.FN('volrec').AsFloat>1000) and (FUSION_TANQUES='Si') then
//        Result:=Result+Trunc((Q_VolD.FN('volrec').AsFloat/1000)+1)*1000
//      else
//        Result:=Result+Q_VolD.FN('volrec').AsFloat;
    end;
  finally
    Q_VolD.Close;
    Q_VolD.Free;
  end;
end;

function medicion_tanque_turno_anterior(corte:byte;tanque:string;fecha_completa:TDateTime):real;
var
 Ql_VoltAnt:TPANQUERY;
begin
  try
     QL_VoltAnt:=TPANQUERY.Create('');
     QL_VoltAnt.SQL.Clear;
     if FUSION_TANQUES='No' then begin
       Ql_VoltAnt.Sql.Add('SELECT *');
       Ql_VoltAnt.Sql.Add('FROM     ');
       if de_6a6 then
         Ql_VoltAnt.Sql.Add('   DPVGTURNT')
       else
         Ql_VoltAnt.Sql.Add('   DPVGCVOLT');

       Ql_VoltAnt.Sql.Add('WHERE TANQUE='+tanque);
       Ql_VoltAnt.Sql.Add('AND FECHA=:FECHA');
       Ql_VoltAnt.Sql.Add('AND '+IfThen(de_6a6,'TURNO','CORTE')+'=:CORTE');
     end
     else begin
       Ql_VoltAnt.SQL.Add('SELECT SUM(VOLUMEN) AS VOLUMEN');
       if de_6a6 then
         Ql_VoltAnt.SQL.Add('FROM DPVGTURNT')
       else
         Ql_VoltAnt.SQL.Add('FROM DPVGCVOLT');

       Ql_VoltAnt.SQL.Add('WHERE COMBUSTIBLE='+tanque);
       Ql_VoltAnt.Sql.Add('AND FECHA=:FECHA');
       Ql_VoltAnt.Sql.Add('AND '+IfThen(de_6a6,'TURNO','CORTE')+'=:CORTE');
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


end.
