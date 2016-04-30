inherited frmStApData: TfrmStApData
  Caption = #3619#3627#3633#3626#3648#3592#3657#3634#3627#3609#3637#3657
  ClientHeight = 565
  ClientWidth = 875
  Position = poDesigned
  ExplicitWidth = 881
  ExplicitHeight = 590
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 67
    Width = 875
    Height = 440
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 70
    ExplicitWidth = 870
    ExplicitHeight = 621
    object PnAp: TUniPageControl
      Left = 1
      Top = 1
      Width = 873
      Height = 438
      OnChange = PnApChange
      ActivePage = TabNormal
      TabOrder = 1
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object TabNormal: TUniTabSheet
        Caption = #3586#3657#3629#3617#3641#3621#3607#3633#3656#3623#3652#3611
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 557
        ExplicitHeight = 375
        object PnApHdr: TUniPanel
          Left = 0
          Top = 0
          Width = 865
          Height = 60
          BorderStyle = ubsNone
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 0
          object UniLabel3: TUniLabel
            Left = 15
            Top = 3
            Width = 35
            Height = 13
            Caption = #3612#3641#3657#3605#3636#3604#3605#3656#3629
            ParentFont = False
            TabOrder = 1
          end
          object CmbCPSVM1: TUniDBLookupComboBox
            Tag = 9
            Left = 115
            Top = 3
            Width = 250
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'CPSVM1'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel58: TUniLabel
            Left = 426
            Top = 3
            Width = 65
            Height = 13
            Caption = #3611#3619#3632#3648#3616#3607#3648#3592#3657#3634#3627#3609#3637#3657
            ParentFont = False
            TabOrder = 3
          end
          object CmbVTPVM1: TUniDBLookupComboBox
            Tag = 9
            Left = 513
            Top = 3
            Width = 251
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'VTPVM1'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 4
          end
          object UniLabel59: TUniLabel
            Left = 426
            Top = 30
            Width = 42
            Height = 13
            Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
            ParentFont = False
            TabOrder = 5
          end
          object DbACCAM1: TUniDBEdit
            Tag = 9
            Left = 513
            Top = 30
            Width = 208
            Height = 21
            DataField = 'ACCVM1'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 6
            Color = clWindow
          end
          object BtnSelectAccount: TUniButton
            Left = 727
            Top = 30
            Width = 38
            Height = 23
            Caption = '...'
            ParentFont = False
            TabOrder = 7
            OnClick = BtnSelectAccountClick
          end
        end
        object GrpSelectPrint: TUniGroupBox
          Left = 0
          Top = 244
          Width = 438
          Height = 166
          Caption = #3648#3621#3639#3629#3585#3626#3606#3634#3609#3607#3637#3656#3626#3635#3627#3619#3633#3610#3614#3636#3617#3614#3660
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          object UniLabel15: TUniLabel
            Left = 20
            Top = 20
            Width = 39
            Height = 13
            Caption = #3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
            ParentFont = False
            TabOrder = 1
          end
          object CmbPop: TUniDBLookupComboBox
            Tag = 9
            Left = 115
            Top = 20
            Width = 250
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'POPVM1'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel14: TUniLabel
            Left = 20
            Top = 47
            Width = 29
            Height = 13
            Caption = #3651#3610#3592#3656#3634#3618
            ParentFont = False
            TabOrder = 3
          end
          object CmbPap: TUniDBLookupComboBox
            Tag = 9
            Left = 115
            Top = 47
            Width = 250
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'PAPVM1'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 4
          end
          object UniLabel16: TUniLabel
            Left = 20
            Top = 74
            Width = 47
            Height = 13
            Caption = #3626#3656#3591#3648#3629#3585#3626#3634#3619
            ParentFont = False
            TabOrder = 5
          end
          object CmbDop: TUniDBLookupComboBox
            Tag = 9
            Left = 115
            Top = 76
            Width = 250
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'DOPVM1'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 6
          end
        end
        object PGDDR: TUniPageControl
          Left = 0
          Top = 60
          Width = 865
          Height = 184
          ActivePage = TabAddr01
          TabOrder = 2
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          object TabAddr01: TUniTabSheet
            Caption = #3607#3637#3656#3629#3618#3641#3656' ('#3607#3632#3648#3610#3637#3618#3609#3585#3634#3619#3588#3657#3634')'
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
              DataField = 'TA1VMA'
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
              DataField = 'TA2VMA'
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
              Left = 509
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TELVMA'
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
              Left = 509
              Top = 41
              Width = 251
              Height = 21
              DataField = 'MOBVMA'
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
              DataField = 'CHGVMA'
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
              Left = 509
              Top = 65
              Width = 251
              Height = 21
              DataField = 'FAXVMA'
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
              Left = 509
              Top = 89
              Width = 251
              Height = 21
              DataField = 'EMAVMA'
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
              DataField = 'ZIPVMA'
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
              DataField = 'CTYVMA'
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
              Left = 509
              Top = 112
              Width = 251
              Height = 21
              DataField = 'WEBVMA'
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
            object UniDBEdit19: TUniDBEdit
              Tag = 9
              Left = 111
              Top = 17
              Width = 250
              Height = 21
              DataField = 'TA1VMA'
              DataSource = dsAddr02
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 1
              Color = clWindow
            end
            object UniDBEdit20: TUniDBEdit
              Tag = 9
              Left = 111
              Top = 41
              Width = 250
              Height = 21
              DataField = 'TA2VMA'
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
              Left = 509
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TELVMA'
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
              Left = 509
              Top = 41
              Width = 251
              Height = 21
              DataField = 'MOBVMA'
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
              Left = 111
              Top = 65
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CHGVMA'
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
              Left = 509
              Top = 65
              Width = 251
              Height = 21
              DataField = 'FAXVMA'
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
              Left = 509
              Top = 89
              Width = 251
              Height = 21
              DataField = 'EMAVMA'
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
              Left = 111
              Top = 113
              Width = 250
              Height = 21
              DataField = 'ZIPVMA'
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
              Left = 111
              Top = 89
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CTYVMA'
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
              Left = 509
              Top = 112
              Width = 251
              Height = 21
              DataField = 'WEBVMA'
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
            Caption = #3607#3637#3656#3629#3618#3641#3656' ('#3629#3639#3656#3609' '#3654' 1)'
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
              Left = 111
              Top = 17
              Width = 250
              Height = 21
              DataField = 'TA1VMA'
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
              Left = 111
              Top = 41
              Width = 250
              Height = 21
              DataField = 'TA2VMA'
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
              Left = 509
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TELVMA'
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
              Left = 509
              Top = 41
              Width = 251
              Height = 21
              DataField = 'MOBVMA'
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
              Left = 111
              Top = 65
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CHGVMA'
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
              Left = 509
              Top = 65
              Width = 251
              Height = 21
              DataField = 'FAXVMA'
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
              Left = 509
              Top = 89
              Width = 251
              Height = 21
              DataField = 'EMAVMA'
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
              Left = 111
              Top = 113
              Width = 250
              Height = 21
              DataField = 'ZIPVMA'
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
              Left = 111
              Top = 89
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CTYVMA'
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
              Left = 509
              Top = 112
              Width = 251
              Height = 21
              DataField = 'WEBVMA'
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
            Caption = #3607#3637#3656#3629#3618#3641#3656' ('#3629#3639#3656#3609' '#3654' 2)'
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
              Left = 111
              Top = 17
              Width = 250
              Height = 21
              DataField = 'TA1VMA'
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
              Left = 111
              Top = 41
              Width = 250
              Height = 21
              DataField = 'TA2VMA'
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
              Left = 509
              Top = 17
              Width = 251
              Height = 21
              DataField = 'TELVMA'
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
              Left = 509
              Top = 41
              Width = 251
              Height = 21
              DataField = 'MOBVMA'
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
              Left = 509
              Top = 65
              Width = 251
              Height = 21
              DataField = 'FAXVMA'
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
              Left = 509
              Top = 89
              Width = 251
              Height = 21
              DataField = 'EMAVMA'
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
              Left = 111
              Top = 113
              Width = 250
              Height = 21
              DataField = 'ZIPVMA'
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
              Left = 111
              Top = 89
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CTYVMA'
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
              Left = 509
              Top = 112
              Width = 251
              Height = 21
              DataField = 'WEBVMA'
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
              Left = 111
              Top = 65
              Width = 250
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'CHGVMA'
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
          Left = 441
          Top = 247
          Width = 421
          Height = 160
          Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 3
          object DbMEMVM1: TUniDBMemo
            Tag = 9
            Left = 69
            Top = 16
            Width = 251
            Height = 81
            DataField = 'MEMVM1'
            DataSource = dsgrid
            TabOrder = 1
            Color = clWindow
          end
        end
      end
      object tabSale: TUniTabSheet
        Caption = #3586#3657#3629#3617#3641#3621#3592#3633#3604#3595#3639#3657#3629
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 874
        ExplicitHeight = 455
        object UniLabel17: TUniLabel
          Left = 15
          Top = 10
          Width = 65
          Height = 13
          Caption = #3594#3656#3629#3591#3607#3634#3591#3605#3636#3604#3605#3656#3629
          ParentFont = False
          TabOrder = 0
        end
        object CmbOTPVM1: TUniDBLookupComboBox
          Tag = 9
          Left = 123
          Top = 3
          Width = 130
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'OTPVM1'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel18: TUniLabel
          Left = 413
          Top = 10
          Width = 70
          Height = 13
          Caption = #3586#3609#3626#3656#3591#3626#3636#3609#3588#3657#3634#3607#3634#3591
          ParentFont = False
          TabOrder = 2
        end
        object CmbVIAVM1: TUniDBLookupComboBox
          Tag = 9
          Left = 520
          Top = 6
          Width = 130
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'VIAVM1'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel19: TUniLabel
          Left = 15
          Top = 33
          Width = 66
          Height = 13
          Caption = #3614#3609#3633#3585#3591#3634#3609#3592#3633#3604#3595#3639#3657#3629
          ParentFont = False
          TabOrder = 4
        end
        object CmbPSNVM1: TUniDBLookupComboBox
          Tag = 9
          Left = 122
          Top = 30
          Width = 249
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'PSNVM1'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 5
        end
        object UniLabel20: TUniLabel
          Left = 13
          Top = 73
          Width = 102
          Height = 13
          Caption = #3648#3621#3586#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 6
        end
        object DbTAXVM1: TUniDBEdit
          Tag = 9
          Left = 122
          Top = 69
          Width = 251
          Height = 21
          DataField = 'TAXVM1'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 7
          Color = clWindow
        end
        object UniLabel21: TUniLabel
          Left = 13
          Top = 98
          Width = 56
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 8
        end
        object CmbTTXVM1: TUniDBLookupComboBox
          Tag = 9
          Left = 122
          Top = 94
          Width = 130
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'TTXVM1'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 9
        end
        object CmbTPIVM1: TUniDBLookupComboBox
          Tag = 9
          Left = 122
          Top = 119
          Width = 130
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'TPIVM1'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 10
        end
        object UniLabel22: TUniLabel
          Left = 13
          Top = 123
          Width = 62
          Height = 13
          Caption = #3594#3609#3636#3604#3588#3656#3634#3651#3594#3657#3592#3656#3634#3618
          ParentFont = False
          TabOrder = 11
        end
        object UniLabel23: TUniLabel
          Left = 15
          Top = 147
          Width = 74
          Height = 13
          Caption = '% '#3616#3634#3625#3637' '#3603' '#3607#3637#3656#3592#3656#3634#3618
          ParentFont = False
          TabOrder = 12
        end
        object DBVPC: TUniDBEdit
          Tag = 9
          Left = 122
          Top = 144
          Width = 130
          Height = 21
          DataField = 'VPCVM1'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 13
          Color = clWindow
        end
      end
      object TabBrn: TUniTabSheet
        Caption = #3626#3634#3586#3634#3651#3594#3657
        object dbgDataList: TUniDBGrid
          Left = 0
          Top = 41
          Width = 865
          Height = 369
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          DataSource = dsYm3
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          HeaderTitleAlign = taLeftJustify
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              FieldName = 'CMPYM3'
              Title.Alignment = taCenter
              Title.Caption = #3610#3619#3636#3625#3633#3607
              Title.Font.Charset = THAI_CHARSET
              Width = 60
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'BRNYM3'
              Title.Alignment = taCenter
              Title.Caption = #3626#3634#3586#3634
              Title.Font.Charset = THAI_CHARSET
              Width = 115
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'CRTYM3'
              Title.Alignment = taCenter
              Title.Caption = #3648#3588#3619#3604#3636#3605
              Title.Font.Charset = THAI_CHARSET
              Width = 57
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'CRLYM3'
              Title.Alignment = taCenter
              Title.Caption = #3623#3591#3648#3591#3636#3609
              Title.Font.Charset = THAI_CHARSET
              Width = 93
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'BFIYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3618#3585#3617#3634
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'MINYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3586#3634#3618' '#3611#3592#3604
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'MPYYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3619#3633#3610#3648#3591#3636#3609' '#3611#3592#3604
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'MCMYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3619#3633#3610#3648#3591#3636#3609#3626#3604' '#3611#3592#3604
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'MDNYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3648#3604#3610#3636#3605#3650#3609#3658#3605' '#3611#3592#3604
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'MCNYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3648#3588#3619#3604#3636#3605#3650#3609#3658#3605' '#3611#3592#3604
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'MAJYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3611#3619#3633#3610#3611#3619#3640#3591' '#3611#3592#3604
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'MDSYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3626#3656#3623#3609#3621#3604' '#3611#3592#3604
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'MITYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3604#3629#3585#3648#3610#3637#3657#3618' '#3611#3592#3604
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'PDCYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3648#3594#3655#3588#3588#3591#3648#3627#3621#3639#3629
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'UNCYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3648#3594#3655#3588#3652#3617#3656#3606#3641#3585#3648#3588#3621#3637#3618#3619#3636#3656#3591
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'CQRYM3'
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3648#3594#3655#3588#3588#3639#3609
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'ADNYM3'
              Title.Alignment = taCenter
              Title.Caption = #3626#3632#3626#3617#3648#3604#3610#3636#3605#3650#3609#3658#3605
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'ACNYM3'
              Title.Alignment = taCenter
              Title.Caption = #3626#3632#3626#3617#3648#3588#3619#3604#3636#3605#3650#3609#3658#3605
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'APYYM3'
              Title.Alignment = taCenter
              Title.Caption = #3626#3632#3626#3617#3648#3591#3636#3609#3619#3633#3610
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'YPYYM3'
              Title.Alignment = taCenter
              Title.Caption = #3626#3632#3626#3617#3618#3629#3604#3586#3634#3618#3607#3633#3657#3591#3611#3637
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'YPCYM3'
              Title.Alignment = taCenter
              Title.Caption = #3626#3632#3626#3617#3618#3629#3604#3619#3633#3610#3648#3591#3636#3609#3607#3633#3657#3591#3611#3637
              Width = 100
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end>
        end
        object PnButton: TUniPanel
          Left = 0
          Top = 0
          Width = 865
          Height = 41
          BorderStyle = ubsNone
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 1
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
          end
        end
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 528
    Width = 875
    TabOrder = 2
    ExplicitTop = 528
    ExplicitWidth = 875
    inherited imgBotton: TUniImage
      Width = 875
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
      ExplicitWidth = 875
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 793
      ExplicitLeft = 793
    end
    inherited btnConfirm: TUniButton
      Left = 712
      ExplicitLeft = 712
    end
  end
  inherited pnHeader: TUniPanel
    Width = 875
    Height = 67
    TabOrder = 0
    ExplicitWidth = 875
    ExplicitHeight = 67
    object LbCreditLineDate: TUniLabel
      Left = 19
      Top = 11
      Width = 48
      Height = 13
      Caption = #3619#3627#3633#3626#3648#3592#3657#3634#3627#3609#3637#3657
      ParentFont = False
      TabOrder = 2
    end
    object DbVno: TUniDBEdit
      Tag = 9
      Left = 123
      Top = 11
      Width = 132
      Height = 21
      DataField = 'VNOVM1'
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
      Left = 18
      Top = 35
      Width = 62
      Height = 13
      Caption = #3594#3639#3656#3629' '#3616#3634#3625#3634#3652#3607#3618
      ParentFont = False
      TabOrder = 3
    end
    object DbTnm: TUniDBEdit
      Tag = 9
      Left = 123
      Top = 35
      Width = 250
      Height = 21
      DataField = 'TNMVM1'
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
      Left = 434
      Top = 40
      Width = 75
      Height = 13
      Caption = #3594#3639#3656#3629' '#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
      ParentFont = False
      TabOrder = 5
    end
    object DbEnm: TUniDBEdit
      Tag = 9
      Left = 521
      Top = 40
      Width = 251
      Height = 21
      DataField = 'ENMVM1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
  end
  inherited pnUser: TUniPanel
    Top = 507
    Width = 875
    ExplicitTop = 507
    ExplicitWidth = 875
  end
  object dsgrid: TDataSource
    Left = 400
    Top = 424
  end
  object dsAddr01: TDataSource
    Left = 480
    Top = 432
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
  object dsYm3: TDataSource
    Left = 800
    Top = 423
  end
  object csAccounting: TUniScreenMask
    AttachedControl = BtnSelectAccount
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3648#3611#3636#3604#3619#3627#3633#3626#3610#3633#3597#3594#3637
    Left = 784
    Top = 120
  end
end
