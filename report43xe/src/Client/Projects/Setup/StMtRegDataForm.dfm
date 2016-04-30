inherited frmStMtRegData: TfrmStMtRegData
  Caption = #3605#3634#3619#3634#3591#3588#3656#3634#3592#3604#3607#3632#3648#3610#3637#3618#3609#3619#3640#3656#3609#3619#3606#3618#3609#3605#3660
  ClientHeight = 354
  ClientWidth = 810
  Position = poScreenCenter
  ExplicitWidth = 818
  ExplicitHeight = 381
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 0
    Width = 810
    Height = 296
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 0
    ExplicitWidth = 810
    ExplicitHeight = 313
    object UniLabel2: TUniLabel
      Left = 39
      Top = 88
      Width = 43
      Height = 13
      Caption = #3619#3640#3656#3609#3619#3606#3618#3609#3605#3660
      ParentFont = False
      TabOrder = 2
    end
    object CmbCno: TUniDBLookupComboBox
      Tag = 9
      Left = 138
      Top = 88
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'CNOREG'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 0
    end
    object UniLabel7: TUniLabel
      Left = 38
      Top = 169
      Width = 62
      Height = 13
      Caption = #3588#3656#3634#3592#3604#3607#3632#3648#3610#3637#3618#3609
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel9: TUniLabel
      Left = 39
      Top = 196
      Width = 66
      Height = 13
      Caption = #3588#3656#3634#3651#3594#3657#3592#3656#3634#3618#3629#3639#3656#3609' '#3654' '
      ParentFont = False
      TabOrder = 4
    end
    object UniLabel10: TUniLabel
      Left = 39
      Top = 223
      Width = 17
      Height = 13
      Caption = #3619#3623#3617
      ParentFont = False
      TabOrder = 5
    end
    object AMTREG: TUniEdit
      Tag = 9
      Left = 138
      Top = 169
      Width = 152
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'AMTREG'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 6
      Color = clWindow
      OnExit = AMTREGExit
    end
    object OTHREG: TUniEdit
      Tag = 9
      Left = 138
      Top = 196
      Width = 152
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'OTHREG'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 7
      Color = clWindow
      OnExit = OTHREGExit
    end
    object SUMREG: TUniEdit
      Tag = 9
      Left = 138
      Top = 223
      Width = 152
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 'SUMREG'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 8
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel6: TUniLabel
      Left = 38
      Top = 268
      Width = 43
      Height = 13
      Caption = #3588#3635#3629#3608#3636#3610#3634#3618
      ParentFont = False
      TabOrder = 9
    end
    object NARREG: TUniDBEdit
      Tag = 9
      Left = 138
      Top = 268
      Width = 620
      Height = 21
      DataField = 'NARREG'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 10
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 33
      Top = 132
      Width = 43
      Height = 13
      Caption = #3619#3640#3656#3609#3619#3606#3618#3609#3605#3660
      ParentFont = False
      TabOrder = 11
    end
    object DbITNREG: TUniDBEdit
      Tag = 9
      Left = 138
      Top = 132
      Width = 195
      Height = 21
      DataField = 'ITNREG'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 12
      Color = clWindow
    end
    object BtnSelectProduct: TUniButton
      Left = 339
      Top = 131
      Width = 49
      Height = 22
      Caption = '...'
      ParentFont = False
      TabOrder = 13
      OnClick = BtnSelectProductClick
    end
    object DbTNMPM1: TUniDBEdit
      Tag = 9
      Left = 396
      Top = 132
      Width = 389
      Height = 21
      DataField = 'TNMPM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel24: TUniLabel
      Left = 542
      Top = 20
      Width = 30
      Height = 13
      Caption = #3626#3606#3634#3609#3632
      ParentFont = False
      TabOrder = 15
    end
    object CmbSTS: TUniDBLookupComboBox
      Tag = 9
      Left = 604
      Top = 20
      Width = 181
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSREG'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 16
    end
    object UniLabel1: TUniLabel
      Left = 44
      Top = 52
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 17
    end
    object CmbBRN: TUniDBLookupComboBox
      Tag = 9
      Left = 136
      Top = 52
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNREG'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 18
    end
    object UniLabel8: TUniLabel
      Left = 44
      Top = 20
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 19
    end
    object CMPREG: TUniDBEdit
      Tag = 9
      Left = 137
      Top = 20
      Width = 152
      Height = 21
      DataField = 'CMPREG'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 20
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 317
    Width = 810
    TabOrder = 2
    ExplicitTop = 313
    ExplicitWidth = 810
    inherited imgBotton: TUniImage
      Width = 808
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
      ExplicitWidth = 808
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 728
      ExplicitLeft = 728
    end
    inherited btnConfirm: TUniButton
      Left = 647
      ExplicitLeft = 647
    end
  end
  inherited pnHeader: TUniPanel
    Width = 810
    Height = 0
    TabOrder = 0
    ExplicitWidth = 810
    ExplicitHeight = 0
  end
  inherited pnUser: TUniPanel
    Top = 296
    Width = 810
    ExplicitTop = 296
    ExplicitWidth = 810
  end
  object dsgrid: TDataSource
    Left = 448
    Top = 80
  end
end
