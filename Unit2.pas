unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWCompEdit, Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompLabel;

type
  TIWLogin = class(TIWAppForm)
    IWLabel1: TIWLabel;
    edtLogin: TIWEdit;
  public
  end;

  var
    FIWLogin: TIWLogin;

implementation

{$R *.dfm}


initialization
  TIWLogin.SetAsMainForm;

end.
