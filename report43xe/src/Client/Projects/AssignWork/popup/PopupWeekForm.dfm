inherited frmPopupWeek: TfrmPopupWeek
  Caption = #3585#3635#3627#3609#3604#3594#3656#3623#3591#3623#3633#3609#3616#3634#3618#3651#3605#3657#3626#3633#3611#3604#3634#3627#3660
  ClientHeight = 282
  ClientWidth = 528
  FormStyle = fsStayOnTop
  Position = poScreenCenter
  OnCreate = UniFormCreate
  ExplicitWidth = 536
  ExplicitHeight = 316
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 0
    Width = 528
    Height = 224
    TabOrder = 1
    ExplicitTop = 0
    ExplicitWidth = 528
    ExplicitHeight = 224
    object LbMM: TUniLabel
      Left = 165
      Top = 39
      Width = 196
      Height = 16
      Alignment = taCenter
      AutoSize = False
      ParentFont = False
      Font.Height = -13
      TabOrder = 1
    end
    object UniLabel1: TUniLabel
      Left = 318
      Top = 72
      Width = 11
      Height = 13
      Caption = #3606#3638#3591
      ParentFont = False
      TabOrder = 2
    end
    object UniLabel2: TUniLabel
      Left = 185
      Top = 72
      Width = 18
      Height = 13
      Caption = #3592#3634#3585
      ParentFont = False
      TabOrder = 3
    end
    object FD1SCH: TUniDBEdit
      Tag = 9
      Left = 166
      Top = 99
      Width = 84
      Height = 21
      DataField = 'FD1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 4
      Color = clWindow
    end
    object TD1SCH: TUniDBEdit
      Tag = 9
      Left = 277
      Top = 99
      Width = 84
      Height = 21
      DataField = 'TD1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
      OnExit = TD1SCHExit
    end
    object FD2SCH: TUniDBEdit
      Tag = 9
      Left = 165
      Top = 126
      Width = 84
      Height = 21
      DataField = 'FD2'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 6
      Color = clWindow
      ReadOnly = True
    end
    object TD2SCH: TUniDBEdit
      Tag = 9
      Left = 277
      Top = 126
      Width = 84
      Height = 21
      DataField = 'TD2'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 7
      Color = clWindow
      OnExit = TD2SCHExit
    end
    object FD3SCH: TUniDBEdit
      Tag = 9
      Left = 166
      Top = 153
      Width = 84
      Height = 21
      DataField = 'FD3'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 8
      Color = clWindow
      ReadOnly = True
    end
    object TD3SCH: TUniDBEdit
      Tag = 9
      Left = 277
      Top = 153
      Width = 84
      Height = 21
      DataField = 'TD3'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 9
      Color = clWindow
      OnExit = TD3SCHExit
    end
    object FD4SCH: TUniDBEdit
      Tag = 9
      Left = 166
      Top = 180
      Width = 84
      Height = 21
      DataField = 'FD4'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 10
      Color = clWindow
      ReadOnly = True
    end
    object TD4SCH: TUniDBEdit
      Tag = 9
      Left = 277
      Top = 180
      Width = 84
      Height = 21
      DataField = 'TD4'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 11
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 97
      Top = 99
      Width = 36
      Height = 13
      Caption = 'Week 1'
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel4: TUniLabel
      Left = 97
      Top = 126
      Width = 36
      Height = 13
      Caption = 'Week 2'
      ParentFont = False
      TabOrder = 13
    end
    object UniLabel5: TUniLabel
      Left = 97
      Top = 153
      Width = 36
      Height = 13
      Caption = 'Week 3'
      ParentFont = False
      TabOrder = 14
    end
    object UniLabel6: TUniLabel
      Left = 97
      Top = 180
      Width = 36
      Height = 13
      Caption = 'Week 4'
      ParentFont = False
      TabOrder = 15
    end
    object UniLabel7: TUniLabel
      Left = 97
      Top = 11
      Width = 35
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3611#3637
      ParentFont = False
      TabOrder = 16
    end
    object UniLabel8: TUniLabel
      Left = 249
      Top = 11
      Width = 25
      Height = 13
      Caption = #3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 17
    end
    object EdtYar: TUniEdit
      Left = 165
      Top = 11
      Width = 68
      Height = 22
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      TabOrder = 18
      Color = clWindow
      OnExit = EdtYarExit
    end
    object EdtMM: TUniEdit
      Left = 297
      Top = 11
      Width = 64
      Height = 22
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      TabOrder = 19
      Color = clWindow
      OnExit = EdtMMExit
    end
  end
  inherited pnFooter: TUniPanel
    Top = 224
    Width = 528
    TabOrder = 2
    ExplicitTop = 224
    ExplicitWidth = 528
    inherited imgBotton: TUniImage
      Width = 526
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
      ExplicitWidth = 526
    end
    inherited btnBack: TUniButton
      Visible = False
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 446
      ExplicitLeft = 446
    end
    inherited btnConfirm: TUniButton
      Left = 365
      ExplicitLeft = 365
    end
  end
  inherited pnHeader: TUniPanel
    Width = 528
    Height = 0
    BorderStyle = ubsFrameLowered
    TabOrder = 0
    ExplicitWidth = 528
    ExplicitHeight = 0
  end
  inherited pnUser: TUniPanel
    Top = 261
    Width = 528
    ExplicitTop = 261
    ExplicitWidth = 528
  end
  object dsgrid: TDataSource
    Left = 200
    Top = 152
  end
end
