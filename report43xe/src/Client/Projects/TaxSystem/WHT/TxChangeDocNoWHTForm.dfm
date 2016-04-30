inherited frmTxChangeDocNoWHTGrid: TfrmTxChangeDocNoWHTGrid
  Caption = #3588#3657#3609#3627#3634'-'#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637' '#3607#3637#3656#3605#3657#3629#3591#3585#3634#3619#3609#3635#3626#3656#3591#3626#3619#3619#3614#3585#3619' ('#3616#3634#3625#3637#3586#3634#3618')'
  ClientHeight = 492
  ClientWidth = 927
  ExplicitTop = 8
  ExplicitWidth = 935
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 105
    Width = 927
    Height = 346
    ExplicitTop = 105
    ExplicitWidth = 927
    ExplicitHeight = 346
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 927
      Height = 346
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3635#3588#3633#3597
          Title.Font.Charset = THAI_CHARSET
          Width = 88
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3626#3635#3588#3633#3597
          Title.Font.Charset = THAI_CHARSET
          Width = 86
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3612#3641#3657#3592#3656#3634#3618#3648#3591#3636#3609#3652#3604#3657
          Title.Font.Charset = THAI_CHARSET
          Width = 77
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3609#3636#3604#3619#3634#3618#3652#3604#3657
          Width = 69
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3633#3591#3626#3639#3629#3619#3633#3610#3619#3629#3591' ('#3623#3633#3609#3607#3637#3656#3629#3629#3585')'
          Title.Font.Charset = THAI_CHARSET
          Width = 109
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3633#3591#3626#3639#3629#3619#3633#3610#3619#3629#3591' ('#3648#3621#3586#3607#3637#3656')'
          Width = 64
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3616#3634#3625#3637#3606#3641#3585#3627#3633#3585' '#3603' '#3607#3637#3656#3592#3656#3634#3618'<br>'#3617#3641#3621#3588#3656#3634#3585#3656#3629#3609#3627#3633#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 143
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3616#3634#3625#3637#3606#3641#3585#3627#3633#3585' '#3603' '#3607#3637#3656#3592#3656#3634#3618'<br>'#3616#3634#3625#3637
          Width = 111
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3616#3634#3625#3637#3606#3641#3585#3627#3633#3585' '#3603' '#3607#3637#3656#3592#3656#3634#3618'<br>%'
          Width = 101
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3632#3610#3640
          Width = 35
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
    Height = 105
    ExplicitWidth = 927
    ExplicitHeight = 105
    inherited lbSearch: TUniLabel
      Left = 14
      Top = 75
      Width = 101
      Caption = '% '#3606#3641#3585#3627#3633#3585#3616#3634#3625#3637' '#3603' '#3607#3637#3656#3592#3656#3634#3618
      ExplicitLeft = 14
      ExplicitTop = 75
      ExplicitWidth = 101
    end
    inherited edSearch: TUniEdit
      Left = 119
      Top = 123
      Width = 66
      Visible = False
      Anchors = [akLeft, akTop]
      ExplicitLeft = 119
      ExplicitTop = 123
      ExplicitWidth = 66
    end
    inherited btnSearch: TUniButton
      Left = 578
      Top = 74
      Anchors = [akLeft, akTop]
      ExplicitLeft = 578
      ExplicitTop = 74
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
      Left = 294
      Top = 12
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 5
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 119
      Top = 12
      Width = 155
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
      Left = 384
      Top = 12
      Width = 164
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel11: TUniLabel
      Left = 14
      Top = 12
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 8
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Tag = 9
      Left = 650
      Top = 12
      Width = 164
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel4: TUniLabel
      Left = 560
      Top = 12
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 10
    end
    object UniLabel13: TUniLabel
      Left = 14
      Top = 42
      Width = 69
      Height = 13
      Caption = #3594#3656#3623#3591#3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 11
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 119
      Top = 39
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
    object UniLabel1: TUniLabel
      Left = 294
      Top = 42
      Width = 31
      Height = 13
      Caption = #3606#3638#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 13
    end
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 384
      Top = 39
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 14
      ParentColor = False
      Color = clWhite
    end
    object UniRadioButton1: TUniRadioButton
      Left = 138
      Top = 75
      Width = 113
      Height = 17
      Checked = False
      Caption = '1% - 2%'
      TabOrder = 15
    end
    object UniRadioButton2: TUniRadioButton
      Left = 282
      Top = 75
      Width = 113
      Height = 17
      Checked = False
      Caption = '3% - 10%'
      TabOrder = 16
    end
    object UniRadioButton3: TUniRadioButton
      Left = 428
      Top = 75
      Width = 113
      Height = 17
      Checked = False
      Caption = #3607#3633#3657#3591#3627#3617#3604
      TabOrder = 17
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
      Caption = #3618#3639#3609#3618#3633#3609
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
