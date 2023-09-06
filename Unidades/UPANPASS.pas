unit UPANPASS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Shader, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxGraphics, Menus, cxLookAndFeelPainters, cxButtons, cxMemo,
  cxMaskEdit, cxDropDownEdit,FIBDataSet, cxCheckBox;

type
  TFPANPASS = class(TForm)
    Shader1: TShader;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtPassword: TcxTextEdit;
    cbMotivo: TcxComboBox;
    mmoMotivo: TcxMemo;
    btnAceptar: TcxButton;
    cxButton1: TcxButton;
    cbUsuarios: TcxComboBox;
    chkOtro: TcxCheckBox;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure chkOtroClick(Sender: TObject);
    procedure edtPasswordKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FPasa:Boolean;
    FPrivilegio:String;
    function password_correcto: Boolean;
  public
    { Public declarations }
    Accion : String;
    property pPasa:Boolean read FPasa write FPasa;
    property pPrivilegio:String read FPrivilegio write FPrivilegio;
  end;


  TUsuario = class(TObject)
     public
       Clave:Smallint;
       Usuario:String;
       PassWord:String;
  end;


procedure carga_lista_de_usuarios(Lista:TStrings);
function pasa_usuario(ADonde:String;APrivilegio:String = ''):boolean;


implementation

uses  FIBQuery, UPANFUN, UAJUMENU;

{$R *.dfm}


function pasa_usuario(ADonde:String;APrivilegio:String = ''):boolean;
var
  i:byte;
begin
  with TFPANPASS.Create(nil) do begin
     Accion:=ADonde;
     pPrivilegio := APrivilegio;

     ShowModal;

     Result := pPasa;

     Free;
  end;
end;

procedure carga_lista_de_usuarios(Lista:TStrings);
var
  Q_Lista:TPANQUERY;
  Usuario:TUsuario;
begin
  try
    Q_Lista:=TPANQUERY.Create('SELECT CLAVE,USUARIO,PASSW FROM DPVGUSUA WHERE ACTIVO=''Si''');
    Q_Lista.ExecQuery;

    Lista.Clear;

    while not Q_Lista.Eof do begin
      Usuario:=TUsuario.Create;
      Usuario.Clave    :=  Q_Lista.Fields[0].AsShort;
      Usuario.Usuario  :=  Q_Lista.Fields[1].AsString;
      Usuario.PassWord :=  Q_Lista.Fields[2].AsString;

      Lista.AddObject(Usuario.Usuario,Usuario);

      Q_Lista.Next;
    end;

  finally
    Q_Lista.Free;
  end;
end;


procedure TFPANPASS.FormDestroy(Sender: TObject);
begin
   libera_objetos_de_lista(cbUsuarios.Properties.Items);
end;

procedure TFPANPASS.FormCreate(Sender: TObject);
begin
     carga_lista_de_usuarios(cbUsuarios.Properties.Items);
     cbUsuarios.ItemIndex := 0;
end;

function TFPANPASS.password_correcto: Boolean;
begin
   Result := edtPassword.Text = TUsuario(cbUsuarios.Properties.Items.Objects[cbUsuarios.ItemIndex]).PassWord;
end;

procedure TFPANPASS.btnAceptarClick(Sender: TObject);
var
  Usuario:Integer;
  St:TStringStream;
begin
  Usuario := TUsuario(cbUsuarios.Properties.Items.Objects[cbUsuarios.ItemIndex]).Clave;
  if (pPrivilegio <> '') and (Usuario > 1) then
    if not tiene_privilegio(Usuario,pPrivilegio) then begin
      Application.MessageBox('Usuario no tiene privilegios','Error',0 + MB_ICONERROR);
      Exit;
    end;


  if password_correcto then begin
    pPasa := True;
    try
      if chkOtro.Checked then
         St:=TStringStream.Create(mmoMotivo.Lines.Text)
      else
         St:=TStringStream.Create(cbMotivo.Text);
      graba_bitacora(Usuario,Accion,St);
    finally
      St.Free;
    end;  
    Close;
  end
  else begin
    Application.MessageBox('Password incorrecto','Error',0 + MB_ICONERROR);
    edtPassword.SetFocus;
  end;
end;

procedure TFPANPASS.cxButton1Click(Sender: TObject);
begin
   pPasa := False;
   Close;
end;

procedure TFPANPASS.chkOtroClick(Sender: TObject);
begin
   mmoMotivo.Enabled := chkOtro.Checked;
   cbMotivo.Enabled  := not chkOtro.Checked;
end;

procedure TFPANPASS.edtPasswordKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    cbMotivo.SetFocus;
end;

end.
