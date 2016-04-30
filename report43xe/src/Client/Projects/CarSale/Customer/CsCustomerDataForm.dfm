inherited frmCsCustomerData: TfrmCsCustomerData
  Caption = #3611#3619#3632#3623#3633#3605#3636#3621#3641#3585#3588#3657#3634
  ClientHeight = 565
  ClientWidth = 948
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 948
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 96
    Width = 948
    Height = 411
    BorderStyle = ubsDefault
    TabOrder = 1
    ExplicitLeft = 1
    ExplicitTop = 97
    ExplicitWidth = 968
    ExplicitHeight = 400
    object PnAr: TUniPageControl
      Left = 1
      Top = 1
      Width = 946
      Height = 409
      OnChange = PnArChange
      ActivePage = TabNormal
      TabOrder = 1
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object TabNormal: TUniTabSheet
        Caption = #3586#3657#3629#3617#3641#3621#3627#3621#3633#3585
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 557
        ExplicitHeight = 375
        object PnApHdr: TUniPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 932
          Height = 103
          BorderStyle = ubsNone
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 0
          object UniLabel11: TUniLabel
            Left = 45
            Top = 10
            Width = 18
            Height = 13
            Caption = #3648#3614#3624
            ParentFont = False
            TabOrder = 1
          end
          object SEXCSM: TUniDBLookupComboBox
            Tag = 9
            Left = 117
            Top = 10
            Width = 183
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'SEXCSM'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel12: TUniLabel
            Left = 326
            Top = 10
            Width = 44
            Height = 13
            Caption = #3626#3606#3634#3609#3616#3634#3614
            ParentFont = False
            TabOrder = 3
          end
          object SSMCSM: TUniDBLookupComboBox
            Tag = 9
            Left = 402
            Top = 10
            Width = 184
            Height = 21
            Hint = 'Beg/End Mode'
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'SSMCSM'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 4
          end
          object UniLabel13: TUniLabel
            Left = 615
            Top = 10
            Width = 30
            Height = 13
            Caption = #3623#3633#3609#3648#3585#3636#3604
            ParentFont = False
            TabOrder = 5
          end
          object BDTCSM: TUniDateTimePicker
            Tag = 9
            Left = 691
            Top = 10
            Width = 138
            Height = 22
            Hint = #3623#3633#3609#3648#3585#3636#3604
            HelpType = htKeyword
            HelpKeyword = 'BDTCSM'
            DateTime = 40742.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 6
            ParentColor = False
            Color = clWhite
            OnChange = BDTCSMChange
            OnKeyPress = BDTCSMKeyPress
          end
          object UniLabel6: TUniLabel
            Left = 619
            Top = 40
            Width = 18
            Height = 13
            Caption = #3629#3634#3618#3640
            ParentFont = False
            TabOrder = 7
          end
          object UniLabel20: TUniLabel
            Left = 45
            Top = 37
            Width = 37
            Height = 13
            Caption = #3648#3594#3639#3657#3629#3594#3634#3605#3636
            ParentFont = False
            TabOrder = 8
          end
          object NTNCSM: TUniDBLookupComboBox
            Tag = 9
            Left = 117
            Top = 36
            Width = 183
            Height = 21
            Hint = ' '
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'NTNCSM'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 9
          end
          object NTVCSM: TUniDBLookupComboBox
            Tag = 9
            Left = 402
            Top = 36
            Width = 184
            Height = 21
            Hint = 'Beg/End Mode'
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'NTVCSM'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 10
          end
          object UniLabel24: TUniLabel
            Left = 325
            Top = 37
            Width = 35
            Height = 13
            Caption = #3626#3633#3597#3594#3634#3605#3636
            ParentFont = False
            TabOrder = 11
          end
          object UniLabel25: TUniLabel
            Left = 45
            Top = 64
            Width = 31
            Height = 13
            Caption = #3624#3634#3626#3609#3634
            ParentFont = False
            TabOrder = 12
          end
          object RELCSM: TUniDBLookupComboBox
            Tag = 9
            Left = 115
            Top = 64
            Width = 185
            Height = 21
            Hint = ' '
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'RELCSM'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 13
          end
          object AGECSM: TUniEdit
            Tag = 9
            Left = 691
            Top = 36
            Width = 137
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'AGECSM'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taCenter
            ParentFont = False
            TabOrder = 14
            Color = clWindow
            ReadOnly = True
          end
        end
        object GrpSelectPrint: TUniGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 302
          Width = 438
          Height = 76
          Caption = #3648#3621#3639#3629#3585#3626#3606#3634#3609
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          object UniLabel15: TUniLabel
            Left = 20
            Top = 20
            Width = 51
            Height = 13
            Caption = #3592#3633#3604#3626#3656#3591#3626#3636#3609#3588#3657#3634
            ParentFont = False
            TabOrder = 1
          end
          object CmbPDP: TUniDBLookupComboBox
            Tag = 9
            Left = 116
            Top = 20
            Width = 250
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'PDPCSM'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel16: TUniLabel
            Left = 20
            Top = 47
            Width = 79
            Height = 13
            Caption = #3605#3636#3604#3605#3656#3629'/'#3626#3656#3591#3648#3629#3585#3626#3634#3619
            ParentFont = False
            TabOrder = 3
          end
          object CmbDop: TUniDBLookupComboBox
            Tag = 9
            Left = 116
            Top = 49
            Width = 250
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'DOPCSM'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 4
          end
        end
        object PageControl1: TUniPageControl
          AlignWithMargins = True
          Left = 3
          Top = 112
          Width = 932
          Height = 184
          ActivePage = TabAddr01
          TabOrder = 2
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          object TabAddr01: TUniTabSheet
            Caption = #3607#3637#3656#3629#3618#3641#3656' ('#3607#3632#3648#3610#3637#3618#3609#3610#3657#3634#3609')'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 1007
            ExplicitHeight = 0
            object UniLabel4: TUniLabel
              Left = 11
              Top = 17
              Width = 26
              Height = 13
              Caption = #3648#3621#3586#3607#3637#3656
              ParentFont = False
              TabOrder = 0
            end
            object DbTa1_01: TUniDBEdit
              Tag = 9
              Left = 111
              Top = 17
              Width = 250
              Height = 21
              DataField = 'TA1CSM'
              DataSource = dsAddr01
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 1
              Color = clWindow
            end
            object DbTa2_01: TUniDBEdit
              Tag = 9
              Left = 111
              Top = 41
              Width = 250
              Height = 21
              DataField = 'TA2CSM'
              DataSource = dsAddr01
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 2
              Color = clWindow
            end
            object UniLabel5: TUniLabel
              Left = 10
              Top = 65
              Width = 30
              Height = 13
              Caption = #3592#3633#3591#3627#3623#3633#3604
              ParentFont = False
              TabOrder = 3
            end
            object DbTel_01: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TELCSM'
              DataSource = dsAddr01
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 4
              Color = clWindow
            end
            object DbMob_01: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 41
              Width = 251
              Height = 21
              DataField = 'MOBCSM'
              DataSource = dsAddr01
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 5
              Color = clWindow
            end
            object CmbChg_01: TUniDBLookupComboBox
              Tag = 9
              Left = 111
              Top = 65
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CHGCSM'
              DataSource = dsAddr01
              ParentFont = False
              TabOrder = 6
            end
            object UniLabel7: TUniLabel
              Left = 422
              Top = 17
              Width = 40
              Height = 13
              Caption = #3650#3607#3619#3624#3633#3614#3607#3660
              ParentFont = False
              TabOrder = 7
            end
            object UniLabel8: TUniLabel
              Left = 422
              Top = 41
              Width = 27
              Height = 13
              Caption = #3617#3639#3629#3606#3639#3629
              ParentFont = False
              TabOrder = 8
            end
            object UniLabel9: TUniLabel
              Left = 422
              Top = 65
              Width = 28
              Height = 13
              Caption = #3649#3615#3585#3594#3660
              ParentFont = False
              TabOrder = 9
            end
            object DbFax_01: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 65
              Width = 251
              Height = 21
              DataField = 'FAXCSM'
              DataSource = dsAddr01
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 10
              Color = clWindow
            end
            object UniLabel10: TUniLabel
              Left = 422
              Top = 89
              Width = 25
              Height = 13
              Caption = #3629#3637#3648#3617#3621#3660
              ParentFont = False
              TabOrder = 11
            end
            object DbEma_01: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 89
              Width = 251
              Height = 21
              DataField = 'EMACSM'
              DataSource = dsAddr01
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 12
              Color = clWindow
            end
            object UniLabel28: TUniLabel
              Left = 11
              Top = 115
              Width = 60
              Height = 13
              Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
              ParentFont = False
              TabOrder = 13
            end
            object DbZip_01: TUniDBEdit
              Tag = 9
              Left = 111
              Top = 113
              Width = 250
              Height = 21
              DataField = 'ZIPCSM'
              DataSource = dsAddr01
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 14
              Color = clWindow
            end
            object UniLabel29: TUniLabel
              Left = 9
              Top = 89
              Width = 36
              Height = 13
              Caption = #3611#3619#3632#3648#3607#3624
              ParentFont = False
              TabOrder = 15
            end
            object CmbCty_01: TUniDBLookupComboBox
              Tag = 9
              Left = 111
              Top = 89
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CTYCSM'
              DataSource = dsAddr01
              ParentFont = False
              TabOrder = 16
            end
            object UniLabel30: TUniLabel
              Left = 422
              Top = 112
              Width = 37
              Height = 13
              Caption = #3648#3623#3658#3611#3652#3595#3604#3660
              ParentFont = False
              TabOrder = 17
            end
            object DbWeb_01: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 112
              Width = 251
              Height = 21
              DataField = 'WEBCSM'
              DataSource = dsAddr01
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 18
              Color = clWindow
            end
            object BtnLoadAddr01: TUniButton
              Left = 369
              Top = 44
              Width = 31
              Height = 21
              Caption = '...'
              ParentFont = False
              TabOrder = 19
              OnClick = BtnLoadAddr01Click
            end
          end
          object TabAddr02: TUniTabSheet
            Caption = #3607#3637#3656#3629#3618#3641#3656' ('#3611#3633#3592#3592#3640#3610#3633#3609')'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 1007
            ExplicitHeight = 0
            object UniLabel31: TUniLabel
              Left = 11
              Top = 17
              Width = 26
              Height = 13
              Caption = #3648#3621#3586#3607#3637#3656
              ParentFont = False
              TabOrder = 0
            end
            object DbTa1_02: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TA1CSM'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 1
              Color = clWindow
            end
            object DbTa2_02: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 41
              Width = 251
              Height = 21
              DataField = 'TA2CSM'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 2
              Color = clWindow
            end
            object UniLabel32: TUniLabel
              Left = 10
              Top = 65
              Width = 30
              Height = 13
              Caption = #3592#3633#3591#3627#3623#3633#3604
              ParentFont = False
              TabOrder = 3
            end
            object UniDBEdit21: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TELCSM'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 4
              Color = clWindow
            end
            object UniDBEdit22: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 41
              Width = 251
              Height = 21
              DataField = 'MOBCSM'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 5
              Color = clWindow
            end
            object CmbChg_02: TUniDBLookupComboBox
              Tag = 9
              Left = 113
              Top = 65
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CHGCSM'
              DataSource = dsAddr02
              ParentFont = False
              TabOrder = 6
            end
            object UniLabel33: TUniLabel
              Left = 422
              Top = 17
              Width = 40
              Height = 13
              Caption = #3650#3607#3619#3624#3633#3614#3607#3660
              ParentFont = False
              TabOrder = 7
            end
            object UniLabel34: TUniLabel
              Left = 422
              Top = 41
              Width = 27
              Height = 13
              Caption = #3617#3639#3629#3606#3639#3629
              ParentFont = False
              TabOrder = 8
            end
            object UniLabel35: TUniLabel
              Left = 422
              Top = 65
              Width = 28
              Height = 13
              Caption = #3649#3615#3585#3594#3660
              ParentFont = False
              TabOrder = 9
            end
            object UniDBEdit23: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 65
              Width = 251
              Height = 21
              DataField = 'FAXCSM'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 10
              Color = clWindow
            end
            object UniLabel36: TUniLabel
              Left = 422
              Top = 89
              Width = 25
              Height = 13
              Caption = #3629#3637#3648#3617#3621#3660
              ParentFont = False
              TabOrder = 11
            end
            object UniDBEdit24: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 89
              Width = 251
              Height = 21
              DataField = 'EMACSM'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 12
              Color = clWindow
            end
            object UniLabel37: TUniLabel
              Left = 11
              Top = 115
              Width = 60
              Height = 13
              Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
              ParentFont = False
              TabOrder = 13
            end
            object UniDBEdit25: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 113
              Width = 251
              Height = 21
              DataField = 'ZIPCSM'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 14
              Color = clWindow
            end
            object UniLabel38: TUniLabel
              Left = 9
              Top = 89
              Width = 36
              Height = 13
              Caption = #3611#3619#3632#3648#3607#3624
              ParentFont = False
              TabOrder = 15
            end
            object CmbCty_02: TUniDBLookupComboBox
              Tag = 9
              Left = 112
              Top = 89
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CTYCSM'
              DataSource = dsAddr02
              ParentFont = False
              TabOrder = 16
            end
            object UniLabel39: TUniLabel
              Left = 422
              Top = 112
              Width = 37
              Height = 13
              Caption = #3648#3623#3658#3611#3652#3595#3604#3660
              ParentFont = False
              TabOrder = 17
            end
            object UniDBEdit26: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 112
              Width = 251
              Height = 21
              DataField = 'WEBCSM'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 18
              Color = clWindow
            end
            object BtnLoadAddr02: TUniButton
              Left = 370
              Top = 44
              Width = 31
              Height = 21
              Caption = '...'
              ParentFont = False
              TabOrder = 19
              OnClick = BtnLoadAddr02Click
            end
          end
          object TabAddr03: TUniTabSheet
            Caption = #3607#3637#3656#3629#3618#3641#3656' ('#3607#3637#3656#3607#3635#3591#3634#3609')'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 1007
            ExplicitHeight = 0
            object UniLabel40: TUniLabel
              Left = 11
              Top = 17
              Width = 26
              Height = 13
              Caption = #3648#3621#3586#3607#3637#3656
              ParentFont = False
              TabOrder = 0
            end
            object UniDBEdit27: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TA1CSM'
              DataSource = dsAddr03
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 1
              Color = clWindow
            end
            object UniDBEdit28: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 41
              Width = 251
              Height = 21
              DataField = 'TA2CSM'
              DataSource = dsAddr03
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 2
              Color = clWindow
            end
            object UniLabel41: TUniLabel
              Left = 10
              Top = 65
              Width = 30
              Height = 13
              Caption = #3592#3633#3591#3627#3623#3633#3604
              ParentFont = False
              TabOrder = 3
            end
            object UniDBEdit29: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TELCSM'
              DataSource = dsAddr03
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 4
              Color = clWindow
            end
            object UniDBEdit30: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 41
              Width = 251
              Height = 21
              DataField = 'MOBCSM'
              DataSource = dsAddr03
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 5
              Color = clWindow
            end
            object CmbChg_03: TUniDBLookupComboBox
              Tag = 9
              Left = 112
              Top = 65
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CHGCSM'
              DataSource = dsAddr03
              ParentFont = False
              TabOrder = 6
            end
            object UniLabel42: TUniLabel
              Left = 422
              Top = 17
              Width = 40
              Height = 13
              Caption = #3650#3607#3619#3624#3633#3614#3607#3660
              ParentFont = False
              TabOrder = 7
            end
            object UniLabel43: TUniLabel
              Left = 422
              Top = 41
              Width = 27
              Height = 13
              Caption = #3617#3639#3629#3606#3639#3629
              ParentFont = False
              TabOrder = 8
            end
            object UniLabel44: TUniLabel
              Left = 422
              Top = 65
              Width = 28
              Height = 13
              Caption = #3649#3615#3585#3594#3660
              ParentFont = False
              TabOrder = 9
            end
            object UniDBEdit31: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 65
              Width = 251
              Height = 21
              DataField = 'FAXCSM'
              DataSource = dsAddr03
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 10
              Color = clWindow
            end
            object UniLabel45: TUniLabel
              Left = 422
              Top = 89
              Width = 25
              Height = 13
              Caption = #3629#3637#3648#3617#3621#3660
              ParentFont = False
              TabOrder = 11
            end
            object UniDBEdit32: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 89
              Width = 251
              Height = 21
              DataField = 'EMACSM'
              DataSource = dsAddr03
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 12
              Color = clWindow
            end
            object UniLabel46: TUniLabel
              Left = 11
              Top = 115
              Width = 60
              Height = 13
              Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
              ParentFont = False
              TabOrder = 13
            end
            object UniDBEdit33: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 113
              Width = 251
              Height = 21
              DataField = 'ZIPCSM'
              DataSource = dsAddr03
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 14
              Color = clWindow
            end
            object UniLabel47: TUniLabel
              Left = 9
              Top = 89
              Width = 36
              Height = 13
              Caption = #3611#3619#3632#3648#3607#3624
              ParentFont = False
              TabOrder = 15
            end
            object CmbCty_03: TUniDBLookupComboBox
              Tag = 9
              Left = 112
              Top = 89
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CTYCSM'
              DataSource = dsAddr03
              ParentFont = False
              TabOrder = 16
            end
            object UniLabel48: TUniLabel
              Left = 422
              Top = 112
              Width = 37
              Height = 13
              Caption = #3648#3623#3658#3611#3652#3595#3604#3660
              ParentFont = False
              TabOrder = 17
            end
            object UniDBEdit34: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 112
              Width = 251
              Height = 21
              DataField = 'WEBCSM'
              DataSource = dsAddr03
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 18
              Color = clWindow
            end
            object BtnLoadAddr03: TUniButton
              Left = 369
              Top = 44
              Width = 31
              Height = 21
              Caption = '...'
              ParentFont = False
              TabOrder = 19
              OnClick = BtnLoadAddr03Click
            end
          end
          object TabAddr04: TUniTabSheet
            Caption = #3607#3637#3656#3629#3618#3641#3656' ('#3629#3639#3656#3609')'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 1007
            ExplicitHeight = 0
            object UniLabel49: TUniLabel
              Left = 11
              Top = 17
              Width = 26
              Height = 13
              Caption = #3648#3621#3586#3607#3637#3656
              ParentFont = False
              TabOrder = 0
            end
            object UniDBEdit35: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TA1CSM'
              DataSource = dsAddr04
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 1
              Color = clWindow
            end
            object UniDBEdit36: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 41
              Width = 251
              Height = 21
              DataField = 'TA2CSM'
              DataSource = dsAddr04
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 2
              Color = clWindow
            end
            object UniLabel50: TUniLabel
              Left = 10
              Top = 65
              Width = 30
              Height = 13
              Caption = #3592#3633#3591#3627#3623#3633#3604
              ParentFont = False
              TabOrder = 3
            end
            object UniDBEdit37: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TELCSM'
              DataSource = dsAddr04
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 4
              Color = clWindow
            end
            object UniDBEdit38: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 41
              Width = 251
              Height = 21
              DataField = 'MOBCSM'
              DataSource = dsAddr04
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 5
              Color = clWindow
            end
            object UniLabel51: TUniLabel
              Left = 422
              Top = 17
              Width = 40
              Height = 13
              Caption = #3650#3607#3619#3624#3633#3614#3607#3660
              ParentFont = False
              TabOrder = 6
            end
            object UniLabel52: TUniLabel
              Left = 422
              Top = 41
              Width = 27
              Height = 13
              Caption = #3617#3639#3629#3606#3639#3629
              ParentFont = False
              TabOrder = 7
            end
            object UniLabel53: TUniLabel
              Left = 422
              Top = 65
              Width = 28
              Height = 13
              Caption = #3649#3615#3585#3594#3660
              ParentFont = False
              TabOrder = 8
            end
            object UniDBEdit39: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 65
              Width = 251
              Height = 21
              DataField = 'FAXCSM'
              DataSource = dsAddr04
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 9
              Color = clWindow
            end
            object UniLabel54: TUniLabel
              Left = 422
              Top = 89
              Width = 25
              Height = 13
              Caption = #3629#3637#3648#3617#3621#3660
              ParentFont = False
              TabOrder = 10
            end
            object UniDBEdit40: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 89
              Width = 251
              Height = 21
              DataField = 'EMACSM'
              DataSource = dsAddr04
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 11
              Color = clWindow
            end
            object UniLabel55: TUniLabel
              Left = 11
              Top = 115
              Width = 60
              Height = 13
              Caption = #3619#3627#3633#3626#3652#3611#3619#3625#3603#3637#3618#3660
              ParentFont = False
              TabOrder = 12
            end
            object UniDBEdit41: TUniDBEdit
              Tag = 9
              Left = 112
              Top = 113
              Width = 251
              Height = 21
              DataField = 'ZIPCSM'
              DataSource = dsAddr04
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 13
              Color = clWindow
            end
            object UniLabel56: TUniLabel
              Left = 9
              Top = 89
              Width = 36
              Height = 13
              Caption = #3611#3619#3632#3648#3607#3624
              ParentFont = False
              TabOrder = 14
            end
            object CmbCty_04: TUniDBLookupComboBox
              Tag = 9
              Left = 112
              Top = 89
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CTYCSM'
              DataSource = dsAddr04
              ParentFont = False
              TabOrder = 15
            end
            object UniLabel57: TUniLabel
              Left = 422
              Top = 112
              Width = 37
              Height = 13
              Caption = #3648#3623#3658#3611#3652#3595#3604#3660
              ParentFont = False
              TabOrder = 16
            end
            object UniDBEdit42: TUniDBEdit
              Tag = 9
              Left = 513
              Top = 112
              Width = 251
              Height = 21
              DataField = 'WEBCSM'
              DataSource = dsAddr04
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 17
              Color = clWindow
            end
            object CmbChg_04: TUniDBLookupComboBox
              Tag = 9
              Left = 112
              Top = 65
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CHGCSM'
              DataSource = dsAddr03
              ParentFont = False
              TabOrder = 18
            end
            object BtnLoadAddr04: TUniButton
              Left = 369
              Top = 44
              Width = 31
              Height = 21
              Caption = '...'
              ParentFont = False
              TabOrder = 19
              OnClick = BtnLoadAddr04Click
            end
          end
        end
        object GrpMEMVM1: TUniGroupBox
          AlignWithMargins = True
          Left = 447
          Top = 302
          Width = 488
          Height = 76
          Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 3
          object DbMEMCM1: TUniDBMemo
            Tag = 9
            Left = 73
            Top = 16
            Width = 251
            Height = 81
            DataField = 'MEMCSM'
            DataSource = dsgrid
            TabOrder = 1
            Color = clWindow
          end
        end
      end
      object tabSale: TUniTabSheet
        Caption = #3604#3657#3634#3609#3588#3619#3629#3610#3588#3619#3633#3623
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 874
        ExplicitHeight = 455
        object UniLabel3: TUniLabel
          Left = 15
          Top = 16
          Width = 61
          Height = 13
          Caption = #3588#3641#3656#3626#3617#3619#3626' ('#3594#3639#3656#3629' )'
          ParentFont = False
          TabOrder = 0
        end
        object UniLabel26: TUniLabel
          Left = 15
          Top = 47
          Width = 30
          Height = 13
          Caption = #3623#3633#3609#3648#3585#3636#3604
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel14: TUniLabel
          Left = 15
          Top = 74
          Width = 96
          Height = 13
          Caption = #3626#3606#3634#3609#3632#3616#3634#3614#3585#3634#3619#3607#3635#3591#3634#3609
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel17: TUniLabel
          Left = 15
          Top = 99
          Width = 58
          Height = 13
          Caption = #3619#3634#3618#3652#3604#3657'/'#3648#3604#3639#3629#3609
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel18: TUniLabel
          Left = 15
          Top = 125
          Width = 74
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3610#3640#3605#3619' ('#3588#3609')'
          ParentFont = False
          TabOrder = 4
        end
        object CPNCSM: TUniDBEdit
          Tag = 9
          Left = 120
          Top = 16
          Width = 180
          Height = 21
          DataField = 'CPNCSM'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 5
          Color = clWindow
        end
        object CPSCSM: TUniDBEdit
          Tag = 9
          Left = 405
          Top = 16
          Width = 184
          Height = 21
          DataField = 'CPSCSM'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 6
          Color = clWindow
        end
        object UniLabel19: TUniLabel
          Left = 328
          Top = 16
          Width = 21
          Height = 13
          Caption = #3626#3585#3640#3621
          ParentFont = False
          TabOrder = 7
        end
        object CBNCSM: TUniDateTimePicker
          Tag = 9
          Left = 120
          Top = 43
          Width = 138
          Height = 22
          Hint = #3623#3633#3609#3648#3585#3636#3604
          HelpType = htKeyword
          HelpKeyword = 'CBNCSM'
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 8
          ParentColor = False
          Color = clWhite
          OnChange = CBNCSMChange
        end
        object CINCSM: TUniEdit
          Tag = 9
          Left = 120
          Top = 99
          Width = 180
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'CINCSM'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 9
          Color = clWindow
          OnExit = CINCSMExit
          OnKeyPress = CINCSMKeyPress
        end
        object CCHCSM: TUniEdit
          Tag = 9
          Left = 120
          Top = 126
          Width = 55
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'CCHCSM'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 10
          Color = clWindow
          OnExit = CCHCSMExit
          OnKeyPress = CCHCSMKeyPress
        end
        object CPWCSM: TUniDBLookupComboBox
          Tag = 9
          Left = 120
          Top = 72
          Width = 180
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'CPWCSM'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 11
        end
      end
      object TabBrn: TUniTabSheet
        Caption = #3604#3657#3634#3609#3585#3634#3619#3591#3634#3609
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 863
        ExplicitHeight = 0
        object UniLabel21: TUniLabel
          Left = 14
          Top = 13
          Width = 69
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3592#3657#3634#3591
          ParentFont = False
          TabOrder = 0
        end
        object UniLabel22: TUniLabel
          Left = 14
          Top = 40
          Width = 38
          Height = 13
          Caption = #3605#3635#3649#3627#3609#3656#3591
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel23: TUniLabel
          Left = 14
          Top = 67
          Width = 41
          Height = 13
          Caption = #3648#3591#3636#3609#3648#3604#3639#3629#3609
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel58: TUniLabel
          Left = 14
          Top = 94
          Width = 43
          Height = 13
          Caption = #3619#3634#3618#3652#3604#3657#3629#3639#3656#3609
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel59: TUniLabel
          Left = 328
          Top = 13
          Width = 26
          Height = 13
          Caption = #3629#3634#3594#3637#3614
          ParentFont = False
          TabOrder = 4
        end
        object UniLabel62: TUniLabel
          Left = 328
          Top = 40
          Width = 55
          Height = 13
          Caption = #3611#3619#3648#3616#3607#3608#3640#3619#3585#3636#3592
          ParentFont = False
          TabOrder = 5
        end
        object UniLabel63: TUniLabel
          Left = 328
          Top = 67
          Width = 37
          Height = 13
          Caption = #3650#3610#3609#3633#3626'/'#3611#3637
          ParentFont = False
          TabOrder = 6
        end
        object UniLabel64: TUniLabel
          Left = 328
          Top = 94
          Width = 62
          Height = 13
          Caption = #3619#3634#3618#3592#3656#3634#3618'/'#3648#3604#3639#3629#3609
          ParentFont = False
          TabOrder = 7
        end
        object UniLabel65: TUniLabel
          Left = 14
          Top = 120
          Width = 52
          Height = 13
          Caption = #3594#3639#3656#3629#3607#3637#3656#3607#3635#3591#3634#3609
          ParentFont = False
          TabOrder = 8
        end
        object UniLabel66: TUniLabel
          Left = 14
          Top = 147
          Width = 45
          Height = 13
          Caption = #3623#3633#3609#3648#3619#3636#3656#3617#3591#3634#3609
          ParentFont = False
          TabOrder = 9
        end
        object UniLabel67: TUniLabel
          Left = 328
          Top = 147
          Width = 35
          Height = 13
          Caption = #3629#3634#3618#3640#3591#3634#3609
          ParentFont = False
          TabOrder = 10
        end
        object HTPCSM: TUniDBLookupComboBox
          Tag = 9
          Left = 117
          Top = 13
          Width = 180
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'HTPCSM'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 11
        end
        object PBTCSM: TUniDBLookupComboBox
          Tag = 9
          Left = 405
          Top = 13
          Width = 180
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'PBTCSM'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 12
        end
        object PSTCSM: TUniDBLookupComboBox
          Tag = 9
          Left = 117
          Top = 40
          Width = 180
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'PSTCSM'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 13
        end
        object BUSCSM: TUniDBLookupComboBox
          Tag = 9
          Left = 405
          Top = 40
          Width = 180
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'BUSCSM'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 14
        end
        object SALCSM: TUniEdit
          Tag = 9
          Left = 117
          Top = 67
          Width = 180
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'SALCSM'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 15
          Color = clWindow
          OnExit = SALCSMExit
          OnKeyPress = SALCSMKeyPress
        end
        object BONCSM: TUniEdit
          Tag = 9
          Left = 405
          Top = 67
          Width = 180
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'BONCSM'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 16
          Color = clWindow
          OnExit = BONCSMExit
          OnKeyPress = BONCSMKeyPress
        end
        object OTHCSM: TUniEdit
          Tag = 9
          Left = 117
          Top = 93
          Width = 180
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'OTHCSM'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 17
          Color = clWindow
          OnExit = OTHCSMExit
          OnKeyPress = OTHCSMKeyPress
        end
        object EXPCSM: TUniEdit
          Tag = 9
          Left = 405
          Top = 93
          Width = 180
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'EXPCSM'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 18
          Color = clWindow
          OnExit = EXPCSMExit
          OnKeyPress = EXPCSMKeyPress
        end
        object PCMCSM: TUniDBEdit
          Tag = 9
          Left = 117
          Top = 120
          Width = 472
          Height = 21
          DataField = 'PCMCSM'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 19
          Color = clWindow
        end
        object HDTCSM: TUniDateTimePicker
          Tag = 9
          Left = 117
          Top = 147
          Width = 138
          Height = 22
          Hint = #3623#3633#3609#3648#3585#3636#3604
          HelpType = htKeyword
          HelpKeyword = 'HDTCSM'
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 20
          ParentColor = False
          Color = clWhite
          OnChange = HDTCSMChange
          OnKeyPress = HDTCSMKeyPress
        end
        object AGE_WORK: TUniEdit
          Tag = 9
          Left = 405
          Top = 147
          Width = 184
          Height = 21
          HelpType = htKeyword
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taCenter
          ParentFont = False
          TabOrder = 21
          Color = clWindow
          ReadOnly = True
        end
      end
      object TabCard: TUniTabSheet
        Caption = #3586#3657#3629#3617#3641#3621#3610#3633#3605#3619#3611#3619#3632#3592#3635#3605#3633#3623
        object PnButton: TUniPanel
          Left = 0
          Top = 0
          Width = 938
          Height = 41
          BorderStyle = ubsNone
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 0
          object btnAdd: TUniButton
            Left = 3
            Top = 9
            Width = 75
            Height = 25
            Caption = #3648#3614#3636#3656#3617
            ParentFont = False
            TabOrder = 1
            OnClick = btnAddClick
          end
          object btnEdit: TUniButton
            Left = 82
            Top = 7
            Width = 75
            Height = 25
            Caption = #3649#3585#3657#3652#3586
            ParentFont = False
            TabOrder = 2
            OnClick = btnEditClick
          end
          object btnDelete: TUniButton
            Left = 159
            Top = 7
            Width = 75
            Height = 25
            Caption = #3621#3610
            ParentFont = False
            TabOrder = 3
            OnClick = btnDeleteClick
          end
        end
        object dbgDataList: TUniDBGrid
          Left = 0
          Top = 41
          Width = 938
          Height = 340
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          DataSource = dsCard
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 1
          Columns = <
            item
              FieldName = 'TNMCDC'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607#3610#3633#3605#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 177
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'CDNCSI'
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3610#3633#3605#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 143
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'ISDCSI'
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656#3629#3629#3585#3610#3633#3605#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 132
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'EPDCSI'
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3627#3617#3604#3629#3634#3618#3640
              Title.Font.Charset = THAI_CHARSET
              Width = 106
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'ISWCSI'
              Title.Alignment = taCenter
              Title.Caption = #3626#3606#3634#3609#3632#3607#3637#3656#3629#3629#3585#3610#3633#3605#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 178
              Visible = True
              Expanded = False
            end>
        end
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 528
    Width = 948
    TabOrder = 2
    ExplicitTop = 528
    ExplicitWidth = 948
    inherited imgBotton: TUniImage
      Width = 948
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
      ExplicitWidth = 948
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 866
      ExplicitLeft = 866
    end
    inherited btnConfirm: TUniButton
      Left = 785
      ExplicitLeft = 785
    end
  end
  inherited pnHeader: TUniPanel
    Width = 948
    Height = 96
    TabOrder = 0
    ExplicitWidth = 1025
    ExplicitHeight = 96
    object LbCreditLineDate: TUniLabel
      Left = 334
      Top = 42
      Width = 47
      Height = 13
      Caption = #3619#3627#3633#3626#3610#3640#3588#3588#3621
      ParentFont = False
      TabOrder = 2
    end
    object CCNCSM: TUniDBEdit
      Tag = 9
      Left = 410
      Top = 42
      Width = 180
      Height = 21
      DataField = 'CCNCSM'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 0
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 333
      Top = 69
      Width = 40
      Height = 13
      Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
      ParentFont = False
      TabOrder = 3
    end
    object FNMCSM: TUniDBEdit
      Tag = 9
      Left = 410
      Top = 70
      Width = 180
      Height = 21
      DataField = 'FNMCSM'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 4
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 634
      Top = 69
      Width = 40
      Height = 13
      Caption = #3609#3634#3617#3626#3585#3640#3621
      ParentFont = False
      TabOrder = 5
    end
    object LNMCSM: TUniDBEdit
      Tag = 9
      Left = 699
      Top = 69
      Width = 214
      Height = 21
      DataField = 'LNMCSM'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel60: TUniLabel
      Left = 18
      Top = 11
      Width = 62
      Height = 13
      Caption = #3611#3619#3632#3648#3616#3607#3621#3641#3585#3588#3657#3634
      ParentFont = False
      TabOrder = 7
    end
    object CTYCSM: TUniDBLookupComboBox
      Tag = 9
      Left = 122
      Top = 11
      Width = 179
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'CTYCSM'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 8
    end
    object UniLabel61: TUniLabel
      Left = 19
      Top = 38
      Width = 47
      Height = 13
      Caption = #3585#3621#3640#3656#3617#3621#3641#3585#3588#3657#3634
      ParentFont = False
      TabOrder = 9
    end
    object STACSM: TUniDBLookupComboBox
      Tag = 9
      Left = 122
      Top = 38
      Width = 179
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STACSM'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 10
      OnCloseUp = STACSMCloseUp
    end
    object UniLabel27: TUniLabel
      Left = 18
      Top = 65
      Width = 43
      Height = 13
      Caption = #3588#3635#3609#3635#3627#3609#3657#3634
      ParentFont = False
      TabOrder = 11
    end
    object PRECSM: TUniDBLookupComboBox
      Tag = 9
      Left = 122
      Top = 65
      Width = 179
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'PRECSM'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel68: TUniLabel
      Left = 634
      Top = 11
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 13
    end
    object CMPCSM: TUniDBEdit
      Tag = 9
      Left = 699
      Top = 11
      Width = 214
      Height = 21
      DataField = 'CMPCSM'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
    end
    object UniLabel69: TUniLabel
      Left = 634
      Top = 42
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 15
    end
    object BRNCSM: TUniDBLookupComboBox
      Tag = 9
      Left = 699
      Top = 42
      Width = 214
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNCSM'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 16
    end
  end
  inherited pnUser: TUniPanel
    Top = 507
    Width = 948
    ExplicitTop = 507
    ExplicitWidth = 948
  end
  inherited scClosing: TUniScreenMask
    Top = 272
  end
  inherited scCancel: TUniScreenMask
    Left = 168
    Top = 272
  end
  inherited csConfirm: TUniScreenMask
    Left = 256
    Top = 272
  end
  object dsgrid: TDataSource
    Left = 400
    Top = 424
  end
  object dsAddr01: TDataSource
    Left = 480
    Top = 424
  end
  object dsAddr02: TDataSource
    Left = 552
    Top = 424
  end
  object dsAddr03: TDataSource
    Left = 632
    Top = 424
  end
  object dsAddr04: TDataSource
    Left = 712
    Top = 424
  end
  object dsCard: TDataSource
    Left = 800
    Top = 423
  end
end
