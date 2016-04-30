inherited frmAsSetupOrgGrid: TfrmAsSetupOrgGrid
  Caption = #3588#3657#3609#3627#3634'-'#3649#3612#3609#3612#3633#3591#3629#3591#3588#3660#3585#3619
  ClientHeight = 542
  ClientWidth = 948
  ExplicitTop = -150
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
          Title.Caption = #3610#3619#3636#3625#3633#3607'<br>'#3619#3627#3633#3626
          Title.Font.Charset = THAI_CHARSET
          Width = 73
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3610#3619#3636#3625#3633#3607'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634'<br>'#3619#3627#3633#3626
          Width = 82
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 81
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3649#3612#3609#3585'<br>'#3619#3627#3633#3626
          Title.Font.Charset = THAI_CHARSET
          Width = 78
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3649#3612#3609#3585'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 78
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3656#3623#3618#3591#3634#3609'<br>'#3619#3627#3633#3626
          Title.Font.Charset = THAI_CHARSET
          Width = 79
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3656#3623#3618#3591#3634#3609'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 82
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3616#3634#3625#3634#3652#3607#3618
          Width = 113
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Width = 134
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
        end>
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
  inherited pnFooter: TUniPanel
    Top = 501
    Width = 948
    ExplicitTop = 501
    ExplicitWidth = 948
    DesignSize = (
      948
      41)
    inherited btnDelete: TUniButton
      Left = 864
      ExplicitLeft = 864
    end
    inherited btnEdit: TUniButton
      Left = 783
      OnClick = btnAddClick
      ExplicitLeft = 783
    end
    inherited btnAdd: TUniButton
      Left = 702
      OnClick = btnAddClick
      ExplicitLeft = 702
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
