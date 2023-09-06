program PAJUMENU;

uses
  ExceptionLog,
  Forms,
  UPANPASS,
  UAJUMENU in 'UAJUMENU.pas' {FAJUMENU},
  UINIAJU in 'UINIAJU.pas',
  UAJUCONS in 'UAJUCONS.pas' {FAJUCONS},
  UAJUCONS2 in 'UAJUCONS2.pas' {FAJUCONS2},
  UAJUREP01 in 'UAJUREP01.pas' {FREP01},
  Unit1 in '..\..\..\Archivos de programa\Borland\Delphi7\Projects\Unit1.pas',
  UREP02I in 'UREP02I.pas' {FRep02};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFAJUMENU, FAJUMENU);
  Application.CreateForm(TFRep02, FRep02);
  Application.Run;
end.
