object frmMainServer: TfrmMainServer
  Left = 0
  Top = 0
  Caption = 'Bluecross XE Application Server.'
  ClientHeight = 595
  ClientWidth = 526
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = DSServiceContainer.pmMenus
  Position = poDesigned
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    526
    595)
  PixelsPerInch = 96
  TextHeight = 13
  object pcSetup: TPageControl
    Left = 8
    Top = 8
    Width = 510
    Height = 531
    ActivePage = tsServerConfig
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object tsServerConfig: TTabSheet
      Caption = 'Server Configuration'
      DesignSize = (
        502
        503)
      object pnServerObjects: TPanel
        Left = 5
        Top = 3
        Width = 494
        Height = 497
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        DesignSize = (
          494
          497)
        object lbServerConfigHeader1: TLabel
          Left = 2
          Top = 2
          Width = 490
          Height = 24
          Align = alTop
          AutoSize = False
          Caption = '   Session Life Cycle (Threading Model)'
          Color = clAppWorkSpace
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = 6
          ExplicitTop = 4
          ExplicitWidth = 497
        end
        object lbServerConfigHeader2: TLabel
          Left = 2
          Top = 197
          Width = 490
          Height = 24
          Align = alTop
          AutoSize = False
          Caption = 'Server Objects List'
          Color = clAppWorkSpace
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = -5
          ExplicitTop = 126
          ExplicitWidth = 431
        end
        object pnSessionLifeCycle: TPanel
          Left = 2
          Top = 26
          Width = 490
          Height = 171
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lbNoted: TLabel
            Left = 244
            Top = 9
            Width = 242
            Height = 13
            Caption = 'Do not change this value when server was started'
            WordWrap = True
          end
          object lbBufferKBSize: TLabel
            Left = 26
            Top = 60
            Width = 75
            Height = 13
            Caption = 'Buffer Size (KB)'
          end
          object Bevel1: TBevel
            Left = 16
            Top = 41
            Width = 465
            Height = 5
            Shape = bsTopLine
          end
          object lbPoolSize: TLabel
            Left = 26
            Top = 87
            Width = 42
            Height = 13
            Caption = 'Pool Size'
          end
          object lbMaxThread: TLabel
            Left = 24
            Top = 141
            Width = 62
            Height = 13
            Caption = 'Max Threads'
          end
          object lbPortNo: TLabel
            Left = 24
            Top = 114
            Width = 73
            Height = 13
            Caption = 'Port (DS/HTTP)'
          end
          object rblcInvocationMode: TRadioButton
            Left = 16
            Top = 6
            Width = 71
            Height = 17
            Caption = 'Invocation'
            TabOrder = 0
            OnClick = ServerClickChange
          end
          object rblcServerMode: TRadioButton
            Tag = 1
            Left = 108
            Top = 6
            Width = 49
            Height = 17
            Caption = 'Server'
            TabOrder = 1
            OnClick = ServerClickChange
          end
          object rblcSessionMode: TRadioButton
            Tag = 2
            Left = 178
            Top = 6
            Width = 57
            Height = 17
            Caption = 'Session'
            TabOrder = 2
            OnClick = ServerClickChange
          end
          object edBufferKBSize: TEdit
            Left = 116
            Top = 57
            Width = 85
            Height = 21
            MaxLength = 5
            TabOrder = 3
            OnChange = edConfigChange
            OnKeyPress = edBufferKBSizeKeyPress
          end
          object edPoolSize: TEdit
            Left = 116
            Top = 84
            Width = 85
            Height = 21
            MaxLength = 5
            TabOrder = 6
            OnChange = edConfigChange
            OnKeyPress = edBufferKBSizeKeyPress
          end
          object edMaxThread: TEdit
            Left = 116
            Top = 138
            Width = 84
            Height = 21
            MaxLength = 5
            TabOrder = 7
            OnChange = edConfigChange
            OnKeyPress = edBufferKBSizeKeyPress
          end
          object edPortNo: TEdit
            Left = 116
            Top = 111
            Width = 40
            Height = 21
            MaxLength = 5
            TabOrder = 4
            OnChange = edConfigChange
            OnKeyPress = edBufferKBSizeKeyPress
          end
          object edHTTPPortNo: TEdit
            Left = 160
            Top = 111
            Width = 40
            Height = 21
            MaxLength = 5
            TabOrder = 5
            OnChange = edConfigChange
            OnKeyPress = edBufferKBSizeKeyPress
          end
        end
        object lbServerClass: TListBox
          Left = 10
          Top = 227
          Width = 482
          Height = 231
          Anchors = [akLeft, akTop, akRight, akBottom]
          ItemHeight = 13
          TabOrder = 2
        end
        object btnStartServer: TButton
          Left = 330
          Top = 464
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Start ...'
          TabOrder = 3
          OnClick = btnStartServerClick
        end
        object btnStopServer: TButton
          Left = 411
          Top = 464
          Width = 75
          Height = 25
          Anchors = [akRight, akBottom]
          Caption = 'Stop ...'
          TabOrder = 4
          OnClick = btnStopServerClick
        end
        object cbAutoRun: TCheckBox
          Left = 6
          Top = 472
          Width = 219
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = 'Automatic running when Windows started'
          TabOrder = 1
          OnClick = cbAutoRunClick
        end
      end
    end
    object tsDBConfig: TTabSheet
      Caption = 'Database Configuration'
      ImageIndex = 1
      DesignSize = (
        502
        503)
      object pnDBConfiguration: TPanel
        Left = 5
        Top = 3
        Width = 494
        Height = 495
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        DesignSize = (
          494
          495)
        object lbHostName: TLabel
          Left = 24
          Top = 80
          Width = 52
          Height = 13
          Caption = 'Host Name'
        end
        object lbDBName: TLabel
          Left = 24
          Top = 107
          Width = 76
          Height = 13
          Caption = 'Database Name'
        end
        object lbUserName: TLabel
          Left = 24
          Top = 135
          Width = 52
          Height = 13
          Caption = 'User Name'
        end
        object lbUserPassword: TLabel
          Left = 24
          Top = 162
          Width = 46
          Height = 13
          Caption = 'Password'
        end
        object lbServerCharSet: TLabel
          Left = 25
          Top = 190
          Width = 102
          Height = 13
          Caption = 'Server Character Set'
        end
        object lbDBConfigureTitle: TLabel
          Left = 2
          Top = 2
          Width = 490
          Height = 24
          Align = alTop
          AutoSize = False
          Caption = '   Conection to MS Server'
          Color = clAppWorkSpace
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          ExplicitLeft = 0
          ExplicitTop = 10
          ExplicitWidth = 498
        end
        object lbDBConfigHeader: TLabel
          Left = 2
          Top = 245
          Width = 490
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          AutoSize = False
          Caption = '   Conection to AS/400 Database Server'
          Color = clAppWorkSpace
          Font.Charset = THAI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          Layout = tlCenter
          Visible = False
          ExplicitWidth = 497
        end
        object lbAS400HostName: TLabel
          Left = 24
          Top = 294
          Width = 52
          Height = 13
          Caption = 'Host Name'
          Visible = False
        end
        object lbAS400DBLibraryName: TLabel
          Left = 25
          Top = 321
          Width = 29
          Height = 13
          Caption = 'DB Lib'
          Visible = False
        end
        object lbAS400UserName: TLabel
          Left = 24
          Top = 374
          Width = 52
          Height = 13
          Caption = 'User Name'
          Visible = False
        end
        object lbAS400UserPassword: TLabel
          Left = 24
          Top = 401
          Width = 46
          Height = 13
          Caption = 'Password'
          Visible = False
        end
        object lbAS400ServerCharSet: TLabel
          Left = 25
          Top = 429
          Width = 102
          Height = 13
          Caption = 'Server Character Set'
          Visible = False
        end
        object lbAS400HPLibraryName: TLabel
          Left = 24
          Top = 348
          Width = 29
          Height = 13
          Caption = 'HP Lib'
          Visible = False
        end
        object cbDBPooling: TCheckBox
          Left = 24
          Top = 40
          Width = 153
          Height = 17
          Caption = 'Pooling database connection'
          Enabled = False
          TabOrder = 0
          OnClick = ServerClickChange
        end
        object edHostName: TEdit
          Left = 144
          Top = 77
          Width = 337
          Height = 21
          TabOrder = 1
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edDBName: TEdit
          Left = 144
          Top = 104
          Width = 337
          Height = 21
          TabOrder = 2
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edUserName: TEdit
          Left = 144
          Top = 132
          Width = 337
          Height = 21
          TabOrder = 3
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edUserPassword: TEdit
          Left = 144
          Top = 159
          Width = 337
          Height = 21
          PasswordChar = '*'
          TabOrder = 4
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edServerCharSet: TEdit
          Left = 145
          Top = 187
          Width = 336
          Height = 21
          TabOrder = 5
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object btnDBTestConnection: TButton
          Left = 376
          Top = 214
          Width = 105
          Height = 25
          Caption = '&Test Connection'
          TabOrder = 6
          OnClick = btnDBTestConnectionClick
        end
        object edAS400HostName: TEdit
          Left = 144
          Top = 291
          Width = 337
          Height = 21
          TabOrder = 7
          Visible = False
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edAS400DBLibraryName: TEdit
          Left = 144
          Top = 318
          Width = 337
          Height = 21
          TabOrder = 8
          Visible = False
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edAS400UserName: TEdit
          Left = 144
          Top = 371
          Width = 337
          Height = 21
          TabOrder = 9
          Visible = False
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edAS400UserPassword: TEdit
          Left = 144
          Top = 398
          Width = 337
          Height = 21
          PasswordChar = '*'
          TabOrder = 10
          Visible = False
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edAS400ServerCharSet: TEdit
          Left = 145
          Top = 426
          Width = 336
          Height = 21
          TabOrder = 11
          Visible = False
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object edAS400HPLibraryName: TEdit
          Left = 145
          Top = 345
          Width = 337
          Height = 21
          TabOrder = 12
          Visible = False
          OnChange = edConfigChange
          OnKeyPress = edDBConfigKeyPress
        end
        object btnAS400TestConnection: TButton
          Left = 376
          Top = 453
          Width = 105
          Height = 25
          Caption = '&Test Connection'
          TabOrder = 13
          Visible = False
          OnClick = btnAS400TestConnectionClick
        end
      end
    end
    object tsServerLog: TTabSheet
      Caption = 'Server Logging'
      ImageIndex = 2
      DesignSize = (
        502
        503)
      object lbServerLoggingHeader: TLabel
        Left = 0
        Top = 0
        Width = 502
        Height = 24
        Align = alTop
        AutoSize = False
        Caption = '   Server activities logging message'
        Color = clAppWorkSpace
        Font.Charset = THAI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
        ExplicitLeft = 2
        ExplicitTop = 3
        ExplicitWidth = 431
      end
      object lbCurrentActiveConnection: TLabel
        Left = 4
        Top = 29
        Width = 503
        Height = 19
        AutoSize = False
        Caption = ' Current Active Connection:'
        Color = clGradientActiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHighlight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        Layout = tlCenter
      end
      object lbCurrentActiveConnectionTotal: TLabel
        Left = 171
        Top = 32
        Width = 7
        Height = 13
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbLogMaxLines: TLabel
        Left = 129
        Top = 479
        Width = 53
        Height = 13
        Anchors = [akLeft, akBottom]
        Caption = 'Lines Limits'
      end
      object mmLog: TMemo
        Left = 5
        Top = 49
        Width = 494
        Height = 419
        Anchors = [akLeft, akTop, akRight, akBottom]
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object btnClearLog: TButton
        Left = 424
        Top = 473
        Width = 75
        Height = 25
        Anchors = [akRight, akBottom]
        Caption = 'Clear'
        TabOrder = 1
        OnClick = btnClearLogClick
      end
      object cbMsgOnScreen: TCheckBox
        Left = 4
        Top = 478
        Width = 103
        Height = 17
        Anchors = [akLeft, akBottom]
        Caption = 'On Screen Logon'
        TabOrder = 2
        OnClick = ServerClickChange
      end
      object edLogMaxLines: TEdit
        Left = 206
        Top = 476
        Width = 85
        Height = 21
        Anchors = [akLeft, akBottom]
        MaxLength = 5
        TabOrder = 3
        OnChange = edConfigChange
        OnKeyPress = edBufferKBSizeKeyPress
      end
    end
  end
  object btnOK: TButton
    Left = 281
    Top = 545
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&OK'
    TabOrder = 1
    OnClick = btnOKClick
  end
  object btnCancel: TButton
    Left = 362
    Top = 545
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Cancel'
    TabOrder = 2
    OnClick = btnCancelClick
  end
  object btnApply: TButton
    Left = 443
    Top = 545
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = '&Apply'
    Enabled = False
    TabOrder = 3
    OnClick = btnApplyClick
  end
  object stbStatus: TStatusBar
    Left = 0
    Top = 576
    Width = 526
    Height = 19
    Panels = <
      item
        Text = ' (C) 2014,UITSofts Co., Ltd.'
        Width = 200
      end
      item
        Text = 'Application Server'
        Width = 50
      end>
  end
end
