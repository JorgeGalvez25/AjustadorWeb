unit Unit4;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompEdit, IWTMSEdit, IWControl, IWTMSCal, IWCompLabel, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWCompButton;

type
  TIWForm4 = class(TIWAppForm)
    IWButton1: TIWButton;
    FechaInicial: TIWLabel;
    lbl1: TIWLabel;
    lbl2: TIWLabel;
    TIWDateSelector1: TTIWDateSelector;
    TIWDateSelector2: TTIWDateSelector;
    lblEstacion: TIWLabel;
    btnMenu: TIWButton;
    edtHoraIni: TTIWAdvTimeEdit;
    edtHoraFin: TTIWAdvTimeEdit;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

uses ServerController, UREP02I;

{$R *.dfm}


procedure TIWForm4.IWAppFormCreate(Sender: TObject);
begin
  TIWDateSelector1.Year := CurrentYear;
  TIWDateSelector1.Month := MonthOf(Date);
  TIWDateSelector1.Day := DayOf(Date);

  TIWDateSelector2.Year := CurrentYear;
  TIWDateSelector2.Month := MonthOf(Date);
  TIWDateSelector2.Day := DayOf(Date);

  lblEstacion.Caption := UserSession.Estacion;
end;

procedure TIWForm4.IWButton1Click(Sender: TObject);
begin
  Fr
end;

end.
