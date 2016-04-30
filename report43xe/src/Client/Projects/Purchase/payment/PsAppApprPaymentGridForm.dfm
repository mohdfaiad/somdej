inherited frmPsAppApprPaymentGrid: TfrmPsAppApprPaymentGrid
  Caption = #3588#3657#3609#3627#3634' - '#3651#3610#3586#3629#3629#3609#3640#3617#3633#3605#3636#3592#3656#3634#3618
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
    ExplicitTop = 129
    ExplicitWidth = 927
    ExplicitHeight = 374
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 927
      Height = 374
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3629#3609#3640#3617#3633#3605#3636
          Title.Font.Charset = THAI_CHARSET
          Width = 91
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 89
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3605#3633#3623#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 99
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3626#3633#3656#3591#3592#3656#3634#3618#3608#3609#3634#3588#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 112
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3609#3633#3604#3594#3635#3619#3632
          Title.Font.Charset = THAI_CHARSET
          Width = 66
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 90
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3627#3633#3585' '#3603' '#3607#3637#3656#3592#3656#3634#3618
          Width = 132
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3626#3640#3607#3608#3636
          Width = 97
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Width = 104
          Visible = True
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
    Height = 129
    ExplicitWidth = 927
    ExplicitHeight = 129
    inherited lbSearch: TUniLabel
      Left = 21
      Top = 99
      Width = 101
      Caption = #3611#3619#3632#3648#3616#3607'/'#3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ExplicitLeft = 21
      ExplicitTop = 99
      ExplicitWidth = 101
    end
    inherited edSearch: TUniEdit
      Left = 132
      Top = 94
      Width = 214
      Anchors = [akLeft, akTop]
      ExplicitLeft = 132
      ExplicitTop = 94
      ExplicitWidth = 214
    end
    inherited btnSearch: TUniButton
      Left = 724
      Top = 92
      Anchors = [akLeft, akTop]
      ExplicitLeft = 724
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
      Top = 12
      Width = 223
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
      Width = 214
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel3: TUniLabel
      Left = 22
      Top = 65
      Width = 69
      Height = 13
      Caption = #3594#3656#3623#3591#3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 10
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
      TabOrder = 11
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
      TabOrder = 12
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
      TabOrder = 13
      ParentColor = False
      Color = clWhite
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
      ExplicitLeft = 843
    end
    inherited btnEdit: TUniButton
      Left = 762
      OnClick = btnAddClick
      ExplicitLeft = 762
    end
    inherited btnAdd: TUniButton
      Left = 681
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
