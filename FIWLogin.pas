unit FIWLogin;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompLabel, IWCompButton, IWCompEdit, IWCompRectangle, IWGradient;

type
  TIWForm2 = class(TIWAppForm)
    IWLabel1: TIWLabel;
    btnAceptar: TIWButton;
    edtPassword: TIWEdit;
    TIWGradient1: TTIWGradient;
    lblEstacion: TIWLabel;
    lblError: TIWLabel;
    procedure btnAceptarClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWAppFormAfterRender(Sender: TObject);
  public
    procedure Move(AFormClass: TIWAppFormClass);
  end;

implementation

uses Unit1, ServerController, Unit3;

{$R *.dfm}


{ TIWForm2 }

procedure TIWForm2.Move(AFormClass: TIWAppFormClass);
begin
  // Release the current form
  // Note that Intraweb keeps track of which forms exist
  TIWAppForm(WebApplication.ActiveForm).Release;
  // Create the next form
  AFormClass.Create(WebApplication).Show;
end;

procedure TIWForm2.btnAceptarClick(Sender: TObject);
begin
  if edtPassword.Text = UserSession.Password then begin
    UserSession.EnSesion := True;
    Move(TIWForm3);
  end
  else begin
    lblError.Visible := True;
    edtPassword.SetFocus;
    edtPassword.Clear;
  end;
end;

procedure TIWForm2.IWAppFormCreate(Sender: TObject);
begin
  lblEstacion.Caption := UserSession.Estacion;
end;

procedure TIWForm2.IWAppFormAfterRender(Sender: TObject);
begin
  edtPassword.SetFocus;
end;

initialization
  TIWForm2.SetAsMainForm;

end.
