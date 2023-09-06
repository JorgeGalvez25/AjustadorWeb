object FAJUCONSFECHA: TFAJUCONSFECHA
  Left = 444
  Top = 204
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Obtener Fecha a Omitir'
  ClientHeight = 389
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cal1: TMonthCalendar
    Left = 24
    Top = 8
    Width = 372
    Height = 313
    Date = 40217.521788252310000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object pnl1: TPanel
    Left = 0
    Top = 329
    Width = 423
    Height = 60
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      423
      60)
    object btnAceptar: TButton
      Left = 243
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Aceptar'
      ModalResult = 1
      TabOrder = 0
    end
    object btnCancelar: TButton
      Left = 331
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
