inherited frmPsRcvProductNoPoData: TfrmPsRcvProductNoPoData
  Caption = #3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634' '#3652#3617#3656#3617#3637#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
  ClientHeight = 629
  ClientWidth = 926
  Position = poScreenCenter
  NavigateKeys.Next.Key = 13
  ExplicitTop = -160
  ExplicitWidth = 926
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 137
    Width = 926
    Height = 434
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitTop = 134
    ExplicitWidth = 950
    ExplicitHeight = 575
    object GrpVno: TUniGroupBox
      Left = 7
      Top = 3
      Width = 446
      Height = 225
      Caption = #3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
      Align = alCustom
      TabOrder = 1
      object UniLabel5: TUniLabel
        Left = 28
        Top = 27
        Width = 89
        Height = 13
        Caption = #3619#3627#3633#3626#3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
        ParentFont = False
        TabOrder = 1
      end
      object DbvNOPT1: TUniDBEdit
        Tag = 9
        Left = 134
        Top = 27
        Width = 197
        Height = 21
        DataField = 'vNOPT1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 2
        Color = clWindow
      end
      object BtnSelectvno: TUniButton
        Left = 337
        Top = 26
        Width = 45
        Height = 22
        Caption = '...'
        ParentFont = False
        TabOrder = 3
        OnClick = BtnSelectvnoClick
      end
      object DbTNMVM1: TUniDBEdit
        Tag = 9
        Left = 134
        Top = 54
        Width = 248
        Height = 21
        DataField = 'TNMVM1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 4
        Color = clWindow
        ReadOnly = True
      end
      object UniLabel1: TUniLabel
        Left = 28
        Top = 81
        Width = 21
        Height = 13
        Caption = #3607#3637#3656#3629#3618#3641#3656
        ParentFont = False
        TabOrder = 5
      end
      object DbTa1_01: TUniDBEdit
        Tag = 9
        Left = 134
        Top = 81
        Width = 248
        Height = 21
        DataField = 'TA1VMA'
        DataSource = dsAddr01
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 6
        Color = clWindow
        ReadOnly = True
      end
      object DbTa2_01: TUniDBEdit
        Tag = 9
        Left = 134
        Top = 105
        Width = 248
        Height = 21
        DataField = 'TA2VMA'
        DataSource = dsAddr01
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 7
        Color = clWindow
        ReadOnly = True
      end
      object UniLabel8: TUniLabel
        Left = 28
        Top = 129
        Width = 30
        Height = 13
        Caption = #3592#3633#3591#3627#3623#3633#3604
        ParentFont = False
        TabOrder = 8
      end
      object CmbChg_01: TUniDBLookupComboBox
        Tag = 9
        Left = 134
        Top = 129
        Width = 248
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'CHGVMA'
        DataSource = dsAddr01
        ParentFont = False
        TabOrder = 9
      end
      object UniLabel18: TUniLabel
        Left = 28
        Top = 154
        Width = 35
        Height = 13
        Caption = #3612#3641#3657#3605#3636#3604#3605#3656#3629
        ParentFont = False
        TabOrder = 10
      end
      object UniLabel19: TUniLabel
        Left = 28
        Top = 54
        Width = 14
        Height = 13
        Caption = #3594#3639#3656#3629
        ParentFont = False
        TabOrder = 11
      end
      object CdsCPS: TUniDBLookupComboBox
        Tag = 9
        Left = 134
        Top = 156
        Width = 248
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'CPSVM1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 12
      end
    end
    object UniGroupBox1: TUniGroupBox
      Left = 459
      Top = 3
      Width = 458
      Height = 225
      Caption = #3629#3636#3609#3623#3629#3618#3595#3660
      TabOrder = 2
      object UniLabel4: TUniLabel
        Left = 38
        Top = 24
        Width = 40
        Height = 13
        Caption = #3629#3636#3609#3623#3629#3618#3595#3660
        ParentFont = False
        TabOrder = 1
      end
      object UniLabel9: TUniLabel
        Left = 38
        Top = 51
        Width = 20
        Height = 13
        Caption = #3623#3633#3609#3607#3637#3656
        ParentFont = False
        TabOrder = 2
      end
      object UniLabel20: TUniLabel
        Left = 38
        Top = 102
        Width = 86
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3629#3636#3609#3623#3629#3618#3595#3660
        ParentFont = False
        TabOrder = 3
      end
      object UniLabel21: TUniLabel
        Left = 38
        Top = 129
        Width = 64
        Height = 13
        Caption = #3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
        ParentFont = False
        TabOrder = 4
      end
      object UniLabel22: TUniLabel
        Left = 38
        Top = 78
        Width = 46
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
        ParentFont = False
        TabOrder = 5
      end
      object UniLabel24: TUniLabel
        Left = 38
        Top = 180
        Width = 76
        Height = 13
        Caption = #3611#3619#3632#3648#3616#3607#3629#3636#3609#3623#3629#3618#3595#3660
        ParentFont = False
        TabOrder = 6
      end
      object UniLabel23: TUniLabel
        Left = 38
        Top = 154
        Width = 46
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
        ParentFont = False
        TabOrder = 7
      end
      object RNOPT1: TUniDBEdit
        Tag = 9
        Left = 152
        Top = 23
        Width = 192
        Height = 21
        DataField = 'RNOPT1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 8
        Color = clWindow
      end
      object RDVPT1: TUniDateTimePicker
        Tag = 9
        Left = 152
        Top = 51
        Width = 151
        Height = 22
        Hint = #3623#3633#3609#3607#3637#3656
        DateTime = 41106.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniDate
        FirstDayOfWeek = dowLocaleDefault
        TabOrder = 9
        ParentColor = False
        Color = clWhite
        OnChange = RDVPT1Change
      end
      object RATPT1: TUniEdit
        Tag = 9
        Left = 152
        Top = 78
        Width = 192
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'RATPT1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 10
        Color = clWindow
        OnExit = RATPT1Exit
        OnKeyPress = RATPT1KeyPress
      end
      object VAMPT1: TUniEdit
        Tag = 9
        Left = 152
        Top = 154
        Width = 194
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'VAMPT1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 11
        Color = clWindow
        ReadOnly = True
      end
      object VPCPT1: TUniEdit
        Tag = 9
        Left = 240
        Top = 129
        Width = 105
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'VPCPT1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 12
        Color = clWindow
      end
      object UniLabel3: TUniLabel
        Left = 351
        Top = 129
        Width = 11
        Height = 13
        Caption = '%'
        ParentFont = False
        TabOrder = 13
      end
      object RdoTyp2: TUniRadioButton
        Left = 264
        Top = 180
        Width = 97
        Height = 17
        Enabled = False
        Checked = False
        Caption = #3651#3610#3626#3656#3591#3626#3636#3609#3588#3657#3634
        TabOrder = 14
      end
      object ChkVAT: TUniCheckBox
        Left = 152
        Top = 129
        Width = 82
        Height = 17
        Enabled = False
        Checked = True
        Caption = #3617#3637
        TabOrder = 15
      end
      object VATPT1: TUniCheckBox
        Left = 152
        Top = 105
        Width = 193
        Height = 17
        Enabled = False
        Checked = True
        Caption = #3619#3623#3617#3616#3634#3625#3637
        TabOrder = 16
      end
      object RdoTyp1: TUniRadioButton
        Left = 152
        Top = 180
        Width = 113
        Height = 17
        Enabled = False
        Checked = True
        Caption = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
        TabOrder = 17
      end
    end
    object UniGroupBox2: TUniGroupBox
      Left = 7
      Top = 234
      Width = 446
      Height = 204
      Caption = #3626#3636#3609#3588#3657#3634
      TabOrder = 3
      object UniLabel31: TUniLabel
        Left = 28
        Top = 19
        Width = 23
        Height = 13
        Caption = #3619#3640#3656#3609#3619#3606
        ParentFont = False
        TabOrder = 1
      end
      object CmbSRS: TUniDBLookupComboBox
        Tag = 9
        Left = 134
        Top = 19
        Width = 199
        Height = 21
        Hint = #3619#3640#3656#3609#3619#3606
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'SRSPT1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 2
      end
      object UniLabel32: TUniLabel
        Left = 28
        Top = 43
        Width = 30
        Height = 13
        Caption = #3619#3627#3633#3626#3619#3606
        ParentFont = False
        TabOrder = 3
      end
      object UniLabel33: TUniLabel
        Left = 28
        Top = 95
        Width = 7
        Height = 13
        Caption = #3626#3637
        ParentFont = False
        TabOrder = 4
      end
      object CmbCOL: TUniDBLookupComboBox
        Tag = 9
        Left = 134
        Top = 95
        Width = 199
        Height = 21
        Hint = 'Beg/End Mode'
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'COLPT1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 5
      end
      object UniLabel35: TUniLabel
        Left = 28
        Top = 124
        Width = 41
        Height = 13
        Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
        ParentFont = False
        TabOrder = 6
      end
      object UniLabel36: TUniLabel
        Left = 28
        Top = 148
        Width = 46
        Height = 13
        Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
        ParentFont = False
        TabOrder = 7
      end
      object SERPT1: TUniDBEdit
        Tag = 9
        Left = 134
        Top = 121
        Width = 252
        Height = 21
        DataField = 'SERPT1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 8
        Color = clWindow
      end
      object ENGPT1: TUniDBEdit
        Tag = 9
        Left = 134
        Top = 148
        Width = 252
        Height = 21
        DataField = 'ENGPT1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 9
        Color = clWindow
      end
      object ITNPT1: TUniDBEdit
        Tag = 9
        Left = 134
        Top = 43
        Width = 195
        Height = 21
        DataField = 'ITNPT1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 10
        Color = clWindow
      end
      object BtnSelectProduct: TUniButton
        Left = 336
        Top = 42
        Width = 49
        Height = 22
        Caption = '...'
        ParentFont = False
        TabOrder = 11
        OnClick = BtnSelectProductClick
      end
      object TNMPM1: TUniDBEdit
        Tag = 9
        Left = 134
        Top = 68
        Width = 252
        Height = 21
        DataField = 'TNMPM1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 12
        Color = clWindow
        ReadOnly = True
      end
      object UniLabel12: TUniLabel
        Left = 28
        Top = 68
        Width = 14
        Height = 13
        Caption = #3594#3639#3656#3629
        ParentFont = False
        TabOrder = 13
      end
    end
    object UniGroupBox3: TUniGroupBox
      Left = 459
      Top = 234
      Width = 458
      Height = 204
      Caption = #3592#3635#3609#3623#3609
      TabOrder = 4
      object UniLabel11: TUniLabel
        Left = 38
        Top = 95
        Width = 72
        Height = 13
        Caption = #3623#3633#3609#3607#3637#3656#3588#3619#3610#3585#3635#3627#3609#3604
        ParentFont = False
        TabOrder = 1
      end
      object DDTPT1: TUniDateTimePicker
        Tag = 9
        Left = 152
        Top = 96
        Width = 151
        Height = 22
        Hint = #3623#3633#3609#3607#3637#3588#3619#3610#3585#3635#3627#3609#3604
        DateTime = 41106.000000000000000000
        DateFormat = 'dd/MM/yyyy'
        TimeFormat = 'HH:mm:ss'
        Kind = tUniDate
        FirstDayOfWeek = dowLocaleDefault
        TabOrder = 2
        ParentColor = False
        Color = clWhite
        OnChange = DDTPT1Change
      end
      object UniLabel6: TUniLabel
        Left = 38
        Top = 44
        Width = 67
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3626#3640#3607#3608#3636
        ParentFont = False
        TabOrder = 3
      end
      object NETPT1: TUniEdit
        Tag = 9
        Left = 152
        Top = 43
        Width = 195
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'NETPT1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 4
        Color = clWindow
        ReadOnly = True
      end
      object UniLabel29: TUniLabel
        Left = 38
        Top = 20
        Width = 30
        Height = 13
        Caption = #3592#3635#3609#3623#3609
        ParentFont = False
        TabOrder = 5
      end
      object QR1PT1: TUniEdit
        Tag = 9
        Left = 152
        Top = 19
        Width = 149
        Height = 21
        HelpType = htKeyword
        HelpKeyword = 'QR1PT1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 6
        Color = clWindow
        ReadOnly = True
        OnExit = QR1PT1Exit
      end
      object CmbBRNFROM: TUniDBLookupComboBox
        Tag = 9
        Left = 153
        Top = 68
        Width = 192
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'FWHPT1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 7
      end
      object UniLabel10: TUniLabel
        Left = 38
        Top = 71
        Width = 24
        Height = 13
        Caption = #3650#3585#3604#3633#3591
        ParentFont = False
        TabOrder = 8
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 592
    Width = 926
    TabOrder = 2
    ExplicitTop = 592
    ExplicitWidth = 926
    DesignSize = (
      926
      37)
    inherited imgBotton: TUniImage
      Width = 926
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
      ExplicitTop = 0
      ExplicitWidth = 926
      ExplicitHeight = 37
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 844
      ExplicitLeft = 844
    end
    inherited btnConfirm: TUniButton
      Left = 763
      ExplicitLeft = 763
    end
  end
  inherited pnHeader: TUniPanel
    Width = 926
    Height = 137
    TabOrder = 0
    ExplicitTop = -1
    ExplicitWidth = 951
    ExplicitHeight = 137
    object UniLabel15: TUniLabel
      Left = 501
      Top = 16
      Width = 75
      Height = 13
      Caption = #3611#3619#3632#3648#3616#3607#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
      ParentFont = False
      TabOrder = 1
    end
    object UniLabel16: TUniLabel
      Left = 501
      Top = 43
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 2
    end
    object UniLabel17: TUniLabel
      Left = 40
      Top = 16
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 3
    end
    object lbSearch: TUniLabel
      Left = 39
      Top = 104
      Width = 61
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object EdtYptRcv: TUniEdit
      Tag = 9
      Left = 615
      Top = 16
      Width = 191
      Height = 21
      HelpType = htKeyword
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      Text = #3619#3606#3618#3609#3605#3660
      ParentFont = False
      TabOrder = 5
      Color = clWindow
      ReadOnly = True
    end
    object ddyyyy: TUniEdit
      Tag = 9
      Left = 615
      Top = 43
      Width = 191
      Height = 21
      HelpType = htKeyword
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      Text = '10/2555'
      ParentFont = False
      TabOrder = 6
      Color = clWindow
      ReadOnly = True
    end
    object CMPPT1: TUniDBEdit
      Tag = 9
      Left = 145
      Top = 16
      Width = 195
      Height = 21
      DataField = 'CMPPT1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 7
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 41
      Top = 43
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 8
    end
    object CmbBrn: TUniDBLookupComboBox
      Tag = 9
      Left = 145
      Top = 43
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNPT1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel14: TUniLabel
      Left = 39
      Top = 70
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 10
    end
    object DNOPT1: TUniDBEdit
      Tag = 9
      Left = 145
      Top = 104
      Width = 197
      Height = 21
      DataField = 'DNOPT1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 11
      Color = clWindow
    end
    object UniLabel7: TUniLabel
      Left = 504
      Top = 104
      Width = 55
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 12
    end
    object IDTPT1: TUniDateTimePicker
      Tag = 9
      Left = 615
      Top = 104
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      DateTime = 41106.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 13
      ParentColor = False
      Color = clWhite
      OnChange = IDTPT1Change
    end
    object CmbDEP: TUniDBLookupComboBox
      Tag = 9
      Left = 144
      Top = 70
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'DEPPT1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 14
    end
  end
  inherited pnUser: TUniPanel
    Top = 571
    Width = 926
    ExplicitTop = 571
    ExplicitWidth = 926
  end
  object dsgrid: TDataSource
    Left = 448
    Top = 88
  end
  object dsAddr01: TDataSource
    Left = 408
    Top = 272
  end
  object csPopUpAp: TUniScreenMask
    AttachedControl = BtnSelectvno
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3649#3626#3604#3591#3586#3657#3629#3617#3641#3621#3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
    Left = 408
    Top = 168
  end
  object csPopUpProduct: TUniScreenMask
    AttachedControl = BtnSelectProduct
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3649#3626#3604#3591#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
    Left = 408
    Top = 408
  end
end
