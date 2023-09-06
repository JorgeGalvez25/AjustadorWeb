unit Unit3;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton, IWCompRectangle, IWGradient, IWCompLabel;

type
  TIWForm3 = class(TIWAppForm)
    btnRep01: TIWButton;
    btnRep02: TIWButton;
    lblEstacion: TIWLabel;
    tit1: TTIWGradient;
    btnCerrarSesion: TIWButton;
    procedure btnRep01Click(Sender: TObject);
    procedure Move(AFormClass: TIWAppFormClass);
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnCerrarSesionClick(Sender: TObject);
    procedure btnRep02Click(Sender: TObject);
  public
  end;

implementation

uses Unit1, ServerController, Unit4;

{$R *.dfm}


procedure TIWForm3.btnRep01Click(Sender: TObject);
begin
  Move(TIWForm1);
end;

procedure TIWForm3.Move(AFormClass: TIWAppFormClass);
begin
 // Release the current form
  // Note that Intraweb keeps track of which forms exist
  TIWAppForm(WebApplication.ActiveForm).Release;
  // Create the next form
  AFormClass.Create(WebApplication).Show;
end;

procedure TIWForm3.IWAppFormCreate(Sender: TObject);
begin
  lblEstacion.Caption := UserSession.Estacion;
end;

procedure TIWForm3.btnCerrarSesionClick(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('www.google.com');
end;

procedure TIWForm3.btnRep02Click(Sender: TObject);
begin
   Move(TIWForm4);
end;

end.
