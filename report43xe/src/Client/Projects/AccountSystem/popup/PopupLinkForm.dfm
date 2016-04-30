object PopupLink: TPopupLink
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #3648#3621#3639#3629#3585#3619#3632#3610#3610#3648#3594#3639#3656#3629#3617
  ClientHeight = 500
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnBody: TUniPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 459
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 0
    ExplicitLeft = -50
    ExplicitWidth = 644
    ExplicitHeight = 281
    object gbData: TUniGroupBox
      Left = 1
      Top = 1
      Width = 841
      Height = 104
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      ExplicitWidth = 828
      object UniLabel20: TUniLabel
        Left = 28
        Top = 19
        Width = 28
        Height = 13
        Caption = #3629#3633#3609#3604#3633#3610
        ParentFont = False
        TabOrder = 1
      end
      object UniLabel6: TUniLabel
        Left = 309
        Top = 14
        Width = 42
        Height = 13
        Caption = #3627#3609#3656#3623#3618#3591#3634#3609
        ParentFont = False
        TabOrder = 2
      end
      object UniDBEdit1: TUniDBEdit
        Left = 129
        Top = 13
        Width = 144
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 3
        Color = clWindow
        ReadOnly = True
      end
      object UniLabel13: TUniLabel
        Left = 28
        Top = 43
        Width = 42
        Height = 13
        Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
        ParentFont = False
        TabOrder = 4
      end
      object UniLabel1: TUniLabel
        Left = 310
        Top = 43
        Width = 37
        Height = 13
        Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637
        ParentFont = False
        TabOrder = 5
      end
      object UniLabel2: TUniLabel
        Left = 581
        Top = 43
        Width = 44
        Height = 13
        Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
        ParentFont = False
        TabOrder = 6
      end
      object UniLabel3: TUniLabel
        Left = 311
        Top = 67
        Width = 76
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3588#3619#3604#3636#3605
        ParentFont = False
        TabOrder = 7
      end
      object UniLabel4: TUniLabel
        Left = 29
        Top = 67
        Width = 71
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3604#3610#3636#3605
        ParentFont = False
        TabOrder = 8
      end
      object UniDBEdit2: TUniDBEdit
        Left = 399
        Top = 10
        Width = 144
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 9
        Color = clWindow
        ReadOnly = True
      end
      object UniDBEdit3: TUniDBEdit
        Left = 129
        Top = 37
        Width = 144
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 10
        Color = clWindow
        ReadOnly = True
      end
      object UniDBEdit4: TUniDBEdit
        Left = 399
        Top = 37
        Width = 144
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 11
        Color = clWindow
        ReadOnly = True
      end
      object UniDBEdit5: TUniDBEdit
        Left = 665
        Top = 37
        Width = 144
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 12
        Color = clWindow
        ReadOnly = True
      end
      object UniDBEdit6: TUniDBEdit
        Left = 129
        Top = 64
        Width = 144
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 13
        Color = clWindow
        ReadOnly = True
      end
      object UniDBEdit7: TUniDBEdit
        Left = 399
        Top = 64
        Width = 144
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 14
        Color = clWindow
        ReadOnly = True
      end
      object UniLabel5: TUniLabel
        Left = 581
        Top = 67
        Width = 44
        Height = 13
        Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
        ParentFont = False
        TabOrder = 15
      end
      object CmbLink: TUniComboBox
        Left = 664
        Top = 64
        Width = 145
        Height = 21
        Style = csDropDown
        MaxLength = 0
        Text = 'CmbLink'
        Items.Strings = (
          #3619#3632#3610#3610#3595#3639#3657#3629
          #3619#3632#3610#3610#3586#3634#3618
          #3619#3632#3610#3610#3607#3619#3633#3614#3618#3660#3626#3636#3609#3595#3639#3657#3629
          #3619#3632#3610#3610#3607#3619#3633#3614#3618#3660#3626#3636#3609#3586#3634#3618
          #3619#3632#3610#3610' '#3616'.'#3591'.'#3604'. '#3595#3639#3657#3629
          #3619#3632#3610#3610' '#3616'.'#3591'.'#3604'. '#3586#3634#3618)
        ItemIndex = -1
        TabOrder = 16
      end
    end
    object PnSelect: TUniPanel
      Left = 1
      Top = 104
      Width = 841
      Height = 355
      BorderStyle = ubsSolid
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      ExplicitWidth = 828
      object Grp12: TUniGroupBox
        Left = 716
        Top = 297
        Width = 815
        Height = 307
        Visible = False
        Caption = #3619#3632#3610#3610#3595#3639#3657#3629#3586#3634#3618
        TabOrder = 1
        object UniLabel7: TUniLabel
          Left = 19
          Top = 16
          Width = 71
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3648#3629#3585#3626#3634#3619
          ParentFont = False
          TabOrder = 1
        end
        object LbTaxType12: TUniLabel
          Left = 28
          Top = 41
          Width = 35
          Height = 13
          Caption = #3616#3634#3625#3637#3595#3639#3657#3629
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel9: TUniLabel
          Left = 313
          Top = 38
          Width = 41
          Height = 13
          Caption = #3605#3633#3657#3591#3648#3592#3657#3634#3627#3609#3637#3657
          ParentFont = False
          TabOrder = 3
        end
        object ComboBox2: TComboBox
          Left = 129
          Top = 38
          Width = 145
          Height = 21
          ItemIndex = 0
          TabOrder = 4
          Text = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Items.Strings = (
            #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
            #3651#3610#3626#3656#3591#3626#3636#3609#3588#3657#3634
            #3651#3610#3588#3639#3609#3626#3636#3609#3588#3657#3634)
        end
        object ComboBox3: TComboBox
          Left = 399
          Top = 38
          Width = 145
          Height = 21
          TabOrder = 5
          Text = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Items.Strings = (
            #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
            #3651#3610#3588#3639#3609#3626#3636#3609#3588#3657#3634)
        end
        object UniLabel10: TUniLabel
          Left = 313
          Top = 65
          Width = 28
          Height = 13
          Caption = #3649#3612#3609#3585
          ParentFont = False
          TabOrder = 6
        end
        object UniLabel12: TUniLabel
          Left = 28
          Top = 65
          Width = 24
          Height = 13
          Caption = #3626#3634#3586#3634
          ParentFont = False
          TabOrder = 7
        end
        object UniDBLookupComboBox6: TUniDBLookupComboBox
          Tag = 9
          Left = 128
          Top = 65
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 8
        end
        object UniDBLookupComboBox7: TUniDBLookupComboBox
          Tag = 9
          Left = 400
          Top = 65
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 9
        end
        object UniLabel11: TUniLabel
          Left = 28
          Top = 118
          Width = 48
          Height = 13
          Caption = #3619#3627#3633#3626#3648#3592#3657#3634#3627#3609#3637#3657
          ParentFont = False
          TabOrder = 10
        end
        object UniDBLookupComboBox1: TUniDBLookupComboBox
          Tag = 9
          Left = 129
          Top = 118
          Width = 143
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 11
        end
        object UniLabel14: TUniLabel
          Left = 313
          Top = 118
          Width = 65
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3648#3592#3657#3634#3627#3609#3637#3657
          ParentFont = False
          TabOrder = 12
        end
        object UniDBLookupComboBox2: TUniDBLookupComboBox
          Tag = 9
          Left = 399
          Top = 118
          Width = 143
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 13
        end
        object UniLabel15: TUniLabel
          Left = 28
          Top = 147
          Width = 87
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3585#3656#3629#3609#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 14
        end
        object UniDBEdit8: TUniDBEdit
          Left = 129
          Top = 144
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 15
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel16: TUniLabel
          Left = 263
          Top = 176
          Width = 11
          Height = 13
          Caption = '%'
          ParentFont = False
          TabOrder = 16
        end
        object UniDBEdit9: TUniDBEdit
          Left = 193
          Top = 171
          Width = 64
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 17
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel17: TUniLabel
          Left = 313
          Top = 169
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 18
        end
        object UniDBEdit10: TUniDBEdit
          Left = 399
          Top = 169
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 19
          Color = clWindow
          ReadOnly = True
        end
        object UniCheckBox1: TUniCheckBox
          Left = 129
          Top = 173
          Width = 58
          Height = 17
          Checked = False
          Caption = #3616#3634#3625#3637
          TabOrder = 20
        end
        object UniLabel18: TUniLabel
          Left = 313
          Top = 196
          Width = 63
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
          ParentFont = False
          TabOrder = 21
        end
        object UniDBEdit11: TUniDBEdit
          Left = 399
          Top = 196
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 22
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel19: TUniLabel
          Left = 28
          Top = 224
          Width = 43
          Height = 13
          Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          ParentFont = False
          TabOrder = 23
        end
        object UniDBMemo1: TUniDBMemo
          Left = 128
          Top = 224
          Width = 416
          Height = 74
          TabOrder = 24
          Color = clWindow
        end
        object UniLabel21: TUniLabel
          Left = 28
          Top = 92
          Width = 61
          Height = 13
          Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
          ParentFont = False
          TabOrder = 25
        end
        object UniDBEdit12: TUniDBEdit
          Left = 128
          Top = 92
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 26
          Color = clWindow
          ReadOnly = True
        end
        object DbRegStartDate: TUniDateTimePicker
          Left = 399
          Top = 92
          Width = 129
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 27
          ParentColor = False
          Color = clWhite
        end
        object UniLabel22: TUniLabel
          Left = 313
          Top = 92
          Width = 20
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656
          ParentFont = False
          TabOrder = 28
        end
        object UniDateTimePicker1: TUniDateTimePicker
          Left = 665
          Top = 91
          Width = 129
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 29
          ParentColor = False
          Color = clWhite
        end
        object UniLabel23: TUniLabel
          Left = 581
          Top = 91
          Width = 64
          Height = 13
          Caption = #3623#3633#3609#3588#3619#3610#3585#3635#3627#3609#3604
          ParentFont = False
          TabOrder = 30
        end
        object UniDBEdit22: TUniDBEdit
          Left = 129
          Top = 15
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 31
          Color = clWindow
          ReadOnly = True
        end
      end
      object Grp3: TUniGroupBox
        Left = 476
        Top = 244
        Width = 815
        Height = 374
        Visible = False
        Caption = #3619#3632#3610#3610#3619#3633#3610#3607#3619#3633#3614#3618#3660#3626#3636#3609
        TabOrder = 2
        object UniLabel8: TUniLabel
          Left = 30
          Top = 19
          Width = 71
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3648#3629#3585#3626#3634#3619
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel24: TUniLabel
          Left = 313
          Top = 17
          Width = 55
          Height = 13
          Caption = #3595#3639#3657#3629#3607#3619#3633#3614#3618#3660#3626#3636#3609
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel26: TUniLabel
          Left = 313
          Top = 44
          Width = 28
          Height = 13
          Caption = #3649#3612#3609#3585
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel27: TUniLabel
          Left = 28
          Top = 44
          Width = 24
          Height = 13
          Caption = #3626#3634#3586#3634
          ParentFont = False
          TabOrder = 4
        end
        object UniDBLookupComboBox3: TUniDBLookupComboBox
          Tag = 9
          Left = 129
          Top = 44
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 5
        end
        object UniDBLookupComboBox4: TUniDBLookupComboBox
          Tag = 9
          Left = 400
          Top = 44
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 6
        end
        object UniLabel28: TUniLabel
          Left = 28
          Top = 97
          Width = 87
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3588#3636#3604#3588#3656#3634#3648#3626#3639#3656#3629#3617
          ParentFont = False
          TabOrder = 7
        end
        object UniDBLookupComboBox5: TUniDBLookupComboBox
          Tag = 9
          Left = 129
          Top = 97
          Width = 143
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 8
        end
        object UniLabel29: TUniLabel
          Left = 313
          Top = 97
          Width = 59
          Height = 13
          Caption = #3619#3627#3633#3626#3607#3619#3633#3614#3618#3660#3626#3636#3609
          ParentFont = False
          TabOrder = 9
        end
        object UniDBLookupComboBox8: TUniDBLookupComboBox
          Tag = 9
          Left = 400
          Top = 97
          Width = 143
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 10
        end
        object UniLabel30: TUniLabel
          Left = 28
          Top = 123
          Width = 87
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3585#3656#3629#3609#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 11
        end
        object UniDBEdit13: TUniDBEdit
          Left = 129
          Top = 123
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 12
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel32: TUniLabel
          Left = 32
          Top = 175
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 13
        end
        object UniDBEdit15: TUniDBEdit
          Left = 129
          Top = 175
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 14
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel33: TUniLabel
          Left = 313
          Top = 175
          Width = 46
          Height = 13
          Caption = #3617#3641#3621#3588#3656#3634#3595#3634#3585
          ParentFont = False
          TabOrder = 15
        end
        object UniDBEdit16: TUniDBEdit
          Left = 400
          Top = 175
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 16
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel34: TUniLabel
          Left = 28
          Top = 203
          Width = 92
          Height = 13
          Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3607#3619#3633#3614#3618#3660#3626#3636#3609
          ParentFont = False
          TabOrder = 17
        end
        object UniLabel35: TUniLabel
          Left = 28
          Top = 71
          Width = 61
          Height = 13
          Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
          ParentFont = False
          TabOrder = 18
        end
        object UniDBEdit17: TUniDBEdit
          Left = 129
          Top = 71
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 19
          Color = clWindow
          ReadOnly = True
        end
        object UniDateTimePicker2: TUniDateTimePicker
          Left = 400
          Top = 71
          Width = 129
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 20
          ParentColor = False
          Color = clWhite
        end
        object UniLabel36: TUniLabel
          Left = 313
          Top = 71
          Width = 20
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656
          ParentFont = False
          TabOrder = 21
        end
        object UniLabel25: TUniLabel
          Left = 578
          Top = 97
          Width = 26
          Height = 13
          Caption = #3621#3635#3604#3633#3610
          ParentFont = False
          TabOrder = 22
        end
        object UniDBEdit18: TUniDBEdit
          Left = 653
          Top = 97
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 23
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel31: TUniLabel
          Left = 30
          Top = 148
          Width = 88
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3611#3637#3588#3636#3604#3588#3656#3634#3648#3626#3639#3656#3629#3617
          ParentFont = False
          TabOrder = 24
        end
        object UniDBEdit14: TUniDBEdit
          Left = 129
          Top = 148
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 25
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel37: TUniLabel
          Left = 316
          Top = 148
          Width = 40
          Height = 13
          Caption = #3623#3633#3609#3626#3636#3657#3609#3626#3640#3604
          ParentFont = False
          TabOrder = 26
        end
        object UniDateTimePicker3: TUniDateTimePicker
          Left = 400
          Top = 148
          Width = 129
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 27
          ParentColor = False
          Color = clWhite
        end
        object UniDBEdit19: TUniDBEdit
          Left = 129
          Top = 202
          Width = 269
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 28
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit20: TUniDBEdit
          Left = 400
          Top = 202
          Width = 396
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 29
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit21: TUniDBEdit
          Left = 129
          Top = 15
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 30
          Color = clWindow
          ReadOnly = True
        end
      end
      object Grp4: TUniGroupBox
        Left = 476
        Top = 244
        Width = 815
        Height = 374
        Visible = False
        Caption = #3619#3632#3610#3610#3648#3610#3636#3585#3607#3619#3633#3614#3618#3660#3626#3636#3609
        TabOrder = 3
        object UniLabel38: TUniLabel
          Left = 26
          Top = 19
          Width = 71
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3648#3629#3585#3626#3634#3619
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel39: TUniLabel
          Left = 313
          Top = 17
          Width = 58
          Height = 13
          Caption = #3586#3634#3618#3607#3619#3633#3614#3618#3660#3626#3636#3609
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel40: TUniLabel
          Left = 313
          Top = 44
          Width = 28
          Height = 13
          Caption = #3649#3612#3609#3585
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel41: TUniLabel
          Left = 26
          Top = 44
          Width = 24
          Height = 13
          Caption = #3626#3634#3586#3634
          ParentFont = False
          TabOrder = 4
        end
        object UniDBLookupComboBox9: TUniDBLookupComboBox
          Tag = 9
          Left = 129
          Top = 44
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 5
        end
        object UniDBLookupComboBox10: TUniDBLookupComboBox
          Tag = 9
          Left = 400
          Top = 44
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 6
        end
        object UniLabel43: TUniLabel
          Left = 26
          Top = 97
          Width = 59
          Height = 13
          Caption = #3619#3627#3633#3626#3607#3619#3633#3614#3618#3660#3626#3636#3609
          ParentFont = False
          TabOrder = 7
        end
        object UniDBLookupComboBox12: TUniDBLookupComboBox
          Tag = 9
          Left = 130
          Top = 97
          Width = 143
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 8
        end
        object UniLabel45: TUniLabel
          Left = 26
          Top = 204
          Width = 97
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3588#3636#3604#3588#3656#3634#3648#3626#3639#3656#3629#3617
          ParentFont = False
          TabOrder = 9
        end
        object UniDBEdit24: TUniDBEdit
          Left = 129
          Top = 204
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 10
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel47: TUniLabel
          Left = 26
          Top = 232
          Width = 92
          Height = 13
          Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3607#3619#3633#3614#3618#3660#3626#3636#3609
          ParentFont = False
          TabOrder = 11
        end
        object UniLabel48: TUniLabel
          Left = 26
          Top = 71
          Width = 61
          Height = 13
          Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
          ParentFont = False
          TabOrder = 12
        end
        object UniDBEdit26: TUniDBEdit
          Left = 129
          Top = 71
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 13
          Color = clWindow
          ReadOnly = True
        end
        object UniDateTimePicker4: TUniDateTimePicker
          Left = 400
          Top = 71
          Width = 129
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 14
          ParentColor = False
          Color = clWhite
        end
        object UniLabel49: TUniLabel
          Left = 313
          Top = 71
          Width = 20
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656
          ParentFont = False
          TabOrder = 15
        end
        object UniLabel50: TUniLabel
          Left = 316
          Top = 97
          Width = 26
          Height = 13
          Caption = #3621#3635#3604#3633#3610
          ParentFont = False
          TabOrder = 16
        end
        object UniDBEdit27: TUniDBEdit
          Left = 400
          Top = 97
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 17
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel51: TUniLabel
          Left = 26
          Top = 123
          Width = 88
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3611#3637#3588#3636#3604#3588#3656#3634#3648#3626#3639#3656#3629#3617
          ParentFont = False
          TabOrder = 18
        end
        object UniDBEdit28: TUniDBEdit
          Left = 129
          Top = 123
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 19
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit29: TUniDBEdit
          Left = 129
          Top = 231
          Width = 269
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 20
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit30: TUniDBEdit
          Left = 400
          Top = 231
          Width = 396
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 21
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit31: TUniDBEdit
          Left = 129
          Top = 15
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 22
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel42: TUniLabel
          Left = 26
          Top = 150
          Width = 48
          Height = 13
          Caption = #3619#3627#3633#3626#3648#3592#3657#3634#3627#3609#3637#3657
          ParentFont = False
          TabOrder = 23
        end
        object UniDBLookupComboBox11: TUniDBLookupComboBox
          Tag = 9
          Left = 130
          Top = 150
          Width = 143
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 24
        end
        object UniLabel44: TUniLabel
          Left = 26
          Top = 177
          Width = 69
          Height = 13
          Caption = #3605#3657#3609#3607#3640#3609#3607#3619#3633#3614#3618#3660#3626#3636#3609
          ParentFont = False
          TabOrder = 25
        end
        object UniDBEdit23: TUniDBEdit
          Left = 130
          Top = 177
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 26
          Color = clWindow
          ReadOnly = True
        end
      end
      object Grp5: TUniGroupBox
        Left = 476
        Top = 244
        Width = 815
        Height = 374
        Visible = False
        Caption = #3619#3632#3610#3610' '#3616#3591#3604'. '#3595#3639#3657#3629
        TabOrder = 4
        object UniLabel46: TUniLabel
          Left = 23
          Top = 19
          Width = 71
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3648#3629#3585#3626#3634#3619
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel52: TUniLabel
          Left = 361
          Top = 17
          Width = 49
          Height = 13
          Caption = #3616'.'#3591'.'#3604'. '#3595#3639#3657#3629
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel53: TUniLabel
          Left = 361
          Top = 44
          Width = 28
          Height = 13
          Caption = #3649#3612#3609#3585
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel54: TUniLabel
          Left = 23
          Top = 44
          Width = 24
          Height = 13
          Caption = #3626#3634#3586#3634
          ParentFont = False
          TabOrder = 4
        end
        object UniDBLookupComboBox13: TUniDBLookupComboBox
          Tag = 9
          Left = 177
          Top = 44
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 5
        end
        object UniDBLookupComboBox14: TUniDBLookupComboBox
          Tag = 9
          Left = 453
          Top = 44
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 6
        end
        object UniLabel55: TUniLabel
          Left = 23
          Top = 97
          Width = 44
          Height = 13
          Caption = #3595#3639#3657#3629#3648#3592#3657#3634#3627#3609#3637#3657
          ParentFont = False
          TabOrder = 7
        end
        object UniLabel56: TUniLabel
          Left = 23
          Top = 204
          Width = 77
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3588#3656#3634#3651#3594#3657#3592#3656#3634#3618
          ParentFont = False
          TabOrder = 8
        end
        object UniDBEdit25: TUniDBEdit
          Left = 334
          Top = 204
          Width = 55
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 9
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel57: TUniLabel
          Left = 23
          Top = 232
          Width = 147
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3629#3636#3609#3623#3629#3618#3595#3660' ('#3652#3617#3656#3619#3623#3617#3616#3634#3625#3637')'
          ParentFont = False
          TabOrder = 10
        end
        object UniLabel58: TUniLabel
          Left = 23
          Top = 71
          Width = 68
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656#3627#3633#3585' '#3616'.'#3591'.'#3604'.'
          ParentFont = False
          TabOrder = 11
        end
        object UniDateTimePicker5: TUniDateTimePicker
          Left = 177
          Top = 71
          Width = 144
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 12
          ParentColor = False
          Color = clWhite
        end
        object UniLabel61: TUniLabel
          Left = 23
          Top = 123
          Width = 30
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656' 1'
          ParentFont = False
          TabOrder = 13
        end
        object UniDBEdit34: TUniDBEdit
          Left = 177
          Top = 123
          Width = 270
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 14
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit35: TUniDBEdit
          Left = 177
          Top = 97
          Width = 269
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 15
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit36: TUniDBEdit
          Left = 453
          Top = 124
          Width = 344
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 16
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit37: TUniDBEdit
          Left = 177
          Top = 15
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 17
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel62: TUniLabel
          Left = 23
          Top = 150
          Width = 110
          Height = 13
          Caption = #3648#3621#3586#3607#3637#3656#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 18
        end
        object UniLabel63: TUniLabel
          Left = 23
          Top = 177
          Width = 56
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 19
        end
        object UniDBEdit32: TUniDBEdit
          Left = 177
          Top = 150
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 20
          Color = clWindow
          ReadOnly = True
        end
        object ComboBox1: TComboBox
          Left = 177
          Top = 177
          Width = 145
          Height = 21
          ItemIndex = 0
          TabOrder = 21
          Text = #3616'.'#3591'.'#3604'. 3'
          OnCloseUp = CmbLinkCloseUp
          Items.Strings = (
            #3616'.'#3591'.'#3604'. 3'
            #3616'.'#3591'.'#3604'. 53')
        end
        object UniDBLookupComboBox15: TUniDBLookupComboBox
          Tag = 9
          Left = 177
          Top = 204
          Width = 145
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 22
        end
        object UniLabel59: TUniLabel
          Left = 399
          Top = 207
          Width = 11
          Height = 13
          Caption = '%'
          ParentFont = False
          TabOrder = 23
        end
        object UniDBEdit33: TUniDBEdit
          Left = 177
          Top = 231
          Width = 145
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 24
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel60: TUniLabel
          Left = 23
          Top = 258
          Width = 80
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' '#3616'.'#3591'.'#3604'.'
          ParentFont = False
          TabOrder = 25
        end
        object UniDBEdit38: TUniDBEdit
          Left = 177
          Top = 258
          Width = 145
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 26
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel64: TUniLabel
          Left = 365
          Top = 258
          Width = 60
          Height = 13
          Caption = #3648#3621#3586#3607#3637#3656' '#3616'.'#3591'.'#3604'.'
          ParentFont = False
          TabOrder = 27
        end
        object UniDBEdit39: TUniDBEdit
          Left = 453
          Top = 258
          Width = 145
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 28
          Color = clWindow
          ReadOnly = True
        end
      end
      object Grp6: TUniGroupBox
        Left = 294
        Top = 122
        Width = 815
        Height = 374
        Visible = False
        Caption = #3619#3632#3610#3610' '#3616#3591#3604'. '#3586#3634#3618
        TabOrder = 5
        object UniLabel65: TUniLabel
          Left = 23
          Top = 19
          Width = 71
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3648#3629#3585#3626#3634#3619
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel66: TUniLabel
          Left = 361
          Top = 17
          Width = 52
          Height = 13
          Caption = #3616'.'#3591'.'#3604'. '#3586#3634#3618
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel67: TUniLabel
          Left = 361
          Top = 44
          Width = 28
          Height = 13
          Caption = #3649#3612#3609#3585
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel68: TUniLabel
          Left = 23
          Top = 44
          Width = 24
          Height = 13
          Caption = #3626#3634#3586#3634
          ParentFont = False
          TabOrder = 4
        end
        object UniDBLookupComboBox16: TUniDBLookupComboBox
          Tag = 9
          Left = 177
          Top = 44
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 5
        end
        object UniDBLookupComboBox17: TUniDBLookupComboBox
          Tag = 9
          Left = 453
          Top = 44
          Width = 144
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 6
        end
        object UniLabel69: TUniLabel
          Left = 23
          Top = 97
          Width = 41
          Height = 13
          Caption = #3595#3639#3657#3629#3621#3641#3585#3588#3657#3634
          ParentFont = False
          TabOrder = 7
        end
        object UniLabel70: TUniLabel
          Left = 23
          Top = 176
          Width = 77
          Height = 13
          Caption = #3611#3619#3632#3648#3616#3607#3588#3656#3634#3651#3594#3657#3592#3656#3634#3618
          ParentFont = False
          TabOrder = 8
        end
        object UniDBEdit40: TUniDBEdit
          Left = 334
          Top = 176
          Width = 55
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 9
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel71: TUniLabel
          Left = 23
          Top = 203
          Width = 147
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3629#3636#3609#3623#3629#3618#3595#3660' ('#3652#3617#3656#3619#3623#3617#3616#3634#3625#3637')'
          ParentFont = False
          TabOrder = 10
        end
        object UniLabel72: TUniLabel
          Left = 23
          Top = 71
          Width = 68
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656#3627#3633#3585' '#3616'.'#3591'.'#3604'.'
          ParentFont = False
          TabOrder = 11
        end
        object UniDateTimePicker6: TUniDateTimePicker
          Left = 177
          Top = 71
          Width = 144
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 12
          ParentColor = False
          Color = clWhite
        end
        object UniLabel73: TUniLabel
          Left = 23
          Top = 123
          Width = 30
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656' 1'
          ParentFont = False
          TabOrder = 13
        end
        object UniDBEdit41: TUniDBEdit
          Left = 177
          Top = 123
          Width = 270
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 14
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit42: TUniDBEdit
          Left = 177
          Top = 97
          Width = 269
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 15
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit43: TUniDBEdit
          Left = 453
          Top = 124
          Width = 344
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 16
          Color = clWindow
          ReadOnly = True
        end
        object UniDBEdit44: TUniDBEdit
          Left = 177
          Top = 15
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 17
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel74: TUniLabel
          Left = 23
          Top = 150
          Width = 110
          Height = 13
          Caption = #3648#3621#3586#3607#3637#3656#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 18
        end
        object UniDBEdit45: TUniDBEdit
          Left = 177
          Top = 150
          Width = 144
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 19
          Color = clWindow
          ReadOnly = True
        end
        object UniDBLookupComboBox18: TUniDBLookupComboBox
          Tag = 9
          Left = 177
          Top = 176
          Width = 145
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 20
        end
        object UniLabel76: TUniLabel
          Left = 399
          Top = 179
          Width = 11
          Height = 13
          Caption = '%'
          ParentFont = False
          TabOrder = 21
        end
        object UniDBEdit46: TUniDBEdit
          Left = 177
          Top = 202
          Width = 145
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 22
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel77: TUniLabel
          Left = 23
          Top = 227
          Width = 73
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3606#3641#3585#3627#3633#3585
          ParentFont = False
          TabOrder = 23
        end
        object UniDBEdit47: TUniDBEdit
          Left = 177
          Top = 227
          Width = 145
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 24
          Color = clWindow
          ReadOnly = True
        end
        object UniLabel78: TUniLabel
          Left = 23
          Top = 256
          Width = 79
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3633#3610#3626#3640#3607#3608#3636
          ParentFont = False
          TabOrder = 25
        end
        object UniDBEdit48: TUniDBEdit
          Left = 176
          Top = 254
          Width = 145
          Height = 21
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 26
          Color = clWindow
          ReadOnly = True
        end
      end
    end
  end
  object pnFooter: TUniPanel
    Left = 0
    Top = 459
    Width = 843
    Height = 41
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 1
    ExplicitWidth = 830
    DesignSize = (
      843
      41)
    object BtnPupUpConfirm: TUniButton
      Left = 680
      Top = 6
      Width = 75
      Height = 25
      Caption = #3618#3639#3609#3618#3633#3609
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnPupUpConfirmClick
      ExplicitLeft = 667
    end
    object BtnPopUpCancel: TUniButton
      Left = 761
      Top = 6
      Width = 75
      Height = 25
      Caption = #3618#3585#3648#3621#3636#3585
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 1
      ExplicitLeft = 748
    end
  end
end
