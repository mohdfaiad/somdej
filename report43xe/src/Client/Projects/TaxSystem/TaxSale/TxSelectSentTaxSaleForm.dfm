inherited frmTxSelectSentTaxSaleGrid: TfrmTxSelectSentTaxSaleGrid
  Caption = #3588#3657#3609#3627#3634'-'#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637' '#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3609#3635#3626#3656#3591#3626#3619#3619#3614#3585#3619' ('#3616#3634#3625#3637#3595#3639#3657#3629')'
  ClientHeight = 492
  ClientWidth = 927
  ExplicitTop = 8
  ExplicitWidth = 935
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 73
    Width = 927
    Height = 378
    ExplicitTop = 73
    ExplicitWidth = 927
    ExplicitHeight = 378
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 927
      Height = 339
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 90
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 93
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 115
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3585#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 152
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' ('#3619#3634#3588#3634#3616#3634#3625#3637')'
          Title.Font.Charset = THAI_CHARSET
          Width = 144
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609' ('#3616#3634#3625#3637')'
          Width = 118
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634
          Width = 110
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3632#3610#3640
          Width = 64
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Expanded = False
        end>
    end
    object UniPanel2: TUniPanel
      Left = 0
      Top = 339
      Width = 927
      Height = 39
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      DesignSize = (
        927
        39)
      object UniLabel12: TUniLabel
        Left = 549
        Top = 6
        Width = 63
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 1
      end
      object UniDBEdit4: TUniDBEdit
        Left = 631
        Top = 6
        Width = 98
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 2
        Color = clWindow
      end
      object UniDBEdit6: TUniDBEdit
        Left = 735
        Top = 6
        Width = 102
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Anchors = [akTop, akRight]
        ParentFont = False
        TabOrder = 3
        Color = clWindow
      end
    end
  end
  inherited pnHeader: TUniPanel
    Width = 927
    Height = 73
    ExplicitWidth = 927
    ExplicitHeight = 73
    inherited lbSearch: TUniLabel
      Left = 19
      Top = 46
      ExplicitLeft = 19
      ExplicitTop = 46
    end
    inherited edSearch: TUniEdit
      Left = 119
      Top = 41
      Width = 685
      Anchors = [akLeft, akTop]
      ExplicitLeft = 119
      ExplicitTop = 41
      ExplicitWidth = 685
    end
    inherited btnSearch: TUniButton
      Left = 826
      Top = 37
      Anchors = [akLeft, akTop]
      ExplicitLeft = 826
      ExplicitTop = 37
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
    object UniLabel13: TUniLabel
      Left = 14
      Top = 16
      Width = 89
      Height = 13
      Caption = #3618#3639#3656#3609#3616#3634#3625#3637' '#3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 5
    end
    object UniLabel1: TUniLabel
      Left = 294
      Top = 13
      Width = 66
      Height = 13
      Caption = #3611#3619#3632#3648#3616#3607#3585#3634#3619#3618#3639#3656#3609
      ParentFont = False
      TabOrder = 6
    end
    object UniDBEdit1: TUniDBEdit
      Left = 119
      Top = 13
      Width = 153
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 7
      Color = clWindow
    end
    object CmbType: TUniComboBox
      Left = 384
      Top = 13
      Width = 145
      Height = 21
      Style = csDropDown
      MaxLength = 0
      Text = #3618#3639#3656#3609#3619#3629#3610#3611#3585#3605#3636
      Items.Strings = (
        #3618#3639#3656#3609#3619#3629#3610#3611#3585#3605#3636
        #3618#3639#3656#3609#3618#3657#3629#3609#3627#3621#3633#3591)
      ItemIndex = 0
      TabOrder = 8
      RemoteQuery = False
    end
  end
  inherited pnFooter: TUniPanel
    Top = 451
    Width = 927
    ExplicitTop = 451
    ExplicitWidth = 927
    DesignSize = (
      927
      41)
    inherited btnDelete: TUniButton
      Left = 843
      Visible = False
      ExplicitLeft = 843
    end
    inherited btnEdit: TUniButton
      Left = 762
      Visible = False
      OnClick = btnAddClick
      ExplicitLeft = 762
    end
    inherited btnAdd: TUniButton
      Left = 681
      Caption = #3618#3639#3609#3618#3633#3609
      ExplicitLeft = 681
    end
    inherited BtnView: TUniButton
      Left = 600
      TabOrder = 5
      OnClick = btnAddClick
      ExplicitLeft = 600
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
