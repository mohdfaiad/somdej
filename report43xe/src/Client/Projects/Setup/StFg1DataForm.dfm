inherited frmStFg1Data: TfrmStFg1Data
  Caption = #3605#3634#3619#3634#3591#3650#3611#3619#3650#3617#3594#3633#3656#3609#3586#3629#3591#3649#3606#3617#3619#3606#3618#3609#3605#3660
  ClientHeight = 576
  ClientWidth = 884
  Position = poScreenCenter
  NavigateKeys.Next.Key = 13
  ExplicitWidth = 890
  ExplicitHeight = 608
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 169
    Width = 884
    Height = 349
    TabOrder = 1
    ExplicitTop = 169
    ExplicitWidth = 886
    ExplicitHeight = 328
    object PnButton: TUniPanel
      Left = 1
      Top = 1
      Width = 882
      Height = 41
      BorderStyle = ubsNone
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
      ExplicitWidth = 884
      object BtnView: TUniButton
        Left = 5
        Top = 7
        Width = 75
        Height = 25
        Caption = #3604#3641#3586#3657#3629#3617#3641#3621
        ParentFont = False
        TabOrder = 1
        OnClick = BtnViewClick
      end
      object btnAdd: TUniButton
        Left = 82
        Top = 7
        Width = 75
        Height = 25
        Caption = #3648#3614#3636#3656#3617
        ParentFont = False
        TabOrder = 2
        OnClick = btnAddClick
      end
      object btnEdit: TUniButton
        Left = 159
        Top = 7
        Width = 75
        Height = 25
        Caption = #3649#3585#3657#3652#3586
        ParentFont = False
        TabOrder = 3
        OnClick = btnEditClick
      end
      object btnDelete: TUniButton
        Left = 236
        Top = 7
        Width = 75
        Height = 25
        Caption = #3621#3610
        ParentFont = False
        TabOrder = 4
        OnClick = btnDeleteClick
      end
    end
    object dbgDataList: TUniDBGrid
      Left = 1
      Top = 41
      Width = 882
      Height = 267
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      DataSource = dsGridDtl
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      StripeRows = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 2
      Columns = <
        item
          FieldName = 'SEQFG1'
          Title.Alignment = taCenter
          Title.Caption = #3621#3635#3604#3633#3610
          Title.Font.Charset = THAI_CHARSET
          Width = 55
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'fgdfg1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3586#3629#3591#3649#3606#3617
          Width = 91
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'tnmfgd'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618
          Width = 157
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'FDSFG1'
          Title.Alignment = taCenter
          Title.Caption = #3629#3633#3605#3619#3634#3626#3656#3623#3609#3621#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 69
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'FPAFG1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3626#3656#3623#3609#3621#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 93
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'fu1fg1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634#3586#3629#3591#3649#3606#3617
          Width = 93
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'fq1fg1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 101
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'famfg1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3586#3629#3591#3649#3606#3617
          Width = 100
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end>
    end
    object PnSum: TUniPanel
      Left = 1
      Top = 308
      Width = 882
      Height = 41
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 3
      ExplicitTop = 287
      ExplicitWidth = 884
      object LbSumFg1: TUniLabel
        Left = 542
        Top = 14
        Width = 63
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
        ParentFont = False
        TabOrder = 1
      end
      object SUMAMT: TUniDBEdit
        Tag = 9
        Left = 671
        Top = 10
        Width = 111
        Height = 21
        DataField = 'SUMAMT'
        DataSource = dsgrid
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Alignment = taRightJustify
        ParentFont = False
        TabOrder = 2
        Color = clWindow
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 539
    Width = 884
    TabOrder = 2
    ExplicitTop = 518
    ExplicitWidth = 886
    inherited imgBotton: TUniImage
      Width = 884
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
      ExplicitWidth = 886
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 802
      ExplicitLeft = 802
    end
    inherited btnConfirm: TUniButton
      Left = 721
      ExplicitLeft = 723
    end
  end
  inherited pnHeader: TUniPanel
    Width = 884
    Height = 169
    TabOrder = 0
    ExplicitWidth = 886
    ExplicitHeight = 169
    object UniLabel2: TUniLabel
      Left = 31
      Top = 51
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 1
    end
    object BRNFG1: TUniDBLookupComboBox
      Tag = 9
      Left = 176
      Top = 51
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNFG1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 2
    end
    object UniLabel7: TUniLabel
      Left = 31
      Top = 104
      Width = 59
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3617#3637#3612#3621#3592#3634#3585
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel8: TUniLabel
      Left = 31
      Top = 24
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 4
    end
    object CMPFG1: TUniDBEdit
      Tag = 9
      Left = 176
      Top = 24
      Width = 151
      Height = 21
      DataField = 'CMPFG1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
      ReadOnly = True
    end
    object FDTFG1: TUniDateTimePicker
      Tag = 9
      Left = 176
      Top = 104
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629
      DateTime = 41106.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 6
      ParentColor = False
      Color = clWhite
      OnChange = FDTFG1Change
    end
    object TNMPM1: TUniDBEdit
      Tag = 9
      Left = 434
      Top = 77
      Width = 389
      Height = 21
      DataField = 'TNMPM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 7
      Color = clWindow
      ReadOnly = True
    end
    object PRDFG1: TUniDBEdit
      Tag = 9
      Left = 176
      Top = 77
      Width = 195
      Height = 21
      DataField = 'PRDFG1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 8
      Color = clWindow
    end
    object UniLabel5: TUniLabel
      Left = 29
      Top = 77
      Width = 45
      Height = 13
      Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      ParentFont = False
      TabOrder = 9
    end
    object BtnSelectProduct: TUniButton
      Left = 379
      Top = 77
      Width = 49
      Height = 22
      Caption = '...'
      ParentFont = False
      TabOrder = 10
      OnClick = BtnSelectProductClick
    end
    object UniLabel11: TUniLabel
      Left = 31
      Top = 132
      Width = 52
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3617#3637#3612#3621#3606#3638#3591
      ParentFont = False
      TabOrder = 11
    end
    object TDTFG1: TUniDateTimePicker
      Tag = 9
      Left = 176
      Top = 131
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629
      DateTime = 41106.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 12
      ParentColor = False
      Color = clWhite
      OnChange = TDTFG1Change
    end
  end
  inherited pnUser: TUniPanel
    Top = 518
    Width = 884
    ExplicitTop = 497
    ExplicitWidth = 886
  end
  object dsgrid: TDataSource
    Left = 416
    Top = 104
  end
  object dsGridDtl: TDataSource
    Left = 416
    Top = 328
  end
end
