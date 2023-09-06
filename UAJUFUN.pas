unit UAJUFUN;

interface

uses
  UAJUMENU, SysUtils;

function HayDiasSinAjustar: Boolean;
procedure CambiaTagCortes;

implementation


{-------------------------------------------------------------------------------
  Procedure: HayDiasSinAjustar
  Author:    Administrador
  DateTime:  13/02/2010 08:56:35 a.m.
  Arguments: None
  Result:    Boolean
-------------------------------------------------------------------------------}
function HayDiasSinAjustar: Boolean;
var
  Q_CVol: TPANQuery;
begin
  try
    Q_CVol := TPANQuery.Create('SELECT COUNT(*) FROM DPVGCVOL WHERE TAG = 0 AND ESTATUS = ''C'' AND FECHA >= :FECHA');
    Q_CVol.ParamByName('FECHA').AsDateTime := Date - 30;
    Q_CVol.ExecQuery;

    Result := Q_CVol.Fields[0].AsInteger > 0;
  finally
    Q_CVol.Close;
    Q_CVol.Free;
  end;
end;



{-------------------------------------------------------------------------------
  Procedure: CambiaTagCortes
  Author:    Administrador
  DateTime:  13/02/2010 09:02:30 a.m.
  Arguments: None
  Result:    None
-------------------------------------------------------------------------------}
procedure CambiaTagCortes;
var
  Q_CVol: TPANQuery;
begin
  try
    Q_CVol := TPANQuery.Create('UPDATE DPVGCVOL SET TAG = 1 WHERE ESTATUS = ''C'' AND FECHA >= :FECHA');
    Q_CVol.ParamByName('FECHA').AsDateTime := Date - 30;
    Q_CVol.ExecQuery;
    Q_CVol.Commit;

  finally
    Q_CVol.Close;
    Q_CVol.Free;
  end;
end;

end.
