unit UAJULIQ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TFAJULIQ = class(TForm)
    deFechaInicial: TDateTimePicker;
    Label1: TLabel;
    btnAjustar: TButton;
    deFechaFinal: TDateTimePicker;
    Label2: TLabel;
    btnCancelar: TButton;
    procedure btnAjustarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function obtenerFechaInicial: TDateTime;
    function obtenerFechaFinal: TDateTime;
  public
    { Public declarations }
    dialogResult : Boolean;
    property FechaInicial: TDateTime read obtenerFechaInicial;
    property FechaFinal: TDateTime read obtenerFechaFinal;
  end;

var
  FAJULIQ: TFAJULIQ;

implementation

{$R *.dfm}

function TFAJULIQ.obtenerFechaFinal: TDateTime;
begin
  Result := deFechaInicial.DateTime;
end;

function TFAJULIQ.obtenerFechaInicial: TDateTime;
begin
  Result := deFechaFinal.DateTime;
end;

procedure TFAJULIQ.btnAjustarClick(Sender: TObject);
begin
  dialogResult := True;
end;

procedure TFAJULIQ.btnCancelarClick(Sender: TObject);
begin
  dialogResult := False;
end;

procedure TFAJULIQ.FormShow(Sender: TObject);
begin
  dialogResult := False;
end;

end.
