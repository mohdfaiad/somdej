inherited frmTxChangeDescInTaxBuyGrid: TfrmTxChangeDescInTaxBuyGrid
  Caption = #3588#3657#3609#3627#3634'-'#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637#3648#3614#3639#3656#3629#3649#3585#3657#3652#3586#3588#3635#3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619' ('#3616#3634#3625#3637#3586#3634#3618')'
  ClientHeight = 492
  ClientWidth = 927
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
          Title.Caption = #3623#3633#3609#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 90
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 93
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3621#3641#3585#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 100
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3585#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 161
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634#3626#3636#3609#3588#3657#3634
          Width = 64
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3616#3634#3625#3637#3586#3634#3618#3586#3629#3588#3639#3609#3652#3604#3657' ('#3619#3634#3588#3634#3626#3636#3609#3588#3657#3634')'
          Title.Font.Charset = THAI_CHARSET
          Width = 144
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3616#3634#3625#3637#3586#3634#3618#3586#3629#3588#3639#3609#3652#3604#3657' ('#3616#3634#3625#3637')'
          Width = 118
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634
          Width = 109
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
      Left = 19
      Top = 74
      ExplicitLeft = 19
      ExplicitTop = 74
    end
    inherited edSearch: TUniEdit
      Left = 119
      Top = 69
      Width = 685
      Anchors = [akLeft, akTop]
      ExplicitLeft = 119
      ExplicitTop = 69
      ExplicitWidth = 685
    end
    inherited btnSearch: TUniButton
      Left = 826
      Top = 69
      Anchors = [akLeft, akTop]
      ExplicitLeft = 826
      ExplicitTop = 69
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
    object UniLabel13: TUniLabel
      Left = 14
      Top = 16
      Width = 69
      Height = 13
      Caption = #3594#3656#3623#3591#3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 5
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 119
      Top = 13
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 6
      ParentColor = False
      Color = clWhite
    end
    object UniLabel1: TUniLabel
      Left = 278
      Top = 16
      Width = 31
      Height = 13
      Caption = #3606#3638#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 7
    end
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 331
      Top = 13
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 8
      ParentColor = False
      Color = clWhite
    end
    object UniLabel6: TUniLabel
      Left = 13
      Top = 44
      Width = 84
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
      ParentFont = False
      TabOrder = 9
    end
    object UniDBEdit1: TUniDBEdit
      Left = 119
      Top = 41
      Width = 213
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 10
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 349
      Top = 41
      Width = 65
      Height = 13
      Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3652#3604#3657
      ParentFont = False
      TabOrder = 11
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 436
      Top = 41
      Width = 192
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 12
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
      OnClick = btnAddClick
      ExplicitLeft = 762
    end
    inherited btnAdd: TUniButton
      Left = 681
      Visible = False
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
