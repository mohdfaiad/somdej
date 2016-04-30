inherited frmStMtRegExtraData: TfrmStMtRegExtraData
  Caption = #3648#3614#3636#3656#3617'/'#3649#3585#3657#3652#3586' '#3588#3656#3634#3592#3604#3607#3632#3648#3610#3637#3618#3609#3619#3640#3656#3609#3619#3606#3618#3609#3605#3660#3605#3634#3617#3619#3640#3656#3609#3619#3606#3618#3609#3605#3660
  ClientHeight = 602
  ClientWidth = 944
  Position = poScreenCenter
  ExplicitWidth = 944
  ExplicitHeight = 602
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 0
    Width = 944
    Height = 544
    TabOrder = 1
    ExplicitLeft = -8
    ExplicitTop = 0
    ExplicitWidth = 987
    ExplicitHeight = 490
    object UniLabel2: TUniLabel
      Left = 39
      Top = 79
      Width = 43
      Height = 13
      Caption = #3619#3640#3656#3609#3619#3606#3618#3609#3605#3660
      ParentFont = False
      TabOrder = 2
    end
    object CmbCno: TUniDBLookupComboBox
      Tag = 9
      Left = 138
      Top = 79
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'CNOREG'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 0
      OnCloseUp = CmbCnoCloseUp
    end
    object UniLabel7: TUniLabel
      Left = 39
      Top = 117
      Width = 62
      Height = 13
      Caption = #3588#3656#3634#3592#3604#3607#3632#3648#3610#3637#3618#3609
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel9: TUniLabel
      Left = 312
      Top = 117
      Width = 66
      Height = 13
      Caption = #3588#3656#3634#3651#3594#3657#3592#3656#3634#3618#3629#3639#3656#3609' '#3654' '
      ParentFont = False
      TabOrder = 4
    end
    object UniLabel10: TUniLabel
      Left = 590
      Top = 117
      Width = 17
      Height = 13
      Caption = #3619#3623#3617
      ParentFont = False
      TabOrder = 5
    end
    object AMTREG: TUniEdit
      Tag = 9
      Left = 138
      Top = 117
      Width = 152
      Height = 19
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
      Left = 411
      Top = 117
      Width = 152
      Height = 19
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
      Left = 652
      Top = 117
      Width = 152
      Height = 19
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
      Left = 39
      Top = 146
      Width = 43
      Height = 13
      Caption = #3588#3635#3629#3608#3636#3610#3634#3618
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel1: TUniLabel
      Left = 39
      Top = 49
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 10
    end
    object CmbBRN: TUniDBLookupComboBox
      Tag = 9
      Left = 138
      Top = 47
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNREG'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 11
    end
    object UniLabel8: TUniLabel
      Left = 39
      Top = 20
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 12
    end
    object CMPREG: TUniDBEdit
      Tag = 9
      Left = 138
      Top = 20
      Width = 152
      Height = 19
      DataField = 'CMPREG'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 13
      Color = clWindow
    end
    object dbgDataList: TUniDBGrid
      Left = 136
      Top = 175
      Width = 753
      Height = 380
      DataSource = DataProduct
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMask = True
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3588#3657#3609#3627#3634'...'
      StripeRows = False
      Anchors = [akLeft, akTop, akBottom]
      ParentFont = False
      TabOrder = 14
      Columns = <
        item
          FieldName = 'ITNREG'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 71
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3652#3607#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 245
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'AMTREG'
          Title.Alignment = taCenter
          Title.Caption = #3588#3656#3634#3592#3604#3607#3632#3648#3610#3637#3618#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 97
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'OTHREG'
          Title.Alignment = taCenter
          Title.Caption = #3588#3656#3634#3651#3594#3657#3592#3656#3634#3618#3629#3639#3656#3609' '#3654' '
          Title.Font.Charset = THAI_CHARSET
          Width = 102
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'SUMREG'
          Title.Alignment = taCenter
          Title.Caption = #3619#3623#3617
          Title.Font.Charset = THAI_CHARSET
          Width = 95
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'NARREG'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618
          Width = 101
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end>
    end
    object BtnOk: TUniButton
      Left = 814
      Top = 144
      Width = 75
      Height = 25
      Caption = #3605#3585#3621#3591
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 15
      OnClick = BtnOkClick
    end
    object UniLabel3: TUniLabel
      Left = 539
      Top = 20
      Width = 68
      Height = 13
      Caption = #3648#3614#3636#3656#3617#3651#3627#3617#3656'/'#3649#3585#3657#3652#3586
      ParentFont = False
      TabOrder = 16
    end
    object CmbMD: TUniComboBox
      Left = 652
      Top = 20
      Width = 145
      Height = 21
      Style = csDropDown
      MaxLength = 0
      Text = #3648#3614#3636#3656#3617
      Items.Strings = (
        #3648#3614#3636#3656#3617
        #3649#3585#3657#3652#3586)
      ItemIndex = 0
      TabOrder = 17
      OnCloseUp = CmbCnoCloseUp
    end
    object NARREG: TUniDBEdit
      Tag = 9
      Left = 138
      Top = 146
      Width = 670
      Height = 19
      DataField = 'NARREG'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 18
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 565
    Width = 944
    TabOrder = 2
    ExplicitTop = 565
    ExplicitWidth = 944
    inherited imgBotton: TUniImage
      Width = 944
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
      ExplicitWidth = 944
      ExplicitHeight = 37
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 862
      ExplicitLeft = 862
    end
    inherited btnConfirm: TUniButton
      Left = 781
      ExplicitLeft = 781
    end
  end
  inherited pnHeader: TUniPanel
    Width = 944
    Height = 0
    TabOrder = 0
    ExplicitWidth = 944
    ExplicitHeight = 0
  end
  inherited pnUser: TUniPanel
    Top = 544
    Width = 944
    ExplicitTop = 544
    ExplicitWidth = 944
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 64
  end
  object DataProduct: TDataSource
    Left = 424
    Top = 272
  end
end
