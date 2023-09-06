unit UAJUCONSFECHA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls;

type
  TFAJUCONSFECHA = class(TForm)
    cal1: TMonthCalendar;
    pnl1: TPanel;
    btnAceptar: TButton;
    btnCancelar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;


var
  FAJUCONSFECHA: TFAJUCONSFECHA;

function ObtenerFecha: TDateTime;

implementation

uses Math;

{$R *.dfm}

function ObtenerFecha: TDateTime;
begin

  Result := MinDouble;

  with TFAJUCONSFECHA.Create(nil) do begin

    ShowModal;

    if ModalResult = mrOk then
      Result := cal1.Date;

    Free;
  end;
end;

end.
