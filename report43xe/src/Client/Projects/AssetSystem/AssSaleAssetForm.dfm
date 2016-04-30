inherited frmAssSaleAssetGrid: TfrmAssSaleAssetGrid
  Caption = #3588#3657#3609#3627#3634'-'#3585#3634#3619#3586#3634#3618#3607#3619#3633#3614#3618#3660#3626#3636#3609
  ClientHeight = 492
  ClientWidth = 927
  ExplicitTop = 8
  ExplicitWidth = 935
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 927
    Height = 402
    ExplicitTop = 49
    ExplicitWidth = 927
    ExplicitHeight = 402
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 927
      Height = 402
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3586#3634#3618#3607#3619#3633#3614#3618#3660#3626#3636#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 123
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 70
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 94
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3607#3619#3633#3614#3618#3660#3626#3636#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 97
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 106
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3656#3623#3618
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634#3586#3634#3618
          Width = 81
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3605#3657#3609#3607#3640#3609
          Width = 94
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Width = 95
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
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 927
    Height = 49
    ExplicitWidth = 927
    ExplicitHeight = 49
    inherited lbSearch: TUniLabel
      Left = 19
      Top = 18
      ExplicitLeft = 19
      ExplicitTop = 18
    end
    inherited edSearch: TUniEdit
      Left = 80
      Top = 13
      Width = 724
      Anchors = [akLeft, akTop]
      ExplicitLeft = 80
      ExplicitTop = 13
      ExplicitWidth = 724
    end
    inherited btnSearch: TUniButton
      Left = 826
      Top = 13
      Anchors = [akLeft, akTop]
      ExplicitLeft = 826
      ExplicitTop = 13
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
    Top = 451
    Width = 927
    ExplicitTop = 451
    ExplicitWidth = 927
    DesignSize = (
      927
      41)
    inherited btnDelete: TUniButton
      Left = 843
      ExplicitLeft = 843
    end
    inherited btnEdit: TUniButton
      Left = 762
      OnClick = btnAddClick
      ExplicitLeft = 762
    end
    inherited btnAdd: TUniButton
      Left = 681
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
