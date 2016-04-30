inherited frmSkRcvCarFromMixerData: TfrmSkRcvCarFromMixerData
  Caption = #3619#3633#3610#3619#3606#3592#3634#3585#3629#3641#3656#3605#3656#3629#3648#3605#3636#3617
  ClientHeight = 623
  ClientWidth = 940
  Position = poDesigned
  ExplicitWidth = 946
  ExplicitHeight = 648
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 89
    Width = 940
    Height = 476
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 70
    ExplicitWidth = 870
    ExplicitHeight = 621
    object PnGrpdtl: TUniPanel
      Left = 1
      Top = 1
      Width = 938
      Height = 166
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 1
      object PnDtl1: TUniPanel
        Left = 1
        Top = 1
        Width = 317
        Height = 164
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 1
        ExplicitLeft = 5
        ExplicitTop = 5
        object UniLabel3: TUniLabel
          Left = 10
          Top = 11
          Width = 114
          Height = 13
          Caption = #3619#3633#3610#3619#3606#3618#3609#3605#3660#3605#3657#3609#3607#3634#3591#3629#3641#3656#3605#3656#3629#3648#3605#3636#3617
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel4: TUniLabel
          Left = 10
          Top = 66
          Width = 66
          Height = 13
          Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel5: TUniLabel
          Left = 10
          Top = 92
          Width = 71
          Height = 13
          Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          ParentFont = False
          TabOrder = 3
        end
        object UniDBEdit5: TUniDBEdit
          Left = 97
          Top = 61
          Width = 168
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
          Left = 97
          Top = 88
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
          Left = 97
          Top = 112
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
        object UniLabel1: TUniLabel
          Left = 12
          Top = 116
          Width = 23
          Height = 13
          Caption = #3619#3640#3656#3609#3619#3606
          ParentFont = False
          TabOrder = 7
        end
        object UniLabel6: TUniLabel
          Left = 12
          Top = 140
          Width = 7
          Height = 13
          Caption = #3626#3637
          ParentFont = False
          TabOrder = 8
        end
        object UniDBEdit2: TUniDBEdit
          Left = 97
          Top = 137
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 9
          Color = clWindow
        end
        object UniButton1: TUniButton
          Left = 267
          Top = 61
          Width = 28
          Height = 22
          Caption = '...'
          TabOrder = 10
          OnClick = UniButton1Click
        end
        object UniDBLookupComboBox1: TUniDBLookupComboBox
          Tag = 9
          Left = 97
          Top = 34
          Width = 198
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 11
        end
      end
      object PnDtl2: TUniPanel
        Left = 317
        Top = 1
        Width = 314
        Height = 164
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Color = clBtnFace
        TabOrder = 2
        object UniLabel7: TUniLabel
          Left = 11
          Top = 12
          Width = 141
          Height = 13
          Caption = #3629#3657#3634#3591#3629#3636#3591#3648#3621#3586#3607#3637#3656#3648#3610#3636#3585#3619#3606#3592#3634#3585#3629#3641#3656#3605#3656#3629#3648#3605#3636#3617
          ParentFont = False
          TabOrder = 1
        end
        object UniLabel17: TUniLabel
          Left = 11
          Top = 67
          Width = 20
          Height = 13
          Caption = #3623#3633#3609#3607#3637#3656
          ParentFont = False
          TabOrder = 2
        end
        object UniLabel19: TUniLabel
          Left = 11
          Top = 139
          Width = 38
          Height = 13
          Caption = #3588#3656#3634#3586#3609#3626#3656#3591
          ParentFont = False
          TabOrder = 3
        end
        object UniLabel20: TUniLabel
          Left = 11
          Top = 94
          Width = 80
          Height = 13
          Caption = #3629#3640#3611#3585#3619#3603#3660#3605#3636#3604#3619#3606#3618#3609#3605#3660
          ParentFont = False
          TabOrder = 4
        end
        object UniDBEdit3: TUniDBEdit
          Left = 104
          Top = 34
          Width = 188
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
        object UniDateTimePicker1: TUniDateTimePicker
          Left = 104
          Top = 62
          Width = 151
          Height = 22
          Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
          DateTime = 40742.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Kind = tUniDate
          FirstDayOfWeek = dowLocaleDefault
          TabOrder = 6
          ParentColor = False
          Color = clWhite
        end
        object UniDBEdit4: TUniDBEdit
          Left = 104
          Top = 88
          Width = 187
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 7
          Color = clWindow
        end
        object UniDBEdit14: TUniDBEdit
          Left = 104
          Top = 112
          Width = 187
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
        object UniDBEdit15: TUniDBEdit
          Left = 103
          Top = 137
          Width = 188
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 9
          Color = clWindow
        end
      end
      object PnDtl3: TUniPanel
        Left = 631
        Top = 1
        Width = 307
        Height = 164
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clBtnFace
        TabOrder = 3
        object UniLabel26: TUniLabel
          Left = 14
          Top = 12
          Width = 76
          Height = 13
          Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619
          ParentFont = False
          TabOrder = 1
        end
        object UniDBMemo1: TUniDBMemo
          Left = 6
          Top = 34
          Width = 282
          Height = 96
          TabOrder = 2
          Color = clWindow
        end
      end
    end
    object Pngrid: TUniPanel
      Left = 1
      Top = 166
      Width = 938
      Height = 310
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      object dbgDataList: TUniDBGrid
        Left = 1
        Top = 1
        Width = 936
        Height = 308
        DataSource = dsSt
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
            FieldName = 'CNOIM2'
            Title.Alignment = taCenter
            Title.Caption = #3650#3629#3609#3588#3621#3633#3591#3605#3657#3609#3607#3634#3591
            Title.Font.Charset = THAI_CHARSET
            Width = 90
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3650#3629#3609#3588#3621#3633#3591#3611#3621#3634#3618#3607#3634#3591
            Title.Font.Charset = THAI_CHARSET
            Width = 101
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
            Width = 86
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619
            Width = 212
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3611#3619#3636#3617#3634#3603
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3627#3609#3656#3623#3618#3609#3633#3610
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618
            Width = 124
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
            Width = 120
            Visible = True
            Expanded = False
          end>
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 586
    Width = 940
    TabOrder = 2
    ExplicitTop = 586
    ExplicitWidth = 940
    inherited imgBotton: TUniImage
      Width = 940
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
      ExplicitWidth = 940
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
    Height = 89
    TabOrder = 0
    ExplicitTop = -4
    ExplicitWidth = 940
    ExplicitHeight = 89
    object UniLabel9: TUniLabel
      Left = 13
      Top = 9
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 1
    end
    object UniDBEdit8: TUniDBEdit
      Left = 161
      Top = 7
      Width = 198
      Height = 21
      DataSource = dsSt
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 2
      Color = clWindow
    end
    object UniLabel10: TUniLabel
      Left = 391
      Top = 36
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 3
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 161
      Top = 33
      Width = 198
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 4
    end
    object UniDBLookupComboBox4: TUniDBLookupComboBox
      Tag = 9
      Left = 474
      Top = 33
      Width = 198
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 5
    end
    object UniLabel11: TUniLabel
      Left = 13
      Top = 36
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 6
    end
    object lbSearch: TUniLabel
      Left = 12
      Top = 61
      Width = 61
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      Transparent = False
      TabOrder = 7
    end
    object UniLabel12: TUniLabel
      Left = 391
      Top = 61
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 8
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 474
      Top = 59
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
    object UniDBEdit9: TUniDBEdit
      Left = 161
      Top = 59
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
  end
  inherited pnUser: TUniPanel
    Top = 565
    Width = 940
    ExplicitTop = 565
    ExplicitWidth = 940
  end
  object dsSt: TDataSource
    DataSet = DSStockDM.cdsTtStockGet
    Left = 360
    Top = 360
  end
end
