program PAJUMENU;

uses
  ExceptionLog,
  Forms,
  Dialogs,
  UPANPASS,
  Windows,
  SysUtils,
  UAJUMENU in 'UAJUMENU.pas' {FAJUMENU},
  UINIAJU in 'UINIAJU.pas',
  UAJUCONS in 'UAJUCONS.pas' {FAJUCONS},
  UAJUCONS2 in 'UAJUCONS2.pas' {FAJUCONS2},
  UAJUREP01 in 'UAJUREP01.pas' {FREP01},
  UREP02I in 'UREP02I.pas' {FRep02},
  UAJUCONSFECHA in 'UAJUCONSFECHA.pas' {FAJUCONSFECHA},
  UAJUFUN in 'UAJUFUN.pas',
  UAVANCE in '..\..\..\Imagen Ib Libs\Util\UAVANCE.pas' {FAVANCE},
  UAJUPORCENTAJES in 'UAJUPORCENTAJES.pas' {FAJUPORCENTAJES},
  UAJULIQ in 'UAJULIQ.pas' {FAJULIQ};

{$R *.res}

var
  pHandle: THandle;
  archivo:TextFile;
begin
  pHandle := CreateMutex(nil, true, 'Ajustador Gas.');

  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    AssignFile( archivo, ExtractFilePath( Application.ExeName ) + 'levanta.txt' );
    Rewrite( archivo );
    WriteLn( archivo, 'X' );
    CloseFile( archivo );
    Halt;
  end;

  Application.Initialize;
  Application.CreateForm(TFAJUMENU, FAJUMENU);
  Application.CreateForm(TFRep02, FRep02);
  Application.CreateForm(TFAJUCONSFECHA, FAJUCONSFECHA);
  Application.CreateForm(TFAVANCE, FAVANCE);
  Application.CreateForm(TFAJUPORCENTAJES, FAJUPORCENTAJES);
  Application.CreateForm(TFAJULIQ, FAJULIQ);
  Application.Run;
end.
