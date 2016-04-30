inherited frmPsRcvByPoGrid: TfrmPsRcvByPoGrid
  Caption = #3588#3657#3634#3627#3634'-'#3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634#3605#3634#3617#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
  ClientHeight = 578
  ClientWidth = 922
  ExplicitWidth = 930
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 129
    Width = 922
    Height = 408
    ExplicitTop = 129
    ExplicitWidth = 922
    ExplicitHeight = 408
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 922
      Height = 408
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
          Title.Font.Charset = THAI_CHARSET
          Width = 91
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
          Title.Font.Charset = THAI_CHARSET
          Width = 97
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 82
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 106
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3629#3636#3609#3623#3629#3618#3595#3660
          Title.Font.Charset = THAI_CHARSET
          Width = 66
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 90
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          Width = 94
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 93
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3609#3633#3604#3594#3635#3619#3632
          Width = 104
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Width = 64
          Visible = True
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 922
    Height = 129
    ExplicitWidth = 922
    ExplicitHeight = 129
    DesignSize = (
      922
      129)
    inherited lbSearch: TUniLabel
      Left = 21
      Top = 98
      Width = 101
      Caption = #3611#3619#3632#3648#3616#3607'/'#3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ExplicitLeft = 21
      ExplicitTop = 98
      ExplicitWidth = 101
    end
    inherited edSearch: TUniEdit
      Left = 132
      Top = 96
      Width = 251
      ExplicitLeft = 132
      ExplicitTop = 96
      ExplicitWidth = 251
    end
    inherited btnSearch: TUniButton
      Left = 719
      Top = 92
      ExplicitLeft = 719
      ExplicitTop = 92
    end
    object UniLabel2: TUniLabel
      Left = 410
      Top = 12
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 4
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 132
      Top = 12
      Width = 251
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
      Top = 12
      Width = 251
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
      Top = 12
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel1: TUniLabel
      Left = 21
      Top = 39
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 8
    end
    object UniDBLookupComboBox5: TUniDBLookupComboBox
      Tag = 9
      Left = 132
      Top = 39
      Width = 251
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 9
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 132
      Top = 66
      Width = 153
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 10
      ParentColor = False
      Color = clWhite
    end
    object UniLabel3: TUniLabel
      Left = 22
      Top = 65
      Width = 69
      Height = 13
      Caption = #3594#3656#3623#3591#3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 11
    end
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 457
      Top = 66
      Width = 153
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 12
      ParentColor = False
      Color = clWhite
    end
    object UniLabel4: TUniLabel
      Left = 409
      Top = 65
      Width = 11
      Height = 13
      Caption = #3606#3638#3591
      ParentFont = False
      TabOrder = 13
    end
  end
  inherited pnFooter: TUniPanel
    Top = 537
    Width = 922
    ExplicitTop = 537
    ExplicitWidth = 922
    DesignSize = (
      922
      41)
    inherited btnDelete: TUniButton
      Left = 838
      ExplicitLeft = 838
    end
    inherited btnEdit: TUniButton
      Left = 757
      OnClick = btnAddClick
      ExplicitLeft = 757
    end
    inherited btnAdd: TUniButton
      Left = 676
      OnClick = btnAddClick
      ExplicitLeft = 676
    end
    inherited BtnView: TUniButton
      Left = 595
      TabOrder = 5
      OnClick = btnAddClick
      ExplicitLeft = 595
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
