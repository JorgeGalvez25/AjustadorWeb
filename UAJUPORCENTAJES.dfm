object FAJUPORCENTAJES: TFAJUPORCENTAJES
  Left = 283
  Top = 165
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'PORCENTAJES'
  ClientHeight = 137
  ClientWidth = 195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 34
    Top = 8
    Width = 57
    Height = 13
    Caption = 'Combustible'
  end
  object Label2: TLabel
    Left = 104
    Top = 8
    Width = 51
    Height = 13
    Caption = 'Porcentaje'
  end
  object Label3: TLabel
    Left = 52
    Top = 32
    Width = 39
    Height = 13
    Alignment = taRightJustify
    Caption = 'Magna'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 43
    Top = 56
    Width = 48
    Height = 13
    Alignment = taRightJustify
    Caption = 'Premium'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 55
    Top = 80
    Width = 36
    Height = 13
    Alignment = taRightJustify
    Caption = 'Diesel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtPorcentajeMagna: TEdit
    Left = 104
    Top = 28
    Width = 33
    Height = 21
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 0
    Text = '0'
  end
  object txtPorcentajePremium: TEdit
    Left = 104
    Top = 52
    Width = 33
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object txtPorcentajeDiesel: TEdit
    Left = 104
    Top = 76
    Width = 33
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object btnAceptar: TButton
    Left = 16
    Top = 104
    Width = 75
    Height = 25
    Caption = '&Aceptar'
    TabOrder = 3
    OnClick = btnAceptarClick
  end
  object btnCancelar: TButton
    Left = 104
    Top = 104
    Width = 75
    Height = 25
    Caption = '&Cancelar'
    TabOrder = 4
    OnClick = btnCancelarClick
  end
end
