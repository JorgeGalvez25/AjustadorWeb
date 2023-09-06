unit Unit1;

interface

uses
  Classes,
  SysUtils,
  IWAppForm,
  IWApplication,
  IWTypes,
  Controls,
  IWBaseControl,
  IWControl,
  IWCompButton,
  RpRender,
  RpRenderPDF,
  RpBase,
  RpSystem,
  RpDefine,
  RpRave,
  RpCon,
  RpConDS,
  DB,
  DBClient,
  IWGrids,
  IWDBGrids,
  IWDBStdCtrls,
  IWCompText, IWVCLBaseControl, IWCompEdit, RpFiler, IWCompLabel,
  IWBaseHTMLControl, IWTMSCal;

type
  TIWForm1 = class(TIWAppForm)
    IWButton1: TIWButton;
    FechaInicial: TIWLabel;
    lbl1: TIWLabel;
    lbl2: TIWLabel;
    TIWDateSelector1: TTIWDateSelector;
    TIWDateSelector2: TTIWDateSelector;
    lblEstacion: TIWLabel;
    btnMenu: TIWButton;
    lblError: TIWLabel;
    procedure IWButton1Click(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure Move(AFormClass: TIWAppFormClass);
    procedure IWAppFormAfterRender(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
  public
  end;

implementation
{$R *.dfm}

uses
  ServerController,
  IWGlobal,
  IWBaseForm,
  SyncObjs, UAJUREP01, DateUtils, FIWLogin, Unit3;


//Needed to serialize Rave'e Report generation
var GRaveLock: TCriticalSection;

procedure TIWForm1.IWButton1Click(Sender: TObject);
var
  LFile: string;
  LURL: string;
  LOptions: string;
  LWindowName, pRuta: string;
  LrvConnection: TRvDataSetConnection;
  pFechaTope, pFechaIni: TDateTime;
begin

  pFechaTope := Date - UserSession.DiasReporte;

  if EncodeDate(TIWDateSelector1.Year, TIWDateSelector1.Month, TIWDateSelector1.Day) < pFechaTope then begin
    lblError.Visible := true;
    Exit;
  end;

  lblError.Visible := false;

  //Prepare the Report-Engine

  LFile := 'Rep01.pdf';
  //Protect the PDF-File by wrting it to a non-guessable session directory
  //CleanUp is done in ServerController's OnClose event - having a subdir for each
  //session simplifies cleanup
  pRuta := GServerController.FilesDir + WebApplication.AppID + PATHDELIM + LFile;
  //Make sure the directory exists
  ForceDirectories(ExtractFileDir(pRuta));

  FREP01 := TFREP01.Create(nil);

  FREP01.rep01(EncodeDate(TIWDateSelector1.Year, TIWDateSelector1.Month, TIWDateSelector1.Day), EncodeDate(TIWDateSelector2.Year, TIWDateSelector2.Month, TIWDateSelector2.Day), pRuta);
  FREP01.Free;

  //Prepare a popup window that shows the Report-PDF
  LWindowName := 'Report';
  LOptions := 'scrollbars=yes,width=800,height=600';
  //Serve the PDF from the virtual FilesNC directory to prevent browsers from caching it
  LURL := WebApplication.AppURLBase + '/filesNC/' + WebApplication.AppID + '/' + LFile;

  AddToInitProc('NewWindow("' + LURL + '", "' + LWindowName + '","' + LOptions + '");');
end;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
  TIWDateSelector1.Year := CurrentYear;
  TIWDateSelector1.Month := MonthOf(Date);
  TIWDateSelector1.Day := DayOf(Date);

  TIWDateSelector2.Year := CurrentYear;
  TIWDateSelector2.Month := MonthOf(Date);
  TIWDateSelector2.Day := DayOf(Date);

  lblEstacion.Caption := UserSession.Estacion;
end;

procedure TIWForm1.Move(AFormClass: TIWAppFormClass);
begin
  // Release the current form
  // Note that Intraweb keeps track of which forms exist
  TIWAppForm(WebApplication.ActiveForm).Release;
  // Create the next form
  AFormClass.Create(WebApplication).Show;

end;

procedure TIWForm1.IWAppFormAfterRender(Sender: TObject);
begin
  if (UserSession.EnSesion = false) then
    Move(TIWForm2);
end;

procedure TIWForm1.btnMenuClick(Sender: TObject);
begin
  Move(TIWForm3);
end;

initialization
 // TIWForm1.SetAsMainForm;
  GRaveLock := TCriticalSection.Create;

finalization
  GRaveLock.Free;

end.

