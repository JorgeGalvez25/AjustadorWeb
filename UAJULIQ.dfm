object FAJULIQ: TFAJULIQ
  Left = 567
  Top = 278
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Ajustar a Liquidaciones'
  ClientHeight = 97
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 60
    Height = 13
    Caption = 'Fecha Inicial'
  end
  object Label2: TLabel
    Left = 147
    Top = 8
    Width = 55
    Height = 13
    Caption = 'Fecha Final'
  end
  object deFechaInicial: TDateTimePicker
    Left = 8
    Top = 24
    Width = 86
    Height = 21
    Date = 41243.487547766210000000
    Time = 41243.487547766210000000
    TabOrder = 0
  end
  object btnAjustar: TButton
    Left = 68
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Ajustar'
    ModalResult = 1
    TabOrder = 2
    OnClick = btnAjustarClick
  end
  object deFechaFinal: TDateTimePicker
    Left = 147
    Top = 24
    Width = 86
    Height = 21
    Date = 41243.487547766210000000
    Time = 41243.487547766210000000
    TabOrder = 1
  end
  object btnCancelar: TButton
    Left = 158
    Top = 56
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    ModalResult = 2
    TabOrder = 3
    OnClick = btnCancelarClick
  end
end
