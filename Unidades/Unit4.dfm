object IWForm4: TIWForm4
  Left = 0
  Top = 0
  Width = 555
  Height = 400
  RenderInvisibleControls = False
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brGecko, brOpera, brSafari]
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
  DesignLeft = 248
  DesignTop = 176
  object IWButton1: TIWButton
    Left = 382
    Top = 151
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
    Width = 102
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
    Caption = 'Rep02'
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
    Left = 392
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
  end
  object edtHoraIni: TTIWAdvTimeEdit
    Left = 344
    Top = 93
    Width = 121
    Height = 21
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
    FocusColor = clWhite
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtHoraIni'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 4
    AdvanceOnReturn = False
    BorderColor = clBlack
    BorderWidth = 1
    ButtonDownImage.Stretch = False
    ButtonDownImage.Frame = 0
    ButtonUpImage.Stretch = False
    ButtonUpImage.Frame = 0
    Color = clWhite
    Flat = False
    SelectAll = False
    ShowSeconds = False
    SubmitOnReturn = False
    Hour = 6
    Minutes = 0
    Seconds = 0
    TimeSeparator = ':'
  end
  object edtHoraFin: TTIWAdvTimeEdit
    Left = 344
    Top = 125
    Width = 121
    Height = 21
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
    FocusColor = clWhite
    DoSubmitValidation = True
    Editable = True
    NonEditableAsLabel = True
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'TIWAdvTimeEdit1'
    MaxLength = 0
    ReadOnly = False
    Required = False
    ScriptEvents = <>
    SubmitOnAsyncEvent = True
    TabOrder = 5
    AdvanceOnReturn = False
    BorderColor = clBlack
    BorderWidth = 1
    ButtonDownImage.Stretch = False
    ButtonDownImage.Frame = 0
    ButtonUpImage.Stretch = False
    ButtonUpImage.Frame = 0
    Color = clWhite
    Flat = False
    SelectAll = False
    ShowSeconds = False
    SubmitOnReturn = False
    Hour = 6
    Minutes = 0
    Seconds = 0
    TimeSeparator = ':'
  end
end
