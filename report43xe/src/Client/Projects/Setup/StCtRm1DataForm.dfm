inherited frmStCtRm1Data: TfrmStCtRm1Data
  Caption = #3607#3632#3648#3610#3637#3618#3609#3611#3657#3634#3618#3649#3604#3591
  ClientHeight = 384
  ClientWidth = 807
  Position = poScreenCenter
  ExplicitWidth = 807
  ExplicitHeight = 384
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 0
    Width = 807
    Height = 326
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 0
    ExplicitWidth = 887
    ExplicitHeight = 313
    object UniLabel24: TUniLabel
      Left = 497
      Top = 22
      Width = 30
      Height = 13
      Caption = #3626#3606#3634#3609#3632
      ParentFont = False
      TabOrder = 1
    end
    object CmbSTS: TUniDBLookupComboBox
      Tag = 9
      Left = 559
      Top = 22
      Width = 181
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSRM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 25
      Top = 48
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel5: TUniLabel
      Left = 25
      Top = 88
      Width = 74
      Height = 13
      Caption = #3607#3632#3648#3610#3637#3618#3609#3611#3657#3634#3618#3649#3604#3591
      ParentFont = False
      TabOrder = 4
    end
    object RGNRM1: TUniDBEdit
      Tag = 9
      Left = 185
      Top = 89
      Width = 87
      Height = 21
      DataField = 'RGNRM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
    end
    object CmbBRN: TUniDBLookupComboBox
      Tag = 9
      Left = 119
      Top = 49
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNRM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 6
    end
    object UniLabel1: TUniLabel
      Left = 25
      Top = 148
      Width = 35
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel4: TUniLabel
      Left = 25
      Top = 116
      Width = 80
      Height = 13
      Caption = #3592#3604#3607#3632#3648#3610#3637#3618#3609#3592#3633#3591#3627#3623#3633#3604
      ParentFont = False
      TabOrder = 8
    end
    object UniLabel7: TUniLabel
      Left = 25
      Top = 187
      Width = 40
      Height = 13
      Caption = #3619#3634#3588#3634#3611#3657#3634#3618
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel8: TUniLabel
      Left = 25
      Top = 21
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 10
    end
    object UniLabel3: TUniLabel
      Left = 176
      Top = 92
      Width = 4
      Height = 13
      Caption = '-'
      ParentFont = False
      TabOrder = 11
    end
    object CmbPRV: TUniDBLookupComboBox
      Tag = 9
      Left = 119
      Top = 117
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'PRVRM1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel9: TUniLabel
      Left = 25
      Top = 214
      Width = 66
      Height = 13
      Caption = #3588#3656#3634#3651#3594#3657#3592#3656#3634#3618#3629#3639#3656#3609' '#3654' '
      ParentFont = False
      TabOrder = 13
    end
    object CMPRM1: TUniDBEdit
      Tag = 9
      Left = 119
      Top = 22
      Width = 152
      Height = 21
      DataField = 'CMPRM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
    end
    object UniLabel10: TUniLabel
      Left = 25
      Top = 241
      Width = 17
      Height = 13
      Caption = #3619#3623#3617
      ParentFont = False
      TabOrder = 15
    end
    object REGRM1: TUniDBEdit
      Tag = 9
      Left = 119
      Top = 89
      Width = 50
      Height = 21
      DataField = 'REGRM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 16
      Color = clWindow
    end
    object PDTRM1: TUniDateTimePicker
      Tag = 9
      Left = 119
      Top = 149
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 17
      ParentColor = False
      Color = clWhite
      OnChange = PDTRM1Change
    end
    object PATRM1: TUniEdit
      Tag = 9
      Left = 119
      Top = 188
      Width = 152
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'PATRM1'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 18
      Color = clWindow
      OnExit = PATRM1Exit
    end
    object OATRM1: TUniEdit
      Tag = 9
      Left = 119
      Top = 215
      Width = 152
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'OATRM1'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 19
      Color = clWindow
      OnExit = OATRM1Exit
    end
    object SUMRM1: TUniEdit
      Tag = 9
      Left = 119
      Top = 242
      Width = 152
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'SUMRM1'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 20
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel6: TUniLabel
      Left = 25
      Top = 286
      Width = 43
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3627#3605#3640
      ParentFont = False
      TabOrder = 21
    end
    object NARRM1: TUniDBEdit
      Tag = 9
      Left = 119
      Top = 287
      Width = 620
      Height = 21
      DataField = 'NARRM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 22
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 326
    Width = 807
    TabOrder = 2
    ExplicitTop = 303
    ExplicitWidth = 807
    inherited imgBotton: TUniImage
      Width = 807
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
      ExplicitWidth = 807
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 725
      ExplicitLeft = 725
    end
    inherited btnConfirm: TUniButton
      Left = 644
      ExplicitLeft = 644
    end
  end
  inherited pnHeader: TUniPanel
    Width = 807
    Height = 0
    TabOrder = 0
    ExplicitWidth = 807
    ExplicitHeight = 0
  end
  inherited pnUser: TUniPanel
    Top = 363
    Width = 807
  end
  object dsgrid: TDataSource
    Left = 744
    Top = 192
  end
end
