object IWServerController: TIWServerController
  OldCreateOrder = False
  AuthBeforeNewSession = False
  AllowSubFolders = False
  AppName = 'MyApp'
  CacheExpiry = 120
  ComInitialization = ciNone
  Compression.Enabled = False
  Compression.Level = 6
  Description = 'My IntraWeb Application'
  DebugHTML = False
  Log = loNone
  EnableImageToolbar = False
  ExceptionDisplayMode = smAlert
  ExecCmd = 'EXEC'
  HistoryEnabled = False
  InternalFilesURL = '/'
  Browser32Behaviour.Netscape4As32 = True
  Browser32Behaviour.Netscape6As32 = True
  Browser32Behaviour.IExplorer4As32 = True
  PageTransitions = False
  Port = 8888
  ReEntryOptions.AutoCreateSession = False
  RestrictIPs = False
  RestrictSubnet = False
  RedirectMsgDelay = 0
  ServerResizeTimeout = 0
  SessionTrackingMethod = tmURL
  ShowResyncWarning = True
  ShowLoadingAnimation = True
  SessionTimeout = 10
  SupportedBrowsers = [brIE, brGecko, brOpera, brSafari]
  SpecialDeviceSupport = [brsIpod, brsIphone]
  SSLOptions.NonSSLRequest = nsAccept
  SSLOptions.Port = 0
  SSLOptions.SSLVersion = sslv3
  ThreadPoolSize = 32
  UnknownBrowserAction = ubReject
  Version = '9.0.42'
  OnNewSession = IWServerControllerBaseNewSession
  Left = 367
  Top = 314
  Height = 310
  Width = 342
end
