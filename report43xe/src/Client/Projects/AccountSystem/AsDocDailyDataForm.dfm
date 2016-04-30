inherited frmAsDocDailyData: TfrmAsDocDailyData
  Caption = #3610#3633#3609#3607#3638#3585#3648#3629#3585#3626#3634#3619#3611#3619#3632#3592#3635#3623#3633#3609
  ClientHeight = 518
  ClientWidth = 933
  Position = poDesigned
  OnCreate = UniFormCreate
  ExplicitWidth = 933
  ExplicitHeight = 518
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 147
    Width = 933
    Height = 313
    TabOrder = 1
    ExplicitLeft = 0
    ExplicitTop = 147
    ExplicitWidth = 933
    ExplicitHeight = 313
    object dbgDataList: TUniDBGrid
      Left = 1
      Top = 1
      Width = 931
      Height = 269
      DataSource = dsDocDaily
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = 'Please wait...'
      StripeRows = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 1
      Columns = <
        item
          FieldName = 'item_no'
          Title.Alignment = taCenter
          Title.Caption = #3629#3633#3609#3604#3633#3610
          Title.Font.Charset = THAI_CHARSET
          Width = 55
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'work'
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3656#3623#3618#3591#3634#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 129
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'acc_code'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 78
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'acc_name'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 184
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'cheq_no'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
          Title.Font.Charset = THAI_CHARSET
          Width = 85
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'dr_ame'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3604#3610#3636#3605
          Title.Font.Charset = THAI_CHARSET
          Width = 96
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'cr_amt'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3588#3619#3604#3636#3605
          Title.Font.Charset = THAI_CHARSET
          Width = 99
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'link_sys'
          Title.Alignment = taCenter
          Title.Caption = #3648#3594#3639#3656#3629#3617#3619#3632#3610#3610' Y/N'
          Title.Font.Charset = THAI_CHARSET
          Width = 81
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'link_system'
          Title.Alignment = taCenter
          Title.Caption = #3648#3594#3639#3656#3629#3617#3619#3632#3610#3610' '#3619#3632#3610#3610
          Width = 95
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
    object UniPanel1: TUniPanel
      Left = 1
      Top = 269
      Width = 931
      Height = 44
      BorderStyle = ubsFrameLowered
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      object UniLabel7: TUniLabel
        Left = 527
        Top = 14
        Width = 63
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
        ParentFont = False
        TabOrder = 1
      end
      object UniDBEdit3: TUniDBEdit
        Left = 767
        Top = 10
        Width = 136
        Height = 21
        DataSource = dsDocDaily
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 2
        Color = clWindow
      end
      object UniDBEdit4: TUniDBEdit
        Left = 625
        Top = 10
        Width = 136
        Height = 21
        DataSource = dsDocDaily
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 3
        Color = clWindow
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 481
    Width = 933
    TabOrder = 2
    ExplicitTop = 481
    ExplicitWidth = 933
    inherited imgBotton: TUniImage
      Width = 933
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
      ExplicitWidth = 933
    end
    inherited btnBack: TUniButton
      Top = 3
      ExplicitTop = 3
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 851
      ExplicitLeft = 851
    end
    inherited btnConfirm: TUniButton
      Left = 770
      ExplicitLeft = 770
    end
  end
  inherited pnHeader: TUniPanel
    Width = 933
    Height = 147
    TabOrder = 0
    ExplicitWidth = 933
    ExplicitHeight = 147
    object UniLabel10: TUniLabel
      Left = 572
      Top = 11
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 1
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 373
      Top = 11
      Width = 180
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
      Left = 633
      Top = 11
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel11: TUniLabel
      Left = 289
      Top = 11
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 4
    end
    object UniDBEdit11: TUniDBEdit
      Left = 373
      Top = 35
      Width = 180
      Height = 21
      DataSource = dsDocDaily
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 292
      Top = 35
      Width = 61
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 6
    end
    object UniLabel2: TUniLabel
      Left = 9
      Top = 35
      Width = 54
      Height = 13
      Caption = #3619#3627#3633#3626#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel3: TUniLabel
      Left = 9
      Top = 90
      Width = 118
      Height = 13
      Caption = #3626#3619#3657#3634#3591#3619#3641#3611#3649#3610#3610#3617#3634#3605#3619#3600#3634#3609' '#3592#3634#3585
      ParentFont = False
      TabOrder = 8
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 97
      Top = 59
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel4: TUniLabel
      Left = 9
      Top = 59
      Width = 80
      Height = 13
      Caption = #3619#3627#3633#3626#3648#3592#3657#3634#3627#3609#3637#3657'/'#3621#3641#3585#3627#3609#3637#3657
      ParentFont = False
      TabOrder = 10
    end
    object UniDBLookupComboBox5: TUniDBLookupComboBox
      Tag = 9
      Left = 97
      Top = 35
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 11
    end
    object UniLabel5: TUniLabel
      Left = 293
      Top = 115
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel6: TUniLabel
      Left = 576
      Top = 115
      Width = 41
      Height = 13
      Caption = #3619#3641#3611#3649#3610#3610#3607#3637#3656
      ParentFont = False
      TabOrder = 13
    end
    object UniLabel8: TUniLabel
      Left = 9
      Top = 11
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 14
    end
    object UniDBEdit5: TUniDBEdit
      Left = 97
      Top = 11
      Width = 180
      Height = 21
      DataSource = dsDocDaily
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 15
      Color = clWindow
    end
    object UniLabel12: TUniLabel
      Left = 576
      Top = 35
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 16
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 633
      Top = 35
      Width = 129
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 17
      ParentColor = False
      Color = clWhite
    end
    object UniLabel9: TUniLabel
      Left = 9
      Top = 115
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 18
    end
    object UniDBLookupComboBox6: TUniDBLookupComboBox
      Tag = 9
      Left = 97
      Top = 115
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 19
    end
    object UniDBLookupComboBox7: TUniDBLookupComboBox
      Tag = 9
      Left = 373
      Top = 115
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 20
    end
    object UniDBLookupComboBox8: TUniDBLookupComboBox
      Tag = 9
      Left = 633
      Top = 115
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 21
    end
    object BtnLinkSystem: TUniButton
      Left = 829
      Top = 115
      Width = 75
      Height = 25
      Caption = #3648#3594#3639#3656#3629#3617#3619#3632#3610#3610
      ParentFont = False
      TabOrder = 22
      OnClick = BtnLinkSystemClick
    end
  end
  inherited pnUser: TUniPanel
    Top = 460
    Width = 933
    ExplicitTop = 460
    ExplicitWidth = 933
  end
  object dsDocDaily: TDataSource
    DataSet = CdsData
    Left = 376
    Top = 280
  end
  object CdsData: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 224
    Top = 192
    object CdsDataitem_no: TIntegerField
      FieldName = 'item_no'
    end
    object CdsDatawork: TStringField
      FieldName = 'work'
    end
    object CdsDataacc_code: TStringField
      FieldName = 'acc_code'
      Size = 10
    end
    object CdsDataacc_name: TStringField
      FieldName = 'acc_name'
      Size = 30
    end
    object CdsDatacheq_no: TStringField
      FieldName = 'cheq_no'
    end
    object CdsDatadr_ame: TFloatField
      FieldName = 'dr_ame'
    end
    object CdsDatacr_amt: TFloatField
      FieldName = 'cr_amt'
    end
    object CdsDatalink_sys: TStringField
      FieldName = 'link_sys'
      Size = 1
    end
    object CdsDatalink_system: TStringField
      FieldName = 'link_system'
    end
  end
end
