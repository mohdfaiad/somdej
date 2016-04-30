inherited frmSaAnalystInqGrid: TfrmSaAnalystInqGrid
  Caption = #3626#3629#3610#3606#3634#3617' - '#3586#3657#3629#3617#3641#3621#3619#3632#3610#3610#3623#3636#3648#3588#3619#3634#3632#3627#3660#3586#3634#3618
  ClientHeight = 544
  ClientWidth = 927
  ExplicitWidth = 935
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 129
    Width = 927
    Height = 374
    ExplicitTop = 73
    ExplicitWidth = 927
    ExplicitHeight = 430
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 927
      Height = 374
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
    Height = 129
    ExplicitWidth = 927
    ExplicitHeight = 129
    inherited lbSearch: TUniLabel
      Left = 372
      Top = 96
      Width = 25
      Caption = #3648#3604#3639#3629#3609
      ExplicitLeft = 372
      ExplicitTop = 96
      ExplicitWidth = 25
    end
    inherited edSearch: TUniEdit
      Left = 457
      Top = 88
      Width = 117
      Anchors = [akLeft, akTop]
      ExplicitLeft = 457
      ExplicitTop = 88
      ExplicitWidth = 117
    end
    inherited btnSearch: TUniButton
      Left = 600
      Top = 85
      Anchors = [akLeft, akTop]
      ExplicitLeft = 600
      ExplicitTop = 85
    end
    object UniLabel1: TUniLabel
      Left = 372
      Top = 68
      Width = 7
      Height = 13
      Caption = #3611#3637
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object UniEdit1: TUniEdit
      Left = 457
      Top = 61
      Width = 117
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 372
      Top = 16
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 6
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
      TabOrder = 7
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
      TabOrder = 8
    end
    object UniLabel8: TUniLabel
      Left = 21
      Top = 17
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel3: TUniLabel
      Left = 21
      Top = 41
      Width = 84
      Height = 13
      Caption = #3619#3627#3633#3626#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
      ParentFont = False
      TabOrder = 10
    end
    object UniDBLookupComboBox5: TUniDBLookupComboBox
      Tag = 9
      Left = 132
      Top = 36
      Width = 214
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 11
    end
    object UniLabel4: TUniLabel
      Left = 372
      Top = 41
      Width = 45
      Height = 13
      Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      ParentFont = False
      TabOrder = 12
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 457
      Top = 36
      Width = 218
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 13
    end
    object UniEdit2: TUniEdit
      Left = 132
      Top = 61
      Width = 214
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
    end
    object UniLabel5: TUniLabel
      Left = 21
      Top = 68
      Width = 66
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
      ParentFont = False
      Transparent = False
      TabOrder = 15
    end
    object UniEdit3: TUniEdit
      Left = 132
      Top = 85
      Width = 214
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 16
      Color = clWindow
    end
    object UniLabel6: TUniLabel
      Left = 20
      Top = 88
      Width = 71
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
      ParentFont = False
      Transparent = False
      TabOrder = 17
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
