inherited frmStStartProductData: TfrmStStartProductData
  Caption = #3588#3656#3634#3648#3619#3636#3656#3617#3605#3657#3609#3592#3635#3609#3623#3609#3619#3606#3618#3609#3605#3660'/'#3629#3640#3611#3585#3619#3603#3660'/'#3623#3633#3626#3604#3640
  ClientHeight = 414
  ClientWidth = 877
  Position = poScreenCenter
  NavigateKeys.Next.Key = 13
  ExplicitWidth = 885
  ExplicitHeight = 441
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 0
    Width = 877
    Height = 356
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = -24
    ExplicitWidth = 877
    ExplicitHeight = 405
    object UniLabel24: TUniLabel
      Left = 650
      Top = 23
      Width = 30
      Height = 13
      Caption = #3626#3606#3634#3609#3632
      ParentFont = False
      TabOrder = 1
    end
    object LbCreditLineDate: TUniLabel
      Left = 31
      Top = 129
      Width = 66
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
      ParentFont = False
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 31
      Top = 51
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel1: TUniLabel
      Left = 29
      Top = 78
      Width = 45
      Height = 13
      Caption = #3588#3621#3633#3591#3626#3636#3609#3588#3657#3634
      ParentFont = False
      TabOrder = 4
    end
    object BRNIM2: TUniDBLookupComboBox
      Tag = 9
      Left = 176
      Top = 51
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNIM2'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 5
    end
    object UniLabel7: TUniLabel
      Left = 374
      Top = 23
      Width = 65
      Height = 13
      Caption = #3618#3629#3604#3618#3585#3617#3634#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 6
    end
    object UniLabel8: TUniLabel
      Left = 31
      Top = 24
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel12: TUniLabel
      Left = 32
      Top = 294
      Width = 103
      Height = 13
      Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' ('#3627#3609#3656#3623#3618#3627#3621#3633#3585')'
      ParentFont = False
      TabOrder = 8
    end
    object UniLabel13: TUniLabel
      Left = 346
      Top = 295
      Width = 101
      Height = 13
      Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' ('#3627#3609#3656#3623#3618#3618#3656#3629#3618')'
      ParentFont = False
      TabOrder = 9
    end
    object CMPIM2: TUniDBEdit
      Tag = 9
      Left = 176
      Top = 24
      Width = 151
      Height = 21
      DataField = 'CMPIM2'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 10
      Color = clWindow
      ReadOnly = True
    end
    object IDTIM2: TUniDateTimePicker
      Tag = 9
      Left = 488
      Top = 23
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629
      DateTime = 41106.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 11
      ParentColor = False
      Color = clWhite
      OnChange = IDTIM2Change
    end
    object TNMPM1: TUniDBEdit
      Tag = 9
      Left = 434
      Top = 103
      Width = 389
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
    object ITNIM2: TUniDBEdit
      Tag = 9
      Left = 176
      Top = 103
      Width = 195
      Height = 21
      DataField = 'ITNIM2'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 13
      Color = clWindow
    end
    object UniLabel5: TUniLabel
      Left = 29
      Top = 103
      Width = 45
      Height = 13
      Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      ParentFont = False
      TabOrder = 14
    end
    object BtnSelectProduct: TUniButton
      Left = 379
      Top = 105
      Width = 49
      Height = 22
      Caption = '...'
      ParentFont = False
      TabOrder = 15
      OnClick = BtnSelectProductClick
    end
    object CmbSTS: TUniDBLookupComboBox
      Tag = 9
      Left = 712
      Top = 23
      Width = 113
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSIM2'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 16
    end
    object SERIM2: TUniDBEdit
      Tag = 9
      Left = 176
      Top = 129
      Width = 195
      Height = 21
      DataField = 'SERIM2'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 17
      Color = clWindow
    end
    object CT1IM2: TUniEdit
      Tag = 9
      Left = 176
      Top = 294
      Width = 151
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'CT1IM2'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 18
      Color = clWindow
      ReadOnly = True
    end
    object CT2IM2: TUniEdit
      Tag = 9
      Left = 490
      Top = 294
      Width = 151
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'CT2IM2'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 19
      Color = clWindow
      ReadOnly = True
    end
    object ENGIM2: TUniDBEdit
      Tag = 9
      Left = 176
      Top = 154
      Width = 195
      Height = 21
      DataField = 'ENGIM2'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 20
      Color = clWindow
    end
    object UC2IM2: TUniEdit
      Tag = 9
      Left = 490
      Top = 238
      Width = 151
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'UC2IM2'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 21
      Color = clWindow
      ReadOnly = True
    end
    object UC1IM2: TUniEdit
      Tag = 9
      Left = 175
      Top = 238
      Width = 151
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'UC1IM2'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 22
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel6: TUniLabel
      Left = 32
      Top = 240
      Width = 137
      Height = 13
      Caption = #3619#3634#3588#3634#3605#3657#3609#3607#3640#3609'/'#3627#3609#3656#3623#3618' ('#3627#3609#3656#3623#3618#3627#3621#3633#3585')'
      ParentFont = False
      TabOrder = 23
    end
    object COLIM2: TUniDBLookupComboBox
      Tag = 9
      Left = 176
      Top = 181
      Width = 151
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'COLIM2'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 24
    end
    object UniLabel10: TUniLabel
      Left = 349
      Top = 238
      Width = 135
      Height = 13
      Caption = #3619#3634#3588#3634#3605#3657#3609#3607#3640#3609'/'#3627#3609#3656#3623#3618' ('#3627#3609#3656#3623#3618#3618#3656#3629#3618')'
      ParentFont = False
      TabOrder = 25
    end
    object FWHIM2: TUniDBLookupComboBox
      Tag = 9
      Left = 176
      Top = 78
      Width = 252
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'FWHIM2'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 26
    end
    object UniLabel14: TUniLabel
      Left = 32
      Top = 154
      Width = 91
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591#3618#3609#3605#3660
      ParentFont = False
      TabOrder = 27
    end
    object UniLabel4: TUniLabel
      Left = 29
      Top = 181
      Width = 7
      Height = 13
      Caption = #3626#3637
      ParentFont = False
      TabOrder = 28
    end
    object UniLabel3: TUniLabel
      Left = 32
      Top = 265
      Width = 90
      Height = 13
      Caption = #3611#3619#3636#3617#3634#3603' ('#3627#3609#3656#3623#3618#3627#3621#3633#3585')'
      ParentFont = False
      TabOrder = 29
    end
    object UniLabel9: TUniLabel
      Left = 346
      Top = 265
      Width = 88
      Height = 13
      Caption = #3611#3619#3636#3617#3634#3603' ('#3627#3609#3656#3623#3618#3618#3656#3629#3618')'
      ParentFont = False
      TabOrder = 30
    end
    object QT1IM2: TUniEdit
      Tag = 9
      Left = 176
      Top = 265
      Width = 151
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'QT1IM2'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 31
      Color = clWindow
      OnExit = QT1IM2Exit
    end
    object QT2IM2: TUniEdit
      Tag = 9
      Left = 490
      Top = 265
      Width = 151
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'QT2IM2'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 32
      Color = clWindow
      OnExit = QT2IM2Exit
    end
  end
  inherited pnFooter: TUniPanel
    Top = 377
    Width = 877
    TabOrder = 2
    ExplicitTop = 377
    ExplicitWidth = 877
    inherited imgBotton: TUniImage
      Width = 875
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
      ExplicitWidth = 875
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 795
      Top = 3
      ExplicitLeft = 795
      ExplicitTop = 3
    end
    inherited btnConfirm: TUniButton
      Left = 714
      ExplicitLeft = 714
    end
  end
  inherited pnHeader: TUniPanel
    Width = 877
    Height = 0
    TabOrder = 0
    ExplicitWidth = 877
    ExplicitHeight = 0
  end
  inherited pnUser: TUniPanel
    Top = 356
    Width = 877
    ExplicitTop = 356
    ExplicitWidth = 877
  end
  object dsgrid: TDataSource
    Left = 416
    Top = 104
  end
end
