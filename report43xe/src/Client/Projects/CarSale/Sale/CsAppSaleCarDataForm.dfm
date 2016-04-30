inherited frmCsAppSaleCarData: TfrmCsAppSaleCarData
  Caption = #3651#3610#3588#3635#3586#3629#3595#3639#3657#3629#3619#3606#3618#3609#3605#3660
  ClientHeight = 580
  ClientWidth = 991
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = UniFormCreate
  NavigateKeys.Next.Key = 13
  ExplicitWidth = 997
  ExplicitHeight = 605
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 81
    Width = 991
    Height = 441
    TabOrder = 1
    ExplicitLeft = 3
    ExplicitTop = 134
    ExplicitWidth = 950
    ExplicitHeight = 575
    object PgCarsale: TUniPageControl
      Left = 1
      Top = 1
      Width = 989
      Height = 439
      OnChange = PgCarsaleChange
      ActivePage = TabCus
      TabOrder = 1
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object TabCus: TUniTabSheet
        Caption = #3621#3641#3585#3588#3657#3634' /'#3651#3610#3648#3626#3609#3629#3619#3634#3588#3634'/'#3651#3610#3592#3629#3591' /'#3650#3610#3619#3585#3648#3585#3629#3619#3660' /'#3612#3641#3657#3588#3657#3635
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 419
        ExplicitHeight = 412
        object GrpCno: TUniGroupBox
          Left = 3
          Top = -6
          Width = 446
          Height = 215
          Caption = #3621#3641#3585#3588#3657#3634
          Align = alCustom
          TabOrder = 0
          object CNOOT5lb: TUniLabel
            Left = 28
            Top = 47
            Width = 45
            Height = 13
            Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
            ParentFont = False
            TabOrder = 1
          end
          object CNOOT5: TUniDBEdit
            Tag = 9
            Left = 134
            Top = 47
            Width = 197
            Height = 21
            DataField = 'CNOOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 2
            Color = clWindow
          end
          object BtnSelectcno: TUniButton
            Left = 337
            Top = 47
            Width = 45
            Height = 22
            Caption = '...'
            ParentFont = False
            TabOrder = 3
            OnClick = BtnSelectcnoClick
          end
          object TNMCSM: TUniDBEdit
            Tag = 9
            Left = 134
            Top = 73
            Width = 248
            Height = 21
            DataField = 'TNMCSM'
            DataSource = dsgrid
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
            Left = 28
            Top = 102
            Width = 21
            Height = 13
            Caption = #3607#3637#3656#3629#3618#3641#3656
            ParentFont = False
            TabOrder = 5
          end
          object TA1CSM: TUniDBEdit
            Tag = 9
            Left = 134
            Top = 101
            Width = 248
            Height = 21
            DataField = 'TA1CSM'
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
          object TA2CSM: TUniDBEdit
            Tag = 9
            Left = 134
            Top = 125
            Width = 248
            Height = 21
            DataField = 'TA2CSM'
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
            Left = 28
            Top = 149
            Width = 30
            Height = 13
            Caption = #3592#3633#3591#3627#3623#3633#3604
            ParentFont = False
            TabOrder = 8
          end
          object CHGCSM: TUniDBLookupComboBox
            Tag = 9
            Left = 134
            Top = 150
            Width = 248
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'CHGCSM'
            DataSource = dsAddr01
            ParentFont = False
            TabOrder = 9
          end
          object UniLabel18: TUniLabel
            Left = 28
            Top = 176
            Width = 40
            Height = 13
            Caption = #3650#3607#3619#3624#3633#3614#3607#3660
            ParentFont = False
            TabOrder = 10
          end
          object UniLabel19: TUniLabel
            Left = 28
            Top = 74
            Width = 14
            Height = 13
            Caption = #3594#3639#3656#3629
            ParentFont = False
            TabOrder = 11
          end
          object CTYOT5lb: TUniLabel
            Left = 28
            Top = 20
            Width = 62
            Height = 13
            Caption = #3611#3619#3632#3648#3616#3607#3621#3641#3585#3588#3657#3634
            ParentFont = False
            TabOrder = 12
          end
          object CTYOT5: TUniDBLookupComboBox
            Tag = 9
            Left = 134
            Top = 20
            Width = 251
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'CTYOT5'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 13
            OnCloseUp = CTYOT5CloseUp
          end
          object TELCSM: TUniDBEdit
            Tag = 9
            Left = 134
            Top = 176
            Width = 248
            Height = 21
            DataField = 'TELCSM'
            DataSource = dsAddr01
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 14
            Color = clWindow
            ReadOnly = True
          end
        end
        object GrpPno: TUniGroupBox
          Left = 455
          Top = -6
          Width = 458
          Height = 215
          Caption = #3651#3610#3648#3626#3609#3629#3619#3634#3588#3634'/'#3651#3610#3592#3629#3591
          TabOrder = 1
          object RPDOT5: TUniDateTimePicker
            Tag = 9
            Left = 152
            Top = 74
            Width = 151
            Height = 22
            Hint = #3623#3633#3609#3607#3637#3656
            HelpType = htKeyword
            HelpKeyword = 'RPDOT5'
            DateTime = 41496.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 1
            ParentColor = False
            Color = clWhite
            OnChange = RPDOT5Change
          end
          object UniLabel4: TUniLabel
            Left = 22
            Top = 20
            Width = 56
            Height = 13
            Caption = #3627#3609#3633#3585#3591#3634#3609#3586#3634#3618
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel9: TUniLabel
            Left = 22
            Top = 74
            Width = 20
            Height = 13
            Caption = #3623#3633#3609#3607#3637#3656
            ParentFont = False
            TabOrder = 3
          end
          object UniLabel20: TUniLabel
            Left = 22
            Top = 101
            Width = 56
            Height = 13
            Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3592#3629#3591
            ParentFont = False
            TabOrder = 4
          end
          object UniLabel21: TUniLabel
            Left = 22
            Top = 47
            Width = 85
            Height = 13
            Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3609#3629#3619#3634#3588#3634
            ParentFont = False
            TabOrder = 5
          end
          object UniLabel22: TUniLabel
            Left = 22
            Top = 125
            Width = 20
            Height = 13
            Caption = #3623#3633#3609#3607#3637#3656
            ParentFont = False
            TabOrder = 6
          end
          object UniLabel24: TUniLabel
            Left = 22
            Top = 149
            Width = 77
            Height = 13
            Caption = #3648#3592#3657#3634#3627#3609#3657#3634#3607#3637#3656#3612#3641#3657#3605#3636#3604#3605#3656#3629
            ParentFont = False
            TabOrder = 7
          end
          object SMNOT5: TUniDBLookupComboBox
            Tag = 9
            Left = 151
            Top = 20
            Width = 251
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'SMNOT5'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 8
          end
          object PNOOT5: TUniDBEdit
            Tag = 9
            Left = 151
            Top = 47
            Width = 250
            Height = 21
            DataField = 'PNOOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 9
            Color = clWindow
          end
          object RSNOT5: TUniDBEdit
            Tag = 9
            Left = 149
            Top = 101
            Width = 252
            Height = 21
            DataField = 'RSNOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 10
            Color = clWindow
          end
          object RSDOT5: TUniDateTimePicker
            Tag = 9
            Left = 152
            Top = 125
            Width = 151
            Height = 22
            Hint = #3623#3633#3609#3607#3637#3656
            HelpType = htKeyword
            HelpKeyword = 'RSDOT5'
            DateTime = 41496.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 11
            ParentColor = False
            Color = clWhite
            OnChange = RSDOT5Change
          end
          object PSTOT5: TUniDBLookupComboBox
            Tag = 9
            Left = 151
            Top = 149
            Width = 251
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'PSTOT5'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 12
          end
        end
        object GrpBrk: TUniGroupBox
          Left = 3
          Top = 215
          Width = 446
          Height = 190
          Caption = #3650#3610#3619#3585#3648#3585#3629#3619#3660'/'#3612#3641#3657#3588#3657#3635
          TabOrder = 2
          object UniLabel3: TUniLabel
            Left = 32
            Top = 75
            Width = 40
            Height = 13
            Caption = #3650#3607#3619#3624#3633#3614#3607#3660
            ParentFont = False
            TabOrder = 1
          end
          object UniLabel6: TUniLabel
            Left = 32
            Top = 100
            Width = 38
            Height = 13
            Caption = #3619#3627#3633#3626#3612#3641#3657#3588#3657#3635
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel10: TUniLabel
            Left = 32
            Top = 126
            Width = 14
            Height = 13
            Caption = #3594#3639#3656#3629
            ParentFont = False
            TabOrder = 3
          end
          object UniLabel11: TUniLabel
            Left = 32
            Top = 151
            Width = 40
            Height = 13
            Caption = #3650#3607#3619#3624#3633#3607#3614#3660
            ParentFont = False
            TabOrder = 4
          end
          object UniLabel23: TUniLabel
            Left = 32
            Top = 24
            Width = 66
            Height = 13
            Caption = #3619#3627#3633#3626#3650#3610#3619#3585#3648#3585#3629#3619#3660
            ParentFont = False
            TabOrder = 5
          end
          object UniLabel44: TUniLabel
            Left = 32
            Top = 50
            Width = 14
            Height = 13
            Caption = #3594#3639#3656#3629
            ParentFont = False
            TabOrder = 6
          end
          object BRKOT5: TUniDBEdit
            Left = 135
            Top = 23
            Width = 196
            Height = 21
            DataField = 'BRKOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 7
            Color = clWindow
          end
          object BtnSelectBroker: TUniButton
            Left = 337
            Top = 22
            Width = 45
            Height = 22
            Caption = '...'
            ParentFont = False
            TabOrder = 8
            OnClick = BtnSelectBrokerClick
          end
          object GNOOT5: TUniDBEdit
            Tag = 9
            Left = 134
            Top = 100
            Width = 197
            Height = 21
            DataField = 'GNOOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 9
            Color = clWindow
          end
          object UniButton13: TUniButton
            Left = 337
            Top = 100
            Width = 45
            Height = 22
            Caption = '...'
            ParentFont = False
            TabOrder = 10
            OnClick = UniButton13Click
          end
          object TNMBRK: TUniDBEdit
            Tag = 9
            Left = 135
            Top = 50
            Width = 248
            Height = 21
            DataField = 'TNMBRK'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 11
            Color = clWindow
            ReadOnly = True
          end
          object TELBRK: TUniDBEdit
            Tag = 9
            Left = 135
            Top = 77
            Width = 248
            Height = 21
            DataField = 'TELBRK'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 12
            Color = clWindow
            ReadOnly = True
          end
          object TNMGNO: TUniDBEdit
            Tag = 9
            Left = 134
            Top = 126
            Width = 248
            Height = 21
            DataField = 'TNMGNO'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 13
            Color = clWindow
            ReadOnly = True
          end
          object TELGNO: TUniDBEdit
            Tag = 9
            Left = 134
            Top = 151
            Width = 248
            Height = 21
            DataField = 'TELGNO'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 14
            Color = clWindow
            ReadOnly = True
          end
        end
        object GrpMem: TUniGroupBox
          Left = 455
          Top = 215
          Width = 458
          Height = 190
          Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          TabOrder = 3
          object MEMOT5: TUniDBMemo
            Left = 11
            Top = 24
            Width = 434
            Height = 148
            DataField = 'MEMOT5'
            DataSource = dsgrid
            TabOrder = 1
            Color = clWindow
          end
        end
      end
      object TabProduct: TUniTabSheet
        Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3626#3636#3609#3588#3657#3634
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 289
        ExplicitHeight = 193
        object UniLabel49: TUniLabel
          Left = 28
          Top = 264
          Width = 55
          Height = 13
          Caption = #3629#3636#3609#3623#3629#3618#3595#3660#3595#3639#3657#3629
          ParentFont = False
          TabOrder = 0
        end
        object UniLabel50: TUniLabel
          Left = 28
          Top = 290
          Width = 20
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel51: TUniLabel
          Left = 28
          Top = 316
          Width = 55
          Height = 13
          Caption = #3621#3635#3604#3633#3610#3607#3637#3656#3626#3617#3640#3604
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel52: TUniLabel
          Left = 28
          Top = 337
          Width = 47
          Height = 13
          Caption = #3648#3621#3586#3585#3640#3597#3649#3592
          ParentFont = False
          TabOrder = 3
        end
        object DNOYM1: TUniDBEdit
          Tag = 9
          Left = 131
          Top = 264
          Width = 186
          Height = 21
          DataField = 'DNOYM1'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 4
          Color = clWindow
          ReadOnly = True
        end
        object IDTYM1: TUniDateTimePicker
          Tag = 9
          Left = 133
          Top = 288
          Width = 183
          Height = 22
          HelpType = htKeyword
          HelpKeyword = 'IDTYM1'
          DateTime = 41304.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          ReadOnly = True
          TabOrder = 5
          ParentColor = False
          Color = clWhite
        end
        object BNOOT5: TUniDBEdit
          Tag = 9
          Left = 131
          Top = 313
          Width = 186
          Height = 21
          DataField = 'BNOOT5'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 6
          Color = clWindow
        end
        object KEYOT5: TUniDBEdit
          Tag = 9
          Left = 131
          Top = 337
          Width = 186
          Height = 21
          DataField = 'KEYOT5'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 7
          Color = clWindow
        end
        object UniLabel53: TUniLabel
          Left = 344
          Top = 264
          Width = 40
          Height = 13
          Caption = #3619#3634#3588#3634#3586#3634#3618
          ParentFont = False
          TabOrder = 8
        end
        object UniLabel54: TUniLabel
          Left = 344
          Top = 290
          Width = 59
          Height = 13
          Caption = #3626#3656#3623#3609#3648#3614#3636#3656#3617#3619#3634#3588#3634
          ParentFont = False
          TabOrder = 9
        end
        object UniLabel55: TUniLabel
          Left = 344
          Top = 316
          Width = 76
          Height = 13
          Caption = #3626#3656#3623#3609#3648#3614#3636#3656#3617#3586#3629#3591#3649#3606#3617
          ParentFont = False
          TabOrder = 10
        end
        object UniLabel56: TUniLabel
          Left = 344
          Top = 338
          Width = 33
          Height = 13
          Caption = #3626#3656#3623#3609#3621#3604
          ParentFont = False
          TabOrder = 11
        end
        object UniLabel57: TUniLabel
          Left = 647
          Top = 264
          Width = 43
          Height = 13
          Caption = #3619#3634#3588#3634#3626#3640#3607#3608#3636
          ParentFont = False
          TabOrder = 12
        end
        object UniLabel58: TUniLabel
          Left = 647
          Top = 290
          Width = 20
          Height = 13
          Caption = #3616#3634#3625#3637
          ParentFont = False
          TabOrder = 13
        end
        object UniLabel59: TUniLabel
          Left = 647
          Top = 313
          Width = 44
          Height = 13
          Caption = #3619#3623#3617#3607#3633#3657#3591#3626#3636#3657#3609
          ParentFont = False
          TabOrder = 14
        end
        object UniLabel60: TUniLabel
          Left = 647
          Top = 337
          Width = 91
          Height = 13
          Caption = #3623#3591#3648#3591#3636#3609#3586#3629#3591#3649#3606#3617#3614#3636#3648#3624#3625
          ParentFont = False
          TabOrder = 15
        end
        object UniLabel33: TUniLabel
          Left = 28
          Top = 122
          Width = 7
          Height = 13
          Caption = #3626#3637
          ParentFont = False
          TabOrder = 16
        end
        object UniLabel26: TUniLabel
          Left = 28
          Top = 46
          Width = 32
          Height = 13
          Caption = #3649#3610#3610#3619#3606
          ParentFont = False
          TabOrder = 17
        end
        object UniLabel47: TUniLabel
          Left = 28
          Top = 230
          Width = 37
          Height = 13
          Caption = #3626#3616#3634#3614#3619#3606
          ParentFont = False
          TabOrder = 18
        end
        object UniLabel48: TUniLabel
          Left = 28
          Top = 202
          Width = 45
          Height = 13
          Caption = #3588#3621#3633#3591#3626#3636#3609#3588#3657#3634
          ParentFont = False
          TabOrder = 19
        end
        object USEOT5: TUniDBLookupComboBox
          Tag = 9
          Left = 131
          Top = 228
          Width = 250
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'USEOT5'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 20
        end
        object UniLabel31: TUniLabel
          Left = 28
          Top = 19
          Width = 23
          Height = 13
          Caption = #3619#3640#3656#3609#3619#3606
          ParentFont = False
          TabOrder = 21
        end
        object SRSPM1: TUniDBLookupComboBox
          Tag = 9
          Left = 131
          Top = 18
          Width = 250
          Height = 21
          Hint = #3619#3640#3656#3609#3619#3606
          ListField = 'THAI_DESC'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'SRSPM1'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 22
          OnCloseUp = SRSPM1CloseUp
        end
        object UniLabel32: TUniLabel
          Left = 28
          Top = 71
          Width = 30
          Height = 13
          Caption = #3619#3627#3633#3626#3619#3606
          ParentFont = False
          TabOrder = 23
        end
        object COLOT5: TUniDBLookupComboBox
          Tag = 9
          Left = 131
          Top = 123
          Width = 250
          Height = 21
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          DataField = 'COLOT5'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 24
        end
        object UniLabel35: TUniLabel
          Left = 28
          Top = 149
          Width = 41
          Height = 13
          Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          ParentFont = False
          TabOrder = 25
        end
        object UniLabel36: TUniLabel
          Left = 28
          Top = 176
          Width = 46
          Height = 13
          Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          ParentFont = False
          TabOrder = 26
        end
        object SEROT5: TUniDBEdit
          Tag = 9
          Left = 131
          Top = 149
          Width = 195
          Height = 21
          DataField = 'SEROT5'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 27
          Color = clWindow
        end
        object ENGOT5: TUniDBEdit
          Tag = 9
          Left = 131
          Top = 176
          Width = 250
          Height = 21
          DataField = 'ENGOT5'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 28
          Color = clWindow
          ReadOnly = True
        end
        object PRDOT5: TUniDBEdit
          Tag = 9
          Left = 131
          Top = 71
          Width = 195
          Height = 21
          DataField = 'PRDOT5'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 29
          Color = clWindow
        end
        object TNMPM1: TUniDBEdit
          Tag = 9
          Left = 131
          Top = 96
          Width = 250
          Height = 21
          DataField = 'TNMPM1'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 30
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel12: TUniLabel
          Left = 28
          Top = 96
          Width = 14
          Height = 13
          Caption = #3594#3639#3656#3629
          ParentFont = False
          TabOrder = 31
        end
        object BtnSelectProduct: TUniButton
          Left = 332
          Top = 71
          Width = 49
          Height = 22
          Caption = '...'
          ParentFont = False
          TabOrder = 32
          OnClick = BtnSelectProductClick
        end
        object PnImg: TUniPanel
          Left = 435
          Top = 19
          Width = 284
          Height = 205
          BorderStyle = ubsInset
          Color = clBtnFace
          TabOrder = 33
          object ViewImage: TUniImage
            Left = 1
            Top = 1
            Width = 282
            Height = 203
            Center = True
            Stretch = True
            Proportional = True
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            Transparent = False
          end
        end
        object UP1OT5: TUniEdit
          Tag = 9
          Left = 435
          Top = 263
          Width = 186
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'UP1OT5'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 34
          Color = clWindow
          ReadOnly = True
        end
        object APCOT5: TUniEdit
          Tag = 9
          Left = 435
          Top = 288
          Width = 186
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'APCOT5'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 35
          Color = clWindow
          OnExit = APCOT5Exit
          OnKeyPress = APCOT5KeyPress
        end
        object AFEOT5: TUniEdit
          Tag = 9
          Left = 435
          Top = 313
          Width = 186
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'AFEOT5'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 36
          Color = clWindow
          OnExit = AFEOT5Exit
          OnKeyPress = AFEOT5KeyPress
        end
        object PDAOT5: TUniEdit
          Tag = 9
          Left = 487
          Top = 337
          Width = 134
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'PDAOT5'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 37
          Color = clWindow
          OnEnter = PDAOT5Enter
          OnKeyPress = PDAOT5KeyPress
        end
        object NETOT5: TUniEdit
          Tag = 9
          Left = 754
          Top = 263
          Width = 186
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'NETOT5'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 38
          Color = clWindow
          ReadOnly = True
        end
        object TAXOT5: TUniEdit
          Tag = 9
          Left = 754
          Top = 288
          Width = 186
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'TAXOT5'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 39
          Color = clWindow
          ReadOnly = True
        end
        object PPYOT5: TUniEdit
          Tag = 9
          Left = 754
          Top = 313
          Width = 186
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'PPYOT5'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 40
          Color = clWindow
        end
        object FAMPM1: TUniEdit
          Tag = 9
          Left = 754
          Top = 337
          Width = 186
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'FAMPM1'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 41
          Color = clWindow
        end
        object TNMWHS: TUniDBEdit
          Tag = 9
          Left = 131
          Top = 202
          Width = 250
          Height = 21
          DataField = 'TNMWHS'
          DataSource = dsgrid
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 42
          Color = clWindow
          ReadOnly = True
        end
        object BtnSelectIM1: TUniButton
          Left = 332
          Top = 149
          Width = 49
          Height = 22
          Caption = '...'
          ParentFont = False
          TabOrder = 43
          OnClick = BtnSelectIM1Click
        end
        object PDCOT5: TUniEdit
          Tag = 9
          Left = 435
          Top = 337
          Width = 38
          Height = 21
          HelpType = htKeyword
          HelpKeyword = 'PDCOT5'
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          Alignment = taRightJustify
          ParentFont = False
          TabOrder = 44
          Color = clWindow
          OnExit = PDCOT5Exit
          OnKeyPress = PDCOT5KeyPress
        end
        object LbPercentDiscont: TUniLabel
          Left = 475
          Top = 340
          Width = 11
          Height = 13
          Caption = '%'
          ParentFont = False
          TabOrder = 45
        end
        object MNMPM1: TUniDBLookupComboBox
          Tag = 9
          Left = 131
          Top = 45
          Width = 250
          Height = 21
          Hint = #3649#3610#3610
          ListField = 'THAI_DESC'
          KeyField = 'THAI_DESC'
          ListFieldIndex = 0
          DataField = 'MNMPM1'
          DataSource = dsgrid
          ParentFont = False
          TabOrder = 46
        end
      end
      object TabCondition: TUniTabSheet
        Caption = #3648#3591#3639#3656#3629#3609#3652#3586#3585#3634#3619#3586#3634#3618
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 289
        ExplicitHeight = 193
        object pnCondition: TUniPanel
          Left = 0
          Top = 0
          Width = 981
          Height = 172
          BorderStyle = ubsNone
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 0
          object UniLabel77: TUniLabel
            Left = 24
            Top = 14
            Width = 71
            Height = 13
            Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3586#3634#3618
            ParentFont = False
            TabOrder = 1
          end
          object LbFCDOT5: TUniLabel
            Left = 342
            Top = 12
            Width = 70
            Height = 13
            Visible = False
            Caption = #3610#3619#3636#3625#3633#3607#3652#3615#3649#3609#3609#3595#3660
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel79: TUniLabel
            Left = 24
            Top = 40
            Width = 57
            Height = 13
            Caption = #3619#3634#3588#3634#3586#3634#3618#3619#3623#3617
            ParentFont = False
            TabOrder = 3
          end
          object LbDown: TUniLabel
            Left = 24
            Top = 69
            Width = 40
            Height = 13
            Caption = #3648#3591#3636#3609#3604#3634#3623#3609#3660
            ParentFont = False
            TabOrder = 4
          end
          object LbHpAmt: TUniLabel
            Left = 24
            Top = 123
            Width = 76
            Height = 13
            Caption = #3648#3591#3636#3609#3621#3591#3607#3640#3609#3618#3629#3604#3592#3633#3604
            ParentFont = False
            TabOrder = 5
          end
          object STPOT5: TUniDBLookupComboBox
            Tag = 9
            Left = 136
            Top = 13
            Width = 186
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'STPOT5'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 6
            OnCloseUp = STPOT5CloseUp
          end
          object LbRate: TUniLabel
            Left = 24
            Top = 94
            Width = 62
            Height = 13
            Caption = #3629#3633#3605#3619#3634#3604#3629#3585#3648#3610#3637#3657#3618
            ParentFont = False
            TabOrder = 7
          end
          object LbPeriod: TUniLabel
            Left = 344
            Top = 67
            Width = 47
            Height = 13
            Caption = #3592#3635#3609#3623#3609#3591#3623#3604
            ParentFont = False
            TabOrder = 8
          end
          object LbInstallAmt: TUniLabel
            Left = 344
            Top = 96
            Width = 29
            Height = 13
            Caption = #3588#3656#3634#3591#3623#3604
            ParentFont = False
            TabOrder = 9
          end
          object LbAmt: TUniLabel
            Left = 344
            Top = 121
            Width = 59
            Height = 13
            Caption = #3619#3634#3588#3634#3648#3591#3636#3609#3612#3656#3629#3609
            ParentFont = False
            TabOrder = 10
          end
          object LbFirst: TUniLabel
            Left = 344
            Top = 41
            Width = 92
            Height = 13
            Caption = #3623#3633#3609#3607#3637#3656#3609#3633#3604#3594#3635#3619#3632#3591#3623#3604#3649#3619#3585
            ParentFont = False
            TabOrder = 11
          end
          object LbDueType: TUniLabel
            Left = 647
            Top = 41
            Width = 68
            Height = 13
            Caption = #3594#3635#3619#3632#3607#3640#3585' '#3654' '#3623#3633#3609#3607#3637#3656
            ParentFont = False
            TabOrder = 12
          end
          object Lbdown2: TUniLabel
            Left = 647
            Top = 71
            Width = 191
            Height = 13
            Caption = #3588#3656#3634#3611#3619#3632#3585#3633#3609#3626#3636#3609#3648#3594#3639#3656#3629#3648#3594#3656#3634#3595#3639#3657#3629#3619#3606#3618#3609#3605#3660#3627#3633#3585#3648#3591#3636#3609#3604#3634#3623#3609#3660
            ParentFont = False
            TabOrder = 13
          end
          object LbFeeDown: TUniLabel
            Left = 647
            Top = 122
            Width = 156
            Height = 13
            Caption = #3588#3656#3634#3608#3619#3619#3617#3648#3609#3637#3618#3617#3607#3635#3626#3633#3597#3597#3634#3627#3633#3585#3648#3591#3636#3609#3604#3634#3623#3609#3660
            ParentFont = False
            TabOrder = 14
          end
          object DDTOT5: TUniDateTimePicker
            Left = 453
            Top = 40
            Width = 151
            Height = 22
            HelpType = htKeyword
            HelpKeyword = 'DDTOT5'
            DateTime = 41304.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 15
            ParentColor = False
            Color = clWhite
            OnChange = DDTOT5Change
          end
          object ESDOT5: TUniDBLookupComboBox
            Tag = 9
            Left = 743
            Top = 40
            Width = 186
            Height = 21
            ListField = 'CODE'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'ESDOT5'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 16
          end
          object PPYOT52: TUniEdit
            Tag = 9
            Left = 136
            Top = 40
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'PPYOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 17
            Color = clWindow
            ReadOnly = True
          end
          object RATOT5: TUniEdit
            Tag = 9
            Left = 136
            Top = 93
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'RATOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 18
            Color = clWindow
            OnExit = RATOT5Exit
            OnKeyPress = RATOT5KeyPress
          end
          object NLEOT5: TUniEdit
            Tag = 9
            Left = 451
            Top = 67
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'NLEOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 19
            Color = clWindow
            OnExit = NLEOT5Exit
            OnKeyPress = NLEOT5KeyPress
          end
          object DWTOT5: TUniEdit
            Tag = 9
            Left = 136
            Top = 67
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'DWTOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 20
            Color = clWindow
            OnExit = DWTOT5Exit
            OnKeyPress = DWTOT5KeyPress
          end
          object PMMOT5: TUniEdit
            Tag = 9
            Left = 451
            Top = 94
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'PMMOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 21
            Color = clWindow
            ReadOnly = True
          end
          object SUMOT5: TUniEdit
            Tag = 9
            Left = 136
            Top = 123
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'SUMOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 22
            Color = clWindow
            ReadOnly = True
          end
          object HPOT5: TUniEdit
            Tag = 9
            Left = 451
            Top = 123
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'HPOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 23
            Color = clWindow
            ReadOnly = True
          end
          object CM1OT5: TUniEdit
            Tag = 9
            Left = 743
            Top = 93
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'CM1OT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 24
            Color = clWindow
            ReadOnly = True
          end
          object CM2OT5: TUniEdit
            Tag = 9
            Left = 743
            Top = 147
            Width = 186
            Height = 21
            HelpType = htKeyword
            HelpKeyword = 'CM2OT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 25
            Color = clWindow
            ReadOnly = True
          end
          object FCDOT5: TUniDBEdit
            Left = 454
            Top = 13
            Width = 151
            Height = 21
            Visible = False
            DataField = 'FCDOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 26
            Color = clWindow
          end
          object BtnSelectFinance: TUniButton
            Left = 607
            Top = 13
            Width = 39
            Height = 22
            Visible = False
            Caption = '...'
            ParentFont = False
            TabOrder = 27
            OnClick = BtnSelectFinanceClick
          end
          object TNMFCD: TUniDBEdit
            Left = 742
            Top = 13
            Width = 187
            Height = 21
            Visible = False
            DataField = 'TNMFCD'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 28
            Color = clWindow
            ReadOnly = True
          end
          object LbTNMFCD: TUniLabel
            Left = 652
            Top = 14
            Width = 84
            Height = 13
            Visible = False
            Caption = #3594#3639#3656#3629#3610#3619#3636#3625#3633#3607#3652#3615#3649#3609#3609#3595#3660
            ParentFont = False
            TabOrder = 29
          end
        end
        object GrpDown: TUniGroupBox
          Left = 0
          Top = 172
          Width = 981
          Height = 239
          Caption = #3648#3591#3639#3656#3629#3609#3652#3586#3594#3635#3619#3632#3648#3591#3636#3609#3604#3634#3623#3609#3660#3588#3591#3588#3657#3634#3591
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 1
          object DbDown: TUniDBGrid
            Left = 8
            Top = 57
            Width = 964
            Height = 172
            DataSource = dsDown
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            WebOptions.PageSize = 7
            WebOptions.LoadMaskMsg = 'Please wait...'
            HeaderTitleAlign = taLeftJustify
            StripeRows = False
            Align = alCustom
            Anchors = [akLeft, akTop, akRight, akBottom]
            ParentFont = False
            TabOrder = 1
            Columns = <
              item
                FieldName = 'SEQOM7'
                Title.Alignment = taCenter
                Title.Caption = #3621#3635#3604#3633#3610
                Title.Font.Charset = THAI_CHARSET
                Width = 39
                Visible = True
                Color = clWhite
                Font.Charset = THAI_CHARSET
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'PPDOM7'
                Title.Alignment = taCenter
                Title.Caption = #3591#3623#3604#3607#3637#3656
                Width = 65
                Visible = True
                Color = clWhite
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'TNMPTP'
                Title.Alignment = taCenter
                Title.Caption = #3592#3656#3634#3618#3648#3594#3655#3588'/'#3648#3591#3636#3609#3626#3604
                Title.Font.Charset = THAI_CHARSET
                Width = 125
                Visible = True
                Color = clWhite
                Font.Charset = THAI_CHARSET
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'NOTOM7'
                Title.Alignment = taCenter
                Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
                Width = 156
                Visible = True
                Color = clWhite
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'PDTOM7'
                Title.Alignment = taCenter
                Title.Caption = #3585#3635#3627#3609#3604#3594#3635#3619#3632
                Width = 135
                Visible = True
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'PATOM7'
                Title.Alignment = taCenter
                Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
                Width = 172
                Visible = True
                Alignment = taRightJustify
                Expanded = False
              end
              item
                FieldName = 'NAROM7'
                Title.Alignment = taCenter
                Title.Caption = #3648#3591#3639#3656#3629#3609#3652#3586
                Width = 114
                Visible = True
                Expanded = False
              end
              item
                FieldName = 'STSOM7'
                Title.Alignment = taCenter
                Title.Caption = #3626#3606#3634#3609#3632
                Width = 78
                Visible = True
                Alignment = taCenter
                Expanded = False
              end>
          end
          object PnHeadDown: TUniPanel
            Left = 2
            Top = 15
            Width = 977
            Height = 39
            BorderStyle = ubsNone
            Align = alTop
            Anchors = [akLeft, akTop, akRight]
            Color = clBtnFace
            TabOrder = 2
            object BtnDownView: TUniButton
              Left = 3
              Top = 8
              Width = 75
              Height = 25
              Caption = #3604#3641#3586#3657#3629#3617#3641#3621
              ParentFont = False
              TabOrder = 1
            end
            object BtnDownAdd: TUniButton
              Left = 83
              Top = 8
              Width = 75
              Height = 25
              Caption = #3648#3614#3636#3656#3617
              ParentFont = False
              TabOrder = 2
              OnClick = BtnDownAddClick
            end
            object BtnDownEdit: TUniButton
              Left = 160
              Top = 8
              Width = 75
              Height = 25
              Caption = #3649#3585#3657#3652#3586
              ParentFont = False
              TabOrder = 3
            end
            object BtnDownDel: TUniButton
              Left = 237
              Top = 8
              Width = 75
              Height = 25
              Caption = #3621#3610
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
      object TabInsurance: TUniTabSheet
        Caption = #3611#3619#3632#3585#3633#3609#3616#3633#3618
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 376
        object GrpCall: TUniGroupBox
          Left = 635
          Top = 3
          Width = 314
          Height = 413
          Caption = #3619#3633#3610#3649#3592#3657#3591
          Align = alCustom
          TabOrder = 0
          object UniLabel90: TUniLabel
            Left = 8
            Top = 23
            Width = 50
            Height = 13
            Caption = #3623#3633#3609#3607#3637#3656#3619#3633#3610#3649#3592#3657#3591
            ParentFont = False
            TabOrder = 1
          end
          object UniLabel91: TUniLabel
            Left = 8
            Top = 50
            Width = 56
            Height = 13
            Caption = #3648#3621#3586#3607#3637#3656#3619#3633#3610#3649#3592#3657#3591
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel92: TUniLabel
            Left = 8
            Top = 100
            Width = 66
            Height = 13
            Caption = #3623#3633#3609#3648#3619#3636#3656#3617#3588#3640#3657#3617#3588#3619#3629#3591
            ParentFont = False
            TabOrder = 3
          end
          object UniLabel93: TUniLabel
            Left = 8
            Top = 122
            Width = 48
            Height = 13
            Caption = #3623#3633#3609#3607#3637#3656#3626#3636#3657#3609#3626#3640#3604
            ParentFont = False
            TabOrder = 4
          end
          object UniLabel94: TUniLabel
            Left = 8
            Top = 77
            Width = 37
            Height = 13
            Caption = #3612#3641#3657#3619#3633#3610#3649#3592#3657#3591
            ParentFont = False
            TabOrder = 5
          end
          object INOOT5: TUniDBEdit
            Left = 90
            Top = 46
            Width = 186
            Height = 21
            DataField = 'INOOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 6
            Color = clWindow
          end
          object STAOT5: TUniDateTimePicker
            Left = 90
            Top = 95
            Width = 151
            Height = 22
            Hint = ' '
            HelpType = htKeyword
            HelpKeyword = 'STAOT5'
            DateTime = 41140.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 7
            ParentColor = False
            Color = clWhite
          end
          object ENDOT5: TUniDateTimePicker
            Left = 90
            Top = 120
            Width = 151
            Height = 22
            Hint = ' '
            HelpType = htKeyword
            HelpKeyword = 'ENDOT5'
            DateTime = 41140.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            ReadOnly = True
            TabOrder = 8
            ParentColor = False
            Color = clWhite
          end
          object PSROT5: TUniDBLookupComboBox
            Tag = 9
            Left = 90
            Top = 70
            Width = 186
            Height = 21
            ListField = 'DESCRIPTION'
            KeyField = 'CODE'
            ListFieldIndex = 0
            DataField = 'PSROT5'
            DataSource = dsgrid
            ParentFont = False
            TabOrder = 9
          end
          object RDTOT5: TUniDateTimePicker
            Left = 90
            Top = 19
            Width = 168
            Height = 22
            Hint = ' '
            HelpType = htKeyword
            HelpKeyword = 'RDTOT5'
            DateTime = 41140.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 10
            ParentColor = False
            Color = clWhite
            OnChange = RDTOT5Change
          end
        end
        object GrpPRY: TUniGroupBox
          Left = 3
          Top = 3
          Width = 313
          Height = 414
          Caption = #3614'.'#3619'.'#3610'.'
          Align = alCustom
          TabOrder = 1
          object UniLabel95: TUniLabel
            Left = 8
            Top = 23
            Width = 59
            Height = 13
            Caption = #3610#3619#3636#3625#3633#3607#3611#3619#3632#3585#3633#3609
            ParentFont = False
            TabOrder = 1
          end
          object UniLabel96: TUniLabel
            Left = 8
            Top = 74
            Width = 77
            Height = 13
            Caption = #3627#3617#3634#3618#3648#3621#3586' '#3614'.'#3619'.'#3610'.'
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel97: TUniLabel
            Left = 8
            Top = 122
            Width = 66
            Height = 13
            Caption = #3623#3633#3609#3648#3619#3636#3656#3617#3588#3640#3657#3617#3588#3619#3629#3591
            ParentFont = False
            TabOrder = 3
          end
          object UniLabel98: TUniLabel
            Left = 8
            Top = 147
            Width = 80
            Height = 13
            Caption = #3623#3633#3609#3588#3619#3610#3629#3634#3618#3640#3611#3619#3632#3585#3633#3609
            ParentFont = False
            TabOrder = 4
          end
          object UniLabel99: TUniLabel
            Left = 8
            Top = 100
            Width = 61
            Height = 13
            Caption = #3648#3610#3637#3657#3618#3611#3619#3632#3585#3633#3609#3616#3633#3618
            ParentFont = False
            TabOrder = 5
          end
          object CN1OT5: TUniDBEdit
            Left = 90
            Top = 74
            Width = 190
            Height = 21
            DataField = 'CN1OT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 6
            Color = clWindow
          end
          object SDTOT5: TUniDateTimePicker
            Left = 90
            Top = 122
            Width = 151
            Height = 22
            HelpType = htKeyword
            HelpKeyword = 'SDTOT5'
            DateTime = 41304.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 7
            ParentColor = False
            Color = clWhite
            OnChange = SDTOT5Change
          end
          object EDTOT5: TUniDateTimePicker
            Left = 90
            Top = 147
            Width = 151
            Height = 22
            Hint = ' '
            HelpType = htKeyword
            HelpKeyword = 'EDTOT5'
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
          object ITSOT5: TUniEdit
            Tag = 9
            Left = 90
            Top = 98
            Width = 190
            Height = 21
            Hint = #3648#3610#3637#3657#3618#3611#3619#3632#3585#3633#3609#3616#3633#3618
            HelpType = htKeyword
            HelpKeyword = 'ITSOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 9
            Color = clWindow
            OnExit = ITSOT5Exit
            OnKeyPress = ITSOT5KeyPress
          end
          object ICDOT5: TUniDBEdit
            Left = 90
            Top = 23
            Width = 151
            Height = 21
            DataField = 'ICDOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 10
            Color = clWindow
          end
          object UniLabel30: TUniLabel
            Left = 7
            Top = 49
            Width = 73
            Height = 13
            Caption = #3594#3639#3656#3629#3610#3619#3636#3625#3633#3607#3611#3619#3632#3585#3633#3609
            ParentFont = False
            TabOrder = 11
          end
          object BtnSelectICD: TUniButton
            Left = 243
            Top = 23
            Width = 39
            Height = 22
            Caption = '...'
            ParentFont = False
            TabOrder = 12
            OnClick = BtnSelectICDClick
          end
          object TNMICD: TUniDBEdit
            Tag = 9
            Left = 90
            Top = 49
            Width = 190
            Height = 21
            DataField = 'TNMICD'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 13
            Color = clWindow
            ReadOnly = True
          end
        end
        object GrpClass1: TUniGroupBox
          Left = 319
          Top = 3
          Width = 314
          Height = 414
          Caption = #3611#3619#3632#3585#3633#3609#3616#3633#3618#3594#3633#3656#3609#3627#3609#3638#3656#3591
          Align = alCustom
          TabOrder = 2
          object UniLabel100: TUniLabel
            Left = 8
            Top = 23
            Width = 59
            Height = 13
            Caption = #3610#3619#3636#3625#3633#3607#3611#3619#3632#3585#3633#3609
            ParentFont = False
            TabOrder = 1
          end
          object UniLabel101: TUniLabel
            Left = 8
            Top = 74
            Width = 59
            Height = 13
            Caption = #3607#3640#3609#3611#3619#3632#3585#3633#3609#3616#3633#3618
            ParentFont = False
            TabOrder = 2
          end
          object UniLabel102: TUniLabel
            Left = 8
            Top = 122
            Width = 66
            Height = 13
            Caption = #3623#3633#3609#3648#3619#3636#3656#3617#3588#3640#3657#3617#3588#3619#3629#3591
            ParentFont = False
            TabOrder = 3
          end
          object UniLabel103: TUniLabel
            Left = 8
            Top = 147
            Width = 80
            Height = 13
            Caption = #3623#3633#3609#3588#3619#3610#3629#3634#3618#3640#3611#3619#3632#3585#3633#3609
            ParentFont = False
            TabOrder = 4
          end
          object UniLabel104: TUniLabel
            Left = 8
            Top = 100
            Width = 61
            Height = 13
            Caption = #3648#3610#3637#3657#3618#3611#3619#3632#3585#3633#3609#3616#3633#3618
            ParentFont = False
            TabOrder = 5
          end
          object BDTOT5: TUniDateTimePicker
            Left = 90
            Top = 122
            Width = 151
            Height = 22
            Hint = ' '
            HelpType = htKeyword
            HelpKeyword = 'BDTOT5'
            DateTime = 41304.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 6
            ParentColor = False
            Color = clWhite
            OnChange = BDTOT5Change
          end
          object FDTOT5: TUniDateTimePicker
            Left = 90
            Top = 147
            Width = 151
            Height = 22
            Hint = ' '
            HelpType = htKeyword
            HelpKeyword = 'FDTOT5'
            DateTime = 41304.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            ReadOnly = True
            TabOrder = 7
            ParentColor = False
            Color = clWhite
          end
          object IVSOT5: TUniEdit
            Tag = 9
            Left = 90
            Top = 74
            Width = 190
            Height = 21
            Hint = ' '
            HelpType = htKeyword
            HelpKeyword = 'IVSOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 8
            Color = clWindow
            OnExit = IVSOT5Exit
            OnKeyPress = IVSOT5KeyPress
          end
          object INTOT5: TUniEdit
            Tag = 9
            Left = 90
            Top = 98
            Width = 190
            Height = 21
            Hint = ' '
            HelpType = htKeyword
            HelpKeyword = 'INTOT5'
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            Alignment = taRightJustify
            ParentFont = False
            TabOrder = 9
            Color = clWindow
            OnExit = INTOT5Exit
            OnKeyPress = INTOT5KeyPress
          end
          object ISDOT5: TUniDBEdit
            Left = 90
            Top = 23
            Width = 151
            Height = 21
            DataField = 'ISDOT5'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 10
            Color = clWindow
          end
          object BtnSelectISD: TUniButton
            Left = 243
            Top = 23
            Width = 39
            Height = 22
            Caption = '...'
            ParentFont = False
            TabOrder = 11
            OnClick = BtnSelectISDClick
          end
          object TNMISD: TUniDBEdit
            Tag = 9
            Left = 90
            Top = 49
            Width = 190
            Height = 21
            DataField = 'TNMISD'
            DataSource = dsgrid
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            TabOrder = 12
            Color = clWindow
            ReadOnly = True
          end
          object UniLabel34: TUniLabel
            Left = 7
            Top = 49
            Width = 73
            Height = 13
            Caption = #3594#3639#3656#3629#3610#3619#3636#3625#3633#3607#3611#3619#3632#3585#3633#3609
            ParentFont = False
            TabOrder = 13
          end
        end
      end
      object TabAccessory: TUniTabSheet
        Caption = #3629#3640#3611#3585#3619#3603#3660#3605#3585#3649#3605#3656#3591'/'#3586#3629#3591#3649#3606#3617
        object DbgAccessory: TUniDBGrid
          Left = 0
          Top = 40
          Width = 981
          Height = 371
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          DataSource = dsAccessory
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
              FieldName = 'AMMOT6'
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
              FieldName = 'NEEOT6'
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3626#3640#3607#3608#3636
              Width = 94
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end>
        end
        object pnHeadAccessory: TUniPanel
          Left = 0
          Top = 0
          Width = 981
          Height = 40
          BorderStyle = ubsNone
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 1
          object BtnAccessoryView: TUniButton
            Left = 6
            Top = 8
            Width = 75
            Height = 25
            Caption = #3604#3641#3586#3657#3629#3617#3641#3621
            ParentFont = False
            TabOrder = 1
            OnClick = BtnAccessoryViewClick
          end
          object BtnAccessoryAdd: TUniButton
            Left = 83
            Top = 8
            Width = 75
            Height = 25
            Caption = #3648#3614#3636#3656#3617
            ParentFont = False
            TabOrder = 2
            OnClick = BtnAccessoryAddClick
          end
          object BtnAccessoryEdit: TUniButton
            Left = 160
            Top = 8
            Width = 75
            Height = 25
            Caption = #3649#3585#3657#3652#3586
            ParentFont = False
            TabOrder = 3
            OnClick = BtnAccessoryEditClick
          end
          object BtnAccessoryDel: TUniButton
            Left = 237
            Top = 8
            Width = 75
            Height = 25
            Caption = #3621#3610
            ParentFont = False
            TabOrder = 4
            OnClick = BtnAccessoryDelClick
          end
        end
      end
      object TabEXP: TUniTabSheet
        Caption = #3619#3634#3618#3619#3633#3610'/'#3588#3656#3634#3651#3594#3657#3592#3656#3634#3618
        object DbgExp: TUniDBGrid
          Left = 0
          Top = 40
          Width = 981
          Height = 371
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          DataSource = dsEXP
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
              FieldName = 'SEQEXP'
              Title.Alignment = taCenter
              Title.Caption = #3621#3635#3604#3633#3610
              Title.Font.Charset = THAI_CHARSET
              Width = 36
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'CDCEXP'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3585#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 87
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'TNMCDC'
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
              Width = 165
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'AMTEXP'
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 112
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'TNMTP1'
              Title.Alignment = taCenter
              Title.Caption = #3612#3641#3657#3629#3629#3585#3588#3656#3634#3651#3594#3657#3592#3656#3634#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 102
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'TNMTP2'
              Title.Alignment = taCenter
              Title.Caption = #3612#3641#3657#3619#3633#3610#3612#3636#3604#3594#3629#3610#3605#3634#3617#3648#3585#3655#3610
              Title.Font.Charset = THAI_CHARSET
              Width = 104
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'DCREXP'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3619#3633#3610
              Width = 84
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'DCPEXP'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3592#3656#3634#3618
              Width = 85
              Visible = True
              Expanded = False
            end>
        end
        object PnHeadExp: TUniPanel
          Left = 0
          Top = 0
          Width = 981
          Height = 40
          BorderStyle = ubsNone
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 1
          object BtnExpView: TUniButton
            Tag = 9
            Left = 6
            Top = 8
            Width = 75
            Height = 25
            Caption = #3604#3641#3586#3657#3629#3617#3641#3621
            ParentFont = False
            TabOrder = 1
            OnClick = BtnExpViewClick
          end
          object BtnExpAdd: TUniButton
            Tag = 9
            Left = 83
            Top = 9
            Width = 75
            Height = 25
            Caption = #3648#3614#3636#3656#3617
            ParentFont = False
            TabOrder = 2
            OnClick = BtnExpAddClick
          end
          object BtnExpEdit: TUniButton
            Tag = 9
            Left = 160
            Top = 8
            Width = 75
            Height = 25
            Caption = #3649#3585#3657#3652#3586
            ParentFont = False
            TabOrder = 3
            OnClick = BtnExpEditClick
          end
          object BtnExpDel: TUniButton
            Tag = 9
            Left = 237
            Top = 8
            Width = 75
            Height = 25
            Caption = #3621#3610
            ParentFont = False
            TabOrder = 4
            OnClick = BtnExpDelClick
          end
        end
      end
      object TabCard: TUniTabSheet
        Caption = #3629#3639#3656#3609' '#3654
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 254
        object DbgCard: TUniDBGrid
          Left = 0
          Top = 40
          Width = 981
          Height = 164
          DataSource = dsCard
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = 'Please wait...'
          HeaderTitleAlign = taLeftJustify
          OnDblClick = BtnCardEditClick
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              FieldName = 'CDCOMI'
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626
              Width = 79
              Visible = True
              Color = clWhite
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'TNMCDC'
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3648#3629#3585#3626#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 214
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Expanded = False
            end
            item
              FieldName = 'RDTOMI'
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656#3619#3633#3610
              Width = 129
              Visible = True
              Color = clWhite
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'RTMOMI'
              Title.Alignment = taCenter
              Title.Caption = #3648#3623#3621#3634
              Width = 89
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'TNMPSN'
              Title.Alignment = taCenter
              Title.Caption = #3648#3592#3657#3634#3627#3609#3657#3634#3607#3637#3656#3612#3641#3657#3619#3633#3610
              Width = 213
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'FLGOMI'
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3639#3629#3585
              Width = 55
              Visible = True
              Alignment = taCenter
              Expanded = False
            end>
        end
        object UniPanel4: TUniPanel
          Left = 0
          Top = 204
          Width = 981
          Height = 207
          Align = alBottom
          Anchors = [akLeft, akRight, akBottom]
          Color = clBtnFace
          TabOrder = 1
          object grpSendCar: TUniGroupBox
            Left = 1
            Top = 1
            Width = 384
            Height = 205
            Caption = #3585#3634#3619#3626#3656#3591#3617#3629#3610#3619#3606#3618#3609#3605#3660
            Align = alLeft
            Anchors = [akLeft, akTop, akBottom]
            TabOrder = 1
            ExplicitLeft = -4
            object UniLabel75: TUniLabel
              Left = 17
              Top = 79
              Width = 33
              Height = 13
              Caption = #3626#3606#3634#3609#3607#3637#3656
              ParentFont = False
              TabOrder = 1
            end
            object UniLabel76: TUniLabel
              Left = 17
              Top = 104
              Width = 69
              Height = 13
              Caption = #3623#3633#3609#3607#3637#3656#3626#3656#3591#3617#3629#3610#3592#3619#3636#3591
              ParentFont = False
              TabOrder = 2
            end
            object UniLabel25: TUniLabel
              Left = 17
              Top = 130
              Width = 54
              Height = 13
              Caption = #3648#3623#3621#3634#3626#3656#3591#3617#3629#3610
              ParentFont = False
              TabOrder = 3
            end
            object UniLabel27: TUniLabel
              Left = 17
              Top = 157
              Width = 82
              Height = 13
              Caption = #3648#3592#3657#3634#3627#3609#3657#3634#3607#3637#3656#3612#3641#3657#3626#3656#3591#3617#3629#3610
              ParentFont = False
              TabOrder = 4
            end
            object UniLabel28: TUniLabel
              Left = 17
              Top = 27
              Width = 93
              Height = 13
              Caption = #3623#3633#3609#3607#3637#3656#3588#3634#3604#3623#3656#3634#3592#3632#3626#3656#3591#3617#3629#3610
              ParentFont = False
              TabOrder = 5
            end
            object UniLabel29: TUniLabel
              Left = 17
              Top = 54
              Width = 54
              Height = 13
              Caption = #3648#3623#3621#3634#3626#3656#3591#3617#3629#3610
              ParentFont = False
              TabOrder = 6
            end
            object TMDOT5: TUniDBEdit
              Tag = 9
              Left = 134
              Top = 52
              Width = 197
              Height = 21
              DataField = 'TMDOT5'
              DataSource = dsgrid
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 7
              Color = clWindow
            end
            object PLCOT5: TUniDBEdit
              Tag = 9
              Left = 134
              Top = 79
              Width = 197
              Height = 21
              DataField = 'PLCOT5'
              DataSource = dsgrid
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 8
              Color = clWindow
            end
            object EPTOT5: TUniDBEdit
              Tag = 9
              Left = 134
              Top = 130
              Width = 197
              Height = 21
              DataField = 'EPTOT5'
              DataSource = dsgrid
              PasswordChar = #0
              CharCase = ecNormal
              MaxLength = 0
              CharEOL = #0
              ParentFont = False
              TabOrder = 9
              Color = clWindow
            end
            object EPSOT5: TUniDBLookupComboBox
              Tag = 9
              Left = 134
              Top = 157
              Width = 183
              Height = 21
              ListField = 'DESCRIPTION'
              KeyField = 'CODE'
              ListFieldIndex = 0
              DataField = 'EPSOT5'
              DataSource = dsgrid
              ParentFont = False
              TabOrder = 10
            end
            object EXDOT5: TUniDateTimePicker
              Tag = 9
              Left = 135
              Top = 26
              Width = 151
              Height = 22
              Hint = #3623#3633#3609#3607#3637#3656#3588#3634#3604#3623#3656#3634#3592#3632#3626#3656#3591#3617#3629#3610
              HelpType = htKeyword
              HelpKeyword = 'EXDOT5'
              DateTime = 40191.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Kind = tUniDate
              FirstDayOfWeek = dowLocaleDefault
              TabOrder = 11
              ParentColor = False
              Color = clWhite
              OnChange = EXDOT5Change
            end
            object EPDOT5: TUniDateTimePicker
              Tag = 9
              Left = 135
              Top = 105
              Width = 151
              Height = 22
              Hint = #3623#3633#3609#3607#3637#3656#3626#3656#3591#3617#3629#3610#3592#3619#3636#3591
              HelpType = htKeyword
              HelpKeyword = 'EPDOT5'
              DateTime = 40191.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Kind = tUniDate
              FirstDayOfWeek = dowLocaleDefault
              TabOrder = 12
              ParentColor = False
              Color = clWhite
              OnChange = EPDOT5Change
            end
          end
          object GrpCollector: TUniGroupBox
            Left = 384
            Top = 1
            Width = 597
            Height = 205
            Caption = #3605#3636#3604#3605#3634#3617#3585#3634#3619#3607#3635#3591#3634#3609
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 2
            ExplicitLeft = 381
            ExplicitTop = 3
            ExplicitWidth = 801
            ExplicitHeight = 203
            object DbgCollector: TUniDBGrid
              Left = 2
              Top = 15
              Width = 593
              Height = 188
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              WebOptions.LoadMaskMsg = 'Please wait...'
              HeaderTitleAlign = taLeftJustify
              StripeRows = False
              Align = alClient
              Anchors = [akLeft, akTop, akRight, akBottom]
              ParentFont = False
              TabOrder = 1
              Columns = <
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3621#3635#3604#3633#3610
                  Title.Font.Charset = THAI_CHARSET
                  Width = 33
                  Visible = True
                  Color = clWhite
                  Font.Charset = THAI_CHARSET
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3619#3627#3633#3626
                  Width = 76
                  Visible = True
                  Color = clWhite
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3585#3634#3619#3611#3598#3636#3610#3657#3605#3636#3591#3634#3609
                  Title.Font.Charset = THAI_CHARSET
                  Width = 187
                  Visible = True
                  Color = clWhite
                  Font.Charset = THAI_CHARSET
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3623#3633#3609#3607#3637#3656
                  Width = 110
                  Visible = True
                  Color = clWhite
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3648#3592#3657#3634#3627#3609#3657#3634#3607#3637#3656
                  Width = 145
                  Visible = True
                  Expanded = False
                end>
            end
          end
        end
        object PnHeadCard: TUniPanel
          Left = 0
          Top = 0
          Width = 981
          Height = 40
          BorderStyle = ubsNone
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 2
          object BtnCardEdit: TUniButton
            Tag = 9
            Left = 12
            Top = 9
            Width = 75
            Height = 25
            Caption = #3619#3633#3610#3648#3629#3585#3626#3634#3619
            ParentFont = False
            TabOrder = 1
            OnClick = BtnCardEditClick
          end
        end
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 543
    Width = 991
    TabOrder = 2
    ExplicitTop = 543
    ExplicitWidth = 991
    DesignSize = (
      991
      37)
    inherited imgBotton: TUniImage
      Width = 991
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
      ExplicitWidth = 991
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 909
      ExplicitLeft = 909
    end
    inherited btnConfirm: TUniButton
      Left = 828
      ExplicitLeft = 828
    end
  end
  inherited pnHeader: TUniPanel
    Width = 991
    Height = 81
    TabOrder = 0
    ExplicitWidth = 991
    ExplicitHeight = 81
    object STSOT5lb: TUniLabel
      Left = 578
      Top = 57
      Width = 83
      Height = 13
      Caption = #3626#3606#3634#3609#3632#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
      ParentFont = False
      TabOrder = 1
    end
    object ddyyyylb: TUniLabel
      Left = 14
      Top = 1
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
      Top = 49
      Width = 110
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629#3619#3606#3618#3609#3605#3660
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object ddyyyy: TUniEdit
      Tag = 9
      Left = 111
      Top = 1
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
    object CMPOT5: TUniDBEdit
      Tag = 9
      Left = 391
      Top = 1
      Width = 195
      Height = 21
      DataField = 'CMPOT5'
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
      Left = 637
      Top = 3
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 7
    end
    object BRNOT5: TUniDBLookupComboBox
      Tag = 9
      Left = 684
      Top = 3
      Width = 250
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'BRNOT5'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 8
    end
    object DEPOT5lb: TUniLabel
      Left = 633
      Top = 30
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 9
    end
    object DNOOT5: TUniDBEdit
      Tag = 9
      Left = 142
      Top = 49
      Width = 159
      Height = 21
      DataField = 'DNOOT5'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Alignment = taCenter
      ParentFont = False
      TabOrder = 10
      Color = clWindow
      ReadOnly = True
    end
    object IDTOT5lb: TUniLabel
      Left = 320
      Top = 31
      Width = 55
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 11
    end
    object IDTOT5: TUniDateTimePicker
      Tag = 9
      Left = 391
      Top = 30
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
      TabOrder = 12
      ParentColor = False
      Color = clWhite
      OnChange = IDTOT5Change
    end
    object DEPOT5: TUniDBLookupComboBox
      Tag = 9
      Left = 684
      Top = 30
      Width = 250
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'DEPOT5'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 13
    end
    object STSOT5: TUniDBLookupComboBox
      Tag = 9
      Left = 684
      Top = 57
      Width = 191
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSOT5'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 14
    end
  end
  inherited pnUser: TUniPanel
    Top = 522
    Width = 991
    ExplicitTop = 522
    ExplicitWidth = 991
  end
  inherited scClosing: TUniScreenMask
    Left = 400
    Top = 408
  end
  inherited scCancel: TUniScreenMask
    Left = 400
    Top = 408
  end
  inherited csConfirm: TUniScreenMask
    Left = 400
    Top = 416
  end
  object dsgrid: TDataSource
    Left = 432
    Top = 264
  end
  object dsAddr01: TDataSource
    Left = 896
    Top = 16
  end
  object csPopUpAp: TUniScreenMask
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3649#3626#3604#3591#3586#3657#3629#3617#3641#3621#3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
    Left = 256
    Top = 400
  end
  object csPopUpProduct: TUniScreenMask
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3649#3626#3604#3591#3586#3657#3629#3617#3641#3621#3626#3636#3609#3588#3657#3634
    Left = 192
    Top = 456
  end
  object dsImageRef: TDataSource
    Left = 432
    Top = 8
  end
  object dsAccessory: TDataSource
    Left = 832
    Top = 16
  end
  object dsEXP: TDataSource
    Left = 832
    Top = 64
  end
  object dsCard: TDataSource
    Left = 832
    Top = 112
  end
  object dsbrkAddr01: TDataSource
    Left = 896
    Top = 64
  end
  object dat: TDataSource
    Left = 896
    Top = 112
  end
  object dsDown: TDataSource
    Left = 776
    Top = 112
  end
  object dsAppr: TDataSource
    Left = 376
    Top = 56
  end
end
