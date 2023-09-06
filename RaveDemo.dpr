program RaveDemo;

{%File 'ReadMe.txt'}

uses
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerController},
  Unit1 in 'Unit1.pas' {IWForm1: TIWFormModuleBase},
  UAJUMENU in '..\..\..\..\Imagen Ib Volumetricos\Varios\ajustadorweb\UAJUMENU.pas' {FAJUMENU},
  UAJUREP01 in '..\..\..\..\Imagen Ib Volumetricos\Varios\ajustadorweb\UAJUREP01.pas' {FREP01},
  FIWLogin in '..\..\..\..\Imagen Ib Volumetricos\Varios\ajustadorweb\FIWLogin.pas' {IWForm2: TIWAppForm},
  Unit3 in 'Unit3.pas' {IWForm3: TIWAppForm},
  UREP02I in '..\..\..\..\Imagen Ib Volumetricos\Varios\ajustadorweb\UREP02I.pas' {FRep02},
  Unit4 in 'Unit4.pas' {IWForm4: TIWAppForm},
  UINIAJU in 'UINIAJU.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
end.
