unit UAJUCONS2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid;

type
  TFAJUCONS2 = class(TForm)
    DataSource1: TDataSource;
    pFIBDataSet1: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pFIBDataSet1CLAVE: TFIBIntegerField;
    pFIBDataSet1FECHA: TFIBDateTimeField;
    pFIBDataSet1CORTE: TFIBIntegerField;
    pFIBDataSet1SALIDAS: TFIBFloatField;
    pFIBDataSet1DIFERENCIA: TFIBFloatField;
    pFIBDataSet1COMBUSTIBLE: TFIBSmallIntField;
    cxGrid1DBTableView1CLAVE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CORTE: TcxGridDBColumn;
    cxGrid1DBTableView1SALIDAS: TcxGridDBColumn;
    cxGrid1DBTableView1AJUSTE: TcxGridDBColumn;
    cxGrid1DBTableView1DIFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1COMBUSTIBLE: TcxGridDBColumn;
    pFIBDataSet1AJUSTE: TFIBFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure consulta_de_ajustes(Fecha:TDateTime;Corte:Integer);

implementation

uses UAJUMENU;

procedure consulta_de_ajustes(Fecha:TDateTime;Corte:Integer);
begin
  with TFAJUCONS2.Create(nil) do begin
    pFIBDataSet1.Close;
    pFIBDataSet1.Params[0].AsDateTime:=Fecha;
    pFIBDataSet1.Params[1].AsInteger:=Corte;
    pFIBDataSet1.Open;
    ShowModal;
    Free;
  end;
end;



{$R *.dfm}

end.
