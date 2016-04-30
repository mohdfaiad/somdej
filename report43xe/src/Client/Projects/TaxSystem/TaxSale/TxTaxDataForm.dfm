inherited frmTxTaxData: TfrmTxTaxData
  Caption = #3651#3610#3626#3656#3591#3586#3629#3591'/'#3651#3610#3649#3592#3657#3591#3627#3609#3637#3657'->'#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637' ('#3616#3634#3625#3637#3595#3639#3657#3629')'
  ClientHeight = 650
  ClientWidth = 902
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 910
  ExplicitHeight = 677
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 90
    Width = 902
    Height = 491
    TabOrder = 1
    ExplicitLeft = -144
    ExplicitTop = 64
    ExplicitWidth = 948
    ExplicitHeight = 540
    object UniPanel1: TUniPanel
      Left = 1
      Top = 1
      Width = 900
      Height = 190
      BorderStyle = ubsNone
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
      object PnDtl1: TUniPanel
        Left = 0
        Top = 0
        Width = 317
        Height = 190
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 1
        ExplicitLeft = 8
        ExplicitHeight = 328
        object UniLabel1: TUniLabel
          Left = 12
          Top = 64
          Width = 21
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ParentFont = False
          TabOrder = 1
        end
        object UniDBEdit7: TUniDBEdit
          Left = 94
          Top = 58
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 2
          Color = clWindow
        end
        object UniDBEdit2: TUniDBEdit
          Left = 94
          Top = 82
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
        object UniLabel7: TUniLabel
          Left = 12
          Top = 109
          Width = 30
          Height = 13
          Caption = #3592#3633#3591#3627#3623#3633#3604
          ParentFont = False
          TabOrder = 4
        end
        object UniDBLookupComboBox9: TUniDBLookupComboBox
          Tag = 9
          Left = 94
          Top = 107
          Width = 198
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 5
        end
        object UniLabel22: TUniLabel
          Left = 12
          Top = 133
          Width = 36
          Height = 13
          Caption = #3611#3619#3632#3648#3607#3624
          ParentFont = False
          TabOrder = 6
        end
        object UniLabel9: TUniLabel
          Left = 12
          Top = 35
          Width = 14
          Height = 13
          Caption = #3594#3639#3656#3629
          ParentFont = False
          TabOrder = 7
        end
        object UniDBEdit28: TUniDBEdit
          Left = 94
          Top = 33
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 8
          Color = clWindow
        end
        object UniLabel3: TUniLabel
          Left = 12
          Top = 10
          Width = 62
          Height = 13
          Caption = #3619#3627#3633#3626#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
          ParentFont = False
          TabOrder = 9
        end
        object UniDBLookupComboBox8: TUniDBLookupComboBox
          Tag = 9
          Left = 94
          Top = 8
          Width = 198
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 10
        end
        object UniDBEdit5: TUniDBEdit
          Left = 94
          Top = 156
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
        object UniLabel4: TUniLabel
          Left = 12
          Top = 157
          Width = 56
          Height = 13
          Caption = #3610#3640#3588#3588#3621#3605#3636#3604#3605#3656#3629
          ParentFont = False
          TabOrder = 12
        end
        object UniDBLookupComboBox5: TUniDBLookupComboBox
          Tag = 9
          Left = 94
          Top = 132
          Width = 198
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 13
        end
      end
      object PnDtl2: TUniPanel
        Left = 317
        Top = 0
        Width = 314
        Height = 190
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 2
        object UniLabel10: TUniLabel
          Left = 12
          Top = 62
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel11: TUniLabel
          Left = 12
          Top = 35
          Width = 20
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel14: TUniLabel
          Left = 12
          Top = 10
          Width = 58
          Height = 13
          Caption = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel15: TUniLabel
          Left = 12
          Top = 133
          Width = 17
          Height = 13
          Caption = #3619#3623#3617
          ParentFont = False
          TabOrder = 4
        end
        object UniLabel16: TUniLabel
          Left = 12
          Top = 109
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 5
        end
        object UniLabel17: TUniLabel
          Left = 12
          Top = 87
          Width = 64
          Height = 13
          Caption = #3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
          ParentFont = False
          TabOrder = 6
        end
        object UniDBEdit3: TUniDBEdit
          Left = 94
          Top = 5
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 7
          Color = clWindow
        end
        object UniDateTimePicker1: TUniDateTimePicker
          Left = 94
          Top = 32
          Width = 138
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 8
          ParentColor = False
          Color = clWhite
        end
        object UniDBEdit8: TUniDBEdit
          Left = 94
          Top = 58
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
        object UniDBEdit9: TUniDBEdit
          Left = 94
          Top = 82
          Width = 171
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 10
          Color = clWindow
        end
        object UniDBEdit10: TUniDBEdit
          Left = 94
          Top = 107
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
        object UniDBEdit11: TUniDBEdit
          Left = 94
          Top = 132
          Width = 198
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 12
          Color = clWindow
        end
        object UniLabel18: TUniLabel
          Left = 278
          Top = 85
          Width = 11
          Height = 13
          Caption = '%'
          ParentFont = False
          TabOrder = 13
        end
      end
      object PnDtl3: TUniPanel
        Left = 631
        Top = 0
        Width = 269
        Height = 190
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        TabOrder = 3
        ExplicitTop = 5
        ExplicitWidth = 298
        object UniLabel19: TUniLabel
          Left = 35
          Top = 10
          Width = 24
          Height = 13
          Caption = #3626#3634#3586#3634
          ParentFont = False
          TabOrder = 1
        end
        object UniDBLookupComboBox3: TUniDBLookupComboBox
          Tag = 9
          Left = 88
          Top = 5
          Width = 181
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 2
        end
        object UniDBLookupComboBox4: TUniDBLookupComboBox
          Tag = 9
          Left = 88
          Top = 31
          Width = 181
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel20: TUniLabel
          Left = 35
          Top = 36
          Width = 28
          Height = 13
          Caption = #3649#3612#3609#3585
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object UniDBGrid1: TUniDBGrid
      Left = 1
      Top = 239
      Width = 900
      Height = 252
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
          Title.Caption = #3649#3612#3609#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 45
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3626#3656#3591#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 88
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Width = 128
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
          Title.Font.Charset = THAI_CHARSET
          Width = 96
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3609#3633#3604#3594#3635#3619#3632
          Title.Font.Charset = THAI_CHARSET
          Width = 129
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 93
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3604#3616#3634#3625#3637'<br>'#3651#3610#3626#3656#3591#3626#3636#3609#3588#3657#3634
          Width = 90
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3604#3616#3634#3625#3637'<br>'#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Width = 74
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634
          Width = 77
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3632#3610#3640
          Title.Font.Charset = THAI_CHARSET
          Width = 64
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
    object UniPanel2: TUniPanel
      Left = 1
      Top = 190
      Width = 900
      Height = 49
      BorderStyle = ubsSolid
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 3
      DesignSize = (
        900
        49)
      object lbSearch: TUniLabel
        Left = 19
        Top = 18
        Width = 26
        Height = 13
        Caption = #3588#3657#3609#3627#3634
        ParentFont = False
        Transparent = False
        TabOrder = 1
      end
      object edSearch: TUniEdit
        Left = 92
        Top = 13
        Width = 696
        Height = 21
        Hint = #3588#3657#3609#3627#3634
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        Color = clWindow
      end
      object btnSearch: TUniButton
        Left = 810
        Top = 13
        Width = 75
        Height = 25
        Caption = #3588#3657#3609#3627#3634
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 3
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 609
    Width = 902
    TabOrder = 2
    ExplicitTop = 609
    ExplicitWidth = 902
    inherited imgBotton: TUniImage
      Width = 900
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
      ExplicitWidth = 900
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 820
      ExplicitLeft = 820
    end
    inherited btnConfirm: TUniButton
      Left = 739
      ExplicitLeft = 739
    end
  end
  inherited pnHeader: TUniPanel
    Width = 902
    Height = 90
    BorderStyle = ubsFrameLowered
    TabOrder = 0
    ExplicitHeight = 90
    object UniLabel2: TUniLabel
      Left = 667
      Top = 9
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 1
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 412
      Top = 9
      Width = 175
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
      Left = 720
      Top = 9
      Width = 153
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel8: TUniLabel
      Left = 340
      Top = 9
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 4
    end
    object UniLabel5: TUniLabel
      Left = 13
      Top = 9
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 5
    end
    object DbStatus: TUniDBEdit
      Left = 115
      Top = 9
      Width = 203
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
      Top = 36
      Width = 92
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3621#3633#3610#3619#3634#3618#3585#3634#3619
      ParentFont = False
      TabOrder = 7
    end
    object UniDBEdit1: TUniDBEdit
      Left = 116
      Top = 33
      Width = 190
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
      Left = 340
      Top = 36
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 9
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 413
      Top = 33
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
  end
  inherited pnUser: TUniPanel
    Top = 581
    Width = 902
  end
end
