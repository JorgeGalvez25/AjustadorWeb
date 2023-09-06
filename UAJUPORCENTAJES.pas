unit UAJUPORCENTAJES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFAJUPORCENTAJES = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtPorcentajeMagna: TEdit;
    txtPorcentajePremium: TEdit;
    txtPorcentajeDiesel: TEdit;
    btnAceptar: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    porMagna, porcPremium, porcDiesel: Double;
    dialogResult : Boolean;
    procedure LlenarDatos(pMagna, pPremium, pDiesel : Double);
  end;

var
  FAJUPORCENTAJES: TFAJUPORCENTAJES;

implementation

{$R *.dfm}

procedure TFAJUPORCENTAJES.btnCancelarClick(Sender: TObject);
begin
  dialogResult := False;
  Self.Close;
end;

procedure TFAJUPORCENTAJES.btnAceptarClick(Sender: TObject);
var
  magna, premium, diesel : Double;
begin
  magna := StrToFloatDef(txtPorcentajeMagna.Text, -1);
  premium := StrToFloatDef(txtPorcentajePremium.Text, -1);
  diesel := StrToFloatDef(txtPorcentajeDiesel.Text, -1);

  if (magna < 0) or (magna > 99) then begin
    MessageDlg('El porcentaje de magna es incorrecto', mtError, [mbOK], 0);
    txtPorcentajeMagna.SetFocus;
    txtPorcentajeMagna.SelectAll;
  end
  else if (premium < 0) or (premium > 99) then begin
    MessageDlg('El porcentaje de premium es incorrecto', mtError, [mbOK], 0);
    txtPorcentajePremium.SetFocus;
    txtPorcentajePremium.SelectAll;
  end
  else if (diesel < 0) or (diesel > 99) then begin
    MessageDlg('El porcentaje de diesel es incorrecto', mtError, [mbOK], 0);
    txtPorcentajeDiesel.SetFocus;
    txtPorcentajeDiesel.SelectAll;
  end
  else begin
    dialogResult := True;
    Self.Close;
  end;
end;

procedure TFAJUPORCENTAJES.LlenarDatos(pMagna, pPremium, pDiesel: Double);
begin
  txtPorcentajeMagna.Text := FormatFloat('0.0', pMagna);
  txtPorcentajePremium.Text := FormatFloat('0.0', pPremium);
  txtPorcentajeDiesel.Text := FormatFloat('0.0', pDiesel);
end;

procedure TFAJUPORCENTAJES.FormShow(Sender: TObject);
begin
  dialogResult := False;
end;

end.
