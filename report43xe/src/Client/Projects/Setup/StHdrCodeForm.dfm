inherited frmStHdrCodeGrid: TfrmStHdrCodeGrid
  Caption = 'OPD - '#3629#3634#3618#3640#3619#3585#3619#3619#3617
  ClientHeight = 686
  ClientWidth = 1185
  Font.Charset = THAI_CHARSET
  Font.Height = -13
  OnCreate = UniFormCreate
  OnShow = UniFormShow
  ExplicitWidth = 1191
  ExplicitHeight = 711
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnBody: TUniPanel
    Top = 36
    Width = 1185
    Height = 613
    ExplicitTop = 36
    ExplicitWidth = 1185
    ExplicitHeight = 613
    object UniPageControl1: TUniPageControl
      Left = 1
      Top = 1
      Width = 1183
      Height = 611
      ActivePage = UniTabSheet1
      TabOrder = 1
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UniTabSheet1: TUniTabSheet
        Caption = 'SERVICE'
        Font.Charset = THAI_CHARSET
        Font.Height = -13
        ParentFont = False
        object UniLabel2: TUniLabel
          Left = 114
          Top = 43
          Width = 75
          Height = 16
          Caption = #3607#3632#3648#3610#3637#3618#3609#3610#3640#3588#3588#3621
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 0
        end
        object UniDBEdit1: TUniDBEdit
          Left = 196
          Top = 42
          Width = 189
          Height = 22
          DataField = 'PID'
          DataSource = dsReport43Person
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 1
          Color = clWindow
        end
        object UniLabel3: TUniLabel
          Left = 17
          Top = 15
          Width = 77
          Height = 16
          Caption = #3586#3657#3629#3617#3641#3621#3614#3639#3657#3609#3600#3634#3609
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 2
        end
        object UniLabel4: TUniLabel
          Left = 17
          Top = 154
          Width = 48
          Height = 16
          Caption = 'Service'
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          Font.Style = [fsBold]
          TabOrder = 3
        end
        object UniLabel5: TUniLabel
          Left = 173
          Top = 68
          Width = 16
          Height = 16
          Caption = #3594#3639#3656#3629
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 4
        end
        object UniDBEdit2: TUniDBEdit
          Left = 196
          Top = 67
          Width = 189
          Height = 22
          DataField = 'NAME'
          DataSource = dsReport43Person
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 5
          Color = clWindow
        end
        object UniLabel6: TUniLabel
          Left = 56
          Top = 118
          Width = 133
          Height = 16
          Caption = #3623#3633#3609#3648#3604#3639#3629#3609#3611#3637#3607#3637#3656#3611#3619#3633#3610#3611#3619#3640#3591#3586#3657#3629#3617#3641#3621
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 6
        end
        object UniDBEdit3: TUniDBEdit
          Left = 196
          Top = 116
          Width = 189
          Height = 22
          DataSource = dsReport43Person
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 7
          Color = clWindow
        end
        object UniLabel7: TUniLabel
          Left = 469
          Top = 44
          Width = 86
          Height = 16
          Caption = #3619#3627#3633#3626#3626#3606#3634#3609#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 8
        end
        object UniDBEdit4: TUniDBEdit
          Left = 559
          Top = 42
          Width = 195
          Height = 22
          DataField = 'HOSPCODE'
          DataSource = dsReport43Person
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 9
          Color = clWindow
        end
        object UniLabel8: TUniLabel
          Left = 509
          Top = 72
          Width = 46
          Height = 16
          Caption = #3609#3634#3617#3626#3585#3640#3621
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 10
        end
        object UniDBEdit5: TUniDBEdit
          Left = 559
          Top = 70
          Width = 195
          Height = 22
          DataField = 'LNAME'
          DataSource = dsReport43Person
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 11
          Color = clWindow
        end
        object UniLabel9: TUniLabel
          Left = 521
          Top = 100
          Width = 34
          Height = 16
          Caption = #3623#3633#3609#3648#3585#3636#3604
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 12
        end
        object UniDBEdit6: TUniDBEdit
          Left = 559
          Top = 98
          Width = 195
          Height = 22
          DataField = 'BIRTH'
          DataSource = dsReport43Person
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 13
          Color = clWindow
        end
        object UniDBComboBox1: TUniDBComboBox
          Left = 196
          Top = 92
          Width = 189
          Height = 24
          DataField = 'SEX'
          DataSource = dsReport43Person
          Style = csDropDown
          MaxLength = 0
          ItemIndex = -1
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 14
        end
        object UniLabel10: TUniLabel
          Left = 168
          Top = 93
          Width = 21
          Height = 16
          Caption = #3648#3614#3624
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 15
        end
        object UniLabel11: TUniLabel
          Left = 149
          Top = 176
          Width = 39
          Height = 16
          Alignment = taRightJustify
          Caption = #3621#3635#3604#3633#3610#3607#3637#3656
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 16
        end
        object UniDBEdit7: TUniDBEdit
          Left = 195
          Top = 173
          Width = 189
          Height = 22
          DataField = 'SEQ'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 17
          Color = clWindow
        end
        object UniLabel12: TUniLabel
          Left = 163
          Top = 200
          Width = 25
          Height = 16
          Alignment = taRightJustify
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 18
        end
        object UniDBEdit8: TUniDBEdit
          Left = 195
          Top = 197
          Width = 189
          Height = 22
          DataField = 'LOCATION'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 19
          Color = clWindow
        end
        object UniLabel13: TUniLabel
          Left = 113
          Top = 224
          Width = 75
          Height = 16
          Alignment = taRightJustify
          Caption = #3648#3621#3586#3607#3637#3656#3610#3633#3605#3619#3626#3636#3607#3608#3636#3660
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 20
        end
        object UniDBEdit9: TUniDBEdit
          Left = 195
          Top = 221
          Width = 189
          Height = 22
          DataField = 'INSID'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 21
          Color = clWindow
        end
        object UniLabel14: TUniLabel
          Left = 46
          Top = 248
          Width = 142
          Height = 16
          Alignment = taRightJustify
          Caption = #3626#3606#3634#3609#3614#3618#3634#3610#3634#3621#3607#3637#3656#3626#3656#3591#3612#3641#3657#3611#3656#3623#3618#3617#3634
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 22
        end
        object UniDBEdit10: TUniDBEdit
          Left = 195
          Top = 245
          Width = 189
          Height = 22
          DataField = 'REFERINHOSP'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 23
          Color = clWindow
        end
        object UniLabel15: TUniLabel
          Left = 487
          Top = 180
          Width = 71
          Height = 16
          Alignment = taRightJustify
          Caption = #3623#3633#3609#3607#3637#3656#3651#3627#3657#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 24
        end
        object UniDBEdit11: TUniDBEdit
          Left = 565
          Top = 176
          Width = 195
          Height = 22
          DataField = 'DATE_SERV'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 25
          Color = clWindow
        end
        object UniDBEdit12: TUniDBEdit
          Left = 565
          Top = 199
          Width = 195
          Height = 22
          DataField = 'INTIME'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 26
          Color = clWindow
        end
        object UniLabel16: TUniLabel
          Left = 472
          Top = 204
          Width = 86
          Height = 16
          Alignment = taRightJustify
          Caption = #3648#3623#3621#3634#3617#3634#3619#3633#3610#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 27
        end
        object UniLabel17: TUniLabel
          Left = 459
          Top = 228
          Width = 99
          Height = 16
          Alignment = taRightJustify
          Caption = #3626#3606#3634#3609#3614#3618#3634#3610#3634#3621#3627#3621#3633#3585
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 28
        end
        object UniDBEdit13: TUniDBEdit
          Left = 565
          Top = 224
          Width = 195
          Height = 22
          DataField = 'MAIN'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 29
          Color = clWindow
        end
        object UniLabel18: TUniLabel
          Left = 398
          Top = 252
          Width = 160
          Height = 16
          Alignment = taRightJustify
          Caption = #3626#3634#3648#3627#3605#3640#3585#3634#3619#3626#3656#3591#3612#3641#3657#3611#3656#3623#3618#3617#3634#3619#3633#3610#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 30
        end
        object UniLabel19: TUniLabel
          Left = 819
          Top = 179
          Width = 81
          Height = 16
          Alignment = taRightJustify
          Caption = #3648#3623#3621#3634#3607#3637#3656#3651#3627#3657#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 31
        end
        object UniDBEdit15: TUniDBEdit
          Left = 906
          Top = 176
          Width = 195
          Height = 22
          DataField = 'TIME_SERV'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 32
          Color = clWindow
        end
        object UniLabel20: TUniLabel
          Left = 785
          Top = 203
          Width = 115
          Height = 16
          Alignment = taRightJustify
          Caption = #3611#3619#3632#3648#3616#3607#3626#3636#3607#3608#3636#3585#3634#3619#3619#3633#3585#3625#3634
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 33
        end
        object UniLabel21: TUniLabel
          Left = 777
          Top = 227
          Width = 123
          Height = 16
          Alignment = taRightJustify
          Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3617#3634#3619#3633#3610#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 34
        end
        object UniDBEdit18: TUniDBEdit
          Left = 906
          Top = 248
          Width = 195
          Height = 22
          DataField = 'CHIEFCOMP'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 35
          Color = clWindow
        end
        object UniLabel22: TUniLabel
          Left = 827
          Top = 251
          Width = 67
          Height = 16
          Alignment = taRightJustify
          Caption = #3629#3634#3585#3634#3619#3626#3635#3588#3633#3597
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 36
        end
        object UniLabel23: TUniLabel
          Left = 103
          Top = 281
          Width = 87
          Height = 16
          Alignment = taRightJustify
          Caption = #3626#3606#3634#3609#3607#3637#3656#3619#3633#3610#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 37
        end
        object UniDBEdit19: TUniDBEdit
          Left = 196
          Top = 279
          Width = 189
          Height = 22
          DataField = 'SERVPLACE'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 38
          Color = 12312063
        end
        object UniLabel24: TUniLabel
          Left = 11
          Top = 305
          Width = 179
          Height = 16
          Alignment = taRightJustify
          Caption = #3588#3623#3634#3617#3604#3633#3609#3650#3621#3627#3636#3605#3652#3604#3649#3629#3626#3650#3605#3621#3636#3585#3649#3619#3585#3619#3633#3610
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 39
        end
        object UniDBEdit20: TUniDBEdit
          Left = 196
          Top = 303
          Width = 189
          Height = 22
          DataField = 'DBP'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 40
          Color = clWindow
        end
        object UniLabel25: TUniLabel
          Left = 5
          Top = 330
          Width = 185
          Height = 16
          Alignment = taRightJustify
          Caption = #3626#3606#3634#3609#3632#3612#3641#3657#3617#3634#3619#3633#3610#3610#3619#3636#3585#3634#3619' '#3648#3626#3619#3655#3592#3626#3636#3657#3609#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 41
        end
        object UniDBEdit21: TUniDBEdit
          Left = 196
          Top = 327
          Width = 189
          Height = 22
          DataField = 'TYPEOUT'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 42
          Color = clWindow
        end
        object UniLabel26: TUniLabel
          Left = 91
          Top = 354
          Width = 99
          Height = 16
          Alignment = taRightJustify
          Caption = #3619#3634#3588#3634#3607#3640#3609#3586#3629#3591#3610#3619#3636#3585#3634#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 43
        end
        object UniDBEdit22: TUniDBEdit
          Left = 196
          Top = 351
          Width = 189
          Height = 22
          DataField = 'COST'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 44
          Color = clWindow
        end
        object UniLabel27: TUniLabel
          Left = 440
          Top = 284
          Width = 119
          Height = 16
          Alignment = taRightJustify
          Caption = #3629#3640#3603#3627#3616#3641#3617#3636#3619#3656#3634#3591#3585#3634#3618#3649#3619#3585#3619#3633#3610
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 45
        end
        object UniDBEdit23: TUniDBEdit
          Left = 566
          Top = 282
          Width = 195
          Height = 22
          DataField = 'BTEMP'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 46
          Color = clWindow
        end
        object UniDBEdit24: TUniDBEdit
          Left = 566
          Top = 306
          Width = 195
          Height = 22
          DataField = 'PR'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 47
          Color = clWindow
        end
        object UniLabel28: TUniLabel
          Left = 439
          Top = 308
          Width = 120
          Height = 16
          Alignment = taRightJustify
          Caption = #3629#3633#3605#3619#3634#3585#3634#3619#3648#3605#3657#3609#3586#3629#3591#3594#3637#3614#3592#3619
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 48
        end
        object UniLabel29: TUniLabel
          Left = 416
          Top = 330
          Width = 143
          Height = 16
          Alignment = taRightJustify
          Caption = #3626#3606#3634#3609#3614#3618#3634#3610#3634#3621#3607#3637#3656#3626#3656#3591#3612#3641#3657#3611#3656#3623#3618#3652#3611
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 49
        end
        object UniDBEdit25: TUniDBEdit
          Left = 566
          Top = 330
          Width = 195
          Height = 22
          DataField = 'REFEROUTHOSP'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 50
          Color = clWindow
        end
        object UniDBEdit26: TUniDBEdit
          Left = 566
          Top = 354
          Width = 195
          Height = 22
          DataField = 'PRICE'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 51
          Color = clWindow
        end
        object UniLabel30: TUniLabel
          Left = 411
          Top = 354
          Width = 149
          Height = 16
          Alignment = taRightJustify
          Caption = #3588#3656#3634#3610#3619#3636#3585#3634#3619#3607#3633#3657#3591#3627#3617#3604' ('#3619#3634#3588#3634#3586#3634#3618')'
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 52
        end
        object UniLabel31: TUniLabel
          Left = 772
          Top = 284
          Width = 157
          Height = 16
          Alignment = taRightJustify
          Caption = #3588#3623#3634#3617#3604#3633#3609#3650#3621#3627#3636#3605#3595#3636#3626#3650#3605#3621#3636#3585#3649#3619#3585#3619#3633#3610
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 53
        end
        object UniDBEdit27: TUniDBEdit
          Left = 935
          Top = 282
          Width = 195
          Height = 22
          DataField = 'SBP'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 54
          Color = clWindow
        end
        object UniDBEdit28: TUniDBEdit
          Left = 935
          Top = 306
          Width = 195
          Height = 22
          DataField = 'RR'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 55
          Color = clWindow
        end
        object UniLabel32: TUniLabel
          Left = 844
          Top = 309
          Width = 85
          Height = 16
          Alignment = taRightJustify
          Caption = #3629#3633#3618#3605#3619#3585#3634#3619#3627#3634#3618#3651#3592
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 56
        end
        object UniLabel33: TUniLabel
          Left = 815
          Top = 333
          Width = 114
          Height = 16
          Alignment = taRightJustify
          Caption = #3626#3634#3648#3627#3605#3640#3585#3634#3619#3626#3656#3591#3605#3656#3629#3612#3641#3657#3611#3656#3623#3618
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 57
        end
        object UniDBEdit29: TUniDBEdit
          Left = 935
          Top = 330
          Width = 195
          Height = 22
          DataField = 'CAUSEOUT'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 58
          Color = clWindow
        end
        object UniDBEdit30: TUniDBEdit
          Left = 935
          Top = 354
          Width = 195
          Height = 22
          DataField = 'PAYPRICE'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 59
          Color = clWindow
        end
        object UniLabel34: TUniLabel
          Left = 799
          Top = 354
          Width = 130
          Height = 16
          Alignment = taRightJustify
          Caption = #3619#3634#3588#3634#3610#3619#3636#3585#3634#3619#3607#3637#3656#3605#3657#3629#3591#3592#3656#3634#3618#3648#3629#3591
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 60
        end
        object UniLabel35: TUniLabel
          Left = 123
          Top = 379
          Width = 67
          Height = 16
          Alignment = taRightJustify
          Caption = #3648#3591#3636#3609#3607#3637#3656#3592#3656#3634#3618#3592#3619#3636#3591
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 61
        end
        object UniDBEdit31: TUniDBEdit
          Left = 195
          Top = 376
          Width = 189
          Height = 22
          DataField = 'ACTUALPAY'
          DataSource = dsReport43Service
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 62
          Color = clWindow
        end
        object UniDBComboBox2: TUniDBComboBox
          Left = 906
          Top = 200
          Width = 198
          Height = 24
          DataField = 'INSTYPE'
          DataSource = dsReport43Service
          Style = csDropDown
          MaxLength = 0
          ItemIndex = -1
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 63
        end
        object UniDBComboBox3: TUniDBComboBox
          Left = 906
          Top = 224
          Width = 198
          Height = 24
          DataField = 'TYPEIN'
          DataSource = dsReport43Service
          Style = csDropDown
          MaxLength = 0
          ItemIndex = -1
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 64
        end
        object UniDBComboBox4: TUniDBComboBox
          Left = 565
          Top = 248
          Width = 195
          Height = 24
          DataField = 'CAUSEIN'
          DataSource = dsReport43Service
          Style = csDropDown
          MaxLength = 0
          ItemIndex = -1
          ParentFont = False
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          TabOrder = 65
        end
      end
      object UniTabSheet2: TUniTabSheet
        Caption = 'DIAGNOSIS'
      end
      object UniTabSheet3: TUniTabSheet
        Caption = 'PROCEDURE'
      end
      object UniTabSheet4: TUniTabSheet
        Caption = 'DRUG'
      end
      object UniTabSheet5: TUniTabSheet
        Caption = 'APPOINTMENT'
      end
      object UniTabSheet6: TUniTabSheet
        Caption = 'ANC'
      end
      object UniTabSheet7: TUniTabSheet
        Caption = 'PRENATAL'
      end
      object UniTabSheet8: TUniTabSheet
        Caption = 'POSTNATAL'
      end
      object UniTabSheet9: TUniTabSheet
        Caption = 'LABOR'
      end
      object UniTabSheet10: TUniTabSheet
        Caption = 'WOMEN'
      end
      object UniTabSheet11: TUniTabSheet
        Caption = 'FP'
      end
      object UniTabSheet12: TUniTabSheet
        Caption = 'EPI'
      end
      object UniTabSheet13: TUniTabSheet
        Caption = 'ICF'
      end
      object UniTabSheet14: TUniTabSheet
        Caption = 'SPECIALPP'
      end
      object UniTabSheet15: TUniTabSheet
        Caption = 'CHRONIC'
      end
      object UniTabSheet16: TUniTabSheet
        Caption = 'CHRONICFU'
      end
      object UniTabSheet17: TUniTabSheet
        Caption = 'NUTRITION'
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 649
    Width = 1185
    ExplicitTop = 649
    ExplicitWidth = 1185
    DesignSize = (
      1185
      37)
    inherited imgBotton: TUniImage
      Width = 1185
      Picture.Data = {
        0954474946496D6167654749463839611B00C200F70000000000FFFFFFFAFCFD
        F4F9FBDCECF2EDF5F863ADC46FB3C892C6D6B4D7E3B4D7E2BEDDE7BFDDE7C9E3
        EBC9E2EAD3E8EFDCECF1E4F1F5E5F1F5ECF5F8F3F9FBF9FCFD017B9E0C81A30C
        81A20D80A30D81A30D80A20D81A21384A51385A51484A51485A51B89A91B88A8
        1B89A81C88A81C89A8248DAC248EAC248DAB248EAB2D92AF2D92AE2E92AF3797
        B33798B33797B2419CB7419DB7419CB6419DB6429CB7429DB7429CB6429DB64C
        A2BB4CA3BB4CA2BA4DA2BB4DA3BB4DA2BA57A7BF57A8BF58A7BF58A8BF62AEC4
        62AEC363AEC463ADC363AEC36EB3C86EB4C86EB3C76EB4C76FB4C86FB4C77ABA
        CD7BBACD7AB9CC7ABACC7BBACC85C0D185C0D086C0D186C1D186C0D091C6D692
        C7D691C6D592C6D59DCCDA9DCDDA9ECCDA9DCCD9A8D2DEA9D2DEB3D8E3B4D8E3
        B3D8E2B4D8E2BEDEE7BFDEE7BEDDE6BFDDE6C9E3EAD2E8EED3E8EEDCEDF286C1
        D091C7D592C7D59DCDD9A9D3DEBEDEE6BFDEE6DCEDF1E5F1F4EDF5F7E4F2F5E5
        F2F5ECF6F8EDF6F8F4F9FAF4FAFBF3F9FAF3FAFBF4FAFAF9FDFDFAFDFDFFFFFF
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
        000000000000000000000000000000000000000000000021F90401000082002C
        000000001B00C20087000000FFFFFFFAFCFDF4F9FBDCECF2EDF5F863ADC46FB3
        C892C6D6B4D7E3B4D7E2BEDDE7BFDDE7C9E3EBC9E2EAD3E8EFDCECF1E4F1F5E5
        F1F5ECF5F8F3F9FBF9FCFD017B9E0C81A30C81A20D80A30D81A30D80A20D81A2
        1384A51385A51484A51485A51B89A91B88A81B89A81C88A81C89A8248DAC248E
        AC248DAB248EAB2D92AF2D92AE2E92AF3797B33798B33797B2419CB7419DB741
        9CB6419DB6429CB7429DB7429CB6429DB64CA2BB4CA3BB4CA2BA4DA2BB4DA3BB
        4DA2BA57A7BF57A8BF58A7BF58A8BF62AEC462AEC363AEC463ADC363AEC36EB3
        C86EB4C86EB3C76EB4C76FB4C86FB4C77ABACD7BBACD7AB9CC7ABACC7BBACC85
        C0D185C0D086C0D186C1D186C0D091C6D692C7D691C6D592C6D59DCCDA9DCDDA
        9ECCDA9DCCD9A8D2DEA9D2DEB3D8E3B4D8E3B3D8E2B4D8E2BEDEE7BFDEE7BEDD
        E6BFDDE6C9E3EAD2E8EED3E8EEDCEDF286C1D091C7D592C7D59DCDD9A9D3DEBE
        DEE6BFDEE6DCEDF1E5F1F4EDF5F7E4F2F5E5F2F5ECF6F8EDF6F8F4F9FAF4FAFB
        F3F9FAF3FAFBF4FAFAF9FDFDFAFDFDFFFFFF0000000000000000000000000000
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
        00000000000000000008FF002D081C48B0A0C18308132A5CC8B0A1C3811C2E60
        C0C061A2C40B1A3650E4A081E2C48E192E48E4E0A18387922751A2FCD0E10388
        0E1D40B8F4F0E143C9113845E024516244899E22449408F173448811247CF62C
        81C2440A1450A19A3021F5E954A827523C8D8A4285D7AF2C548465B142EC58B0
        5FBFBA68D1E205DBB6705FC88DEBF6AD5BB7356CDC801123068D19336204A621
        58068C193560ECCDCB17C68E1E3876E0C0A12307E4C83B24EBA0AC83478F1D9B
        33EFF8413AC80FD3A749FF00923A88EBD3A87D9C2E624488012245880C212284
        B60123467E0B01CEDB0811E24C9624498264C99203CE992069AE04C991E4D191
        543FA2240A94EF4FBE7FFF77D2A4C978F3E2C5A36F42A5FD142A53A4B4B752A5
        4A7B2AF2EFEBA7D2868A962C5920E086166F5C91C57F5A687185820BFE07E07F
        5824B845175E6C516185705438A1175D6CE1E1165C580807885D74F1451C6080
        F1C51729B2B8A28A30A698621C2CB6988018388E21868E3BE2488602640409A4
        906190318691679CB1001A4932C98019682C304719503290A41C0CC8C1641965
        A09146030D38D0401A648E4966995F9A99860369AEB9C69B70BEF9801A70AAF1
        C09B6AD099E71A74BEC9061D6CB04140A010002AE8A110041AE8A07F362AC1A3
        78481081A4754C7A87047844A0E9A39C623A291E054C90C7040514A0471EA54E
        20AAA9AA86AAAA1DA5C6AD4AC1007D5060EB1F03D89A2B1FB5EEB1871FB3F60A
        2C057E08100820C61A1B88000254C0ECB20220DB2CB3C9221BC0B5D866ABEDB6
        DC76EBEDB7E0862BEEB8E4966BEEB9E8A6ABEEBAECB6EBEEBBF0C62BEFBCF4D6
        6BEFBDF8E6ABEFBEFCF6EBEFBF00072CF0C004176CF0C10827ACF0C20C37ECF0
        C310472CF1C414576CF1C51867ACF1C61C77ECF1C720872CF2C824976CF2C928
        A7ACF2CA2CB7ECF2CB30C7FCEF4334D76CF3CD38E79C5040003B}
      ExplicitWidth = 1185
    end
    inherited btnCancel: TUniButton
      Left = 1005
      ExplicitLeft = 1005
    end
    inherited btnConfirm: TUniButton
      Left = 919
      Caption = #3610#3633#3609#3607#3638#3585
      ExplicitLeft = 919
    end
    object BtnAddEdtSubCode: TUniButton
      Left = 734
      Top = 6
      Width = 110
      Height = 25
      Caption = #3648#3614#3636#3656#3617'/'#3649#3585#3657#3652#3586#3619#3627#3633#3626#3618#3656#3629#3618
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 6
      OnClick = BtnAddEdtSubCodeClick
    end
    object UniLabel1: TUniLabel
      Left = 112
      Top = 8
      Width = 55
      Height = 16
      Caption = 'UniLabel1'
      TabOrder = 5
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1185
    Height = 36
    ExplicitWidth = 1185
    ExplicitHeight = 36
    object btnRefresh: TUniButton
      Left = 166
      Top = 5
      Width = 105
      Height = 25
      Caption = 'btnRefresh'
      TabOrder = 1
      OnClick = btnRefreshClick
    end
    object edPID: TUniEdit
      Left = 39
      Top = 6
      Width = 121
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Text = '267638'
      TabOrder = 2
      Color = clWindow
    end
    object UniButton1: TUniButton
      Left = 288
      Top = 3
      Width = 75
      Height = 25
      Caption = 'UniButton1'
      TabOrder = 3
      OnClick = UniButton1Click
    end
  end
  inherited scClosing: TUniScreenMask
    Left = 760
    Top = 128
  end
  inherited scCancel: TUniScreenMask
    Left = 784
    Top = 144
  end
  inherited csConfirm: TUniScreenMask
    Left = 704
    Top = 168
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
  object dsReport43Person: TDataSource
    DataSet = DSSetupDM.cdsGetReport43Person
    Left = 384
    Top = 184
  end
  object dsReport43Service: TDataSource
    DataSet = DSSetupDM.cdsGetReport43Service
    Left = 424
    Top = 248
  end
  object IdUnixTime1: TIdUnixTime
    Left = 968
    Top = 24
  end
end
