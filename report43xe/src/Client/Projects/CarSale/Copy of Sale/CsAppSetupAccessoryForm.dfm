inherited frmCsAppSetupAccessoryGrid: TfrmCsAppSetupAccessoryGrid
  Caption = #3588#3657#3609#3627#3634' - '#3651#3610#3605#3636#3604#3605#3633#3657#3591'/'#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629' '#3629#3640#3611#3585#3619#3603#3660#3605#3585#3649#3605#3656#3591
  ClientHeight = 569
  ClientWidth = 1009
  OnCreate = UniFormCreate
  ExplicitWidth = 1017
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 105
    Width = 1009
    Height = 423
    ExplicitTop = 105
    ExplicitWidth = 1009
    ExplicitHeight = 423
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1009
      Height = 423
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'ORDOM3'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3629#3585#3626#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 100
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTOM3'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 58
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DNOOT5'
          Title.Alignment = taCenter
          Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610#3588#3635#3586#3629
          Title.Font.Charset = THAI_CHARSET
          Width = 91
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTOT5'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 68
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSMN'
          Title.Alignment = taCenter
          Title.Caption = #3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          Width = 91
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'FULLNAME'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 116
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ITNPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Width = 55
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'tnmpm1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3585#3634#3619
          Width = 68
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCOL'
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 54
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SEROT5'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 96
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'STPOT5'
          Title.Alignment = taCenter
          Title.Caption = #3648#3591#3639#3656#3629#3609#3652#3586' FS/CS'
          Width = 79
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'EPDOT5'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3609#3633#3604#3626#3656#3591#3619#3606
          Width = 73
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'STSOT5'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Width = 53
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1009
    Height = 105
    ExplicitWidth = 1009
    ExplicitHeight = 105
    inherited lbSearch: TUniLabel
      Top = 73
      ExplicitTop = 73
    end
    inherited edSearch: TUniEdit
      Left = 88
      Top = 73
      Width = 355
      ExplicitLeft = 88
      ExplicitTop = 73
      ExplicitWidth = 355
    end
    inherited btnSearch: TUniButton
      Left = 459
      Top = 69
      ExplicitLeft = 459
      ExplicitTop = 69
    end
    object EdtCom: TUniEdit
      Left = 88
      Top = 13
      Width = 138
      Height = 21
      Hint = #3610#3619#3636#3625#3633#3607
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 4
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 15
      Top = 13
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      Transparent = False
      TabOrder = 5
    end
    object EdtBrn: TUniEdit
      Left = 318
      Top = 13
      Width = 138
      Height = 21
      Hint = #3626#3634#3586#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 255
      Top = 13
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      Transparent = False
      TabOrder = 7
    end
    object UniLabel1: TUniLabel
      Left = 509
      Top = 13
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 8
    end
    object UniLabel4: TUniLabel
      Left = 15
      Top = 43
      Width = 52
      Height = 13
      Caption = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 9
    end
    object IFRM: TUniDateTimePicker
      Left = 88
      Top = 40
      Width = 138
      Height = 22
      Hint = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656' '#3592#3634#3585
      DateTime = 41134.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 10
      ParentColor = False
      Color = clWhite
    end
    object UniLabel5: TUniLabel
      Left = 255
      Top = 43
      Width = 11
      Height = 13
      Caption = #3606#3638#3591
      ParentFont = False
      TabOrder = 11
    end
    object ITO: TUniDateTimePicker
      Left = 318
      Top = 45
      Width = 138
      Height = 22
      Hint = #3606#3638#3591
      DateTime = 41134.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 12
      ParentColor = False
      Color = clWhite
    end
    object EdtDEP: TUniEdit
      Left = 556
      Top = 13
      Width = 149
      Height = 21
      Hint = #3649#3612#3609#3585
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 13
      Color = clWindow
    end
    object Rdo502: TUniRadioButton
      Left = 520
      Top = 48
      Width = 113
      Height = 17
      Checked = True
      Caption = #3651#3610#3626#3633#3656#3591#3595#3639#3657#3629#3616#3634#3618#3609#3629#3585
      TabOrder = 14
      OnClick = Rdo502Click
    end
    object Rdo503: TUniRadioButton
      Left = 664
      Top = 48
      Width = 113
      Height = 17
      Checked = False
      Caption = #3651#3610#3626#3633#3656#3591#3605#3636#3604#3605#3633#3657#3591#3616#3634#3618#3651#3609
      TabOrder = 15
      OnClick = Rdo503Click
    end
  end
  inherited pnFooter: TUniPanel
    Top = 528
    Width = 1009
    ExplicitTop = 528
    ExplicitWidth = 1009
    DesignSize = (
      1009
      41)
    inherited imgBotton: TUniImage
      Width = 1009
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
      ExplicitWidth = 1009
    end
    inherited btnAdd: TUniButton
      Left = 765
      ExplicitLeft = 765
    end
    inherited btnDelete: TUniButton
      Left = 927
      ExplicitLeft = 927
    end
    inherited btnEdit: TUniButton
      Left = 846
      ExplicitLeft = 846
    end
    inherited BtnView: TUniButton
      Left = 684
      TabOrder = 5
      ExplicitLeft = 684
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
