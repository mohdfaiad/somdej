inherited frmPsRcvProductCarData: TfrmPsRcvProductCarData
  Caption = #3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634' '#3652#3617#3656#3617#3637#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
  ClientHeight = 629
  ClientWidth = 976
  Position = poScreenCenter
  NavigateKeys.Next.Key = 13
  ExplicitWidth = 976
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 93
    Width = 976
    Height = 478
    TabOrder = 1
    ExplicitTop = 136
    ExplicitWidth = 976
    ExplicitHeight = 434
    object PnInvoice: TUniPanel
      Left = 1
      Top = 1
      Width = 974
      Height = 197
      BorderStyle = ubsNone
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
      object GrpVno: TUniGroupBox
        Left = 7
        Top = 2
        Width = 304
        Height = 190
        Caption = #3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
        Align = alCustom
        TabOrder = 1
        object UniLabel5: TUniLabel
          Left = 17
          Top = 26
          Width = 19
          Height = 13
          Caption = #3619#3627#3633#3626
          ParentFont = False
          TabOrder = 1
        end
        object DbvNOPT1: TUniDBEdit
          Tag = 9
          Left = 72
          Top = 27
          Width = 159
          Height = 21
          DataField = 'vNOPT1'
          DataSource = dsDATA
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 2
          Color = clWindow
        end
        object BtnSelectvno: TUniButton
          Left = 239
          Top = 26
          Width = 45
          Height = 22
          Caption = '...'
          ParentFont = False
          TabOrder = 3
          OnClick = BtnSelectvnoClick
        end
        object DbTNMVM1: TUniDBEdit
          Tag = 9
          Left = 72
          Top = 54
          Width = 210
          Height = 21
          DataField = 'TNMVM1'
          DataSource = dsDATA
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 4
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel1: TUniLabel
          Left = 17
          Top = 81
          Width = 21
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ParentFont = False
          TabOrder = 5
        end
        object DbTa1_01: TUniDBEdit
          Tag = 9
          Left = 72
          Top = 81
          Width = 210
          Height = 21
          DataField = 'TA1VMA'
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
        object DbTa2_01: TUniDBEdit
          Tag = 9
          Left = 72
          Top = 105
          Width = 210
          Height = 21
          DataField = 'TA2VMA'
          DataSource = dsAddr01
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 7
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel8: TUniLabel
          Left = 17
          Top = 129
          Width = 30
          Height = 13
          Caption = #3592#3633#3591#3627#3623#3633#3604
          ParentFont = False
          TabOrder = 8
        end
        object CmbChg_01: TUniDBLookupComboBox
          Tag = 9
          Left = 72
          Top = 129
          Width = 210
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'CHGVMA'
          DataSource = dsAddr01
          ParentFont = False
          TabOrder = 9
        end
        object UniLabel18: TUniLabel
          Left = 17
          Top = 154
          Width = 35
          Height = 13
          Caption = #3612#3641#3657#3605#3636#3604#3605#3656#3629
          ParentFont = False
          TabOrder = 10
        end
        object UniLabel19: TUniLabel
          Left = 17
          Top = 54
          Width = 14
          Height = 13
          Caption = #3594#3639#3656#3629
          ParentFont = False
          TabOrder = 11
        end
        object CdsCPS: TUniDBLookupComboBox
          Tag = 9
          Left = 72
          Top = 156
          Width = 210
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'CPSVM1'
          DataSource = dsDATA
          ParentFont = False
          TabOrder = 12
        end
      end
      object UniGroupBox1: TUniGroupBox
        Left = 317
        Top = 2
        Width = 281
        Height = 190
        Caption = #3629#3636#3609#3623#3629#3618#3595#3660
        TabOrder = 2
        object UniLabel4: TUniLabel
          Left = 13
          Top = 24
          Width = 40
          Height = 13
          Caption = #3629#3636#3609#3623#3629#3618#3595#3660
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel9: TUniLabel
          Left = 13
          Top = 51
          Width = 20
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel20: TUniLabel
          Left = 13
          Top = 102
          Width = 86
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3629#3636#3609#3623#3629#3618#3595#3660
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel21: TUniLabel
          Left = 13
          Top = 129
          Width = 64
          Height = 13
          Caption = #3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
          ParentFont = False
          TabOrder = 4
        end
        object UniLabel22: TUniLabel
          Left = 13
          Top = 78
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 5
        end
        object UniLabel23: TUniLabel
          Left = 13
          Top = 154
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 6
        end
        object RNOPT1: TUniDBEdit
          Tag = 9
          Left = 105
          Top = 23
          Width = 153
          Height = 21
          DataField = 'RNOPT1'
          DataSource = dsDATA
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 7
          Color = clWindow
        end
        object RDVPT1: TUniDateTimePicker
          Tag = 9
          Left = 105
          Top = 51
          Width = 151
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656
          DateTime = 41325.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 8
          ParentColor = False
          Color = clWhite
          OnChange = RDVPT1Change
        end
        object RATPT1: TUniEdit
          Tag = 9
          Left = 105
          Top = 78
          Width = 153
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'RATPT1'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 9
          Color = clWindow
          OnExit = RATPT1Exit
          OnKeyPress = RATPT1KeyPress
        end
        object VAMPT1: TUniEdit
          Tag = 9
          Left = 105
          Top = 154
          Width = 155
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'VAMPT1'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 10
          Color = clWindow
          ReadOnly = True
        end
        object VPCPT1: TUniEdit
          Tag = 9
          Left = 144
          Top = 127
          Width = 86
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'VPCPT1'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 11
          Color = clWindow
        end
        object UniLabel3: TUniLabel
          Left = 240
          Top = 129
          Width = 11
          Height = 13
          Caption = '%'
          ParentFont = False
          TabOrder = 12
        end
        object ChkVAT: TUniCheckBox
          Left = 105
          Top = 129
          Width = 33
          Height = 17
          Enabled = False
          Checked = True
          Caption = #3617#3637
          TabOrder = 13
        end
        object VATPT1: TUniCheckBox
          Left = 105
          Top = 105
          Width = 80
          Height = 17
          Enabled = False
          Checked = True
          Caption = #3619#3623#3617#3616#3634#3625#3637
          TabOrder = 14
        end
      end
      object UniGroupBox3: TUniGroupBox
        Left = 597
        Top = 2
        Width = 361
        Height = 189
        Caption = #3611#3619#3632#3648#3616#3607#3629#3636#3609#3623#3629#3618#3595#3660
        TabOrder = 3
        object UniLabel24: TUniLabel
          Left = 14
          Top = 20
          Width = 76
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3629#3636#3609#3623#3629#3618#3595#3660
          ParentFont = False
          TabOrder = 1
        end
        object RdoTyp2: TUniRadioButton
          Left = 240
          Top = 20
          Width = 97
          Height = 17
          Enabled = False
          Checked = False
          Caption = #3651#3610#3626#3656#3591#3626#3636#3609#3588#3657#3634
          TabOrder = 2
        end
        object RdoTyp1: TUniRadioButton
          Left = 128
          Top = 20
          Width = 113
          Height = 17
          Enabled = False
          Checked = True
          Caption = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          TabOrder = 3
        end
        object UniLabel11: TUniLabel
          Left = 14
          Top = 51
          Width = 58
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656#3594#3635#3619#3632#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 4
        end
        object DDTPT1: TUniDateTimePicker
          Tag = 9
          Left = 98
          Top = 51
          Width = 151
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3588#3619#3610#3585#3635#3627#3609#3604
          DateTime = 41106.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 5
          ParentColor = False
          Color = clWhite
          OnChange = DDTPT1Change
        end
        object UniLabel13: TUniLabel
          Left = 17
          Top = 78
          Width = 65
          Height = 13
          Caption = #3626#3634#3586#3634' '#3594#3635#3619#3632#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 6
        end
        object Cmb: TUniDBLookupComboBox
          Tag = 9
          Left = 98
          Top = 78
          Width = 243
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'BRNPT1'
          DataSource = dsDATA
          ParentFont = False
          TabOrder = 7
        end
        object UniLabel25: TUniLabel
          Left = 15
          Top = 102
          Width = 69
          Height = 13
          Caption = #3649#3612#3609#3585' '#3594#3635#3619#3632#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 8
        end
        object UniDBLookupComboBox2: TUniDBLookupComboBox
          Tag = 9
          Left = 97
          Top = 105
          Width = 243
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'DEPPT1'
          DataSource = dsDATA
          ParentFont = False
          TabOrder = 9
        end
        object UniLabel10: TUniLabel
          Left = 14
          Top = 129
          Width = 24
          Height = 13
          Caption = #3650#3585#3604#3633#3591
          ParentFont = False
          TabOrder = 10
        end
        object CmbBRNFROM: TUniDBLookupComboBox
          Tag = 9
          Left = 98
          Top = 129
          Width = 192
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'FWHPT1'
          DataSource = dsDATA
          ParentFont = False
          TabOrder = 11
        end
      end
    end
    object PnAssign: TUniPanel
      Left = 1
      Top = 197
      Width = 974
      Height = 91
      BorderStyle = ubsNone
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 2
      ExplicitTop = 198
      object UniGroupBox2: TUniGroupBox
        Left = 3
        Top = 0
        Width = 951
        Height = 85
        Caption = #3648#3621#3639#3629#3585#3619#3606#3592#3634#3585' '#3651#3610' Assign week '#3629#3629#3585
        TabOrder = 1
        object LbSrs: TUniLabel
          Left = 67
          Top = 19
          Width = 23
          Height = 13
          Caption = #3619#3640#3656#3609#3619#3606
          ParentFont = False
          TabOrder = 1
        end
        object LbITN: TUniLabel
          Left = 205
          Top = 19
          Width = 30
          Height = 13
          Caption = #3619#3627#3633#3626#3619#3606
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel35: TUniLabel
          Left = 554
          Top = 19
          Width = 41
          Height = 13
          Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel36: TUniLabel
          Left = 729
          Top = 19
          Width = 46
          Height = 13
          Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          ParentFont = False
          TabOrder = 4
        end
        object UniLabel6: TUniLabel
          Left = 406
          Top = 19
          Width = 7
          Height = 13
          Caption = #3626#3637
          ParentFont = False
          TabOrder = 5
        end
        object CmbSrs: TUniDBLookupComboBox
          Tag = 9
          Left = 16
          Top = 38
          Width = 125
          Height = 21
          ListField = 'TNMSRS'
          ListSource = dsSrs
          KeyField = 'SRSPM1'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 6
          OnCloseUp = CmbSrsCloseUp
        end
        object CmbItn: TUniDBLookupComboBox
          Tag = 9
          Left = 147
          Top = 38
          Width = 207
          Height = 21
          ListField = 'ITNAD1'
          ListSource = dsItn
          KeyField = 'ITNAD1'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 7
          OnCloseUp = CmbItnCloseUp
        end
        object CmbCol: TUniDBLookupComboBox
          Tag = 9
          Left = 362
          Top = 38
          Width = 125
          Height = 21
          ListField = 'TNMCOL'
          ListSource = dsCol
          KeyField = 'COLAD1'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 8
        end
        object EdtSer: TUniEdit
          Tag = 9
          Left = 493
          Top = 38
          Width = 174
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'RATPT1'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 9
          Color = clWindow
          OnExit = RATPT1Exit
          OnKeyPress = RATPT1KeyPress
        end
        object EdtEng: TUniEdit
          Tag = 9
          Left = 673
          Top = 38
          Width = 174
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'RATPT1'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 10
          Color = clWindow
          OnExit = RATPT1Exit
          OnKeyPress = RATPT1KeyPress
        end
        object BtnOK: TUniButton
          Left = 868
          Top = 38
          Width = 45
          Height = 22
          Caption = 'OK'
          ParentFont = False
          TabOrder = 11
          OnClick = BtnOKClick
        end
      end
    end
    object dbgDataList: TUniDBGrid
      Left = 1
      Top = 288
      Width = 974
      Height = 190
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      DataSource = dsgrid
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      StripeRows = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 3
      Columns = <
        item
          FieldName = 'EDTAD1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656' '#3585#3635#3627#3609#3604' Assign'
          Width = 98
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'WISAD1'
          Title.Alignment = taCenter
          Title.Caption = 'Week'
          Width = 64
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSRS'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Width = 72
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ITNAD1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3606
          Width = 117
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'TNMCOL'
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 81
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'QT1AD1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 54
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SERAD2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ENGAD2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'UC1PM1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3626#3640#3607#3608#3636
          Width = 90
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'OUTAD1'
          Title.Alignment = taCenter
          Title.Caption = #3588#3591#3588#3657#3634#3591
          Width = 67
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'EPDOM5'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3626#3656#3591#3617#3629#3610
          Width = -1
          Visible = False
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'RSDOM5'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3619#3633#3610#3592#3629#3591
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DNOOM5'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3588#3635#3586#3629
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'FULL_NAME'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
          Width = 100
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMSMN'
          Title.Caption = #3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          Width = 60
          Visible = True
          Expanded = False
        end>
    end
  end
  inherited pnFooter: TUniPanel
    Top = 592
    Width = 976
    TabOrder = 2
    ExplicitTop = 592
    ExplicitWidth = 976
    DesignSize = (
      976
      37)
    inherited imgBotton: TUniImage
      Width = 976
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
      ExplicitWidth = 976
      ExplicitHeight = 37
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 894
      ExplicitLeft = 894
    end
    inherited btnConfirm: TUniButton
      Left = 813
      ExplicitLeft = 813
    end
  end
  inherited pnHeader: TUniPanel
    Width = 976
    Height = 93
    TabOrder = 0
    ExplicitWidth = 976
    ExplicitHeight = 93
    object UniLabel15: TUniLabel
      Left = 338
      Top = 7
      Width = 75
      Height = 13
      Caption = #3611#3619#3632#3648#3616#3607#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
      ParentFont = False
      TabOrder = 1
    end
    object UniLabel16: TUniLabel
      Left = 620
      Top = 7
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 2
    end
    object UniLabel17: TUniLabel
      Left = 39
      Top = 7
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 3
    end
    object lbSearch: TUniLabel
      Left = 338
      Top = 36
      Width = 61
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object EdtYptRcv: TUniEdit
      Tag = 9
      Left = 423
      Top = 7
      Width = 151
      Height = 21
      HelpType = htKeyword
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      Text = #3619#3606#3618#3609#3605#3660
      ParentFont = False
      TabOrder = 5
      Color = clWindow
      ReadOnly = True
    end
    object ddyyyy: TUniEdit
      Tag = 9
      Left = 695
      Top = 7
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
    object CMPPT1: TUniDBEdit
      Tag = 9
      Left = 80
      Top = 7
      Width = 195
      Height = 21
      DataField = 'CMPPT1'
      DataSource = dsDATA
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 7
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 41
      Top = 31
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 8
    end
    object CmbBrn: TUniDBLookupComboBox
      Tag = 9
      Left = 80
      Top = 31
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNPT1'
      DataSource = dsDATA
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel14: TUniLabel
      Left = 39
      Top = 55
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 10
    end
    object DNOPT1: TUniDBEdit
      Tag = 9
      Left = 423
      Top = 34
      Width = 151
      Height = 21
      DataField = 'DNOPT1'
      DataSource = dsDATA
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 11
      Color = clWindow
    end
    object UniLabel7: TUniLabel
      Left = 339
      Top = 58
      Width = 55
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 12
    end
    object CmbDEP: TUniDBLookupComboBox
      Tag = 9
      Left = 80
      Top = 55
      Width = 251
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'DEPPT1'
      DataSource = dsDATA
      ParentFont = False
      TabOrder = 13
    end
    object UniLabel26: TUniLabel
      Left = 578
      Top = 36
      Width = 153
      Height = 13
      Caption = #3629#3657#3634#3591#3629#3636#3591#3648#3621#3586#3607#3637#3656#3651#3610' Assign week '#3629#3629#3585
      ParentFont = False
      Transparent = False
      TabOrder = 14
    end
    object BtnSelectAssignNo: TUniButton
      Left = 894
      Top = 34
      Width = 45
      Height = 22
      Caption = '...'
      ParentFont = False
      TabOrder = 15
      OnClick = BtnSelectAssignNoClick
    end
    object EdtEDTAD1: TUniDateTimePicker
      Tag = 9
      Left = 737
      Top = 62
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656' Assign week '#3629#3629#3585
      DateTime = 41325.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      ReadOnly = True
      TabOrder = 16
      ParentColor = False
      Color = clWhite
    end
    object UniLabel27: TUniLabel
      Left = 610
      Top = 71
      Width = 106
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656' Assign week '#3629#3629#3585
      ParentFont = False
      TabOrder = 17
    end
    object EdtDNOAD1: TUniEdit
      Tag = 9
      Left = 737
      Top = 34
      Width = 151
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taRightJustify
      ParentFont = False
      TabOrder = 18
      Color = clWindow
      ReadOnly = True
      OnExit = RATPT1Exit
      OnKeyPress = RATPT1KeyPress
    end
    object IDTPT1: TUniDateTimePicker
      Tag = 9
      Left = 423
      Top = 62
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      DateTime = 41325.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 19
      ParentColor = False
      Color = clWhite
      OnChange = IDTPT1Change
    end
  end
  inherited pnUser: TUniPanel
    Top = 571
    Width = 976
    ExplicitTop = 571
    ExplicitWidth = 976
  end
  object dsDATA: TDataSource
    Left = 424
    Top = 504
  end
  object dsAddr01: TDataSource
    Left = 288
    Top = 256
  end
  object csPopUpAp: TUniScreenMask
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3649#3626#3604#3591#3586#3657#3629#3617#3641#3621#3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
    Left = 456
    Top = 88
  end
  object csPopUpProduct: TUniScreenMask
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3649#3626#3604#3591#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
    Left = 408
    Top = 408
  end
  object dsgrid: TDataSource
    Left = 512
    Top = 504
  end
  object dsSrs: TDataSource
    Left = 64
    Top = 392
  end
  object dsItn: TDataSource
    Left = 224
    Top = 392
  end
  object dsCol: TDataSource
    Left = 384
    Top = 392
  end
end
