inherited frmAsSetupAccOnBookGrid: TfrmAsSetupAccOnBookGrid
  Caption = #3588#3657#3609#3627#3634'-'#3612#3633#3591#3621#3591#3610#3633#3597#3594#3637#3586#3629#3591#3611#3619#3632#3648#3616#3607#3626#3617#3640#3604
  ClientHeight = 502
  ClientWidth = 930
  ExplicitWidth = 938
  ExplicitHeight = 536
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 930
    Height = 412
    ExplicitTop = 49
    ExplicitWidth = 930
    ExplicitHeight = 412
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 930
      Height = 412
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3648#3629#3585#3626#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 103
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Title.Font.Charset = THAI_CHARSET
          Width = 228
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3641#3611#3649#3610#3610
          Width = 118
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 248
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Title.Font.Charset = THAI_CHARSET
          Width = 175
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Font.Charset = THAI_CHARSET
          Width = -1
          Visible = False
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Font.Charset = THAI_CHARSET
          Width = -1
          Visible = False
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
    Width = 930
    Height = 49
    ExplicitWidth = 997
    ExplicitHeight = 49
    inherited lbSearch: TUniLabel
      Left = 8
      Top = 97
      Visible = False
      ExplicitLeft = 8
      ExplicitTop = 97
    end
    inherited edSearch: TUniEdit
      Left = 81
      Top = 92
      Width = 652
      Visible = False
      Anchors = [akLeft, akTop]
      ExplicitLeft = 81
      ExplicitTop = 92
      ExplicitWidth = 652
    end
    inherited btnSearch: TUniButton
      Left = 751
      Top = 90
      Visible = False
      Anchors = [akLeft, akTop]
      ExplicitLeft = 751
      ExplicitTop = 90
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
    object UniLabel10: TUniLabel
      Left = 290
      Top = 16
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 5
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 81
      Top = 16
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 6
    end
    object UniDBLookupComboBox4: TUniDBLookupComboBox
      Tag = 9
      Left = 341
      Top = 16
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel11: TUniLabel
      Left = 20
      Top = 16
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 8
    end
    object UniLabel1: TUniLabel
      Left = 546
      Top = 16
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 9
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 597
      Top = 16
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 10
    end
  end
  inherited pnFooter: TUniPanel
    Top = 461
    Width = 930
    ExplicitTop = 461
    ExplicitWidth = 930
    DesignSize = (
      930
      41)
    inherited btnDelete: TUniButton
      Left = 846
      ExplicitLeft = 846
    end
    inherited btnEdit: TUniButton
      Left = 765
      OnClick = btnAddClick
      ExplicitLeft = 765
    end
    inherited btnAdd: TUniButton
      Left = 684
      OnClick = btnAddClick
      ExplicitLeft = 684
    end
    inherited BtnView: TUniButton
      Left = 603
      TabOrder = 5
      OnClick = btnAddClick
      ExplicitLeft = 603
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
