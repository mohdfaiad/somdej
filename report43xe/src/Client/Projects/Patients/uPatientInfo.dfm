inherited frmPatientInfo: TfrmPatientInfo
  Caption = ' Patient Info'
  ClientHeight = 508
  ClientWidth = 1116
  Font.Charset = THAI_CHARSET
  Font.Height = -13
  KeyPreview = True
  OnKeyDown = UniFormKeyDown
  ExplicitWidth = 1122
  ExplicitHeight = 537
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnBody: TUniPanel
    Top = 279
    Width = 1116
    Height = 192
    ExplicitTop = 279
    ExplicitWidth = 1116
    ExplicitHeight = 192
    object PnArAnalyst: TUniPageControl
      Left = 1
      Top = 1
      Width = 1114
      Height = 190
      ActivePage = tabNormal
      TabOrder = 1
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object tabNormal: TUniTabSheet
        Caption = #3607#3637#3656#3629#3618#3641#3656#3612#3641#3657#3611#3656#3623#3618
        object PnNorTop: TUniPanel
          Left = 0
          Top = 0
          Width = 1106
          Height = 190
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 0
          object UniLabel7: TUniLabel
            Left = 9
            Top = 14
            Width = 98
            Height = 16
            Caption = #3619#3627#3633#3626#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            Transparent = False
            TabOrder = 1
          end
          object UniDBEdit5: TUniDBEdit
            Left = 141
            Top = 11
            Width = 180
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 2
            Color = clWindow
          end
          object UniLabel8: TUniLabel
            Left = 13
            Top = 39
            Width = 116
            Height = 16
            Caption = #3607#3637#3656#3629#3618#3641#3656' ('#3607#3632#3648#3610#3637#3618#3609#3585#3634#3619#3588#3657#3634')'
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 3
          end
          object UniDBEdit6: TUniDBEdit
            Left = 141
            Top = 35
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 4
            Color = clWindow
          end
          object UniDBEdit7: TUniDBEdit
            Left = 142
            Top = 59
            Width = 251
            Height = 21
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
          object UniLabel9: TUniLabel
            Left = 14
            Top = 83
            Width = 35
            Height = 16
            Caption = #3592#3633#3591#3627#3623#3633#3604
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 6
          end
          object UniLabel10: TUniLabel
            Left = 14
            Top = 108
            Width = 41
            Height = 16
            Caption = #3611#3619#3632#3648#3607#3624
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 7
          end
          object UniDBEdit8: TUniDBEdit
            Left = 520
            Top = 11
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 8
            Color = clWindow
          end
          object UniDBEdit9: TUniDBEdit
            Left = 520
            Top = 35
            Width = 251
            Height = 21
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
          object UniLabel11: TUniLabel
            Left = 408
            Top = 11
            Width = 47
            Height = 16
            Caption = #3650#3607#3619#3624#3633#3614#3607#3660
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 10
          end
          object UniLabel12: TUniLabel
            Left = 408
            Top = 36
            Width = 32
            Height = 16
            Caption = #3617#3639#3629#3606#3639#3629
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 11
          end
          object UniLabel13: TUniLabel
            Left = 408
            Top = 59
            Width = 33
            Height = 16
            Caption = #3649#3615#3585#3594#3660
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 12
          end
          object UniDBEdit10: TUniDBEdit
            Left = 520
            Top = 59
            Width = 251
            Height = 21
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
          object UniLabel14: TUniLabel
            Left = 408
            Top = 83
            Width = 28
            Height = 16
            Caption = #3629#3637#3648#3617#3621#3660
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 14
          end
          object UniDBEdit11: TUniDBEdit
            Left = 520
            Top = 83
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 15
            Color = clWindow
          end
          object UniLabel15: TUniLabel
            Left = 408
            Top = 108
            Width = 42
            Height = 16
            Caption = #3648#3623#3610#3652#3595#3605#3660
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 16
          end
          object UniDBEdit12: TUniDBEdit
            Left = 520
            Top = 108
            Width = 251
            Height = 21
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
          object UniLabel16: TUniLabel
            Left = 408
            Top = 157
            Width = 49
            Height = 16
            Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 18
          end
          object UniLabel17: TUniLabel
            Left = 408
            Top = 133
            Width = 73
            Height = 16
            Caption = #3611#3619#3632#3648#3616#3607#3621#3641#3585#3627#3609#3637#3657
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 19
          end
          object UniDBEdit13: TUniDBEdit
            Left = 142
            Top = 83
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 20
            Color = clWindow
          end
          object UniDBEdit14: TUniDBEdit
            Left = 142
            Top = 108
            Width = 251
            Height = 21
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
          object UniDBEdit15: TUniDBEdit
            Left = 520
            Top = 133
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 22
            Color = clWindow
          end
          object UniDBEdit16: TUniDBEdit
            Left = 520
            Top = 160
            Width = 251
            Height = 21
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
        end
        object PnNormalClient: TUniPanel
          Left = 0
          Top = 190
          Width = 1106
          Height = 6
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBtnFace
          TabOrder = 1
          object UniLabel18: TUniLabel
            Left = 14
            Top = 9
            Width = 119
            Height = 16
            Caption = #3648#3621#3586#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 1
          end
          object UniDBEdit17: TUniDBEdit
            Left = 141
            Top = 9
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 2
            Color = clWindow
          end
          object UniLabel19: TUniLabel
            Left = 13
            Top = 36
            Width = 124
            Height = 16
            Caption = #3611#3619#3648#3616#3607#3616#3634#3625#3637#3627#3633#3585' '#3603' '#3607#3637#3656#3592#3656#3634#3618
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 3
          end
          object UniRadioButton1: TUniRadioButton
            Left = 144
            Top = 35
            Width = 105
            Height = 15
            Checked = True
            Caption = #3616#3591#3604'. 3'
            TabOrder = 4
          end
          object UniRadioButton2: TUniRadioButton
            Left = 263
            Top = 36
            Width = 105
            Height = 15
            Checked = False
            Caption = #3616#3591#3604'. 53'
            TabOrder = 5
          end
          object UniLabel20: TUniLabel
            Left = 14
            Top = 64
            Width = 73
            Height = 16
            Caption = #3594#3609#3636#3604#3588#3656#3634#3651#3594#3657#3592#3656#3634#3618
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 6
          end
          object UniDBEdit18: TUniDBEdit
            Left = 141
            Top = 64
            Width = 251
            Height = 21
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
          object UniDBEdit19: TUniDBEdit
            Left = 141
            Top = 88
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 8
            Color = clWindow
          end
          object UniLabel21: TUniLabel
            Left = 14
            Top = 88
            Width = 105
            Height = 16
            Caption = '% '#3616#3634#3625#3637#3627#3633#3585' '#3603' '#3607#3637#3656#3592#3656#3634#3618
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 9
          end
          object UniDBEdit20: TUniDBEdit
            Left = 141
            Top = 112
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 10
            Color = clWindow
          end
          object UniLabel22: TUniLabel
            Left = 14
            Top = 112
            Width = 62
            Height = 16
            Caption = #3648#3588#3619#3604#3636#3605' ('#3623#3633#3609')'
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 11
          end
          object UniDBEdit21: TUniDBEdit
            Left = 141
            Top = 136
            Width = 251
            Height = 21
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 12
            Color = clWindow
          end
          object UniLabel23: TUniLabel
            Left = 14
            Top = 136
            Width = 30
            Height = 16
            Caption = #3623#3591#3648#3591#3636#3609
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 13
          end
        end
      end
      object taborder: TUniTabSheet
        Caption = #3611#3619#3632#3623#3633#3605#3636#3612#3641#3657#3611#3656#3623#3618
        object dbgbottom: TUniDBGrid
          Left = 0
          Top = 246
          Width = 1106
          Height = 10
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = 'Please wait...'
          HeaderTitleAlign = taLeftJustify
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3649#3612#3609#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 75
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
              Title.Font.Charset = THAI_CHARSET
              Width = 80
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3629#3636#3609#3623#3629#3618#3595#3660
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Width = 76
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3626#3633#3656#3591#3595#3639#3657#3629' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3626#3633#3656#3591#3595#3639#3657#3629' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end>
        end
        object UniPanel1: TUniPanel
          Left = 0
          Top = 0
          Width = 1106
          Height = 41
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 1
          object UniLabel24: TUniLabel
            Left = 13
            Top = 10
            Width = 78
            Height = 16
            Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            Transparent = False
            TabOrder = 1
          end
          object btnSearch: TUniButton
            Left = 746
            Top = 10
            Width = 75
            Height = 25
            Caption = #3588#3657#3609#3627#3634
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 2
          end
          object UniEdit2: TUniEdit
            Left = 87
            Top = 10
            Width = 182
            Height = 21
            Hint = #3588#3657#3609#3627#3634
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 3
            Color = clWindow
          end
          object UniLabel25: TUniLabel
            Left = 291
            Top = 10
            Width = 23
            Height = 16
            Caption = #3623#3633#3609#3607#3637#3656
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 4
          end
          object UniDateTimePicker3: TUniDateTimePicker
            Left = 327
            Top = 10
            Width = 182
            Height = 22
            Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
            DateTime = 40742.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 5
            ParentColor = False
            Color = clWhite
          end
          object UniLabel26: TUniLabel
            Left = 531
            Top = 10
            Width = 14
            Height = 16
            Caption = #3606#3638#3591
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 6
          end
          object UniDateTimePicker4: TUniDateTimePicker
            Left = 558
            Top = 10
            Width = 182
            Height = 22
            Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
            DateTime = 40742.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 7
            ParentColor = False
            Color = clWhite
          end
        end
        object dbgtop: TUniDBGrid
          Left = 0
          Top = 41
          Width = 1106
          Height = 205
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = 'Please wait...'
          HeaderTitleAlign = taLeftJustify
          StripeRows = False
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          ParentFont = False
          TabOrder = 2
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3649#3612#3609#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 75
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
              Title.Font.Charset = THAI_CHARSET
              Width = 80
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610#3588#3635#3586#3629
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
              Width = 76
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3585#3634#3619
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3626#3633#3656#3591#3595#3639#3657#3629' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3626#3633#3656#3591#3595#3639#3657#3629' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3588#3591#3648#3627#3621#3639#3629' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3588#3591#3648#3627#3621#3639#3629' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end>
        end
      end
      object tabRcv: TUniTabSheet
        Caption = #3612#3641#3657#3605#3636#3604#3605#3656#3629#3652#3604#3657
        object dbRCV3: TUniDBGrid
          Left = 0
          Top = -1
          Width = 1106
          Height = 160
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = 'Please wait...'
          HeaderTitleAlign = taLeftJustify
          StripeRows = False
          Align = alBottom
          Anchors = [akLeft, akRight, akBottom]
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3649#3612#3609#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 69
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607' <br>'#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
              Title.Font.Charset = THAI_CHARSET
              Width = 57
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
              Width = 73
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
              Width = 87
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3585#3634#3619
              Width = 81
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3626#3633#3656#3591#3595#3639#3657#3629' <br>'#3627#3621#3633#3585
              Width = 78
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3626#3633#3656#3591#3595#3639#3657#3629' <br>'#3618#3656#3629#3618
              Width = 68
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610' <br>'#3627#3621#3633#3585
              Width = 92
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610' <br>'#3618#3656#3629#3618
              Width = 96
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618'<br> '#3627#3621#3633#3585
              Width = 64
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618' <br>'#3618#3656#3629#3618
              Width = 64
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 64
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end>
        end
        object UniPanel2: TUniPanel
          Left = 0
          Top = 0
          Width = 1106
          Height = 41
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 1
          object UniLabel27: TUniLabel
            Left = 13
            Top = 10
            Width = 47
            Height = 16
            Caption = #3629#3636#3609#3623#3629#3618#3595#3660
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            Transparent = False
            TabOrder = 1
          end
          object UniEdit1: TUniEdit
            Left = 59
            Top = 10
            Width = 182
            Height = 21
            Hint = #3588#3657#3609#3627#3634
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 2
            Color = clWindow
          end
          object UniButton1: TUniButton
            Left = 737
            Top = 10
            Width = 75
            Height = 25
            Caption = #3588#3657#3609#3627#3634
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 3
          end
          object UniLabel28: TUniLabel
            Left = 263
            Top = 10
            Width = 23
            Height = 16
            Caption = #3623#3633#3609#3607#3637#3656
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 4
          end
          object UniDateTimePicker1: TUniDateTimePicker
            Left = 299
            Top = 10
            Width = 182
            Height = 22
            Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
            DateTime = 40742.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 5
            ParentColor = False
            Color = clWhite
          end
          object UniLabel29: TUniLabel
            Left = 503
            Top = 10
            Width = 14
            Height = 16
            Caption = #3606#3638#3591
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 6
          end
          object UniDateTimePicker2: TUniDateTimePicker
            Left = 530
            Top = 10
            Width = 182
            Height = 22
            Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
            DateTime = 40742.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 7
            ParentColor = False
            Color = clWhite
          end
        end
        object dbRCV1: TUniDBGrid
          Left = 0
          Top = 41
          Width = 1106
          Height = 9
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = 'Please wait...'
          HeaderTitleAlign = taLeftJustify
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          ParentFont = False
          TabOrder = 2
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3649#3612#3609#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 66
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3629#3636#3609#3623#3629#3618#3595#3660
              Title.Font.Charset = THAI_CHARSET
              Width = 117
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3604#3609#3633#3604#3594#3635#3619#3632
              Width = 87
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' <br> '#3585#3656#3629#3609#3616#3634#3625#3637
              Width = 89
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' <br> '#3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
              Width = 89
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' <br> '#3616#3634#3625#3637#3627#3633#3585' '#3603' '#3607#3637#3656#3592#3656#3634#3618
              Width = 128
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3629#3636#3609#3623#3629#3618#3595#3660
              Width = 91
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3594#3635#3619#3632
              Width = 94
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3588#3591#3648#3627#3621#3639#3629
              Width = 92
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end>
        end
        object dbRCV2: TUniDBGrid
          Left = 0
          Top = -143
          Width = 1106
          Height = 142
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = 'Please wait...'
          HeaderTitleAlign = taLeftJustify
          StripeRows = False
          Align = alBottom
          Anchors = [akLeft, akRight, akBottom]
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          ParentFont = False
          TabOrder = 3
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3649#3612#3609#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 66
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3592#3656#3634#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 118
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3604#3609#3633#3604#3594#3635#3619#3632
              Width = 87
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3594#3655#3588' <br> '#3608#3609#3634#3588#3634#3619
              Width = 81
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3594#3655#3588' <br> '#3626#3634#3586#3634
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3594#3655#3588' <br> '#3648#3621#3586#3607#3637#3656
              Width = 78
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3594#3655#3588' <br>'#3623#3633#3609#3607#3637#3656
              Width = 68
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3629#3636#3609#3623#3629#3618#3595#3660
              Width = 92
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3594#3635#3619#3632
              Width = 96
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end>
        end
      end
      object tabAnalyst: TUniTabSheet
        Caption = #3623#3636#3648#3588#3619#3634#3632#3627#3660#3629#3634#3618#3640#3627#3609#3637#3657
        object UniPanel4: TUniPanel
          Left = 0
          Top = 0
          Width = 1106
          Height = 41
          Align = alTop
          Anchors = [akLeft, akTop, akRight]
          Color = clBtnFace
          TabOrder = 0
          object UniLabel44: TUniLabel
            Left = 14
            Top = 10
            Width = 108
            Height = 16
            Caption = #3623#3636#3648#3588#3619#3634#3632#3627#3660#3629#3634#3618#3640' '#3603' '#3623#3633#3609#3607#3637#3656
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            Transparent = False
            TabOrder = 1
          end
          object UniEdit4: TUniEdit
            Left = 377
            Top = 8
            Width = 110
            Height = 21
            Hint = #3588#3657#3609#3627#3634
            PasswordChar = #0
            CharCase = ecNormal
            MaxLength = 0
            CharEOL = #0
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 2
            Color = clWindow
          end
          object UniButton3: TUniButton
            Left = 506
            Top = 8
            Width = 75
            Height = 25
            Caption = #3588#3657#3609#3627#3634
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 3
          end
          object UniLabel45: TUniLabel
            Left = 334
            Top = 10
            Width = 42
            Height = 16
            Caption = #3649#3610#3656#3591#3594#3656#3623#3591
            ParentFont = False
            Font.Charset = THAI_CHARSET
            Font.Height = -13
            TabOrder = 4
          end
          object UniDateTimePicker5: TUniDateTimePicker
            Left = 141
            Top = 7
            Width = 180
            Height = 22
            Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
            DateTime = 40742.000000000000000000
            DateFormat = 'dd/MM/yyyy'
            TimeFormat = 'HH:mm:ss'
            Kind = tUniDate
            FirstDayOfWeek = dowLocaleDefault
            TabOrder = 5
            ParentColor = False
            Color = clWhite
          end
        end
        object DbAnalys: TUniDBGrid
          Left = 0
          Top = 41
          Width = 1106
          Height = 118
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = 'Please wait...'
          HeaderTitleAlign = taLeftJustify
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          Font.Charset = THAI_CHARSET
          Font.Height = -13
          ParentFont = False
          TabOrder = 1
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3585#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 98
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3594#3656#3623#3591#3623#3633#3609#3592#3634#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 82
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3606#3638#3591
              Width = 80
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3618#3633#3591#3652#3617#3656#3606#3638#3591#3585#3635#3627#3609#3604
              Width = 240
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3585#3636#3609#3585#3635#3627#3609#3604
              Width = 281
              Visible = True
              Font.Charset = THAI_CHARSET
              Font.Height = -13
              Expanded = False
            end>
        end
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 471
    Width = 1116
    ExplicitTop = 471
    ExplicitWidth = 1116
    DesignSize = (
      1116
      37)
    inherited imgBotton: TUniImage
      Width = 1116
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
      ExplicitWidth = 1116
    end
    inherited btnCancel: TUniButton
      Left = 904
      ExplicitLeft = 904
    end
    inherited btnConfirm: TUniButton
      Left = 823
      ExplicitLeft = 823
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1116
    Height = 279
    ParentFont = False
    Font.Charset = THAI_CHARSET
    Font.Height = -13
    ExplicitWidth = 1116
    ExplicitHeight = 279
    object DBCifName: TUniDBEdit
      Left = 86
      Top = 30
      Width = 246
      Height = 21
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
    object LbName: TUniLabel
      Left = 63
      Top = 32
      Width = 16
      Height = 16
      Caption = #3594#3639#3656#3629
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 2
    end
    object UniDBEdit1: TUniDBEdit
      Left = 86
      Top = 3
      Width = 246
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 3
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 63
      Top = 3
      Width = 16
      Height = 16
      Caption = 'HN'
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 4
    end
    object UniLabel3: TUniLabel
      Left = 413
      Top = 35
      Width = 24
      Height = 16
      Caption = #3626#3585#3640#3621
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 5
    end
    object UniDBEdit2: TUniDBEdit
      Left = 443
      Top = 33
      Width = 190
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel4: TUniLabel
      Left = 720
      Top = 60
      Width = 21
      Height = 16
      Caption = #3648#3614#3624
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 7
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 747
      Top = 60
      Width = 140
      Height = 26
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 8
    end
    object UniLabel5: TUniLabel
      Left = 26
      Top = 196
      Width = 53
      Height = 16
      Caption = #3626#3606#3634#3609#3616#3634#3614
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 9
    end
    object UniLabel48: TUniLabel
      Left = 14
      Top = 84
      Width = 65
      Height = 16
      Caption = #3594#3639#3656#3629'('#3629#3633#3591#3585#3620#3625')'
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 10
    end
    object UniDBEdit35: TUniDBEdit
      Left = 86
      Top = 82
      Width = 246
      Height = 21
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
    object UniLabel49: TUniLabel
      Left = 364
      Top = 87
      Width = 73
      Height = 16
      Caption = #3626#3585#3640#3621'('#3629#3633#3591#3585#3620#3625')'
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 12
    end
    object UniDBEdit36: TUniDBEdit
      Left = 443
      Top = 85
      Width = 190
      Height = 21
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
    object UniLabel50: TUniLabel
      Left = 13
      Top = 115
      Width = 66
      Height = 16
      Caption = #3588#3635#3609#3635#3627#3609#3657#3634#3594#3639#3656#3629
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 14
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Tag = 9
      Left = 86
      Top = 105
      Width = 140
      Height = 26
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 15
    end
    object UniBitBtn1: TUniBitBtn
      Left = 636
      Top = 107
      Width = 57
      Height = 25
      Caption = #3588#3657#3609#3627#3634
      TabOrder = 16
    end
    object UniLabel51: TUniLabel
      Left = 372
      Top = 111
      Width = 65
      Height = 16
      Caption = #3618#3624'/'#3605#3635#3649#3627#3609#3656#3591
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 17
    end
    object UniDBEdit37: TUniDBEdit
      Left = 443
      Top = 109
      Width = 190
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 18
      Color = clWindow
    end
    object UniLabel52: TUniLabel
      Left = 697
      Top = 82
      Width = 44
      Height = 16
      Caption = #3594#3639#3656#3629#3585#3621#3634#3591
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 19
    end
    object UniDBEdit38: TUniDBEdit
      Left = 747
      Top = 82
      Width = 190
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 20
      Color = clWindow
    end
    object UniLabel53: TUniLabel
      Left = 30
      Top = 150
      Width = 43
      Height = 16
      Caption = #3648#3585#3636#3604#3623#3633#3609#3607#3637#3656
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 21
    end
    object UniDBEdit39: TUniDBEdit
      Left = 86
      Top = 148
      Width = 190
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 22
      Color = clWindow
    end
    object UniDBEdit40: TUniDBEdit
      Left = 336
      Top = 145
      Width = 59
      Height = 21
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
    object UniLabel54: TUniLabel
      Left = 287
      Top = 149
      Width = 22
      Height = 16
      Caption = #3629#3634#3618#3640
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 24
    end
    object UniLabel55: TUniLabel
      Left = 405
      Top = 149
      Width = 8
      Height = 16
      Caption = #3611#3637
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 25
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 86
      Top = 194
      Width = 190
      Height = 26
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 26
    end
    object UniLabel56: TUniLabel
      Left = 396
      Top = 191
      Width = 41
      Height = 16
      Caption = #3626#3633#3597#3594#3634#3605#3636
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 27
    end
    object UniDBEdit41: TUniDBEdit
      Left = 443
      Top = 191
      Width = 190
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 28
      Color = clWindow
    end
    object UniBitBtn2: TUniBitBtn
      Left = 636
      Top = 189
      Width = 57
      Height = 25
      Caption = #3588#3657#3609#3627#3634
      TabOrder = 29
    end
    object UniLabel57: TUniLabel
      Left = 700
      Top = 193
      Width = 42
      Height = 16
      Caption = #3648#3594#3639#3657#3629#3594#3634#3605#3636
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 30
    end
    object UniDBEdit42: TUniDBEdit
      Left = 747
      Top = 193
      Width = 190
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 31
      Color = clWindow
    end
    object UniBitBtn3: TUniBitBtn
      Left = 940
      Top = 191
      Width = 57
      Height = 25
      Caption = #3588#3657#3609#3627#3634
      TabOrder = 32
    end
    object UniLabel1: TUniLabel
      Left = 26
      Top = 220
      Width = 36
      Height = 16
      Caption = #3624#3634#3626#3609#3634
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 33
    end
    object UniDBLookupComboBox4: TUniDBLookupComboBox
      Tag = 9
      Left = 86
      Top = 218
      Width = 190
      Height = 26
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 34
    end
    object UniLabel6: TUniLabel
      Left = 396
      Top = 215
      Width = 31
      Height = 16
      Caption = #3629#3634#3594#3637#3614
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 35
    end
    object UniDBEdit3: TUniDBEdit
      Left = 443
      Top = 215
      Width = 190
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 36
      Color = clWindow
    end
    object UniBitBtn4: TUniBitBtn
      Left = 636
      Top = 213
      Width = 57
      Height = 25
      Caption = #3588#3657#3609#3627#3634
      TabOrder = 37
    end
    object UniLabel58: TUniLabel
      Left = 9
      Top = 242
      Width = 71
      Height = 16
      Caption = #3611#3619#3632#3648#3616#3607#3612#3641#3657#3611#3656#3623#3618
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 38
    end
    object UniDBLookupComboBox5: TUniDBLookupComboBox
      Tag = 9
      Left = 86
      Top = 241
      Width = 190
      Height = 26
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 39
    end
    object UniLabel59: TUniLabel
      Left = 396
      Top = 238
      Width = 43
      Height = 16
      Caption = #3648#3586#3607#3637#3656#3610#3633#3605#3619
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 40
    end
    object UniDBEdit4: TUniDBEdit
      Left = 443
      Top = 238
      Width = 190
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 41
      Color = clWindow
    end
    object UniBitBtn5: TUniBitBtn
      Left = 636
      Top = 236
      Width = 57
      Height = 25
      Caption = #3588#3657#3609#3627#3634
      TabOrder = 42
    end
    object UniLabel60: TUniLabel
      Left = 336
      Top = 11
      Width = 101
      Height = 16
      Caption = #3648#3621#3586#3607#3637#3656#3610#3633#3605#3619#3611#3619#3632#3594#3634#3594#3609
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 43
    end
    object UniDBEdit43: TUniDBEdit
      Left = 443
      Top = 6
      Width = 190
      Height = 21
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
  end
  object dsgrid: TDataSource
    Left = 456
    Top = 264
  end
end
