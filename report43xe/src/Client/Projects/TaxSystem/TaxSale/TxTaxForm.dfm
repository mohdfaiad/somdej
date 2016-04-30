inherited frmTxTaxGrid: TfrmTxTaxGrid
  Caption = #3588#3657#3609#3627#3634'-'#3651#3610#3626#3656#3591#3586#3629#3591'/'#3651#3610#3649#3592#3657#3591#3627#3609#3637#3657'->'#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637' ('#3616#3634#3625#3637#3595#3639#3657#3629')'
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
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3621#3633#3610#3619#3634#3618#3585#3634#3619
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
          Title.Caption = #3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 142
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 134
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 106
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 70
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3616#3634#3625#3637
          Width = 115
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3623#3617
          Width = 110
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
      Width = 92
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3621#3633#3610#3619#3634#3618#3585#3634#3619
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
