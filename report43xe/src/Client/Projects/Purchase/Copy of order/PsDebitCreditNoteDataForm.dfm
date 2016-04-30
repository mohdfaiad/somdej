inherited frmPsDebitCreditNoteData: TfrmPsDebitCreditNoteData
  Caption = #3610#3633#3609#3607#3638#3585#3651#3610#3648#3604#3610#3636#3605#3650#3609#3658#3605' / '#3651#3610#3648#3588#3619#3604#3636#3605#3650#3609#3658#3605
  ClientHeight = 623
  ClientWidth = 940
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 948
  ExplicitHeight = 657
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 116
    Width = 940
    Height = 466
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 70
    ExplicitWidth = 870
    ExplicitHeight = 621
    object PnGrpdtl: TUniPanel
      Left = 1
      Top = 1
      Width = 938
      Height = 184
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
      object PnDtl1: TUniPanel
        Left = 1
        Top = 1
        Width = 317
        Height = 182
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 1
        object UniLabel3: TUniLabel
          Left = 12
          Top = 12
          Width = 89
          Height = 13
          Caption = #3619#3627#3633#3626#3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel4: TUniLabel
          Left = 12
          Top = 39
          Width = 14
          Height = 13
          Caption = #3594#3639#3656#3629
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel5: TUniLabel
          Left = 12
          Top = 66
          Width = 21
          Height = 13
          Caption = #3607#3637#3656#3629#3618#3641#3656
          ParentFont = False
          TabOrder = 3
        end
        object UniDBEdit5: TUniDBEdit
          Left = 94
          Top = 34
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 4
          Color = clWindow
        end
        object UniDBEdit7: TUniDBEdit
          Left = 94
          Top = 60
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 5
          Color = clWindow
        end
        object UniDBEdit1: TUniDBEdit
          Left = 94
          Top = 84
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 6
          Color = clWindow
        end
        object UniDBLookupComboBox8: TUniDBLookupComboBox
          Tag = 9
          Left = 119
          Top = 8
          Width = 173
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 7
        end
        object UniLabel1: TUniLabel
          Left = 13
          Top = 111
          Width = 30
          Height = 13
          Caption = #3592#3633#3591#3627#3623#3633#3604
          ParentFont = False
          TabOrder = 8
        end
        object UniLabel6: TUniLabel
          Left = 13
          Top = 135
          Width = 36
          Height = 13
          Caption = #3611#3619#3632#3648#3607#3624
          ParentFont = False
          TabOrder = 9
        end
        object UniDBLookupComboBox9: TUniDBLookupComboBox
          Tag = 9
          Left = 94
          Top = 109
          Width = 198
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 10
        end
        object UniDBLookupComboBox10: TUniDBLookupComboBox
          Tag = 9
          Left = 94
          Top = 133
          Width = 198
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 11
        end
        object UniLabel22: TUniLabel
          Left = 12
          Top = 159
          Width = 56
          Height = 13
          Caption = #3610#3640#3588#3588#3621#3605#3636#3604#3605#3656#3629
          ParentFont = False
          TabOrder = 12
        end
        object UniDBEdit2: TUniDBEdit
          Left = 94
          Top = 156
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 13
          Color = clWindow
        end
      end
      object PnDtl2: TUniPanel
        Left = 317
        Top = 1
        Width = 314
        Height = 182
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 2
        object UniLabel7: TUniLabel
          Left = 14
          Top = 12
          Width = 58
          Height = 13
          Caption = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel17: TUniLabel
          Left = 14
          Top = 39
          Width = 20
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel18: TUniLabel
          Left = 14
          Top = 89
          Width = 86
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3629#3636#3609#3623#3629#3618#3595#3660
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel19: TUniLabel
          Left = 14
          Top = 111
          Width = 64
          Height = 13
          Caption = #3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
          ParentFont = False
          TabOrder = 4
        end
        object UniLabel20: TUniLabel
          Left = 14
          Top = 66
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 5
        end
        object UniRadioButton1: TUniRadioButton
          Left = 128
          Top = 87
          Width = 66
          Height = 17
          Checked = False
          Caption = #3619#3623#3617
          TabOrder = 6
        end
        object UniRadioButton2: TUniRadioButton
          Left = 184
          Top = 87
          Width = 105
          Height = 17
          Checked = False
          Caption = #3652#3617#3656#3619#3623#3617#3616#3634#3625#3637
          TabOrder = 7
        end
        object UniDBEdit3: TUniDBEdit
          Left = 94
          Top = 8
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 8
          Color = clWindow
        end
        object UniDateTimePicker1: TUniDateTimePicker
          Left = 94
          Top = 34
          Width = 162
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 9
          ParentColor = False
          Color = clWhite
        end
        object UniDBEdit4: TUniDBEdit
          Left = 94
          Top = 60
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 10
          Color = clWindow
        end
        object UniCheckBox1: TUniCheckBox
          Left = 96
          Top = 110
          Width = 41
          Height = 17
          Checked = False
          Caption = #3617#3637
          TabOrder = 11
        end
        object UniDBEdit14: TUniDBEdit
          Left = 136
          Top = 109
          Width = 138
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 12
          Color = clWindow
        end
        object UniLabel21: TUniLabel
          Left = 74
          Top = 138
          Width = 46
          Height = 13
          Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          ParentFont = False
          TabOrder = 13
        end
        object UniDBEdit15: TUniDBEdit
          Left = 136
          Top = 133
          Width = 138
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 14
          Color = clWindow
        end
        object UniLabel2: TUniLabel
          Left = 279
          Top = 110
          Width = 11
          Height = 13
          Caption = '%'
          ParentFont = False
          TabOrder = 15
        end
      end
      object PnDtl3: TUniPanel
        Left = 631
        Top = 1
        Width = 307
        Height = 182
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        TabOrder = 3
        object UniLabel26: TUniLabel
          Left = 14
          Top = 12
          Width = 28
          Height = 13
          Caption = #3649#3612#3609#3585
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel27: TUniLabel
          Left = 14
          Top = 35
          Width = 45
          Height = 13
          Caption = #3588#3621#3633#3591#3626#3636#3609#3588#3657#3634
          ParentFont = False
          TabOrder = 2
        end
        object UniDBLookupComboBox1: TUniDBLookupComboBox
          Tag = 9
          Left = 89
          Top = 7
          Width = 161
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 3
        end
        object UniDBLookupComboBox2: TUniDBLookupComboBox
          Tag = 9
          Left = 89
          Top = 34
          Width = 161
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object Pngrid: TUniPanel
      Left = 1
      Top = 184
      Width = 938
      Height = 282
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      DesignSize = (
        938
        282)
      object UniButton1: TUniButton
        Left = 431
        Top = 9
        Width = 75
        Height = 25
        Caption = #3588#3657#3609#3627#3634
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 1
        OnClick = btnConfirmClick
      end
      object UniDBEdit10: TUniDBEdit
        Left = 440
        Top = 206
        Width = 143
        Height = 21
        DataSource = dsSt
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 2
        Color = clWindow
      end
      object UniLabel14: TUniLabel
        Left = 322
        Top = 206
        Width = 99
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617#3611#3619#3633#3610#3611#3619#3640#3591
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 3
      end
      object UniDBEdit6: TUniDBEdit
        Left = 121
        Top = 12
        Width = 285
        Height = 21
        DataSource = dsSt
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 4
        Color = clWindow
      end
      object UniLabel13: TUniLabel
        Left = 17
        Top = 12
        Width = 26
        Height = 13
        Caption = #3588#3657#3609#3627#3634
        ParentFont = False
        TabOrder = 5
      end
      object dbgDataList: TUniDBGrid
        Left = 12
        Top = 40
        Width = 909
        Height = 155
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        WebOptions.LoadMaskMsg = 'Please wait...'
        StripeRows = False
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentFont = False
        TabOrder = 6
        Columns = <
          item
            Title.Alignment = taCenter
            Title.Caption = #3629#3636#3609#3623#3629#3618#3595#3660
            Title.Font.Charset = THAI_CHARSET
            Width = 80
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3623#3633#3609#3607#3637#3656
            Title.Font.Charset = THAI_CHARSET
            Width = 80
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3623#3633#3609#3609#3633#3604#3594#3635#3619#3632
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3634#3618#3585#3634#3619
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3611#3619#3636#3617#3634#3603#3648#3614#3636#3656#3617#3621#3604' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3611#3619#3636#3617#3634#3603#3648#3614#3636#3656#3617#3621#3604' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3588#3591#3648#3627#3621#3639#3629' <br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3588#3591#3648#3627#3621#3639#3629' <br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' <br> '#3629#3636#3609#3623#3629#3618#3595#3660
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' <br> '#3648#3614#3636#3656#3617#3621#3604#3627#3609#3637#3657
            Width = 80
            Visible = True
            Expanded = False
          end>
      end
      object UniLabel15: TUniLabel
        Left = 658
        Top = 206
        Width = 51
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3626#3640#3607#3608#3636
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 7
      end
      object UniDBEdit11: TUniDBEdit
        Left = 778
        Top = 206
        Width = 143
        Height = 21
        DataSource = dsSt
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 8
        Color = clWindow
      end
      object UniDBEdit12: TUniDBEdit
        Left = 778
        Top = 230
        Width = 143
        Height = 21
        DataSource = dsSt
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 9
        Color = clWindow
      end
      object UniLabel16: TUniLabel
        Left = 660
        Top = 230
        Width = 64
        Height = 13
        Caption = #3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 10
      end
      object UniDBEdit13: TUniDBEdit
        Left = 778
        Top = 254
        Width = 143
        Height = 21
        DataSource = dsSt
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 11
        Color = clWindow
      end
      object UniLabel23: TUniLabel
        Left = 660
        Top = 254
        Width = 39
        Height = 13
        Caption = #3619#3623#3617#3619#3634#3588#3634
        Anchors = [akRight, akBottom]
        ParentFont = False
        TabOrder = 12
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 582
    Width = 940
    TabOrder = 2
    ExplicitTop = 582
    ExplicitWidth = 940
    inherited imgBotton: TUniImage
      Width = 938
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
      ExplicitWidth = 938
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 858
      ExplicitLeft = 858
    end
    inherited btnConfirm: TUniButton
      Left = 777
      ExplicitLeft = 777
    end
  end
  inherited pnHeader: TUniPanel
    Width = 940
    Height = 116
    TabOrder = 0
    ExplicitWidth = 940
    ExplicitHeight = 116
    object UniLabel8: TUniLabel
      Left = 15
      Top = 11
      Width = 75
      Height = 13
      Caption = #3611#3619#3632#3648#3616#3607#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
      ParentFont = False
      TabOrder = 1
    end
    object CmbPoType: TUniComboBox
      Left = 96
      Top = 9
      Width = 198
      Height = 21
      Style = csDropDown
      MaxLength = 0
      Items.Strings = (
        #3619#3606#3618#3609#3605#3660
        #3629#3639#3656#3609' '#3654)
      ItemIndex = -1
      TabOrder = 2
    end
    object UniLabel9: TUniLabel
      Left = 331
      Top = 11
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 3
    end
    object UniDBEdit8: TUniDBEdit
      Left = 412
      Top = 9
      Width = 198
      Height = 21
      Enabled = False
      DataSource = dsSt
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 4
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel10: TUniLabel
      Left = 332
      Top = 33
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 5
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 96
      Top = 33
      Width = 198
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 6
    end
    object UniDBLookupComboBox4: TUniDBLookupComboBox
      Tag = 9
      Left = 412
      Top = 33
      Width = 198
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel11: TUniLabel
      Left = 15
      Top = 33
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 8
    end
    object lbSearch: TUniLabel
      Left = 14
      Top = 61
      Width = 61
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      Transparent = False
      TabOrder = 9
    end
    object UniLabel12: TUniLabel
      Left = 332
      Top = 61
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 10
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 412
      Top = 59
      Width = 162
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 11
      ParentColor = False
      Color = clWhite
    end
    object UniDBEdit9: TUniDBEdit
      Left = 96
      Top = 59
      Width = 198
      Height = 21
      Enabled = False
      DataSource = dsSt
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 12
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel29: TUniLabel
      Left = 15
      Top = 88
      Width = 67
      Height = 13
      Caption = #3648#3629#3585#3626#3634#3619#3648#3614#3636#3656#3617#3627#3609#3637#3657
      ParentFont = False
      TabOrder = 13
    end
    object UniComboBox4: TUniComboBox
      Left = 96
      Top = 86
      Width = 198
      Height = 21
      Style = csDropDown
      MaxLength = 0
      Items.Strings = (
        #3611#3619#3633#3610#3611#3619#3640#3591#3605#3657#3609#3607#3640#3609
        #3648#3614#3636#3656#3617#3626#3636#3609#3588#3657#3634#3651#3609#3588#3621#3633#3591)
      ItemIndex = -1
      TabOrder = 14
    end
    object UniLabel30: TUniLabel
      Left = 333
      Top = 89
      Width = 63
      Height = 13
      Caption = #3648#3629#3585#3626#3634#3619#3621#3604#3627#3609#3637#3657
      ParentFont = False
      TabOrder = 15
    end
    object UniComboBox5: TUniComboBox
      Left = 414
      Top = 87
      Width = 198
      Height = 21
      Style = csDropDown
      MaxLength = 0
      Items.Strings = (
        #3611#3619#3633#3610#3611#3619#3640#3591#3605#3657#3609#3607#3640#3609
        #3648#3614#3636#3656#3617#3626#3636#3609#3588#3657#3634#3651#3609#3588#3621#3633#3591)
      ItemIndex = -1
      TabOrder = 16
    end
  end
  object dsSt: TDataSource
    Left = 728
    Top = 16
  end
end
