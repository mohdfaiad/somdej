inherited frmAsSetupAccGrid: TfrmAsSetupAccGrid
  Caption = #3588#3657#3609#3627#3634'-'#3619#3627#3633#3626#3612#3633#3591#3610#3633#3597#3594#3637
  ClientHeight = 542
  ClientWidth = 997
  ExplicitWidth = 1005
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Width = 997
    Height = 460
    ExplicitWidth = 997
    ExplicitHeight = 460
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 997
      Height = 460
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607'<br>'#3619#3627#3633#3626
          Title.Font.Charset = THAI_CHARSET
          Width = 61
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 81
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3618#3656#3629#3618'<br>'#3619#3627#3633#3626
          Width = 61
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3618#3656#3629#3618'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 84
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3609#3636#3604'<br>'#3619#3627#3633#3626
          Title.Font.Charset = THAI_CHARSET
          Width = 57
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3609#3636#3604'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 73
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3621#3635#3604#3633#3610'<br>'#3619#3627#3633#3626
          Title.Font.Charset = THAI_CHARSET
          Width = 63
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3621#3635#3604#3633#3610'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 82
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3616#3634#3625#3634#3652#3607#3618
          Width = 107
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Width = 115
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3610#3633#3597#3594#3637#3592#3619#3636#3591
          Width = 64
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607'<br>'#3591#3610#3604#3640#3621
          Width = 75
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607'<br>'#3591#3610#3585#3635#3652#3619#3586#3634#3604#3607#3640#3609
          Width = 81
          Visible = True
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 997
    ExplicitWidth = 997
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
    Width = 997
    ExplicitTop = 501
    ExplicitWidth = 997
    DesignSize = (
      997
      41)
    inherited btnDelete: TUniButton
      Left = 913
      ExplicitLeft = 913
    end
    inherited btnEdit: TUniButton
      Left = 832
      OnClick = btnAddClick
      ExplicitLeft = 832
    end
    inherited btnAdd: TUniButton
      Left = 751
      OnClick = btnAddClick
      ExplicitLeft = 751
    end
    inherited BtnView: TUniButton
      Left = 670
      TabOrder = 5
      OnClick = btnAddClick
      ExplicitLeft = 670
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
