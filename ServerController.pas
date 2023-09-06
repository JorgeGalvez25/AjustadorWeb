unit ServerController;

interface

uses
  SysUtils, Classes, IWServerControllerBase, IWBaseForm, HTTPApp,
  // For OnNewSession Event
  IWApplication, IWAppForm;

type
  TIWServerController = class(TIWServerControllerBase)
    procedure IWServerControllerBaseNewSession(ASession: TIWApplication;
      var VMainForm: TIWBaseForm);
    procedure IWServerControllerBaseCloseSession(ASession: TIWApplication);
  private
  public
  end;

  // This is a class which you can add variables to that are specific to the user. Add variables
  // to this class instead of creating global variables. This object can references by using:
  //   UserSession
  // So if a variable named UserName of type string is added, it can be referenced by using:
  //   UserSession.UserName
  // Such variables are similar to globals in a normal application, however these variables are
  // specific to each user.
  //
  // See the VCL for the Web Manual for more details.
  TUserSession = class(TComponent)
  public
    Estacion: string;
    Password: string;
    DiasReporte: Integer;
    EnSesion: Boolean;
    constructor Create(AOwner: TComponent); override;
  end;

// Procs
function UserSession: TUserSession;

implementation
{$R *.dfm}

uses
  IWGlobal,
  IWInit, UAJUMENU, INIFILES, UINIAJU;

function UserSession: TUserSession;
begin
  Result := TUserSession(WebApplication.Data);
end;

procedure TIWServerController.IWServerControllerBaseNewSession(
  ASession: TIWApplication; var VMainForm: TIWBaseForm);
begin
  ASession.Data := TUserSession.Create(nil);
end;

constructor TUserSession.Create(AOwner: TComponent);
var
  Q_Est: TPANQuery;
  pIniFile: TIniFile;
  pIniAju: TIniAju;
begin
  inherited;

  EnSesion := False;

  try
    Q_Est := TPANQuery.Create('SELECT NOMBRE FROM DPVGESTS');
    Q_Est.ExecQuery;
    Estacion := Q_Est.Fields[0].AsString;
  except
    Q_Est.Free;
  end;

  pIniFile := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'AjuConf.Ini');

  pIniAju := TIniAju.Create;
  pIniAju.LoadSettings(pIniFile);

  Password := pIniAju.CONFIGPassword;
  DiasReporte := StrToIntDef(pIniAju.CONFIGDiasReportes, 10);

  pIniFile.Free;
  pIniAju.Free;

end;

procedure TIWServerController.IWServerControllerBaseCloseSession(
  ASession: TIWApplication);
var
  LFilesDir: string;
  sr: TSearchRec;
begin
  //CleanUp session's files directory
  LFilesDir := GServerController.FilesDir + ASession.AppID;
  if FindFirst(LFilesDir + PATHDELIM + '*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      DeleteFile(LFilesDir + PATHDELIM + sr.Name);
    until FindNext(sr) <> 0;
    FindClose(sr);
  end;
  RemoveDir(LFilesDir);
end;

initialization
  TIWServerController.SetServerControllerClass;

end.

