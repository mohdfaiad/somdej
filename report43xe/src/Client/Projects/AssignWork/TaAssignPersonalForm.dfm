inherited frmTaAssignPersonalGrid: TfrmTaAssignPersonalGrid
  Caption = 
    #3588#3657#3609#3627#3634' - '#3610#3633#3609#3607#3638#3585#3651#3610' Assign '#3619#3634#3618#3610#3640#3588#3588#3621' ('#3619#3632#3610#3640#3623#3633#3609') '#3629#3657#3634#3591#3651#3610' Assign Week '#3629#3629 +
    #3585
  ClientHeight = 542
  ClientWidth = 948
  ExplicitTop = 8
  ExplicitWidth = 956
  ExplicitHeight = 569
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 89
    Width = 948
    Height = 412
    ExplicitTop = 89
    ExplicitWidth = 948
    ExplicitHeight = 412
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 33
      Width = 948
      Height = 379
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' x-----x'
          Title.Font.Charset = THAI_CHARSET
          Width = 85
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = 'W1<br>1'
          Title.Font.Charset = THAI_CHARSET
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = 'W1<br>2'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = 'W1<br>3'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = 'W1<br>4'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W1<br>5'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W1<br>6'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W1<br>7'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W2<br>8'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W2<br>9'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W2<br>10'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W2<br>11'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W2<br>12'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W2<br>13'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W2<br>14'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W3<br>15'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W3<br>16'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W3<br>17'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W3<br>18'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W3<br>19'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W3<br>20'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W3<br>21'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>22'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>23'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>24'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>25'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>26'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>27'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>28'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>29'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>30'
          Width = 30
          Visible = True
          Expanded = False
        end
        item
          Title.Caption = 'W4<br>31'
          Width = 30
          Visible = True
          Expanded = False
        end>
    end
    object UniPanel1: TUniPanel
      Left = 0
      Top = 0
      Width = 948
      Height = 33
      BorderStyle = ubsSolid
      Caption = #3605#3634#3619#3634#3591#3623#3633#3609#3607#3637#3656' '#3651#3610' Assign Week '#3629#3629#3585
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      ParentFont = False
      Font.Color = clNavy
      Font.Height = -13
      Font.Style = [fsBold]
      TabOrder = 2
    end
  end
  inherited pnHeader: TUniPanel
    Width = 948
    Height = 89
    ExplicitWidth = 948
    ExplicitHeight = 89
    inherited lbSearch: TUniLabel
      Left = 365
      Top = 58
      Width = 53
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ExplicitLeft = 365
      ExplicitTop = 58
      ExplicitWidth = 53
    end
    inherited edSearch: TUniEdit
      Left = 454
      Top = 58
      Width = 69
      Anchors = [akLeft, akTop]
      ExplicitLeft = 454
      ExplicitTop = 58
      ExplicitWidth = 69
    end
    inherited btnSearch: TUniButton
      Left = 654
      Top = 55
      Anchors = [akLeft, akTop]
      ExplicitLeft = 654
      ExplicitTop = 55
    end
    object UniLabel3: TUniLabel
      Left = 23
      Top = 63
      Width = 3
      Height = 13
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object UniLabel2: TUniLabel
      Left = 365
      Top = 6
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 5
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 140
      Top = 6
      Width = 192
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 6
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Tag = 9
      Left = 454
      Top = 6
      Width = 181
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel8: TUniLabel
      Left = 13
      Top = 6
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 8
    end
    object UniLabel5: TUniLabel
      Left = 13
      Top = 32
      Width = 168
      Height = 13
      Caption = #3651#3610' Assign '#3619#3634#3618#3610#3640#3588#3588#3621'('#3619#3632#3610#3640#3623#3633#3609') '#3611#3619#3632#3592#3635#3611#3637
      ParentFont = False
      TabOrder = 9
    end
    object UniDBEdit1: TUniDBEdit
      Left = 187
      Top = 32
      Width = 145
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 10
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 541
      Top = 58
      Width = 11
      Height = 13
      Caption = #3606#3638#3591
      ParentFont = False
      TabOrder = 11
    end
    object UniDBEdit2: TUniDBEdit
      Left = 558
      Top = 58
      Width = 78
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 12
      Color = clWindow
    end
    object UniLabel4: TUniLabel
      Left = 13
      Top = 58
      Width = 138
      Height = 13
      Caption = #3651#3610' Assign Week '#3629#3629#3585' '#3611#3619#3632#3592#3635#3611#3637
      ParentFont = False
      TabOrder = 13
    end
    object UniDBEdit3: TUniDBEdit
      Left = 187
      Top = 58
      Width = 145
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 501
    Width = 948
    ExplicitTop = 501
    ExplicitWidth = 948
    DesignSize = (
      948
      41)
    inherited imgBotton: TUniImage
      Width = 948
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
      ExplicitWidth = 948
    end
    inherited btnAdd: TUniButton
      Left = 702
      ExplicitLeft = 702
    end
    inherited btnDelete: TUniButton
      Left = 864
      ExplicitLeft = 864
    end
    inherited btnEdit: TUniButton
      Left = 783
      OnClick = btnAddClick
      ExplicitLeft = 783
    end
    inherited BtnView: TUniButton
      Left = 621
      TabOrder = 5
      OnClick = btnAddClick
      ExplicitLeft = 621
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
