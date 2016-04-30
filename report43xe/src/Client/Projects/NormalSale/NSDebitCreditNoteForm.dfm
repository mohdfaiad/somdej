inherited frmNsDebitCreditNoteGrid: TfrmNsDebitCreditNoteGrid
  Caption = #3588#3657#3609#3627#3634'-'#3651#3610#3648#3588#3610#3636#3605#3650#3609#3658#3605'/'#3651#3610#3648#3588#3619#3604#3636#3605#3650#3609#3658#3605
  ClientHeight = 542
  ClientWidth = 948
  ExplicitWidth = 956
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 120
    Width = 948
    Height = 381
    ExplicitTop = 120
    ExplicitWidth = 948
    ExplicitHeight = 381
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 948
      Height = 381
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607#3648#3629#3585#3626#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 81
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
          Width = 78
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 45
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629'-'#3626#3585#3640#3621#3621#3641#3585#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 104
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 78
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 62
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Width = 44
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Width = 64
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 42
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 81
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3585#3634#3619
          Width = 64
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3636#3617#3634#3603
          Width = 64
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609'<br>'#3648#3614#3636#3656#3617'/'#3621#3604#3627#3609#3637#3657
          Width = 64
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
    Width = 948
    Height = 120
    ExplicitWidth = 927
    ExplicitHeight = 120
    inherited lbSearch: TUniLabel
      Left = 23
      Top = 93
      ExplicitLeft = 23
      ExplicitTop = 93
    end
    inherited edSearch: TUniEdit
      Left = 96
      Top = 88
      Width = 652
      Anchors = [akLeft, akTop]
      ExplicitLeft = 96
      ExplicitTop = 88
      ExplicitWidth = 652
    end
    inherited btnSearch: TUniButton
      Left = 766
      Top = 89
      Anchors = [akLeft, akTop]
      ExplicitLeft = 766
      ExplicitTop = 89
    end
    object UniLabel2: TUniLabel
      Left = 278
      Top = 16
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 4
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 96
      Top = 12
      Width = 157
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
      Left = 316
      Top = 12
      Width = 184
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 6
    end
    object UniLabel8: TUniLabel
      Left = 23
      Top = 16
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel3: TUniLabel
      Left = 23
      Top = 63
      Width = 3
      Height = 13
      ParentFont = False
      Transparent = False
      TabOrder = 8
    end
    object UniLabel1: TUniLabel
      Left = 524
      Top = 16
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 9
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 564
      Top = 12
      Width = 184
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 10
    end
    object UniLabel4: TUniLabel
      Left = 23
      Top = 40
      Width = 52
      Height = 13
      Caption = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 11
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 96
      Top = 37
      Width = 138
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
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 316
      Top = 39
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 13
      ParentColor = False
      Color = clWhite
    end
    object UniLabel5: TUniLabel
      Left = 279
      Top = 42
      Width = 11
      Height = 13
      Caption = #3606#3638#3591
      ParentFont = False
      TabOrder = 14
    end
    object UniLabel6: TUniLabel
      Left = 24
      Top = 63
      Width = 61
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 15
    end
    object UniDBEdit1: TUniDBEdit
      Left = 96
      Top = 63
      Width = 183
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 16
      Color = clWindow
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
