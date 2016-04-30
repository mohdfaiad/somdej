inherited frmStRunningData: TfrmStRunningData
  Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
  ClientHeight = 334
  ClientWidth = 879
  Position = poScreenCenter
  ExplicitWidth = 887
  ExplicitHeight = 361
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 879
    Height = 244
    TabOrder = 1
    ExplicitTop = 49
    ExplicitWidth = 879
    ExplicitHeight = 244
    object LbCreditLineNo: TUniLabel
      Left = 19
      Top = 11
      Width = 54
      Height = 13
      Caption = #3619#3627#3633#3626#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 1
    end
    object DbDcd: TUniDBEdit
      Tag = 9
      Left = 125
      Top = 6
      Width = 121
      Height = 21
      DataField = 'DCDNB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 2
      Color = clWindow
    end
    object DbTnm: TUniDBEdit
      Tag = 9
      Left = 382
      Top = 6
      Width = 365
      Height = 21
      DataField = 'TNMCDE'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 3
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 276
      Top = 11
      Width = 88
      Height = 13
      Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3652#3607#3618
      ParentFont = False
      TabOrder = 4
    end
    object UniLabel2: TUniLabel
      Left = 275
      Top = 38
      Width = 101
      Height = 13
      Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
      ParentFont = False
      TabOrder = 5
    end
    object DbEnm: TUniDBEdit
      Tag = 9
      Left = 381
      Top = 33
      Width = 366
      Height = 21
      DataField = 'ENMCDE'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 19
      Top = 92
      Width = 68
      Height = 13
      Caption = #3619#3641#3611#3649#3610#3610#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 7
    end
    object DbFORMAT_DOC: TUniDBEdit
      Tag = 9
      Left = 126
      Top = 87
      Width = 121
      Height = 21
      DataField = 'FORMAT_DOC'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 8
      Color = clWindow
    end
    object UniLabel4: TUniLabel
      Left = 19
      Top = 65
      Width = 14
      Height = 13
      Caption = #3586#3633#3657#3609
      ParentFont = False
      TabOrder = 9
    end
    object DbPr1: TUniDBEdit
      Tag = 9
      Left = 125
      Top = 60
      Width = 121
      Height = 21
      DataField = 'PR1NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 10
      Color = clWindow
    end
    object UniLabel5: TUniLabel
      Left = 275
      Top = 65
      Width = 38
      Height = 13
      Caption = #3586#3633#3657#3609#3585#3621#3634#3591
      ParentFont = False
      TabOrder = 11
    end
    object DbPr2: TUniDBEdit
      Tag = 9
      Left = 382
      Top = 60
      Width = 120
      Height = 21
      DataField = 'PR2NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 12
      Color = clWindow
    end
    object UniLabel6: TUniLabel
      Left = 18
      Top = 148
      Width = 25
      Height = 13
      Caption = #3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 13
    end
    object UniLabel10: TUniLabel
      Left = 152
      Top = 148
      Width = 6
      Height = 13
      Caption = '1'
      ParentFont = False
      TabOrder = 14
    end
    object UniLabel11: TUniLabel
      Left = 203
      Top = 148
      Width = 6
      Height = 13
      Caption = '2'
      ParentFont = False
      TabOrder = 15
    end
    object UniLabel12: TUniLabel
      Left = 255
      Top = 148
      Width = 6
      Height = 13
      Caption = '3'
      ParentFont = False
      TabOrder = 16
    end
    object UniLabel13: TUniLabel
      Left = 310
      Top = 148
      Width = 6
      Height = 13
      Caption = '4'
      ParentFont = False
      TabOrder = 17
    end
    object UniLabel14: TUniLabel
      Left = 365
      Top = 148
      Width = 6
      Height = 13
      Caption = '5'
      ParentFont = False
      TabOrder = 18
    end
    object UniLabel15: TUniLabel
      Left = 422
      Top = 148
      Width = 6
      Height = 13
      Caption = '6'
      ParentFont = False
      TabOrder = 19
    end
    object UniLabel16: TUniLabel
      Left = 472
      Top = 148
      Width = 6
      Height = 13
      Caption = '7'
      ParentFont = False
      TabOrder = 20
    end
    object UniLabel17: TUniLabel
      Left = 528
      Top = 148
      Width = 6
      Height = 13
      Caption = '8'
      ParentFont = False
      TabOrder = 21
    end
    object UniLabel18: TUniLabel
      Left = 582
      Top = 148
      Width = 6
      Height = 13
      Caption = '9'
      ParentFont = False
      TabOrder = 22
    end
    object UniLabel19: TUniLabel
      Left = 637
      Top = 148
      Width = 12
      Height = 13
      Caption = '10'
      ParentFont = False
      TabOrder = 23
    end
    object UniLabel20: TUniLabel
      Left = 695
      Top = 148
      Width = 12
      Height = 13
      Caption = '11'
      ParentFont = False
      TabOrder = 24
    end
    object UniLabel21: TUniLabel
      Left = 750
      Top = 148
      Width = 12
      Height = 13
      Caption = '12'
      ParentFont = False
      TabOrder = 25
    end
    object DbN01: TUniDBEdit
      Tag = 9
      Left = 125
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N01NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 26
      Color = clWindow
    end
    object DbN02: TUniDBEdit
      Tag = 9
      Left = 180
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N02NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 27
      Color = clWindow
    end
    object DbN03: TUniDBEdit
      Tag = 9
      Left = 235
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N03NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 28
      Color = clWindow
    end
    object DbN04: TUniDBEdit
      Tag = 9
      Left = 291
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N04NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 29
      Color = clWindow
    end
    object DbN05: TUniDBEdit
      Tag = 9
      Left = 347
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N05NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 30
      Color = clWindow
    end
    object DbN06: TUniDBEdit
      Tag = 9
      Left = 403
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N06NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 31
      Color = clWindow
    end
    object DbN07: TUniDBEdit
      Tag = 9
      Left = 458
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N07NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 32
      Color = clWindow
    end
    object DbN08: TUniDBEdit
      Tag = 9
      Left = 514
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N08NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 33
      Color = clWindow
    end
    object DbN09: TUniDBEdit
      Tag = 9
      Left = 569
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N09NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 34
      Color = clWindow
    end
    object DbN10: TUniDBEdit
      Tag = 9
      Left = 625
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N10NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 35
      Color = clWindow
    end
    object DbN11: TUniDBEdit
      Tag = 9
      Left = 681
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N11NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 36
      Color = clWindow
    end
    object DbN12: TUniDBEdit
      Tag = 9
      Left = 737
      Top = 167
      Width = 55
      Height = 21
      DataField = 'N12NB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 37
      Color = clWindow
    end
    object UniLabel7: TUniLabel
      Left = 528
      Top = 65
      Width = 30
      Height = 13
      Caption = #3626#3606#3634#3609#3632
      ParentFont = False
      TabOrder = 38
    end
    object CmbSTS: TUniDBLookupComboBox
      Tag = 9
      Left = 626
      Top = 60
      Width = 121
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'STSNB1'
      DataSource = dsgrid
      ParentFont = False
      TabOrder = 39
    end
  end
  inherited pnFooter: TUniPanel
    Top = 293
    Width = 879
    TabOrder = 2
    ExplicitTop = 293
    ExplicitWidth = 879
    inherited imgBotton: TUniImage
      Width = 877
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
      ExplicitWidth = 877
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 797
      ExplicitLeft = 797
    end
    inherited btnConfirm: TUniButton
      Left = 716
      ExplicitLeft = 716
    end
  end
  inherited pnHeader: TUniPanel
    Width = 879
    Height = 49
    TabOrder = 0
    ExplicitWidth = 879
    ExplicitHeight = 49
    object LbCreditLineDate: TUniLabel
      Left = 19
      Top = 12
      Width = 7
      Height = 13
      Caption = #3611#3637
      ParentFont = False
      TabOrder = 2
    end
    object DbYar: TUniDBEdit
      Tag = 9
      Left = 126
      Top = 12
      Width = 121
      Height = 21
      DataField = 'YARNB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 0
      Color = clWindow
    end
    object UniLabel8: TUniLabel
      Left = 275
      Top = 12
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 3
    end
    object DbCom: TUniDBEdit
      Tag = 9
      Left = 382
      Top = 12
      Width = 121
      Height = 21
      DataField = 'CMPNB1'
      DataSource = dsgrid
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 4
      Color = clWindow
    end
    object UniLabel9: TUniLabel
      Left = 528
      Top = 12
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 5
    end
    object DbBrn: TUniDBEdit
      Tag = 9
      Left = 626
      Top = 12
      Width = 121
      Height = 21
      DataField = 'BRNNB1'
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
  object dsgrid: TDataSource [3]
    Left = 332
    Top = 128
  end
end
