inherited frmAssAmtLostGrid: TfrmAssAmtLostGrid
  Caption = #3588#3657#3609#3627#3634'-'#3618#3629#3604#3588#3656#3634#3648#3626#3639#3656#3629#3617#3626#3632#3626#3617#3588#3591#3588#3657#3634#3591
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
          Title.Caption = #3649#3612#3609#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 47
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3607#3619#3633#3614#3618#3660#3626#3636#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 70
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 94
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607
          Title.Font.Charset = THAI_CHARSET
          Width = 64
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 106
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3648#3619#3636#3656#3617#3588#3636#3604
          Width = 58
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3611#3637
          Width = 46
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 68
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3617#3641#3621#3588#3656#3634#3595#3634#3585
          Width = 63
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3588#3636#3604#3588#3656#3634#3648#3626#3639#3656#3629#3617#3585#3656#3629#3609#3648#3586#3657#3634#3619#3632#3610#3610'<br>'#3606#3638#3591#3623#3633#3609#3607#3637#3656
          Width = 95
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 62
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3585#3626#3634#3619#3648#3621#3586#3607#3637#3656
          Width = 70
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
          Width = 66
          Visible = True
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
