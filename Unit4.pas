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
    lblError: TIWLabel;
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure Move(AFormClass: TIWAppFormClass);
    procedure IWButton1Click(Sender: TObject);
  public
  end;

implementation

uses ServerController, UREP02I, DateUtils, Unit3, IWGlobal;

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

procedure TIWForm4.btnMenuClick(Sender: TObject);
begin
  Move(TIWForm3);
end;

procedure TIWForm4.Move(AFormClass: TIWAppFormClass);
begin
// Release the current form
  // Note that Intraweb keeps track of which forms exist
  TIWAppForm(WebApplication.ActiveForm).Release;
  // Create the next form
  AFormClass.Create(WebApplication).Show;
end;

procedure TIWForm4.IWButton1Click(Sender: TObject);
var
  LFile: string;
  LURL: string;
  LOptions: string;
  LWindowName, pRuta: string;
  pFechaTope: TDateTime;
begin
  pFechaTope := Date - UserSession.DiasReporte;

  if EncodeDate(TIWDateSelector1.Year, TIWDateSelector1.Month, TIWDateSelector1.Day) < pFechaTope then begin
    lblError.Visible := true;
    Exit;
  end;

  lblError.Visible := false;

  //Prepare the Report-Engine

  LFile := 'Rep02.pdf';
  //Protect the PDF-File by wrting it to a non-guessable session directory
  //CleanUp is done in ServerController's OnClose event - having a subdir for each
  //session simplifies cleanup
  pRuta := GServerController.FilesDir + WebApplication.AppID + PATHDELIM + LFile;
  //Make sure the directory exists
  ForceDirectories(ExtractFileDir(pRuta));

  FRep02 := TFRep02.Create(nil);
  FRep02.Ruta := pRuta;

  FRep02.cbFechaIni.Date := EncodeDateTime(TIWDateSelector1.Year, TIWDateSelector1.Month, TIWDateSelector1.Day, edtHoraIni.Hour, edtHoraIni.Minutes,0,0);
  FRep02.cbFechaFin.Date := EncodeDateTime(TIWDateSelector2.Year, TIWDateSelector2.Month, TIWDateSelector2.Day, edtHoraFin.Hour, edtHoraFin.Minutes,0,0);
  FRep02.btnAceptarClick(nil);
  FREP02.Free;

  //Prepare a popup window that shows the Report-PDF
  LWindowName := 'Report';
  LOptions := 'scrollbars=yes,width=800,height=600';
  //Serve the PDF from the virtual FilesNC directory to prevent browsers from caching it
  LURL := WebApplication.AppURLBase + '/filesNC/' + WebApplication.AppID + '/' + LFile;

  AddToInitProc('NewWindow("' + LURL + '", "' + LWindowName + '","' + LOptions + '");');
end;


end.
