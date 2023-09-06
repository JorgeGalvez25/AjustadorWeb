program PAjuWeb;

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Unit2 in 'Unit2.pas' {IWForm2: TIWFormModuleBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  UAJUREP01 in 'UAJUREP01.pas' {FREP01},
  UAJUMENU in 'UAJUMENU.pas' {FAJUMENU};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
