object FPANPASS: TFPANPASS
  Left = 484
  Top = 157
  BorderStyle = bsDialog
  Caption = 'Acceso'
  ClientHeight = 376
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 39
    Height = 13
    Caption = 'Usuario:'
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 57
    Height = 13
    Caption = 'Contrase'#241'a:'
  end
  object Label4: TLabel
    Left = 16
    Top = 128
    Width = 35
    Height = 13
    Caption = 'Motivo:'
  end
  object Shader1: TShader
    Left = 0
    Top = 0
    Width = 259
    Height = 41
    Align = alTop
    Caption = 'Shader1'
    TabOrder = 0
    FromColor = 4227327
    ToColor = 13990
    Direction = False
    Version = '1.1.0.0'
    object Label1: TLabel
      Left = 8
      Top = 4
      Width = 96
      Height = 32
      Caption = 'Acceso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object edtPassword: TcxTextEdit
    Left = 77
    Top = 92
    Properties.EchoMode = eemPassword
    TabOrder = 2
    OnKeyPress = edtPasswordKeyPress
    Width = 162
  end
  object cbMotivo: TcxComboBox
    Left = 77
    Top = 126
    Properties.Items.Strings = (
      'Configuraci'#243'n nueva'
      'Consulta de estado'
      'Falla en el sistema')
    TabOrder = 3
    Text = 'Configuraci'#243'n nueva'
    Width = 164
  end
  object mmoMotivo: TcxMemo
    Left = 16
    Top = 184
    Enabled = False
    TabOrder = 5
    Height = 145
    Width = 225
  end
  object btnAceptar: TcxButton
    Left = 73
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    Default = True
    TabOrder = 6
    OnClick = btnAceptarClick
  end
  object cxButton1: TcxButton
    Left = 160
    Top = 336
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 7
    OnClick = cxButton1Click
  end
  object cbUsuarios: TcxComboBox
    Left = 77
    Top = 58
    Properties.DropDownListStyle = lsFixedList
    TabOrder = 1
    Width = 164
  end
  object chkOtro: TcxCheckBox
    Left = 13
    Top = 159
    Caption = 'Otro'
    TabOrder = 4
    OnClick = chkOtroClick
    Width = 121
  end
end
