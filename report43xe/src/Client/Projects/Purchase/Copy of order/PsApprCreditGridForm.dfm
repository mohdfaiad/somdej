inherited frmPsApprCreditGrid: TfrmPsApprCreditGrid
  Caption = #3610#3633#3609#3607#3638#3585#3629#3609#3640#3617#3633#3605#3636#3623#3591#3648#3591#3636#3609' '#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
  ClientHeight = 531
  ClientWidth = 928
  ExplicitWidth = 936
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 129
    Width = 928
    Height = 361
    ExplicitTop = 129
    ExplicitWidth = 928
    ExplicitHeight = 361
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 928
      Height = 318
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3649#3612#3609#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 91
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 89
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3629#3636#3609#3623#3629#3618#3595#3660
          Title.Font.Charset = THAI_CHARSET
          Width = 82
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 106
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 66
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 90
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          Width = 94
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 93
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3609#3633#3604#3594#3635#3619#3632
          Width = 104
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3629#3609#3640#3617#3633#3605#3636
          Width = 64
          Visible = True
          Expanded = False
        end>
    end
    object PnsumAmt: TUniPanel
      Left = 0
      Top = 318
      Width = 928
      Height = 43
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      DesignSize = (
        928
        43)
      object UniLabel5: TUniLabel
        Left = 643
        Top = 13
        Width = 64
        Height = 13
        Caption = #3618#3629#3604#3648#3591#3636#3609#3629#3609#3640#3617#3633#3605#3636
        Anchors = [akRight, akBottom]
        ParentFont = False
        Transparent = False
        TabOrder = 1
      end
      object UniEdit3: TUniEdit
        Left = 752
        Top = 13
        Width = 156
        Height = 21
        Hint = #3588#3657#3609#3627#3634
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        Anchors = [akRight, akBottom]
        TabOrder = 2
        Color = clWindow
      end
    end
  end
  inherited pnHeader: TUniPanel
    Width = 928
    Height = 129
    ExplicitTop = -6
    ExplicitWidth = 922
    ExplicitHeight = 129
    inherited lbSearch: TUniLabel
      Left = 21
      Top = 69
      Width = 49
      Caption = #3594#3639#3656#3629#3612#3641#3657#3629#3609#3640#3617#3633#3605#3636
      ExplicitLeft = 21
      ExplicitTop = 69
      ExplicitWidth = 49
    end
    inherited edSearch: TUniEdit
      Left = 132
      Top = 67
      Width = 214
      Anchors = [akLeft, akTop]
      ExplicitLeft = 132
      ExplicitTop = 67
      ExplicitWidth = 214
    end
    inherited btnSearch: TUniButton
      Left = 724
      Top = 98
      Anchors = [akLeft, akTop]
      ExplicitLeft = 724
      ExplicitTop = 98
    end
    object UniLabel2: TUniLabel
      Left = 410
      Top = 12
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 4
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 132
      Top = 12
      Width = 214
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 5
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Tag = 9
      Left = 457
      Top = 12
      Width = 223
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 6
    end
    object UniLabel8: TUniLabel
      Left = 21
      Top = 12
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 7
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 132
      Top = 39
      Width = 153
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 8
      ParentColor = False
      Color = clWhite
    end
    object UniLabel3: TUniLabel
      Left = 22
      Top = 38
      Width = 48
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3629#3609#3640#3617#3633#3605#3636
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel1: TUniLabel
      Left = 397
      Top = 67
      Width = 54
      Height = 13
      Caption = #3623#3591#3648#3591#3636#3609#3629#3617#3640#3617#3633#3605#3636
      ParentFont = False
      Transparent = False
      TabOrder = 10
    end
    object UniEdit1: TUniEdit
      Left = 462
      Top = 67
      Width = 218
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 11
      Color = clWindow
    end
    object UniLabel4: TUniLabel
      Left = 21
      Top = 105
      Width = 88
      Height = 13
      Caption = #3588#3657#3609#3627#3634#3619#3627#3633#3626#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
      ParentFont = False
      Transparent = False
      TabOrder = 12
    end
    object UniEdit2: TUniEdit
      Left = 132
      Top = 102
      Width = 218
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 13
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 490
    Width = 928
    ExplicitTop = 490
    ExplicitWidth = 928
    DesignSize = (
      928
      41)
    inherited BtnView: TUniButton
      Left = 601
      Visible = False
      TabOrder = 5
      OnClick = btnAddClick
      ExplicitLeft = 601
    end
    inherited imgBotton: TUniImage
      Width = 928
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
    end
    inherited btnAdd: TUniButton
      Left = 682
      Visible = False
      ExplicitLeft = 682
    end
    inherited btnDelete: TUniButton
      Left = 844
      Caption = #3629#3609#3640#3617#3633#3605#3636
      ExplicitLeft = 844
    end
    inherited btnEdit: TUniButton
      Left = 763
      Visible = False
      OnClick = btnAddClick
      ExplicitLeft = 763
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
