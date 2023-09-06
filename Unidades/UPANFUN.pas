unit UPANFUN;

interface

Uses
  Classes,SysUtils;

procedure libera_objetos_de_lista(Lista:TStrings);
procedure graba_bitacora(Usuario:Integer;Operacion:String;Observaciones:TStringStream);
function tiene_privilegio(AUsuario:SmallInt;Privilegio:String):Boolean;

implementation

uses UAJUMENU;





function tiene_privilegio(AUsuario:SmallInt;Privilegio:String):Boolean;
var
  Q_Usua:TPANQuery;
begin
  try
    Q_Usua:=TPANQuery.Create('SELECT PRIVILEGIOS FROM DPVGUSUA WHERE CLAVE=:CLAVE');
    Q_Usua.Params[0].AsInteger := AUsuario;
    Q_Usua.ExecQuery;

    if Q_Usua.RowsAffected > 0 then
      Result := Pos(Privilegio,Q_Usua.Fields[0].AsString) > 0
    else
      Result := false;
   finally
     Q_Usua.Free;
   end;
end;

function next_folio_bitacora:Integer;
var
  Q_Bita:TPANQUERY;
begin
  try
    Q_Bita:=TPANQUERY.Create('SELECT MAX(FOLIO) FROM DPVGBITA');
    Q_Bita.ExecQuery;
    Result := Q_Bita.Fields[0].AsInteger + 1;
  finally
    Q_Bita.Free;
  end;
end;

procedure graba_bitacora(Usuario:Integer;Operacion:String;Observaciones:TStringStream);
var
  Q_Bita:TPANQUERY;
begin
  try
    Q_Bita:=TPANQUERY.Create('INSERT INTO DPVGBITA VALUES(:FOLIO,:FECHAHORA,:USUARIO,:OPERACION,:OBSERVACIONES,:FECHA)');
    Q_Bita.Params[0].AsInteger    :=  next_folio_bitacora; //Folio
    Q_Bita.Params[1].AsDateTime   :=  Now;                 //FechaHora
    Q_Bita.Params[2].AsInteger    :=  Usuario;             //Usuario
    Q_Bita.Params[3].AsString     :=  Operacion;           //Operacion
    Q_Bita.Params[4].LoadFromStream(Observaciones);        //Observaciones
    Q_Bita.Params[5].AsDateTime   :=  Date;                //Fecha
    Q_Bita.ExecQuery;
    Q_Bita.Commit;
  finally
    Q_Bita.Free;
  end;
end;

procedure libera_objetos_de_lista(Lista:TStrings);
var
  i:byte;
begin
  for i:=0 to Lista.Count - 1 do
    TObject(Lista.Objects[i]).Free;
end;

end.
