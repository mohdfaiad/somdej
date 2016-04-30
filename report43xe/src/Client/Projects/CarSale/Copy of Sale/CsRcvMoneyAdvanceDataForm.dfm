inherited frmCsRcvMoneyAdvanceData: TfrmCsRcvMoneyAdvanceData
  Caption = #3648#3591#3636#3609#3619#3633#3610#3649#3607#3609#3621#3656#3623#3591#3627#3609#3657#3634
  ClientHeight = 650
  ClientWidth = 948
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 956
  ExplicitHeight = 684
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 61
    Width = 948
    Height = 520
    TabOrder = 1
    ExplicitLeft = -144
    ExplicitTop = 64
    ExplicitWidth = 948
    ExplicitHeight = 540
    object UniPanel1: TUniPanel
      Left = 1
      Top = 1
      Width = 946
      Height = 161
      BorderStyle = ubsNone
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
      object PnDtl1: TUniPanel
        Left = 0
        Top = 0
        Width = 317
        Height = 161
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 1
        ExplicitLeft = 8
        ExplicitHeight = 328
        object UniLabel4: TUniLabel
          Left = 12
          Top = 12
          Width = 45
          Height = 13
          Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel1: TUniLabel
          Left = 12
          Top = 63
          Width = 21
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ParentFont = False
          TabOrder = 2
        end
        object UniDBEdit5: TUniDBEdit
          Left = 94
          Top = 7
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 3
          Color = clWindow
        end
        object UniDBEdit7: TUniDBEdit
          Left = 94
          Top = 57
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 4
          Color = clWindow
        end
        object UniDBEdit2: TUniDBEdit
          Left = 94
          Top = 81
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 5
          Color = clWindow
        end
        object UniLabel7: TUniLabel
          Left = 12
          Top = 108
          Width = 30
          Height = 13
          Caption = #3592#3633#3591#3627#3623#3633#3604
          ParentFont = False
          TabOrder = 6
        end
        object UniDBLookupComboBox9: TUniDBLookupComboBox
          Tag = 9
          Left = 94
          Top = 106
          Width = 198
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 7
        end
        object UniLabel22: TUniLabel
          Left = 12
          Top = 132
          Width = 40
          Height = 13
          Caption = #3650#3607#3619#3624#3633#3614#3607#3660
          ParentFont = False
          TabOrder = 8
        end
        object UniDBEdit3: TUniDBEdit
          Left = 94
          Top = 131
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 9
          Color = clWindow
        end
        object UniLabel9: TUniLabel
          Left = 12
          Top = 35
          Width = 14
          Height = 13
          Caption = #3594#3639#3656#3629
          ParentFont = False
          TabOrder = 10
        end
        object UniDBEdit28: TUniDBEdit
          Left = 94
          Top = 32
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 11
          Color = clWindow
        end
      end
      object PnDtl2: TUniPanel
        Left = 317
        Top = 0
        Width = 314
        Height = 161
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 2
        object UniLabel10: TUniLabel
          Left = 11
          Top = 12
          Width = 40
          Height = 13
          Caption = #3594#3635#3619#3632#3650#3604#3618
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel17: TUniLabel
          Left = 11
          Top = 39
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel20: TUniLabel
          Left = 11
          Top = 63
          Width = 91
          Height = 13
          Caption = #3613#3634#3585#3648#3586#3657#3634#3626#3617#3640#3604#3608#3609#3634#3588#3634#3619
          ParentFont = False
          TabOrder = 3
        end
        object UniDBEdit4: TUniDBEdit
          Left = 104
          Top = 7
          Width = 192
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 4
          Color = clWindow
        end
        object UniDBEdit6: TUniDBEdit
          Left = 104
          Top = 32
          Width = 192
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 5
          Color = clWindow
        end
        object UniDBEdit8: TUniDBEdit
          Left = 105
          Top = 57
          Width = 191
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 6
          Color = clWindow
        end
        object UniLabel3: TUniLabel
          Left = 11
          Top = 86
          Width = 43
          Height = 13
          Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          ParentFont = False
          TabOrder = 7
        end
        object UniDBMemo2: TUniDBMemo
          Left = 12
          Top = 103
          Width = 284
          Height = 49
          TabOrder = 8
          Color = clWindow
        end
      end
      object PnDtl3: TUniPanel
        Left = 631
        Top = 0
        Width = 315
        Height = 161
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        TabOrder = 3
        object UniLabel12: TUniLabel
          Left = 14
          Top = 60
          Width = 24
          Height = 13
          Caption = #3626#3634#3586#3634
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel14: TUniLabel
          Left = 14
          Top = 89
          Width = 44
          Height = 13
          Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel15: TUniLabel
          Left = 14
          Top = 113
          Width = 64
          Height = 13
          Caption = #3623#3633#3609#3588#3619#3610#3585#3635#3627#3609#3604
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel23: TUniLabel
          Left = 14
          Top = 12
          Width = 18
          Height = 13
          Caption = #3648#3594#3655#3588
          ParentFont = False
          TabOrder = 4
        end
        object UniDBEdit10: TUniDBEdit
          Left = 106
          Top = 8
          Width = 179
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 5
          Color = clWindow
        end
        object UniLabel44: TUniLabel
          Left = 14
          Top = 37
          Width = 35
          Height = 13
          Caption = #3608#3609#3634#3588#3634#3619
          ParentFont = False
          TabOrder = 6
        end
        object UniDBEdit25: TUniDBEdit
          Left = 106
          Top = 34
          Width = 179
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 7
          Color = clWindow
        end
        object UniDBEdit9: TUniDBEdit
          Left = 106
          Top = 61
          Width = 179
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 8
          Color = clWindow
        end
        object UniDBEdit13: TUniDBEdit
          Left = 106
          Top = 85
          Width = 179
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 9
          Color = clWindow
        end
        object UniDateTimePicker1: TUniDateTimePicker
          Left = 106
          Top = 110
          Width = 162
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 10
          ParentColor = False
          Color = clWhite
        end
      end
    end
    object UniDBGrid1: TUniDBGrid
      Left = 1
      Top = 439
      Width = 946
      Height = 81
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      StripeRows = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 2
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3621#3635#3604#3633#3610
          Title.Font.Charset = THAI_CHARSET
          Width = 36
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3656#3623#3618#3591#3634#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 133
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
          Width = 135
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 191
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
          Title.Font.Charset = THAI_CHARSET
          Width = 124
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3591#3609#3648#3591#3636#3609#3648#3604#3610#3636#3605
          Title.Font.Charset = THAI_CHARSET
          Width = 134
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3588#3619#3604#3636#3605
          Width = 130
          Visible = True
          Expanded = False
        end>
    end
    object UniDBGrid2: TUniDBGrid
      Left = 1
      Top = 161
      Width = 946
      Height = 139
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      StripeRows = False
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      TabOrder = 3
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3649#3612#3609#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 36
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3588#3635#3586#3629
          Title.Font.Charset = THAI_CHARSET
          Width = 104
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Width = 114
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607
          Title.Font.Charset = THAI_CHARSET
          Width = 78
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Title.Font.Charset = THAI_CHARSET
          Width = 81
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          Title.Font.Charset = THAI_CHARSET
          Width = 76
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 89
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607#3619#3633#3610#3648#3591#3636#3609
          Width = 78
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 91
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3588#3591#3648#3627#3621#3639#3629
          Width = 131
          Visible = True
          Expanded = False
        end>
    end
    object UniDBGrid3: TUniDBGrid
      Left = 1
      Top = 300
      Width = 946
      Height = 139
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      StripeRows = False
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      ParentFont = False
      TabOrder = 4
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3649#3612#3609#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 36
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3619#3633#3610#3649#3607#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 104
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Width = 115
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3635#3619#3632#3650#3604#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 163
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3648#3594#3655#3588'<br>'#3608#3609#3634#3588#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 84
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3648#3594#3655#3588'<br>'#3626#3634#3586#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 88
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3648#3594#3655#3588'<br>'#3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
          Width = 84
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3648#3594#3655#3588'<br>'#3623#3633#3609#3588#3619#3610#3585#3635#3627#3609#3604
          Width = 78
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 129
          Visible = True
          Expanded = False
        end>
    end
  end
  inherited pnFooter: TUniPanel
    Top = 609
    Width = 948
    TabOrder = 2
    ExplicitTop = 609
    ExplicitWidth = 948
    inherited imgBotton: TUniImage
      Width = 946
      Picture.Data = {
        0954474946496D6167654749463837611B00C200F70000BE0F16FFFDFFFFFFFF
        FDFFFFFBFFFFF9FFFFDB464CE37176F2BEC1EBBBBCF1BBBDEDC3C3F3C2C4F4C6
        C8F5CACCF3C8C5F5CED0F6D1D3F7D3D5F7D5D6F7D7D8F8D9DAF9DCDDF9DFE0F9
        E1E2FAE3E4FBE5E6FBE7E8FBE9EAFBEBECFBEDEEFDEFEFFDF2F2FDF6F6FFF9F9
        FDFDFDFFFBFDFFFFFCFEF2F6FDFFFDFEFEF9FFFEF6FBFBFCF6F9FAF9F9FAFBFF
        FCFAFBF4F9FFFCF6FFFFF2FFFEFAFEF6F1FFF9ECFEFCFFFBF5F4FDF4FAFFF9FF
        F6FCF6F7F9000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000002C000000001B00C200
        87BE0F16FFFDFFFFFFFFFDFFFFFBFFFFF9FFFFDB464CE37176F2BEC1EBBBBCF1
        BBBDEDC3C3F3C2C4F4C6C8F5CACCF3C8C5F5CED0F6D1D3F7D3D5F7D5D6F7D7D8
        F8D9DAF9DCDDF9DFE0F9E1E2FAE3E4FBE5E6FBE7E8FBE9EAFBEBECFBEDEEFDEF
        EFFDF2F2FDF6F6FFF9F9FDFDFDFFFBFDFFFFFCFEF2F6FDFFFDFEFEF9FFFEF6FB
        FBFCF6F9FAF9F9FAFBFFFCFAFBF4F9FFFCF6FFFFF2FFFEFAFEF6F1FFF9ECFEFC
        FFFBF5F4FDF4FAFFF9FFF6FCF6F7F90000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0008FF000D081C48B0A0418307122A5CC8B06143060922268048712245061731
        6A64E0C0E2C6040B34866410B2A4C68E0E386E5CC932A54B952F5DCAE4E8A0A6
        CD9B3873EADCC933424E9F401D44085A93A8040B42872A5DCAB4A9D3A74F2D28
        951AC182D4AB4DA96A1D8AF56AD7AA56BF86B50A16EC58AF66CF564D7BB6ADDB
        B770E38ECD60816EDDBB1AEE66A0BB572FDFBD743D58102CF8C387C175012B5E
        0C183161AB84F77A604C7932610D863558969CC183E5CF9E4177FEA0B973E7CD
        A84D9FFE6CD870E8D7B063C3CED05AB66DDBAD5DC7CE119A37EE0F38727FF060
        9806F11C1F6C10A7F1C1B880E61E9E7F10F05C000D1CD5A71BCE1E5C808714DA
        A56BFF370C1EBC77EFC1B583EFBE9DFA74EAD8B1BF9F9E02F9F9E8D1A7E34821
        9F7B8AEACFF5D7DF7BD41568E0810826A8E0820C36E8E083104628E184145668
        E1851866A8E1861C76E8E187208628E28824968861741BD260A284386077E07F
        13B6A7E27F3456E8620A386E688300394298430EF00970A37511AA4864814646
        F81F0D2AC6E762920FDAC06490D441E9600A34EC68A48B474228E5964276F9E0
        9253868964845216C8A5950DF6982497145A592384D8E5809D8A3BF2D8E383C1
        2539238C749A69248CDFB18820A013C2B9A2830462C8E6A290462AE9A494566A
        E9A59866AAE9A69C76EAE9A7A0862AEAA8A4966AEAA9A8A6AAEAAAACB6EAEAAB
        B0C6212AEBACB4D66AEBADB8E6AAEBAEBCF6EAEBAFA33A24ECB00A1D64ECB1C8
        267B6C40003B}
      ExplicitWidth = 946
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 866
      ExplicitLeft = 866
    end
    inherited btnConfirm: TUniButton
      Left = 785
      ExplicitLeft = 785
    end
  end
  inherited pnHeader: TUniPanel
    Width = 948
    Height = 61
    BorderStyle = ubsFrameLowered
    TabOrder = 0
    ExplicitWidth = 948
    ExplicitHeight = 61
    object UniLabel2: TUniLabel
      Left = 647
      Top = 7
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 1
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 422
      Top = 7
      Width = 192
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 2
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Tag = 9
      Left = 736
      Top = 7
      Width = 181
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel8: TUniLabel
      Left = 328
      Top = 7
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 4
    end
    object UniLabel5: TUniLabel
      Left = 13
      Top = 7
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 5
    end
    object DbStatus: TUniDBEdit
      Left = 95
      Top = 7
      Width = 214
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel6: TUniLabel
      Left = 13
      Top = 34
      Width = 110
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629#3619#3606#3618#3609#3605#3660
      ParentFont = False
      TabOrder = 7
    end
    object UniDBEdit1: TUniDBEdit
      Left = 143
      Top = 31
      Width = 166
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 8
      Color = clWindow
    end
    object UniLabel13: TUniLabel
      Left = 329
      Top = 34
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 9
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 423
      Top = 31
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 10
      ParentColor = False
      Color = clWhite
    end
    object UniLabel11: TUniLabel
      Left = 646
      Top = 31
      Width = 83
      Height = 13
      Caption = #3626#3606#3634#3609#3632#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
      ParentFont = False
      TabOrder = 11
    end
    object UniDBEdit26: TUniDBEdit
      Left = 736
      Top = 31
      Width = 181
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 12
      Color = clWindow
    end
  end
  inherited pnUser: TUniPanel
    Top = 581
    Width = 948
  end
end
