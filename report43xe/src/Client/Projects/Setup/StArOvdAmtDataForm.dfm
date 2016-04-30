inherited frmStArOvdAmtData: TfrmStArOvdAmtData
  Caption = #3618#3629#3604#3588#3657#3634#3591#3594#3635#3619#3632#3621#3641#3585#3627#3609#3637#3657
  ClientHeight = 456
  ClientWidth = 876
  Position = poScreenCenter
  ExplicitWidth = 884
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 0
    Width = 876
    Height = 415
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 0
    ExplicitWidth = 876
    ExplicitHeight = 415
    object LbCreditLineDate: TUniLabel
      Left = 31
      Top = 254
      Width = 66
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3638#3591
      ParentFont = False
      TabOrder = 3
    end
    object SERAM1: TUniDBEdit
      Tag = 9
      Left = 128
      Top = 254
      Width = 249
      Height = 21
      DataField = 'SERAM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 4
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 31
      Top = 51
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 5
    end
    object UniLabel1: TUniLabel
      Left = 29
      Top = 78
      Width = 84
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
      ParentFont = False
      TabOrder = 6
    end
    object CmbBrn: TUniDBLookupComboBox
      Tag = 9
      Left = 128
      Top = 51
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNAM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 2
      OnCloseUp = CmbBrnCloseUp
    end
    object UniLabel7: TUniLabel
      Left = 31
      Top = 112
      Width = 55
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel8: TUniLabel
      Left = 31
      Top = 24
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 8
    end
    object UniLabel9: TUniLabel
      Left = 30
      Top = 183
      Width = 64
      Height = 13
      Caption = #3611#3619#3632#3648#3616#3607#3621#3641#3585#3627#3609#3637#3657
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel4: TUniLabel
      Left = 30
      Top = 227
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 10
    end
    object CmbDEP: TUniDBLookupComboBox
      Tag = 9
      Left = 129
      Top = 227
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'DEPAM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 11
    end
    object UniLabel6: TUniLabel
      Left = 430
      Top = 183
      Width = 75
      Height = 13
      Caption = #3619#3627#3633#3626#3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel11: TUniLabel
      Left = 29
      Top = 285
      Width = 72
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3588#3619#3610#3585#3635#3627#3609#3604
      ParentFont = False
      TabOrder = 13
    end
    object UniLabel12: TUniLabel
      Left = 29
      Top = 311
      Width = 46
      Height = 13
      Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
      ParentFont = False
      TabOrder = 14
    end
    object UniLabel13: TUniLabel
      Left = 29
      Top = 337
      Width = 57
      Height = 13
      Caption = #3618#3629#3604#3588#3591#3648#3627#3621#3639#3629
      ParentFont = False
      TabOrder = 15
    end
    object CMPAM1: TUniDBEdit
      Tag = 9
      Left = 128
      Top = 24
      Width = 152
      Height = 21
      DataField = 'CMPAM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 0
      Color = clWindow
    end
    object DNOAM1: TUniDBEdit
      Tag = 9
      Left = 128
      Top = 78
      Width = 251
      Height = 21
      DataField = 'DNOAM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 16
      Color = clWindow
    end
    object IDTAM1: TUniDateTimePicker
      Tag = 9
      Left = 129
      Top = 112
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629
      DateTime = 41107.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 17
      ParentColor = False
      Color = clWhite
      OnChange = IDTAM1Change
    end
    object DbTNMCM1: TUniDBEdit
      Tag = 9
      Left = 386
      Top = 156
      Width = 389
      Height = 21
      DataField = 'TNMCM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 18
      Color = clWindow
      ReadOnly = True
    end
    object DbCNOAM1: TUniDBEdit
      Tag = 9
      Left = 128
      Top = 156
      Width = 195
      Height = 21
      DataField = 'CNOAM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 19
      Color = clWindow
    end
    object UniLabel5: TUniLabel
      Left = 29
      Top = 156
      Width = 45
      Height = 13
      Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
      ParentFont = False
      TabOrder = 20
    end
    object BtnSelectCno: TUniButton
      Left = 331
      Top = 155
      Width = 49
      Height = 22
      Caption = '...'
      ParentFont = False
      TabOrder = 21
      OnClick = BtnSelectCnoClick
    end
    object DDTAM1: TUniDateTimePicker
      Tag = 9
      Left = 127
      Top = 281
      Width = 153
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629
      DateTime = 41107.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 22
      ParentColor = False
      Color = clWhite
      OnChange = DDTAM1Change
    end
    object AMTAM1: TUniEdit
      Tag = 9
      Left = 127
      Top = 309
      Width = 250
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'AMTAM1'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 23
      Color = clWindow
      OnExit = AMTAM1Exit
    end
    object BALAM1: TUniEdit
      Tag = 9
      Left = 127
      Top = 336
      Width = 250
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'BALAM1'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 24
      Color = clWindow
      OnExit = BALAM1Exit
    end
    object UniLabel24: TUniLabel
      Left = 532
      Top = 16
      Width = 30
      Height = 13
      Caption = #3626#3606#3634#3609#3632
      ParentFont = False
      TabOrder = 25
    end
    object CmbSTS: TUniDBLookupComboBox
      Tag = 9
      Left = 594
      Top = 16
      Width = 181
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSAM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 26
    end
    object CmbCTPCM1: TUniDBLookupComboBox
      Tag = 9
      Left = 127
      Top = 183
      Width = 250
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'CTPCM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 27
    end
    object CmbPSNCM1: TUniDBLookupComboBox
      Tag = 9
      Left = 526
      Top = 183
      Width = 249
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'SMNCM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 28
    end
  end
  inherited pnFooter: TUniPanel
    Top = 415
    Width = 876
    TabOrder = 2
    ExplicitTop = 415
    ExplicitWidth = 876
    inherited imgBotton: TUniImage
      Width = 874
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
      ExplicitWidth = 874
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 794
      Top = 3
      ExplicitLeft = 794
      ExplicitTop = 3
    end
    inherited btnConfirm: TUniButton
      Left = 713
      ExplicitLeft = 713
    end
  end
  inherited pnHeader: TUniPanel
    Width = 876
    Height = 0
    TabOrder = 0
    ExplicitWidth = 876
    ExplicitHeight = 0
  end
  object dsgrid: TDataSource [3]
    Left = 416
    Top = 104
  end
end
