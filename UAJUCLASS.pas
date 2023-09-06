unit UAJUCLASS;

interface

uses
  FIBQuery,FIBDatabase,pFIBDatabase,FIBDataSet,pFIBDataSet,Classes;

Type
TAJUQuery=class(TFIBQuery)
    private
       tr:TFIBTransaction;
    public
       constructor Create(AOwner:TComponent;Sql:String); overload;
       procedure ExecQuery; override;
       procedure Commit;
       procedure StartTransaction;
       procedure RollBack;
       procedure Free; overload;
end;

TAJUDataSet=class(TpFIBDataSet)
    private
       tr:TFIBTransaction;
    public
       constructor Create(AOwner:TComponent;Sql:String); overload;
       constructor Create(AOwner:TComponent;Sql,Tabla:String); overload;
       procedure Open; overload;
       procedure Commit;
       procedure RollBack;
       procedure Free; overload;
end;

implementation

Uses
   UAJUMENU;

{ TPANQuery }

procedure TAJUQuery.commit;
begin
  if Self.tr.InTransaction then
     Self.tr.Commit;
end;

constructor TAJUQuery.Create(AOwner:TComponent;Sql: String);
begin
   inherited Create(AOwner);
   Self.SQL.Clear;
   Self.SQL.Add(Sql);
   Self.tr:=TFIBTransaction.Create(Self);
   Self.tr.DefaultDatabase:=DB;
   Self.Transaction:=tr;
end;

procedure TAJUQuery.ExecQuery;
begin
   if not Self.tr.InTransaction then
     Self.tr.StartTransaction;
   inherited;
end;

procedure TAJUQuery.Free;
begin
    if Self.tr.InTransaction then
       Self.tr.Rollback;
    Self.tr.Free;
    inherited;
end;


procedure TAJUQuery.RollBack;
begin
  if Self.tr.InTransaction then
    Self.tr.Rollback;
end;

procedure TAJUQuery.StartTransaction;
begin
    Self.tr.StartTransaction;
end;

{ TPANDataSet }

procedure TAJUDataSet.Commit;
begin
  if Self.tr.InTransaction then
     Self.tr.Commit;
end;

constructor TAJUDataSet.Create(AOwner: TComponent; Sql: String);
begin
    inherited Create(AOwner);
    Self.tr:=TpFIBTransaction.create(Self);
    Self.tr.DefaultDatabase:=DB;
    Self.Transaction:=Self.tr;
    Self.SelectSQL.Clear;
    Self.SelectSQL.Add('SELECT * FROM '+Sql);
    Self.AutoUpdateOptions.UpdateTableName := Sql;
    Self.Open;
    Self.GenerateSQLs;
    Self.Close;
end;


constructor TAJUDataSet.Create(AOwner: TComponent; Sql, Tabla: String);
begin
    inherited Create(AOwner);
    Self.tr:=TpFIBTransaction.create(Self);
    Self.tr.DefaultDatabase:=DB;
    Self.Transaction:=Self.tr;
    Self.SelectSQL.Clear;
    Self.SelectSQL.Add(Sql);
    Self.AutoUpdateOptions.UpdateTableName := Tabla;
    Self.Open;
    Self.GenerateSQLs;
    Self.Close;
end;

procedure TAJUDataSet.Free;
begin
    if Self.tr.InTransaction then
       Self.tr.Rollback;
    Self.tr.Free;
    inherited;
end;

procedure TAJUDataSet.Open;
begin
   if not Self.tr.InTransaction then
     Self.tr.StartTransaction;
   inherited;
end;

procedure TAJUDataSet.RollBack;
begin
  if Self.tr.InTransaction then
     Self.tr.RollBack;
end;

end.
