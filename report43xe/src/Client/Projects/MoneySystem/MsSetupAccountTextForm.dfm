inherited frmMsSetupAccountTextGrid: TfrmMsSetupAccountTextGrid
  Caption = #3588#3657#3609#3627#3634'-'#3619#3627#3633#3626#3610#3633#3597#3594#3637' '#3616#3634#3618#3651#3605#3657#3586#3657#3629#3588#3623#3634#3617
  ClientHeight = 542
  ClientWidth = 948
  ExplicitWidth = 956
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Width = 948
    Height = 460
    ExplicitWidth = 948
    ExplicitHeight = 460
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 948
      Height = 460
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3634#3618#3591#3634#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 89
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3627#3633#3623#3619#3634#3618#3591#3634#3609#3616#3634#3625#3634#3652#3607#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 126
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3627#3633#3623#3619#3634#3618#3591#3634#3609#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Width = 145
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3641#3611#3649#3610#3610#3619#3634#3618#3591#3634#3609
          Width = 113
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604' '#3619#3641#3611#3649#3610#3610#3619#3634#3618#3591#3634#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 145
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3629#3610#3585#3634#3619#3588#3635#3609#3623#3603
          Title.Font.Charset = THAI_CHARSET
          Width = 94
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3619#3627#3633#3626#3619#3634#3618#3591#3634#3609#3611#3619#3632#3585#3629#3610#3618#3656#3629#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 154
          Visible = True
          Alignment = taCenter
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
  end
  inherited pnFooter: TUniPanel
    Top = 501
    Width = 948
    ExplicitTop = 501
    ExplicitWidth = 948
    DesignSize = (
      948
      41)
    inherited btnAdd: TUniButton
      Left = 702
      ExplicitLeft = 702
    end
    inherited btnEdit: TUniButton
      Left = 783
      OnClick = btnAddClick
      ExplicitLeft = 783
    end
    inherited btnDelete: TUniButton
      Left = 864
      ExplicitLeft = 864
    end
    inherited BtnView: TUniButton
      Left = 621
      TabOrder = 5
      OnClick = btnAddClick
      ExplicitLeft = 621
    end
  end
  inherited pnHeader: TUniPanel
    Width = 948
    ExplicitWidth = 948
    inherited lbSearch: TUniLabel
      Top = 13
      ExplicitTop = 13
    end
    inherited edSearch: TUniEdit
      Left = 88
      Top = 8
      Width = 652
      Anchors = [akLeft, akTop]
      ExplicitLeft = 88
      ExplicitTop = 8
      ExplicitWidth = 652
    end
    inherited btnSearch: TUniButton
      Left = 758
      Top = 6
      Anchors = [akLeft, akTop]
      ExplicitLeft = 758
      ExplicitTop = 6
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
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
