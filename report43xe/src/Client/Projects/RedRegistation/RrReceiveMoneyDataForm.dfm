inherited frmRrReceiveMoneyDataT: TfrmRrReceiveMoneyDataT
  BorderStyle = bsSizeable
  Caption = #3585#3634#3619#3619#3633#3610#3648#3591#3636#3609#3617#3633#3604#3592#3635#3607#3632#3648#3610#3637#3618#3609#3611#3657#3634#3618#3649#3604#3591
  ClientHeight = 712
  ClientWidth = 1023
  ExplicitWidth = 1031
  ExplicitHeight = 746
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 89
    Width = 1023
    Height = 565
    BorderStyle = ubsNone
    TabOrder = 1
    ExplicitTop = 86
    ExplicitWidth = 949
    ExplicitHeight = 503
    object PnHeadRt4: TUniPanel
      Left = 0
      Top = 0
      Width = 1023
      Height = 188
      BorderStyle = ubsDefault
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
      object PnDtl1: TUniPanel
        Left = 1
        Top = 1
        Width = 335
        Height = 186
        BorderStyle = ubsNone
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 1
        ExplicitLeft = 4
        ExplicitTop = 4
        object CNOOT5lb: TUniLabel
          Left = 12
          Top = 33
          Width = 45
          Height = 13
          Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
          ParentFont = False
          TabOrder = 1
        end
        object CNORT4: TUniDBEdit
          Tag = 9
          Left = 96
          Top = 33
          Width = 137
          Height = 21
          DataField = 'CNORT4'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 2
          Color = clWindow
        end
        object TNMCSM: TUniDBEdit
          Tag = 9
          Left = 96
          Top = 58
          Width = 213
          Height = 21
          DataField = 'TNMCSM'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 3
          Color = clWindow
          ReadOnly = True
        end
        object LbAddr: TUniLabel
          Left = 12
          Top = 83
          Width = 21
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ParentFont = False
          TabOrder = 4
        end
        object TA1CSM: TUniDBEdit
          Tag = 9
          Left = 96
          Top = 83
          Width = 213
          Height = 21
          DataField = 'TA1CSM'
          DataSource = dsAddr01
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 5
          Color = clWindow
          ReadOnly = True
        end
        object TA2CSM: TUniDBEdit
          Tag = 9
          Left = 96
          Top = 108
          Width = 213
          Height = 21
          DataField = 'TA2CSM'
          DataSource = dsAddr01
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 6
          Color = clWindow
          ReadOnly = True
        end
        object LbProvince: TUniLabel
          Left = 12
          Top = 133
          Width = 30
          Height = 13
          Caption = #3592#3633#3591#3627#3623#3633#3604
          ParentFont = False
          TabOrder = 7
        end
        object CHGCSM: TUniDBLookupComboBox
          Tag = 9
          Left = 96
          Top = 133
          Width = 213
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'CHGCSM'
          DataSource = dsAddr01
          ParentFont = False
          TabOrder = 8
        end
        object LbTel: TUniLabel
          Left = 12
          Top = 159
          Width = 40
          Height = 13
          Caption = #3650#3607#3619#3624#3633#3614#3607#3660
          ParentFont = False
          TabOrder = 9
        end
        object LbTnmCSM: TUniLabel
          Left = 12
          Top = 58
          Width = 14
          Height = 13
          Caption = #3594#3639#3656#3629
          ParentFont = False
          TabOrder = 10
        end
        object CTYOT5lb: TUniLabel
          Left = 12
          Top = 8
          Width = 62
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3621#3641#3585#3588#3657#3634
          ParentFont = False
          TabOrder = 11
        end
        object CTYRT4: TUniDBLookupComboBox
          Tag = 9
          Left = 96
          Top = 6
          Width = 213
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'CTYRT4'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 12
        end
        object TELCSM: TUniDBEdit
          Tag = 9
          Left = 96
          Top = 160
          Width = 213
          Height = 21
          DataField = 'TELCSM'
          DataSource = dsAddr01
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 13
          Color = clWindow
          ReadOnly = True
        end
        object BtnSelectCSMorVM: TUniButton
          Left = 239
          Top = 30
          Width = 50
          Height = 27
          Caption = '...'
          TabOrder = 14
          OnClick = BtnSelectCSMorVMClick
        end
      end
      object PnDtl2: TUniPanel
        Left = 335
        Top = 1
        Width = 307
        Height = 186
        BorderStyle = ubsNone
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 2
        ExplicitTop = 0
        ExplicitHeight = 190
        object UniLabel10: TUniLabel
          Left = 10
          Top = 8
          Width = 40
          Height = 13
          Caption = #3594#3635#3619#3632#3650#3604#3618
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel20: TUniLabel
          Left = 10
          Top = 33
          Width = 63
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel21: TUniLabel
          Left = 10
          Top = 58
          Width = 91
          Height = 13
          Caption = #3613#3634#3585#3648#3586#3657#3634#3626#3617#3640#3604#3608#3609#3634#3588#3634#3619
          ParentFont = False
          TabOrder = 3
        end
        object PTPRT4: TUniDBLookupComboBox
          Tag = 9
          Left = 103
          Top = 6
          Width = 183
          Height = 21
          ListField = 'THAI_DESC'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'PTPRT4'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 4
          OnCloseUp = PTPRT4CloseUp
        end
        object BCMRT4: TUniDBLookupComboBox
          Tag = 9
          Left = 15
          Top = 77
          Width = 274
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'BCMRT4'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 5
        end
        object MEMRT4: TUniDBMemo
          Tag = 9
          Left = 16
          Top = 120
          Width = 270
          Height = 57
          DataField = 'MEMRT4'
          DataSource = dsgrid
          TabOrder = 6
          Color = clWindow
        end
        object UniLabel23: TUniLabel
          Left = 10
          Top = 101
          Width = 43
          Height = 13
          Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          ParentFont = False
          TabOrder = 7
        end
        object AMTRT4: TUniEdit
          Tag = 9
          Left = 103
          Top = 33
          Width = 183
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'AMTRT4'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          Text = '0.00'
          ParentFont = False
          TabOrder = 8
          Color = clWindow
          OnExit = AMTRT4Exit
          OnKeyPress = AMTRT4KeyPress
        end
      end
      object PnDtl3: TUniPanel
        Left = 642
        Top = 1
        Width = 381
        Height = 186
        BorderStyle = ubsNone
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        TabOrder = 3
        ExplicitLeft = 648
        ExplicitTop = 5
        ExplicitWidth = 551
        ExplicitHeight = 188
        object UniLabel11: TUniLabel
          Left = 12
          Top = 33
          Width = 35
          Height = 13
          Caption = #3608#3609#3634#3588#3634#3619
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel16: TUniLabel
          Left = 12
          Top = 83
          Width = 44
          Height = 13
          Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel17: TUniLabel
          Left = 12
          Top = 58
          Width = 24
          Height = 13
          Caption = #3626#3634#3586#3634
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel18: TUniLabel
          Left = 12
          Top = 8
          Width = 59
          Height = 13
          Caption = #3648#3594#3655#3588#3605#3656#3634#3591#3626#3634#3586#3634
          ParentFont = False
          TabOrder = 4
        end
        object UniLabel19: TUniLabel
          Left = 12
          Top = 108
          Width = 64
          Height = 13
          Caption = #3623#3633#3609#3588#3619#3610#3585#3635#3627#3609#3604
          ParentFont = False
          TabOrder = 5
        end
        object DDTRT4: TUniDateTimePicker
          Tag = 9
          Left = 95
          Top = 110
          Width = 138
          Height = 22
          Hint = #3623#3633#3609#3588#3619#3610#3585#3635#3627#3609#3604
          HelpType = htKeyword
          HelpKeyword = 'DDTRT4'
          DateTime = 41201.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 6
          ParentColor = False
          Color = clWhite
        end
        object PINRT4: TUniDBLookupComboBox
          Tag = 9
          Left = 94
          Top = 8
          Width = 184
          Height = 21
          ListField = 'THAI_DESC'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'PINRT4'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 7
        end
        object BAKRT4: TUniDBLookupComboBox
          Tag = 9
          Left = 94
          Top = 33
          Width = 184
          Height = 21
          ListField = 'THAI_DESC'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'BAKRT4'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 8
        end
        object BBRRT4: TUniDBEdit
          Tag = 9
          Left = 94
          Top = 58
          Width = 184
          Height = 21
          DataField = 'BBRRT4'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 9
          Color = clWindow
        end
        object NOTRT4: TUniDBEdit
          Tag = 9
          Left = 94
          Top = 83
          Width = 184
          Height = 21
          DataField = 'NOTRT4'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 10
          Color = clWindow
        end
      end
    end
    object PnAm4: TUniPanel
      Left = 0
      Top = 188
      Width = 1023
      Height = 377
      BorderStyle = ubsNone
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      object pnHeadAm4: TUniPanel
        Left = 0
        Top = 0
        Width = 1023
        Height = 41
        BorderStyle = ubsNone
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        TabOrder = 1
        object BtnAddRt4: TUniButton
          Left = 6
          Top = 7
          Width = 75
          Height = 25
          Caption = #3648#3614#3636#3656#3617
          ParentFont = False
          TabOrder = 1
          OnClick = BtnAddRt4Click
        end
        object BtnDeleteRt4: TUniButton
          Left = 87
          Top = 7
          Width = 75
          Height = 25
          Caption = #3621#3610
          ParentFont = False
          TabOrder = 2
          OnClick = BtnDeleteRt4Click
        end
      end
      object PnBottomAmt: TUniPanel
        Left = 0
        Top = 337
        Width = 1023
        Height = 40
        BorderStyle = ubsNone
        Align = alBottom
        Anchors = [akLeft, akRight, akBottom]
        Color = clBtnFace
        TabOrder = 2
        object LbSumAmt: TUniLabel
          Left = 580
          Top = 9
          Width = 147
          Height = 16
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617#3607#3640#3585#3619#3634#3618#3585#3634#3619
          ParentFont = False
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 1
        end
        object EdtSumAmtRt4: TUniEdit
          Tag = 9
          Left = 736
          Top = 6
          Width = 183
          Height = 21
          HelpType = htKeyword
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          Text = '0.00'
          ParentFont = False
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 2
          Color = clWindow
          ReadOnly = True
          OnExit = AMTRT4Exit
          OnKeyPress = AMTRT4KeyPress
        end
      end
      object DbRt4: TUniDBGrid
        Left = 0
        Top = 41
        Width = 1023
        Height = 296
        Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
        DataSource = dsRcvGetRt4
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
        StripeRows = False
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentFont = False
        TabOrder = 3
        Columns = <
          item
            FieldName = 'typrt4'
            Title.Alignment = taCenter
            Title.Caption = #3619#3627#3633#3626#3611#3619#3632#3648#3616#3607
            Width = 156
            Visible = True
            Alignment = taCenter
            Expanded = False
          end
          item
            FieldName = 'TNMTYP'
            Title.Alignment = taCenter
            Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619
            Width = 463
            Visible = True
            Expanded = False
          end
          item
            FieldName = 'amtrt4'
            Title.Alignment = taCenter
            Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
            Width = 161
            Visible = True
            Alignment = taRightJustify
            Expanded = False
          end>
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 654
    Width = 1023
    TabOrder = 2
    ExplicitTop = 654
    ExplicitWidth = 1023
    inherited imgBotton: TUniImage
      Width = 1023
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
      ExplicitWidth = 1023
    end
    inherited btnCancel: TUniButton
      Left = 928
      ExplicitLeft = 928
    end
    inherited btnConfirm: TUniButton
      Left = 847
      ExplicitLeft = 847
    end
    object BtnPrint: TUniButton
      Left = 766
      Top = 6
      Width = 75
      Height = 25
      Caption = #3614#3636#3617#3614#3660#3651#3610#3648#3626#3619#3655#3592
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 5
      OnClick = BtnPrintClick
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1023
    Height = 89
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = 1
    ExplicitWidth = 1218
    ExplicitHeight = 89
    object LbDnort4: TUniLabel
      Left = 16
      Top = 58
      Width = 66
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3619#3633#3610#3648#3591#3636#3609
      ParentFont = False
      TabOrder = 1
    end
    object Lbidtrt4: TUniLabel
      Left = 346
      Top = 58
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 2
    end
    object STSOT5lb: TUniLabel
      Left = 655
      Top = 6
      Width = 83
      Height = 13
      Caption = #3626#3606#3634#3609#3632#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
      ParentFont = False
      TabOrder = 3
    end
    object ddyyyylb: TUniLabel
      Left = 346
      Top = 6
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 4
    end
    object CMPOT5lb: TUniLabel
      Left = 16
      Top = 6
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 5
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
      TabOrder = 6
      Color = clWindow
      ReadOnly = True
    end
    object CMPRT4: TUniDBEdit
      Tag = 9
      Left = 97
      Top = 5
      Width = 212
      Height = 21
      DataField = 'CMPRT4'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      ParentFont = False
      TabOrder = 7
      Color = clWindow
    end
    object BRNOT5lb: TUniLabel
      Left = 16
      Top = 31
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 8
    end
    object BRNRT4: TUniDBLookupComboBox
      Tag = 9
      Left = 97
      Top = 30
      Width = 212
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNRT4'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 9
    end
    object DEPOT5lb: TUniLabel
      Left = 346
      Top = 31
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 10
    end
    object DEPRT4: TUniDBLookupComboBox
      Tag = 9
      Left = 438
      Top = 31
      Width = 191
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'DEPRT4'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 11
    end
    object STSRT4: TUniDBLookupComboBox
      Tag = 9
      Left = 784
      Top = 6
      Width = 137
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSRT4'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 12
    end
    object DNORT4: TUniDBEdit
      Tag = 9
      Left = 97
      Top = 57
      Width = 211
      Height = 21
      DataField = 'DNORT4'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      ParentFont = False
      TabOrder = 13
      Color = clWindow
      ReadOnly = True
    end
    object IDTRT4: TUniDateTimePicker
      Tag = 9
      Left = 438
      Top = 58
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      HelpType = htKeyword
      HelpKeyword = 'IDTOT5'
      DateTime = 41201.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 14
      ParentColor = False
      Color = clWhite
    end
    object LbBug: TUniLabel
      Left = 784
      Top = 33
      Width = 59
      Height = 13
      Caption = 'Test Version'
      TabOrder = 15
    end
  end
  inherited pnUser: TUniPanel
    Top = 691
    Width = 1023
    ExplicitTop = 691
    ExplicitWidth = 1023
  end
  object dsgrid: TDataSource
    Left = 648
    Top = 32
  end
  object dsAddr01: TDataSource
    Left = 48
    Top = 152
  end
  object dsRcvGetRt4: TDataSource
    Left = 16
    Top = 432
  end
  object dsRcvGetGt1: TDataSource
    Left = 16
    Top = 568
  end
  object csDeleteRt4: TUniScreenMask
    AttachedControl = BtnDeleteRt4
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3621#3610#3586#3657#3629#3617#3641#3621'...'
    Left = 440
    Top = 400
  end
  object DataSource1: TDataSource
    Left = 424
    Top = 160
  end
end
