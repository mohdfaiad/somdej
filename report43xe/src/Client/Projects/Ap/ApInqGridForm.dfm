inherited frmApInqGrid: TfrmApInqGrid
  Caption = #3626#3629#3610#3606#3634#3617' - '#3586#3657#3629#3617#3641#3621#3619#3632#3610#3610#3648#3592#3657#3634#3627#3609#3637#3657#3585#3634#3619#3588#3657#3634
  ClientHeight = 544
  ClientWidth = 927
  ExplicitWidth = 935
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 81
    Width = 927
    Height = 422
    ExplicitTop = 81
    ExplicitWidth = 927
    ExplicitHeight = 422
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 927
      Height = 422
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3652#3607#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 176
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Title.Font.Charset = THAI_CHARSET
          Width = 146
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3607#3637#3656#3629#3618#3641#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 174
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3650#3607#3619#3624#3633#3614#3607#3660
          Title.Font.Charset = THAI_CHARSET
          Width = 118
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607
          Title.Font.Charset = THAI_CHARSET
          Width = 111
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
          Width = 129
          Visible = True
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 927
    Height = 81
    ExplicitWidth = 927
    ExplicitHeight = 81
    inherited lbSearch: TUniLabel
      Left = 23
      Top = 48
      ExplicitLeft = 23
      ExplicitTop = 48
    end
    inherited edSearch: TUniEdit
      Left = 132
      Top = 38
      Width = 543
      Anchors = [akLeft, akTop]
      ExplicitLeft = 132
      ExplicitTop = 38
      ExplicitWidth = 543
    end
    inherited btnSearch: TUniButton
      Left = 681
      Top = 36
      Anchors = [akLeft, akTop]
      ExplicitLeft = 681
      ExplicitTop = 36
    end
    object UniLabel2: TUniLabel
      Left = 372
      Top = 16
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 4
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 132
      Top = 11
      Width = 214
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 5
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Tag = 9
      Left = 457
      Top = 11
      Width = 218
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 6
    end
    object UniLabel8: TUniLabel
      Left = 21
      Top = 17
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 7
    end
  end
  inherited pnFooter: TUniPanel
    Top = 503
    Width = 927
    ExplicitTop = 503
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
      Visible = False
      OnClick = btnAddClick
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
