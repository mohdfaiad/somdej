inherited frmRgRegistationToOutData: TfrmRgRegistationToOutData
  Caption = #3592#3604#3607#3632#3648#3610#3637#3618#3609#3626#3656#3591#3591#3634#3609#3609#3629#3585
  ClientHeight = 601
  ClientWidth = 1119
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 1119
  ExplicitHeight = 601
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 124
    Width = 1119
    Height = 419
    BorderStyle = ubsDefault
    TabOrder = 1
    ExplicitTop = 124
    ExplicitWidth = 1119
    ExplicitHeight = 419
    object DbGt1: TUniDBGrid
      Left = 1
      Top = 260
      Width = 1117
      Height = 159
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      DataSource = dsGetGt1
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      StripeRows = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 1
      Columns = <
        item
          FieldName = 'SEQGT1'
          Title.Alignment = taCenter
          Title.Caption = #3621#3635#3604#3633#3610
          Title.Font.Charset = THAI_CHARSET
          Width = 59
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'PFXGT1'
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3656#3623#3618#3591#3634#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 115
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'ACCAC1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
          Width = 97
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMAC1'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 287
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'CHQGT1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
          Title.Font.Charset = THAI_CHARSET
          Width = 97
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DAMTGT1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3604#3610#3636#3605
          Width = 126
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'CAMTGT1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3588#3619#3604#3636#3605
          Width = 126
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end>
    end
    object PnAm4: TUniPanel
      Left = 1
      Top = 1
      Width = 1117
      Height = 256
      BorderStyle = ubsNone
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 2
      object DbAm7: TUniDBGrid
        Left = 0
        Top = 40
        Width = 1117
        Height = 216
        Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
        DataSource = dsAm7GetByNo
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
        StripeRows = False
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentFont = False
        TabOrder = 1
        Columns = <
          item
            FieldName = 'DNOYM4'
            Title.Alignment = taCenter
            Title.Caption = #3651#3610#3619#3633#3610#3648#3591#3636#3609#3617#3633#3604#3592#3635#3611#3657#3634#3618#3649#3604#3591
            Title.Font.Charset = THAI_CHARSET
            Width = 100
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'IDTYM4'
            Title.Alignment = taCenter
            Title.Caption = #3623#3633#3609#3607#3637#3656
            Title.Font.Charset = THAI_CHARSET
            Width = 50
            Visible = True
            Alignment = taCenter
            Expanded = False
          end
          item
            FieldName = 'RDNYM4'
            Title.Alignment = taCenter
            Title.Caption = #3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
            Width = 100
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'RDTYM4'
            Title.Alignment = taCenter
            Title.Caption = #3623#3633#3609#3607#3637#3656
            Title.Font.Charset = THAI_CHARSET
            Width = 50
            Visible = True
            Alignment = taCenter
            Expanded = False
          end
          item
            FieldName = 'TNMSMN'
            Title.Alignment = taCenter
            Title.Caption = #3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'TNMCSM'
            Title.Alignment = taCenter
            Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'TNMSRS'
            Title.Alignment = taCenter
            Title.Caption = #3619#3640#3656#3609#3619#3606
            Title.Font.Charset = THAI_CHARSET
            Width = 80
            Visible = True
            Alignment = taCenter
            Expanded = False
          end
          item
            FieldName = 'TNMCOL'
            Title.Alignment = taCenter
            Title.Caption = #3626#3637
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'SEROM5'
            Title.Alignment = taCenter
            Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'TNMPRV'
            Title.Alignment = taCenter
            Title.Caption = #3611#3657#3634#3618#3649#3604#3591#3592#3633#3591#3627#3623#3633#3604
            Width = 80
            Visible = True
            Alignment = taCenter
            Expanded = False
          end
          item
            FieldName = 'REGFULL'
            Title.Alignment = taCenter
            Title.Caption = #3611#3657#3634#3618#3649#3604#3591#3607#3632#3648#3610#3637#3618#3609
            Width = 80
            Visible = True
            Alignment = taCenter
            Expanded = False
          end
          item
            FieldName = 'ARSAM6'
            Title.Alignment = taCenter
            Title.Caption = #3588#3639#3609#3648#3591#3636#3609#3617#3633#3604#3592#3635
            Width = 70
            Visible = True
            Alignment = taRightJustify
            Expanded = False
          end>
      end
      object pnHeadAm4: TUniPanel
        Left = 0
        Top = 0
        Width = 1117
        Height = 40
        BorderStyle = ubsNone
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        TabOrder = 2
        object BtnAdd: TUniButton
          Left = 14
          Top = 8
          Width = 75
          Height = 25
          Caption = #3648#3614#3636#3656#3617
          ParentFont = False
          TabOrder = 1
          OnClick = BtnAddClick
        end
        object BtnDelete: TUniButton
          Left = 95
          Top = 8
          Width = 75
          Height = 25
          Caption = #3621#3610
          ParentFont = False
          TabOrder = 2
          OnClick = BtnDeleteClick
        end
        object UniLabel2: TUniLabel
          Left = 616
          Top = 12
          Width = 111
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617#3607#3640#3585#3619#3634#3618#3585#3634#3619
          ParentFont = False
          TabOrder = 3
        end
        object EdtSumAmtRt4: TUniEdit
          Tag = 9
          Left = 732
          Top = 12
          Width = 142
          Height = 21
          HelpType = htKeyword
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          Text = '0.00'
          ParentFont = False
          TabOrder = 4
          Color = clWindow
          ReadOnly = True
        end
      end
    end
    object SplitAm4AndRt4: TUniSplitter
      Left = 0
      Top = 256
      Width = 1119
      Height = 4
      Cursor = crVSplit
      MinSize = 30
      Align = alTop
      ParentColor = False
      Color = clBtnFace
    end
  end
  inherited pnFooter: TUniPanel
    Top = 564
    Width = 1119
    TabOrder = 2
    ExplicitTop = 564
    ExplicitWidth = 1119
    DesignSize = (
      1119
      37)
    inherited imgBotton: TUniImage
      Width = 1119
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
      ExplicitWidth = 1119
      ExplicitHeight = 37
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 1037
      ExplicitLeft = 1037
    end
    inherited btnConfirm: TUniButton
      Left = 956
      ExplicitLeft = 956
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1119
    Height = 124
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 3
    ExplicitWidth = 1119
    ExplicitHeight = 124
    object UniLabel6: TUniLabel
      Left = 16
      Top = 58
      Width = 154
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3588#3639#3609#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618#3611#3657#3634#3618#3649#3604#3591
      ParentFont = False
      TabOrder = 1
    end
    object UniLabel13: TUniLabel
      Left = 346
      Top = 58
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 2
    end
    object ddyyyylb: TUniLabel
      Left = 346
      Top = 6
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 3
    end
    object CMPOT5lb: TUniLabel
      Left = 16
      Top = 6
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 4
    end
    object ddyyyy: TUniEdit
      Tag = 9
      Left = 438
      Top = 6
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
      TabOrder = 5
      Color = clWindow
      ReadOnly = True
    end
    object CMPRG1: TUniDBEdit
      Tag = 9
      Left = 97
      Top = 5
      Width = 195
      Height = 21
      DataField = 'CMPRG1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
    object BRNOT5lb: TUniLabel
      Left = 16
      Top = 31
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 7
    end
    object BRNRG1: TUniDBLookupComboBox
      Tag = 9
      Left = 97
      Top = 30
      Width = 195
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNRG1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 8
    end
    object DEPOT5lb: TUniLabel
      Left = 346
      Top = 31
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 9
    end
    object DEPRG1: TUniDBLookupComboBox
      Tag = 9
      Left = 438
      Top = 31
      Width = 191
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'DEPRG1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 10
    end
    object DNORG1: TUniDBEdit
      Tag = 9
      Left = 176
      Top = 57
      Width = 116
      Height = 21
      DataField = 'DNORG1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      ParentFont = False
      TabOrder = 11
      Color = clWindow
      ReadOnly = True
    end
    object IDTRG1: TUniDateTimePicker
      Tag = 9
      Left = 438
      Top = 58
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      HelpType = htKeyword
      HelpKeyword = 'IDTRG1'
      DateTime = 41209.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 12
      ParentColor = False
      Color = clWhite
    end
    object UniLabel1: TUniLabel
      Left = 16
      Top = 85
      Width = 47
      Height = 13
      Caption = #3612#3641#3657#3619#3633#3610#3648#3627#3617#3634#3632
      ParentFont = False
      TabOrder = 13
    end
    object UniLabel3: TUniLabel
      Left = 346
      Top = 86
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 14
    end
    object RDTRG1: TUniDateTimePicker
      Tag = 9
      Left = 438
      Top = 86
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      HelpType = htKeyword
      HelpKeyword = 'RDTRG1'
      DateTime = 41209.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      ReadOnly = True
      TabOrder = 15
      ParentColor = False
      Color = clWhite
    end
    object RDNRG1: TUniDBEdit
      Tag = 9
      Left = 176
      Top = 84
      Width = 116
      Height = 21
      DataField = 'RDNRG1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      ParentFont = False
      TabOrder = 16
      Color = clWindow
      ReadOnly = True
    end
    object BtnSelectRDNAM7: TUniButton
      Left = 298
      Top = 84
      Width = 42
      Height = 25
      Caption = '...'
      ParentFont = False
      TabOrder = 17
      OnClick = BtnSelectRDNAM7Click
    end
  end
  inherited pnUser: TUniPanel
    Top = 543
    Width = 1119
    ExplicitTop = 543
    ExplicitWidth = 1119
  end
  object dsgrid: TDataSource
    Left = 584
    Top = 24
  end
  object dsAm7GetByNo: TDataSource
    Left = 32
    Top = 232
  end
  object dsGetGt1: TDataSource
    Left = 32
    Top = 456
  end
  object csDeleteRt4: TUniScreenMask
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3621#3610#3586#3657#3629#3617#3641#3621'...'
    TargetControl = DbAm7
    Left = 440
    Top = 400
  end
end
