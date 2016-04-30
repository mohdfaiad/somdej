inherited frmStProductData: TfrmStProductData
  Caption = #3619#3627#3633#3626#3619#3606#3618#3609#3605#3660'/'#3629#3640#3611#3585#3619#3603#3660'/'#3623#3633#3626#3604#3640
  ClientHeight = 555
  ClientWidth = 1042
  Position = poDesigned
  ExplicitWidth = 1042
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 257
    Width = 1042
    Height = 240
    TabOrder = 1
    ExplicitTop = 209
    ExplicitWidth = 1025
    ExplicitHeight = 315
    object UniGroupBox1: TUniGroupBox
      Left = 1
      Top = 1
      Width = 362
      Height = 238
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
      object UniLabel4: TUniLabel
        Left = 14
        Top = 34
        Width = 51
        Height = 13
        Caption = #3619#3634#3588#3634#3605#3657#3609#3607#3640#3609
        ParentFont = False
        TabOrder = 1
      end
      object UniLabel5: TUniLabel
        Left = 14
        Top = 59
        Width = 40
        Height = 13
        Caption = #3619#3634#3588#3634#3586#3634#3618
        ParentFont = False
        TabOrder = 2
      end
      object UniLabel6: TUniLabel
        Left = 14
        Top = 84
        Width = 67
        Height = 13
        Caption = #3619#3634#3588#3634#3586#3634#3618' Fleet'
        ParentFont = False
        TabOrder = 3
      end
      object UniLabel7: TUniLabel
        Left = 138
        Top = 12
        Width = 46
        Height = 13
        Caption = #3627#3609#3656#3623#3618#3627#3621#3633#3585
        ParentFont = False
        TabOrder = 4
      end
      object UniLabel8: TUniLabel
        Left = 238
        Top = 10
        Width = 44
        Height = 13
        Caption = #3627#3609#3656#3623#3618#3618#3656#3629#3618
        ParentFont = False
        TabOrder = 5
      end
      object UniLabel9: TUniLabel
        Left = 14
        Top = 111
        Width = 76
        Height = 13
        Caption = #3623#3591#3648#3591#3636#3609' Campaign'
        ParentFont = False
        TabOrder = 6
      end
      object EdtUC1PM1: TUniEdit
        Tag = 9
        Left = 109
        Top = 30
        Width = 113
        Height = 21
        Hint = #3623#3591#3648#3591#3636#3609
        HelpType = htKeyword
        HelpKeyword = 'UC1PM1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 7
        Color = clWindow
        OnExit = EdtUC1PM1Exit
      end
      object EdtUC2PM1: TUniEdit
        Tag = 9
        Left = 228
        Top = 30
        Width = 113
        Height = 21
        Hint = #3623#3591#3648#3591#3636#3609
        HelpType = htKeyword
        HelpKeyword = 'UC2PM1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 8
        Color = clWindow
        OnExit = EdtUC2PM1Exit
      end
      object EdtUP1PM1: TUniEdit
        Tag = 9
        Left = 109
        Top = 57
        Width = 113
        Height = 21
        Hint = #3623#3591#3648#3591#3636#3609
        HelpType = htKeyword
        HelpKeyword = 'UP1PM1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 9
        Color = clWindow
        OnExit = EdtUP1PM1Exit
      end
      object EdtUP2PM1: TUniEdit
        Tag = 9
        Left = 228
        Top = 57
        Width = 113
        Height = 21
        Hint = #3623#3591#3648#3591#3636#3609
        HelpType = htKeyword
        HelpKeyword = 'UP2PM1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 10
        Color = clWindow
        OnExit = EdtUP2PM1Exit
      end
      object EdtUF1PM1: TUniEdit
        Tag = 9
        Left = 109
        Top = 81
        Width = 113
        Height = 21
        Hint = #3623#3591#3648#3591#3636#3609
        HelpType = htKeyword
        HelpKeyword = 'UF1PM1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 11
        Color = clWindow
        OnExit = EdtUF1PM1Exit
      end
      object EdtUF2PM1: TUniEdit
        Tag = 9
        Left = 228
        Top = 81
        Width = 113
        Height = 21
        Hint = #3623#3591#3648#3591#3636#3609
        HelpType = htKeyword
        HelpKeyword = 'UF2PM1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 12
        Color = clWindow
        OnExit = EdtUF2PM1Exit
      end
      object EdtFAMPM1: TUniEdit
        Tag = 9
        Left = 109
        Top = 108
        Width = 113
        Height = 21
        Hint = #3623#3591#3648#3591#3636#3609
        HelpType = htKeyword
        HelpKeyword = 'FAMPM1'
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 13
        Color = clWindow
        OnExit = EdtFAMPM1Exit
      end
    end
    object UniGroupBox2: TUniGroupBox
      Left = 362
      Top = 1
      Width = 361
      Height = 238
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 2
      DesignSize = (
        361
        238)
      object UniLabel10: TUniLabel
        Left = 14
        Top = 35
        Width = 24
        Height = 13
        Caption = #3650#3585#3604#3633#3591
        ParentFont = False
        TabOrder = 1
      end
      object UniLabel11: TUniLabel
        Left = 14
        Top = 59
        Width = 54
        Height = 13
        Caption = #3648#3585#3655#3610' STOCK'
        ParentFont = False
        TabOrder = 2
      end
      object UniLabel12: TUniLabel
        Left = 14
        Top = 83
        Width = 99
        Height = 13
        Caption = #3611#3619#3632#3617#3634#3603#3605#3656#3635#3626#3640#3604#3607#3637#3656#3626#3633#3591#3595#3639#3657#3629
        ParentFont = False
        TabOrder = 3
      end
      object DbCT1: TUniDBEdit
        Tag = 9
        Left = 121
        Top = 83
        Width = 181
        Height = 21
        DataField = 'CT1PM1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 4
        Color = clWindow
      end
      object UniLabel14: TUniLabel
        Left = 14
        Top = 107
        Width = 42
        Height = 13
        Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
        ParentFont = False
        TabOrder = 5
      end
      object DbACC: TUniDBEdit
        Tag = 9
        Left = 121
        Top = 107
        Width = 136
        Height = 21
        DataField = 'ACCPM1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 6
        Color = clWindow
      end
      object CmbWHS: TUniDBLookupComboBox
        Tag = 9
        Left = 121
        Top = 35
        Width = 181
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'WHSPM1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 7
      end
      object CmbSTK: TUniDBLookupComboBox
        Tag = 9
        Left = 121
        Top = 59
        Width = 181
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'STKPM1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 8
      end
      object UniLabel13: TUniLabel
        Left = 14
        Top = 134
        Width = 174
        Height = 13
        Caption = '* '#3585#3619#3603#3637' FIX ASSET '#3592#3635#3609#3623#3609#3611#3637#3588#3636#3604#3588#3656#3634#3648#3626#3639#3656#3629#3617
        ParentFont = False
        Font.Color = clRed
        TabOrder = 9
      end
      object DbDPC: TUniDBEdit
        Tag = 9
        Left = 214
        Top = 132
        Width = 88
        Height = 21
        DataField = 'DPCPM1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 10
        Color = clWindow
      end
      object BtnSelectAccount: TUniButton
        Left = 264
        Top = 107
        Width = 38
        Height = 23
        Caption = '...'
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 11
        OnClick = BtnSelectAccountClick
      end
    end
    object UniGroupBox3: TUniGroupBox
      Left = 723
      Top = 1
      Width = 319
      Height = 238
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 3
      object UniLabel15: TUniLabel
        Left = 14
        Top = 34
        Width = 66
        Height = 13
        Caption = #3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634#3618#3656#3629#3618
        ParentFont = False
        TabOrder = 1
      end
      object UniLabel16: TUniLabel
        Left = 14
        Top = 58
        Width = 20
        Height = 13
        Caption = #3618#3637#3656#3627#3657#3629
        ParentFont = False
        TabOrder = 2
      end
      object UniLabel17: TUniLabel
        Left = 14
        Top = 84
        Width = 13
        Height = 13
        Caption = #3595#3637#3619#3637#3656
        ParentFont = False
        TabOrder = 3
      end
      object CmbITS: TUniDBLookupComboBox
        Tag = 9
        Left = 121
        Top = 34
        Width = 181
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'ITSPM1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 4
      end
      object CmbBRD: TUniDBLookupComboBox
        Tag = 9
        Left = 121
        Top = 58
        Width = 181
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'BRDPM1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 5
      end
      object UniLabel18: TUniLabel
        Left = 14
        Top = 111
        Width = 108
        Height = 13
        Caption = '* '#3585#3619#3603#3637#3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634#3619#3606#3618#3609#3605#3660
        ParentFont = False
        TabOrder = 6
      end
      object UniLabel19: TUniLabel
        Left = 14
        Top = 133
        Width = 22
        Height = 13
        Caption = #3648#3585#3637#3618#3619#3660
        ParentFont = False
        TabOrder = 7
      end
      object CmbGEA: TUniDBLookupComboBox
        Tag = 9
        Left = 120
        Top = 133
        Width = 181
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'GEAPM1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 8
      end
      object UniLabel20: TUniLabel
        Left = 14
        Top = 158
        Width = 82
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3585#3619#3632#3610#3629#3585#3626#3641#3610
        ParentFont = False
        TabOrder = 9
      end
      object DbCAS: TUniDBEdit
        Tag = 9
        Left = 120
        Top = 158
        Width = 181
        Height = 21
        DataField = 'CASPM1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 10
        Color = clWindow
      end
      object CmbSRS: TUniDBLookupComboBox
        Tag = 9
        Left = 121
        Top = 84
        Width = 181
        Height = 21
        ListField = 'DESCRIPTION'
        KeyField = 'CODE'
        ListFieldIndex = 0
        DataField = 'SRSPM1'
        DataSource = dsgrid
        ParentFont = False
        TabOrder = 11
      end
      object UniLabel23: TUniLabel
        Left = 14
        Top = 185
        Width = 75
        Height = 13
        Caption = #3648#3588#3619#3639#3656#3629#3591#3618#3609#3605#3660' ('#3595#3637#3595#3637')'
        ParentFont = False
        TabOrder = 12
      end
      object DbPWR: TUniDBEdit
        Tag = 9
        Left = 120
        Top = 185
        Width = 181
        Height = 21
        DataField = 'PWRPM1'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 13
        Color = clWindow
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 518
    Width = 1042
    TabOrder = 2
    ExplicitTop = 518
    ExplicitWidth = 1042
    inherited imgBotton: TUniImage
      Width = 1042
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
      ExplicitWidth = 1042
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 960
      ExplicitLeft = 960
    end
    inherited btnConfirm: TUniButton
      Left = 879
      ExplicitLeft = 879
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1042
    Height = 257
    TabOrder = 0
    ExplicitTop = 5
    ExplicitWidth = 1042
    ExplicitHeight = 257
    object UniLabel28: TUniLabel
      Left = 18
      Top = 17
      Width = 47
      Height = 13
      Caption = #3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
      ParentFont = False
      TabOrder = 1
    end
    object UniLabel1: TUniLabel
      Left = 20
      Top = 43
      Width = 45
      Height = 13
      Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      ParentFont = False
      TabOrder = 2
    end
    object DbITN: TUniDBEdit
      Tag = 9
      Left = 130
      Top = 43
      Width = 197
      Height = 21
      DataField = 'ITNPM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 3
      Color = clWindow
    end
    object UniLabel29: TUniLabel
      Left = 20
      Top = 101
      Width = 62
      Height = 13
      Caption = #3594#3639#3656#3629' '#3616#3634#3625#3634#3652#3607#3618
      ParentFont = False
      TabOrder = 4
    end
    object DbTNM: TUniDBEdit
      Tag = 9
      Left = 130
      Top = 101
      Width = 404
      Height = 21
      DataField = 'TNMPM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
    end
    object UniLabel30: TUniLabel
      Left = 19
      Top = 125
      Width = 75
      Height = 13
      Caption = #3594#3639#3656#3629' '#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
      ParentFont = False
      TabOrder = 6
    end
    object DbENM: TUniDBEdit
      Tag = 9
      Left = 130
      Top = 125
      Width = 404
      Height = 21
      DataField = 'ENMPM1'
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
      Left = 23
      Top = 70
      Width = 75
      Height = 13
      Caption = #3619#3641#3611#3649#3610#3610'(MODEL)'
      ParentFont = False
      TabOrder = 8
    end
    object DbMNM: TUniDBEdit
      Tag = 9
      Left = 130
      Top = 70
      Width = 197
      Height = 21
      DataField = 'MNMPM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 9
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 19
      Top = 172
      Width = 60
      Height = 13
      Caption = #3627#3609#3656#3623#3618#3609#3633#3585#3627#3621#3633#3585
      ParentFont = False
      TabOrder = 10
    end
    object UniLabel27: TUniLabel
      Left = 94
      Top = 173
      Width = 20
      Height = 13
      Caption = #3652#3607#3618
      ParentFont = False
      TabOrder = 11
    end
    object UniLabel31: TUniLabel
      Left = 320
      Top = 173
      Width = 33
      Height = 13
      Caption = #3629#3633#3591#3585#3620#3625
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel26: TUniLabel
      Left = 18
      Top = 200
      Width = 58
      Height = 13
      Caption = #3627#3609#3656#3623#3618#3609#3633#3610#3618#3656#3629#3618
      ParentFont = False
      TabOrder = 13
    end
    object UniLabel21: TUniLabel
      Left = 92
      Top = 200
      Width = 20
      Height = 13
      Caption = #3652#3607#3618
      ParentFont = False
      TabOrder = 14
    end
    object UniLabel22: TUniLabel
      Left = 320
      Top = 200
      Width = 33
      Height = 13
      Caption = #3629#3633#3591#3585#3620#3625
      ParentFont = False
      TabOrder = 15
    end
    object UniLabel34: TUniLabel
      Left = 20
      Top = 226
      Width = 52
      Height = 13
      Caption = #3592#3635#3609#3623#3609#3607#3629#3609
      ParentFont = False
      TabOrder = 16
    end
    object CmbITC: TUniDBLookupComboBox
      Tag = 9
      Left = 130
      Top = 16
      Width = 196
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'ITCPM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 17
    end
    object PnImg: TUniPanel
      Left = 735
      Top = 43
      Width = 284
      Height = 205
      BorderStyle = ubsInset
      Color = clBtnFace
      TabOrder = 18
      object ViewImage: TUniImage
        Left = 1
        Top = 1
        Width = 282
        Height = 203
        Center = True
        Stretch = True
        Proportional = True
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Transparent = False
      end
    end
    object EdtCVTPM1: TUniEdit
      Tag = 9
      Left = 130
      Top = 227
      Width = 159
      Height = 21
      Hint = #3623#3591#3648#3591#3636#3609
      HelpType = htKeyword
      HelpKeyword = 'CVTPM1'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 19
      Color = clWindow
      OnExit = EdtCVTPM1Exit
    end
    object DbUT1: TUniDBEdit
      Tag = 9
      Left = 130
      Top = 173
      Width = 159
      Height = 21
      DataField = 'UT1PM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 20
      Color = clWindow
    end
    object DbUE1: TUniDBEdit
      Tag = 9
      Left = 385
      Top = 173
      Width = 149
      Height = 21
      DataField = 'UE1PM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 21
      Color = clWindow
    end
    object DbUT2: TUniDBEdit
      Tag = 9
      Left = 130
      Top = 200
      Width = 159
      Height = 21
      DataField = 'UT2PM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 22
      Color = clWindow
    end
    object DbUE2: TUniDBEdit
      Tag = 9
      Left = 385
      Top = 200
      Width = 149
      Height = 21
      DataField = 'UE2PM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 23
      Color = clWindow
    end
    object UniLabel24: TUniLabel
      Left = 737
      Top = 17
      Width = 30
      Height = 13
      Caption = #3626#3606#3634#3609#3632
      ParentFont = False
      TabOrder = 24
    end
    object CmbSTS: TUniDBLookupComboBox
      Tag = 9
      Left = 838
      Top = 17
      Width = 181
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSPM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 25
    end
    object btnOpen: TUniBitBtn
      Left = 678
      Top = 222
      Width = 45
      Height = 25
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        180000000000000300003A0B00003A0B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF7088905672824E6777465C6C3F51613746562F3C4C27
        3141202636181B2B1010206F757FFF00FFFF00FFFF00FFFF00FF728A9290A0B0
        70B0D02098D02098D02098D02094CA208AB9207FA8207597207090204860FF00
        FFFF00FFFF00FFFF00FF778F9780C8E090A0B0A1E8FF8EE3FF7CDDFD6DD1F75F
        C5F251BAEC42AFE730A0E0206880505460FF00FFFF00FFFF00FF7C949C82E1FF
        90A0B0A5C4CDA1E8FF8EE3FF7CDDFD6DD1F75FC5F251BAEC42AFE730A0E02048
        60FF00FFFF00FFFF00FF8098A095E5FF80C8E090A0B0B4EDFFA1E8FF8EE3FF7C
        DDFD6DD1F75FC5F251BAEC42AFE7206880505460FF00FFFF00FF859DA5A6EAFF
        95E5FF90A0B0A5C4CDB4EDFFA1E8FF8EE3FF7CDDFD6DD1F75FC5F251BAEC30A0
        E0204860FF00FFFF00FF8AA2AAB8EEFFA6EAFF80C8E090A0B0C0F0FF80E0FF80
        E0FF80E0FF80E0FF80E0FF80E0FF80E0FF50A8D0567282FF00FF8FA7AFC0F0FF
        B8EEFFA6EAFF90B0C090B0C090B0C090B0C08DACBB88A6B3829FAC7D98A47892
        9C738B94718993FF00FF90A8B0C0F0FFC0F0FFB8EEFFA6EAFF95E5FF82E1FF74
        D6FA66CBF459C1EF4BB6EA3EABE5708890FF00FFFF00FFFF00FF90A8B0C0F0FF
        C0F0FFC0F0FFB8EEFFA6EAFF7088907088907088907088907088907088907088
        90FF00FFFF00FFFF00FF90A8B08DB6C6C0F0FFC0F0FFC0F0FF708890FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FF983000983000983000983000FF00FF90A8B0
        88A0A87A929A708890FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF983000BE713C983000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFBE713C983000983000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF983000BE713CFF00FFBE71
        3C983000FF00FF983000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF983000983000983000FF00FFFF00FFFF00FF}
      TabOrder = 26
      OnClick = btnOpenClick
    end
  end
  inherited pnUser: TUniPanel
    Top = 497
    Width = 1042
    ExplicitTop = 497
    ExplicitWidth = 1042
  end
  object dsgrid: TDataSource
    Left = 472
    Top = 448
  end
  object FileUpload01: TUniFileUpload
    OnCompleted = FileUpload01Completed
    MaxAllowedSize = 10485760
    Title = 'Upload'
    Messages.Uploading = 'Uploading...'
    Messages.PleaseWait = 'Please Wait'
    Messages.Cancel = 'Cancel'
    Messages.Processing = 'Processing...'
    Messages.UploadError = 'Upload Error'
    Messages.Upload = 'Upload'
    Messages.NoFileError = 'Please Select a File'
    Left = 760
    Top = 144
  end
  object dsImageRef: TDataSource
    Left = 760
    Top = 72
  end
end
