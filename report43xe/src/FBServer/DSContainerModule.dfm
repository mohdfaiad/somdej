object DSServiceContainer: TDSServiceContainer
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 801
  Width = 808
  object dsAppServer: TDSServer
    OnConnect = dsAppServerConnect
    OnDisconnect = dsAppServerDisconnect
    AutoStart = False
    HideDSAdmin = False
    Left = 46
    Top = 19
  end
  object dstcpServerTransport: TDSTCPServerTransport
    Port = 244
    PoolSize = 0
    Server = dsAppServer
    BufferKBSize = 32
    Filters = <>
    KeepAliveEnablement = kaDefault
    Left = 46
    Top = 81
  end
  object dshttpService: TDSHTTPService
    DSContext = 'datasnap/'
    RESTContext = 'rest/'
    CacheContext = 'cache/'
    Server = dsAppServer
    DSHostname = 'localhost'
    DSPort = 244
    Filters = <>
    CredentialsPassThrough = False
    DSAuthUser = 'admin'
    DSAuthPassword = 'admin'
    SessionTimeout = 1200000
    HttpPort = 8080
    Active = False
    Left = 46
    Top = 143
  end
  object tiIcon: TTrayIcon
    BalloonTitle = 'Application Server'
    BalloonFlags = bfInfo
    PopupMenu = pmMenus
    OnBalloonClick = tiIconBalloonClick
    OnDblClick = tiIconDblClick
    Left = 46
    Top = 267
  end
  object pmMenus: TPopupMenu
    Left = 46
    Top = 331
    object pmiShowMainForm: TMenuItem
      Caption = 'Show Server Form'
      Default = True
      OnClick = pmiShowMainFormClick
    end
    object pmiS1: TMenuItem
      Caption = '-'
    end
    object pmiServerStatus: TMenuItem
      Caption = 'Start/Stop'
      object pmiStart: TMenuItem
        Caption = 'Start'
        Checked = True
        GroupIndex = 1
        OnClick = pmiStartStopClick
      end
      object pmiStop: TMenuItem
        Caption = 'Stop'
        GroupIndex = 1
        OnClick = pmiStartStopClick
      end
    end
    object pmiS2: TMenuItem
      Caption = '-'
    end
    object pmiConfiguration: TMenuItem
      Caption = 'Setup Pool Seesoin and Configuration'
      object pmiDatabasePooling: TMenuItem
        Caption = 'Database Pooling'
        Checked = True
        OnClick = pmiDatabasePoolingClick
      end
      object pmiS4: TMenuItem
        Caption = '-'
      end
      object pmiSessionLifetime: TMenuItem
        Caption = 'Session Life Cycle'
        object pmiInvocation: TMenuItem
          Caption = 'Invocation'
          OnClick = pmiSessionLifeCycleClick
        end
        object pmiServer: TMenuItem
          Tag = 1
          Caption = 'Server'
          OnClick = pmiSessionLifeCycleClick
        end
        object pmiSession: TMenuItem
          Tag = 2
          Caption = 'Session'
          Checked = True
          OnClick = pmiSessionLifeCycleClick
        end
      end
      object pmiS5: TMenuItem
        Caption = '-'
      end
      object pmiDatabaseConfiguration: TMenuItem
        Caption = 'Database Configuration'
        OnClick = pmiDatabaseConfigurationClick
      end
    end
    object pmiAbout: TMenuItem
      Caption = 'About Application Server'
    end
    object pmiS3: TMenuItem
      Caption = '-'
    end
    object mmAlwaysOnTop: TMenuItem
      Caption = 'Always on top'
      OnClick = mmAlwaysOnTopClick
    end
    object pmiS6: TMenuItem
      Caption = '-'
    end
    object pmiExit: TMenuItem
      Caption = 'Close'
      OnClick = pmiExitClick
    end
  end
  object dssMainServerClass: TDSServerClass
    OnGetClass = dssMainServerClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 224
    Top = 19
  end
  object dssSetupClass: TDSServerClass
    OnGetClass = dssSetupClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 224
    Top = 99
  end
  object DBConnection: TSQLConnection
    ConnectionName = 'Devart MySQL Direct'
    DriverName = 'DevartMySQLDirect'
    GetDriverFunc = 'getSQLDriverMySQLDirect'
    LibraryName = 'dbexpmda40.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=192.168.1.18'
      'DataBase=bluecross_db'
      'DriverName=DevartMySQLDirect'
      'User_Name=uitsofts'
      'Password=uitsofts'
      'FetchAll=True'
      'EnableBoolean=False')
    VendorLib = 'not used'
    Left = 46
    Top = 395
  end
  object dssAuthorizedManagerServerClass: TDSServerClass
    OnGetClass = dssAuthorizedManagerServerClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 368
    Top = 19
  end
  object DssPurchaserClass: TDSServerClass
    OnGetClass = DssPurchaserClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 224
    Top = 179
  end
  object DssCarSaleClass: TDSServerClass
    OnGetClass = DssCarSaleClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 224
    Top = 251
  end
  object dssAssignWorkClass: TDSServerClass
    OnGetClass = dssAssignWorkClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 224
    Top = 531
  end
  object DssReceiveMoneyClass: TDSServerClass
    OnGetClass = DssReceiveMoneyClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 224
    Top = 331
  end
  object DssRegistationClass: TDSServerClass
    OnGetClass = DssRegistationClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 232
    Top = 395
  end
  object DssStockClass: TDSServerClass
    OnGetClass = DssStockClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 232
    Top = 467
  end
  object dssHISSetupClass: TDSServerClass
    OnGetClass = dssHISSetupClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 392
    Top = 163
  end
  object dssHIS43FileClass: TDSServerClass
    OnGetClass = dssHIS43FileClassGetClass
    Server = dsAppServer
    LifeCycle = 'Session'
    Left = 472
    Top = 283
  end
  object ADOConnection: TADOConnection
    CommandTimeout = 0
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=HIS'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 48
    Top = 448
  end
end
