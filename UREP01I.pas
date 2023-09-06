unit UREP01I;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TFREP01I = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FREP01I: TFREP01I;

implementation

uses UAJUREP01;

{$R *.dfm}

end.
