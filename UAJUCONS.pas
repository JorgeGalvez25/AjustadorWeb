unit UAJUCONS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, FIBDatabase, pFIBDatabase, FIBDataSet,
  pFIBDataSet, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGrid, UFIBCLASS2;

type
  TFAJUCONS = class(TForm)
    DataSource1: TDataSource;
    pFIBDataSet1: TpFIBDataSet;
    pFIBTransaction1: TpFIBTransaction;
    pFIBDataSet1FOLIO: TFIBIntegerField;
    pFIBDataSet1FECHA: TFIBDateTimeField;
    pFIBDataSet1CORTE: TFIBIntegerField;
    pFIBDataSet1VOLUMEN1: TFIBFloatField;
    pFIBDataSet1VOLUMEN2: TFIBFloatField;
    pFIBDataSet1COMBUSTIBLE: TFIBIntegerField;
    pFIBDataSet1PRECIO: TFIBFloatField;
    pFIBDataSet1IMPORTE: TFIBFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FOLIO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CORTE: TcxGridDBColumn;
    cxGrid1DBTableView1VOLUMEN1: TcxGridDBColumn;
    cxGrid1DBTableView1VOLUMEN2: TcxGridDBColumn;
    cxGrid1DBTableView1COMBUSTIBLE: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    DB: TIMGDataBase;
  public
    { Public declarations }

  end;

procedure consulta_de_transacciones(Fecha:TDateTime;Corte:Integer);

implementation

uses UAJUMENU;

procedure consulta_de_transacciones(Fecha:TDateTime;Corte:Integer);
begin
  with TFAJUCONS.Create(nil) do begin
    pFIBDataSet1.Close;
    pFIBDataSet1.Params[0].AsDateTime:=Fecha;
    pFIBDataSet1.Params[1].AsInteger:=Corte;
    pFIBDataSet1.Open;
    ShowModal;
    Free;
  end;
end;



{$R *.dfm}

procedure TFAJUCONS.FormCreate(Sender: TObject);
var
  pRuta: string;
begin
  pRuta := ExtractFilePath(ParamStr(0)) + 'Ajusta.fdb';
  Self.DB := TIMGDataBase.create(pRuta);
  Self.pFIBTransaction1.DefaultDatabase := Self.DB;
  Self.pFIBDataSet1.Database := Self.DB;
  Self.DB.Open;
end;

procedure TFAJUCONS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.DB.Close;
  Self.DB.Free;
end;

end.
