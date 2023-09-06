object IWForm1: TIWForm1
  Left = 0
  Top = 0
  Width = 554
  Height = 454
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  Title = 'Rave Demo'
  SupportedBrowsers = [brNetscape7, brIE, brOpera, brNetscape6]
  OnAfterRender = IWAppFormAfterRender
  OnCreate = IWAppFormCreate
  AllowPageAccess = True
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 365
  DesignTop = 201
  object IWButton1: TIWButton
    Left = 232
    Top = 159
    Width = 83
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Caption = 'Generar'
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'IWButton1'
    ScriptEvents = <>
    TabOrder = 0
    OnClick = IWButton1Click
  end
  object FechaInicial: TIWLabel
    Left = 24
    Top = 95
    Width = 85
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'FechaInicial'
    Caption = 'Fecha Inicial:'
    RawText = False
  end
  object lbl1: TIWLabel
    Left = 24
    Top = 127
    Width = 80
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'FechaInicial'
    Caption = 'Fecha Final:'
    RawText = False
  end
  object lbl2: TIWLabel
    Left = 16
    Top = 47
    Width = 100
    Height = 37
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.FontFamily = 'Arial, Sans-Serif, Verdana'
    Font.FontVariant = 'Bold'
    Font.Size = 24
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'lbl2'
    Caption = 'Rep01'
    RawText = False
  end
  object TIWDateSelector1: TTIWDateSelector
    Left = 112
    Top = 92
    Width = 208
    Height = 24
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    Day = 1
    Month = 1
    NameOfMonths.Strings = (
      'Enero'
      'Febrero'
      'Marzo'
      'Abril'
      'Mayo'
      'Junio'
      'Julio'
      'Agosto'
      'Septiembre'
      'Octubre'
      'Noviembre'
      'Diciembre')
    ShowDay = True
    ShowYear = True
    Style = dpMonthDayYear
    TabOrder = 1
    Year = 2009
    YearFrom = 2009
    YearTo = 2014
  end
  object TIWDateSelector2: TTIWDateSelector
    Left = 112
    Top = 124
    Width = 208
    Height = 24
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    BGColor = clNone
    Day = 1
    Month = 1
    NameOfMonths.Strings = (
      'Enero'
      'Febrero'
      'Marzo'
      'Abril'
      'Mayo'
      'Junio'
      'Julio'
      'Agosto'
      'Septiembre'
      'Octubre'
      'Noviembre'
      'Diciembre')
    ShowDay = True
    ShowYear = True
    Style = dpMonthDayYear
    TabOrder = 2
    Year = 2009
    YearFrom = 2009
    YearTo = 2014
  end
  object lblEstacion: TIWLabel
    Left = 16
    Top = 24
    Width = 72
    Height = 16
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'lblEstacion'
    Caption = 'lblEstacion'
    RawText = False
  end
  object btnMenu: TIWButton
    Left = 336
    Top = 56
    Width = 75
    Height = 25
    Cursor = crAuto
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Caption = 'Men'#250
    DoSubmitValidation = True
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnMenu'
    ScriptEvents = <>
    TabOrder = 3
    OnClick = btnMenuClick
  end
  object lblError: TIWLabel
    Left = 24
    Top = 200
    Width = 261
    Height = 24
    Cursor = crAuto
    Visible = False
    IW50Hint = False
    ParentShowHint = False
    ShowHint = True
    ZIndex = 0
    RenderSize = True
    StyleRenderOptions.RenderSize = True
    StyleRenderOptions.RenderPosition = True
    StyleRenderOptions.RenderFont = True
    StyleRenderOptions.RenderZIndex = True
    StyleRenderOptions.RenderVisibility = True
    StyleRenderOptions.RenderStatus = True
    StyleRenderOptions.RenderAbsolute = True
    Alignment = taLeftJustify
    BGColor = clNone
    Font.Color = clWebRED
    Font.Size = 14
    Font.Style = []
    NoWrap = False
    ConvertSpaces = False
    HasTabOrder = False
    FriendlyName = 'lblError'
    Caption = 'Rango de fecha incorrecto!!!'
    RawText = False
  end
end
