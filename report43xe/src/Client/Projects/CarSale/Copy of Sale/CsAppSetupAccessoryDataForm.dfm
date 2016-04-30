inherited frmCsAppSetupAccessoryData: TfrmCsAppSetupAccessoryData
  Caption = #3651#3610#3605#3636#3604#3605#3633#3657#3591'/'#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629' '#3629#3640#3611#3585#3619#3603#3660#3605#3585#3649#3605#3656#3591
  ClientHeight = 650
  ClientWidth = 983
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 983
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 84
    Width = 983
    Height = 508
    TabOrder = 1
    ExplicitTop = 62
    ExplicitWidth = 968
    ExplicitHeight = 527
    object PnHeadDtl: TUniPanel
      Left = 1
      Top = 1
      Width = 981
      Height = 247
      BorderStyle = ubsNone
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
      object PnDtl1: TUniPanel
        Left = 0
        Top = 0
        Width = 330
        Height = 162
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 1
        ExplicitLeft = -6
        object CNOOT5lb: TUniLabel
          Left = 21
          Top = 5
          Width = 45
          Height = 13
          Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
          ParentFont = False
          TabOrder = 1
        end
        object CNOOT5: TUniDBEdit
          Tag = 9
          Left = 108
          Top = 5
          Width = 200
          Height = 21
          DataField = 'CNOOT5'
          DataSource = dsMtAppGet
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 2
          Color = clWindow
          ReadOnly = True
        end
        object TNMCSM: TUniDBEdit
          Tag = 9
          Left = 108
          Top = 27
          Width = 200
          Height = 21
          DataField = 'TNMCSM'
          DataSource = dsMtAppGet
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 3
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel1: TUniLabel
          Left = 21
          Top = 52
          Width = 21
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ParentFont = False
          TabOrder = 4
        end
        object TA1CSM: TUniDBEdit
          Tag = 9
          Left = 108
          Top = 51
          Width = 200
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
          Left = 108
          Top = 74
          Width = 200
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
        object UniLabel3: TUniLabel
          Left = 21
          Top = 100
          Width = 30
          Height = 13
          Caption = #3592#3633#3591#3627#3623#3633#3604
          ParentFont = False
          TabOrder = 7
        end
        object CHGCSM: TUniDBLookupComboBox
          Tag = 9
          Left = 108
          Top = 97
          Width = 200
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'CHGCSM'
          DataSource = dsAddr01
          ParentFont = False
          TabOrder = 8
        end
        object UniLabel4: TUniLabel
          Left = 21
          Top = 122
          Width = 40
          Height = 13
          Caption = #3650#3607#3619#3624#3633#3614#3607#3660
          ParentFont = False
          TabOrder = 9
        end
        object UniLabel7: TUniLabel
          Left = 21
          Top = 28
          Width = 14
          Height = 13
          Caption = #3594#3639#3656#3629
          ParentFont = False
          TabOrder = 10
        end
        object TELCSM: TUniDBEdit
          Tag = 9
          Left = 108
          Top = 120
          Width = 200
          Height = 21
          DataField = 'TELCSM'
          DataSource = dsAddr01
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 11
          Color = clWindow
          ReadOnly = True
        end
      end
      object PnDtl2: TUniPanel
        Left = 330
        Top = 0
        Width = 314
        Height = 162
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 2
        ExplicitLeft = 324
        ExplicitHeight = 163
        object UniLabel10: TUniLabel
          Left = 14
          Top = 5
          Width = 82
          Height = 13
          Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel17: TUniLabel
          Left = 14
          Top = 28
          Width = 49
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656#3629#3657#3634#3591#3629#3636#3591
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel18: TUniLabel
          Left = 14
          Top = 77
          Width = 41
          Height = 13
          Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel19: TUniLabel
          Left = 14
          Top = 100
          Width = 71
          Height = 13
          Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          ParentFont = False
          TabOrder = 4
        end
        object UniLabel20: TUniLabel
          Left = 14
          Top = 52
          Width = 23
          Height = 13
          Caption = #3619#3640#3656#3609#3619#3606
          ParentFont = False
          TabOrder = 5
        end
        object UniLabel21: TUniLabel
          Left = 14
          Top = 122
          Width = 7
          Height = 13
          Caption = #3626#3637
          ParentFont = False
          TabOrder = 6
        end
        object DNOOT5: TUniDBEdit
          Tag = 9
          Left = 102
          Top = 3
          Width = 155
          Height = 21
          DataField = 'DNOOT5'
          DataSource = dsSetupAccessoryGetList
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taCenter
          ParentFont = False
          TabOrder = 7
          Color = clWindow
          ReadOnly = True
        end
        object IDTOT5: TUniDateTimePicker
          Tag = 9
          Left = 102
          Top = 27
          Width = 151
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
          HelpType = htKeyword
          HelpKeyword = 'IDTOT5'
          DateTime = 41304.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          ReadOnly = True
          TabOrder = 8
          ParentColor = False
          Color = clWhite
        end
        object SRSPM1: TUniDBLookupComboBox
          Tag = 9
          Left = 102
          Top = 51
          Width = 194
          Height = 21
          Hint = #3619#3640#3656#3609#3619#3606
          ListField = 'THAI_DESC'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'SRSPM1'
          DataSource = dsMtAppGet
          ParentFont = False
          TabOrder = 9
        end
        object SEROT5: TUniDBEdit
          Tag = 9
          Left = 103
          Top = 74
          Width = 194
          Height = 21
          DataField = 'SEROT5'
          DataSource = dsMtAppGet
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 10
          Color = clWindow
          ReadOnly = True
        end
        object ENGOT5: TUniDBEdit
          Tag = 9
          Left = 102
          Top = 97
          Width = 194
          Height = 21
          DataField = 'ENGOT5'
          DataSource = dsMtAppGet
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 11
          Color = clWindow
          ReadOnly = True
        end
        object COLOT5: TUniDBLookupComboBox
          Tag = 9
          Left = 102
          Top = 120
          Width = 195
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'COLOT5'
          DataSource = dsMtAppGet
          ParentFont = False
          TabOrder = 12
        end
        object BtnSelectApp: TUniButton
          Left = 263
          Top = 5
          Width = 45
          Height = 22
          Caption = '...'
          ParentFont = False
          TabOrder = 13
          OnClick = BtnSelectAppClick
        end
      end
      object PnDtl3: TUniPanel
        Left = 644
        Top = 0
        Width = 337
        Height = 162
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        TabOrder = 3
        ExplicitLeft = 683
        ExplicitTop = -55
        ExplicitWidth = 317
        object UniLabel12: TUniLabel
          Left = 14
          Top = 28
          Width = 61
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656#3588#3634#3604#3623#3656#3634#3626#3656#3591
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel14: TUniLabel
          Left = 14
          Top = 52
          Width = 63
          Height = 13
          Caption = #3592#3634#3585#3588#3621#3633#3591#3626#3636#3609#3588#3657#3634
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel15: TUniLabel
          Left = 14
          Top = 77
          Width = 77
          Height = 13
          Caption = #3648#3592#3657#3634#3627#3609#3657#3634#3607#3637#3656#3612#3641#3657#3605#3636#3604#3605#3656#3629
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel44: TUniLabel
          Left = 14
          Top = 5
          Width = 56
          Height = 13
          Caption = #3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          ParentFont = False
          TabOrder = 4
        end
        object DBTWHOM3: TUniDBEdit
          Tag = 9
          Left = 106
          Top = 52
          Width = 179
          Height = 21
          DataField = 'TNMWHS'
          DataSource = dsMtAppGet
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 5
          Color = clWindow
          ReadOnly = True
        end
        object SDTOM3: TUniDateTimePicker
          Tag = 9
          Left = 106
          Top = 27
          Width = 151
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3588#3634#3604#3623#3656#3634#3592#3632#3626#3656#3591#3617#3629#3610
          HelpType = htKeyword
          HelpKeyword = 'SDTOM3'
          DateTime = 40191.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 6
          ParentColor = False
          Color = clWhite
        end
        object PSTOT5: TUniDBLookupComboBox
          Tag = 9
          Left = 107
          Top = 74
          Width = 179
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'PSTOT5'
          DataSource = dsMtAppGet
          ParentFont = False
          TabOrder = 7
        end
        object SMNOT5: TUniDBLookupComboBox
          Tag = 9
          Left = 106
          Top = 3
          Width = 180
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'SMNOT5'
          DataSource = dsMtAppGet
          ParentFont = False
          TabOrder = 8
        end
      end
      object PnDtl4: TUniPanel
        Left = 0
        Top = 162
        Width = 981
        Height = 85
        Align = alBottom
        Anchors = [akLeft, akRight, akBottom]
        Color = clBtnFace
        TabOrder = 4
        ExplicitTop = 155
        ExplicitWidth = 961
        object UniLabel45: TUniLabel
          Left = 12
          Top = 6
          Width = 43
          Height = 13
          Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          ParentFont = False
          TabOrder = 1
        end
        object DSEOM3: TUniDBMemo
          Left = 108
          Top = 6
          Width = 200
          Height = 72
          TabOrder = 2
          Color = clWindow
        end
        object UniLabel2: TUniLabel
          Left = 344
          Top = 6
          Width = 75
          Height = 13
          Caption = #3619#3627#3633#3626#3612#3641#3657#3592#3633#3604#3592#3635#3627#3609#3656#3634#3618
          ParentFont = False
          TabOrder = 3
        end
        object DBVNOOM3: TUniDBEdit
          Tag = 9
          Left = 432
          Top = 6
          Width = 155
          Height = 21
          DataField = 'VNOOM3'
          DataSource = dsSetupAccessoryGetList
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taCenter
          ParentFont = False
          TabOrder = 4
          Color = clWindow
          ReadOnly = True
        end
        object BtnSelectVN: TUniButton
          Left = 593
          Top = 6
          Width = 45
          Height = 22
          Caption = '...'
          ParentFont = False
          TabOrder = 5
          OnClick = BtnSelectVNClick
        end
        object UniLabel5: TUniLabel
          Left = 346
          Top = 32
          Width = 14
          Height = 13
          Caption = #3594#3639#3656#3629
          ParentFont = False
          TabOrder = 6
        end
        object DBTNMVNO: TUniDBEdit
          Tag = 9
          Left = 432
          Top = 30
          Width = 200
          Height = 21
          DataField = 'TNMVNO'
          DataSource = dsSetupAccessoryGetList
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 7
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel6: TUniLabel
          Left = 346
          Top = 57
          Width = 21
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ParentFont = False
          TabOrder = 8
        end
        object TA1VNO: TUniDBEdit
          Tag = 9
          Left = 433
          Top = 57
          Width = 200
          Height = 21
          DataField = 'TA1VNO'
          DataSource = dsSetupAccessoryGetList
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 9
          Color = clWindow
          ReadOnly = True
        end
        object UniPanel2: TUniPanel
          Left = 1
          Top = 155
          Width = 958
          Height = 83
          Align = alCustom
          Color = clBtnFace
          TabOrder = 10
          object UniLabel8: TUniLabel
            Left = 12
            Top = 6
            Width = 43
            Height = 13
            Caption = #3627#3617#3634#3618#3648#3627#3605#3640
            ParentFont = False
            TabOrder = 1
          end
          object UniDBMemo1: TUniDBMemo
            Left = 108
            Top = 6
            Width = 200
            Height = 72
            TabOrder = 2
            Color = clWindow
          end
          object UniLabel9: TUniLabel
            Left = 336
            Top = 6
            Width = 75
            Height = 13
            Caption = #3619#3627#3633#3626#3612#3641#3657#3592#3633#3604#3592#3635#3627#3609#3656#3634#3618
            ParentFont = False
            TabOrder = 3
          end
          object UniDBEdit5: TUniDBEdit
            Tag = 9
            Left = 432
            Top = 6
            Width = 155
            Height = 21
            DataField = 'DNOOT5'
            DataSource = dsMtAppGet
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taCenter
            ParentFont = False
            TabOrder = 4
            Color = clWindow
            ReadOnly = True
          end
          object UniButton2: TUniButton
            Left = 593
            Top = 6
            Width = 45
            Height = 22
            Caption = '...'
            ParentFont = False
            TabOrder = 5
            OnClick = BtnSelectAppClick
          end
          object UniLabel11: TUniLabel
            Left = 346
            Top = 32
            Width = 14
            Height = 13
            Caption = #3594#3639#3656#3629
            ParentFont = False
            TabOrder = 6
          end
          object UniDBEdit6: TUniDBEdit
            Tag = 9
            Left = 433
            Top = 32
            Width = 200
            Height = 21
            DataField = 'TNMCSM'
            DataSource = dsMtAppGet
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 7
            Color = clWindow
            ReadOnly = True
          end
          object UniLabel13: TUniLabel
            Left = 346
            Top = 57
            Width = 21
            Height = 13
            Caption = #3607#3637#3656#3629#3618#3641#3656
            ParentFont = False
            TabOrder = 8
          end
          object UniDBEdit7: TUniDBEdit
            Tag = 9
            Left = 433
            Top = 57
            Width = 200
            Height = 21
            DataField = 'TA1CSM'
            DataSource = dsAddr01
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 9
            Color = clWindow
            ReadOnly = True
          end
        end
        object UniLabel16: TUniLabel
          Left = 662
          Top = 6
          Width = 64
          Height = 13
          Caption = #3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
          ParentFont = False
          TabOrder = 11
        end
        object UniLabel22: TUniLabel
          Left = 662
          Top = 32
          Width = 67
          Height = 13
          Caption = #3585#3635#3627#3609#3604#3623#3633#3609#3594#3635#3619#3632
          ParentFont = False
          TabOrder = 12
        end
        object UniLabel23: TUniLabel
          Left = 662
          Top = 57
          Width = 73
          Height = 13
          Caption = #3619#3633#3610#3648#3586#3657#3634#3588#3621#3633#3591#3626#3636#3609#3588#3657#3634
          ParentFont = False
          TabOrder = 13
        end
        object ChkVAT: TUniCheckBox
          Left = 749
          Top = 10
          Width = 33
          Height = 17
          Enabled = False
          Checked = True
          Caption = #3617#3637
          TabOrder = 14
        end
        object VPCPT1: TUniEdit
          Tag = 9
          Left = 788
          Top = 5
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
          TabOrder = 15
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel24: TUniLabel
          Left = 884
          Top = 14
          Width = 11
          Height = 13
          Caption = '%'
          ParentFont = False
          TabOrder = 16
        end
        object DDTPT1: TUniDateTimePicker
          Tag = 9
          Left = 751
          Top = 32
          Width = 151
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3588#3619#3610#3585#3635#3627#3609#3604
          DateTime = 41106.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 17
          ParentColor = False
          Color = clWhite
        end
        object TWHOM3: TUniDBLookupComboBox
          Tag = 9
          Left = 751
          Top = 57
          Width = 179
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'TWHOM3'
          DataSource = dsSetupAccessoryGetList
          ParentFont = False
          TabOrder = 18
        end
      end
    end
    object DbgAccessory: TUniDBGrid
      Left = 1
      Top = 247
      Width = 901
      Height = 109
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      DataSource = dsAccessory
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      StripeRows = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 2
      Columns = <
        item
          FieldName = 'FLAG'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3639#3629#3585
          Width = 46
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SEQOT6'
          Title.Alignment = taCenter
          Title.Caption = #3621#3635#3604#3633#3610
          Title.Font.Charset = THAI_CHARSET
          Width = 36
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'FSROT6'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3634#3618#3585#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 93
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 167
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'FQ1OT6'
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3636#3617#3634#3603'<br>'#3627#3609#3656#3623#3618#3627#3621#3633#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 90
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'FQ2OT6'
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3636#3617#3634#3603'<br>'#3627#3609#3656#3623#3618#3618#3656#3629#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 82
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'FU1OT6'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634'/'#3627#3609#3656#3623#3618'<br>'#3627#3609#3656#3623#3618#3627#3621#3633#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 94
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'FU2OT6'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634'/'#3627#3609#3656#3623#3618'<br>'#3627#3609#3656#3623#3618#3618#3656#3629#3618
          Width = 92
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'AMTOT6'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 82
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'FP1OT6'
          Title.Alignment = taCenter
          Title.Caption = #3626#3656#3623#3609#3621#3604'<br>'#3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          Width = 90
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'FP2OT6'
          Title.Alignment = taCenter
          Title.Caption = #3626#3656#3623#3609#3621#3604'<br>'#3612#3592#3585'.'#3586#3634#3618
          Width = 84
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'FP3OT6'
          Title.Alignment = taCenter
          Title.Caption = #3626#3656#3623#3609#3621#3604'<br>'#3614#3636#3648#3624#3625'(VIP)'
          Width = 81
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'FP4OT6'
          Title.Alignment = taCenter
          Title.Caption = #3626#3656#3623#3609#3621#3604'<br>TM'
          Width = 81
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'NETOT6'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3626#3640#3607#3608#3636
          Width = 94
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end>
    end
    object DbSetUpAccessory: TUniDBGrid
      Left = 1
      Top = 360
      Width = 981
      Height = 148
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      DataSource = dsSetupAccessory
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      StripeRows = False
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      ParentFont = False
      TabOrder = 3
      Columns = <
        item
          FieldName = 'SEQOM3'
          Title.Alignment = taCenter
          Title.Caption = #3621#3635#3604#3633#3610
          Title.Font.Charset = THAI_CHARSET
          Width = 36
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'FSROM3'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3634#3618#3585#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 93
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 167
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'QO1OM3'
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3636#3617#3634#3603'<br>'#3627#3609#3656#3623#3618#3627#3621#3633#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 90
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'QO2OM3'
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3636#3617#3634#3603'<br>'#3627#3609#3656#3623#3618#3618#3656#3629#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 82
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'UC1OM3'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634#3595#3639#3657#3629'<br>'#3627#3609#3656#3623#3618#3627#3621#3633#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 94
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'UC2OM3'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634#3595#3639#3657#3629'<br>'#3627#3609#3656#3623#3618#3618#3656#3629#3618
          Width = 92
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'AMT_CAL'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 82
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'NTEOM3'
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Width = 159
          Visible = True
          Expanded = False
        end>
    end
    object SpterAccessory: TUniSplitter
      Left = 0
      Top = 356
      Width = 983
      Height = 4
      Cursor = crVSplit
      MinSize = 30
      Align = alBottom
      ParentColor = False
      Color = clBtnFace
    end
    object UniPanel1: TUniPanel
      Left = 901
      Top = 247
      Width = 82
      Height = 109
      BorderStyle = ubsNone
      Align = alRight
      Anchors = [akTop, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 5
      DesignSize = (
        82
        109)
      object BtnOk: TUniButton
        Left = 7
        Top = 7
        Width = 68
        Height = 82
        Caption = #3605#3585#3621#3591
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 1
        OnClick = BtnOkClick
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 613
    Width = 983
    TabOrder = 2
    ExplicitTop = 613
    ExplicitWidth = 983
    inherited imgBotton: TUniImage
      Width = 983
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
      ExplicitWidth = 983
      ExplicitHeight = 37
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 901
      ExplicitLeft = 901
    end
    inherited btnConfirm: TUniButton
      Left = 820
      ExplicitLeft = 820
    end
    object BtnPrint: TUniButton
      Left = 739
      Top = 6
      Width = 75
      Height = 25
      Caption = #3614#3636#3617#3614#3660
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnPrintClick
    end
  end
  inherited pnHeader: TUniPanel
    Width = 983
    Height = 84
    BorderStyle = ubsFrameLowered
    TabOrder = 0
    ExplicitTop = 2
    ExplicitWidth = 963
    ExplicitHeight = 84
    object STSOT5lb: TUniLabel
      Left = 578
      Top = 53
      Width = 83
      Height = 13
      Caption = #3626#3606#3634#3609#3632#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
      ParentFont = False
      TabOrder = 1
    end
    object ddyyyylb: TUniLabel
      Left = 14
      Top = 2
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 2
    end
    object CMPOT5lb: TUniLabel
      Left = 347
      Top = 3
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 3
    end
    object DNOOT5lb: TUniLabel
      Left = 13
      Top = 29
      Width = 61
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object ddyyyy: TUniEdit
      Tag = 9
      Left = 112
      Top = 3
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
    object CMPOM3: TUniDBEdit
      Tag = 9
      Left = 391
      Top = 3
      Width = 195
      Height = 21
      DataField = 'CMPOM3'
      DataSource = dsSetupAccessoryGetList
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
      Left = 637
      Top = 3
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 7
    end
    object BRNOM3: TUniDBLookupComboBox
      Tag = 9
      Left = 684
      Top = 3
      Width = 250
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNOM3'
      DataSource = dsSetupAccessoryGetList
      ParentFont = False
      TabOrder = 8
    end
    object ORDOM3: TUniDBEdit
      Tag = 9
      Left = 112
      Top = 28
      Width = 191
      Height = 21
      DataField = 'ORDOM3'
      DataSource = dsSetupAccessoryGetList
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      ParentFont = False
      TabOrder = 9
      Color = clWindow
      ReadOnly = True
    end
    object IDTOT5lb: TUniLabel
      Left = 320
      Top = 28
      Width = 55
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 10
    end
    object IDTOM3: TUniDateTimePicker
      Tag = 9
      Left = 391
      Top = 27
      Width = 151
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      HelpType = htKeyword
      HelpKeyword = 'IDTOM3'
      DateTime = 41304.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 11
      ParentColor = False
      Color = clWhite
    end
    object STSOT5: TUniDBLookupComboBox
      Tag = 9
      Left = 684
      Top = 53
      Width = 191
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSOT5'
      DataSource = dsSetupAccessoryGetList
      ParentFont = False
      TabOrder = 12
    end
    object DEPOT5lb: TUniLabel
      Left = 633
      Top = 28
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 13
    end
    object DEPOM3: TUniDBLookupComboBox
      Tag = 9
      Left = 684
      Top = 27
      Width = 250
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'DEPOM3'
      DataSource = dsSetupAccessoryGetList
      ParentFont = False
      TabOrder = 14
    end
    object Rdo502: TUniRadioButton
      Left = 47
      Top = 57
      Width = 113
      Height = 17
      Checked = True
      Caption = #3651#3610#3626#3633#3656#3591#3595#3639#3657#3629#3616#3634#3618#3609#3629#3585
      TabOrder = 15
      OnClick = Rdo502Click
    end
    object Rdo503: TUniRadioButton
      Left = 191
      Top = 57
      Width = 113
      Height = 17
      Checked = False
      Caption = #3651#3610#3626#3633#3656#3591#3605#3636#3604#3605#3633#3657#3591#3616#3634#3618#3651#3609
      TabOrder = 16
      OnClick = Rdo503Click
    end
  end
  inherited pnUser: TUniPanel
    Top = 592
    Width = 983
    ExplicitTop = 592
    ExplicitWidth = 983
  end
  object dsMtAppGet: TDataSource
    Left = 112
    Top = 360
  end
  object dsAddr01: TDataSource
    Left = 168
    Top = 360
  end
  object dsAccessory: TDataSource
    Left = 432
    Top = 376
  end
  object dsSetupAccessory: TDataSource
    Left = 400
    Top = 496
  end
  object dsSetupAccessoryGetList: TDataSource
    Left = 32
    Top = 360
  end
end
