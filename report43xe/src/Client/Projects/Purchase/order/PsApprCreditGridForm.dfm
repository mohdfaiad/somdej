inherited frmPsApprCreditGrid: TfrmPsApprCreditGrid
  Caption = #3610#3633#3609#3607#3638#3585#3629#3609#3640#3617#3633#3605#3636#3623#3591#3648#3591#3636#3609' '#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
  ClientHeight = 531
  ClientWidth = 928
  ExplicitWidth = 936
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 129
    Width = 928
    Height = 361
    ExplicitTop = 129
    ExplicitWidth = 928
    ExplicitHeight = 361
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 928
      Height = 318
      Align = alClient
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3649#3612#3609#3585
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
          Title.Caption = #3629#3636#3609#3623#3629#3618#3595#3660
          Title.Font.Charset = THAI_CHARSET
          Width = 82
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 106
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
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
          Title.Caption = #3629#3609#3640#3617#3633#3605#3636
          Width = 64
          Visible = True
          Expanded = False
        end>
    end
    object PnsumAmt: TUniPanel
      Left = 0
      Top = 318
      Width = 928
      Height = 43
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      DesignSize = (
        928
        43)
      object UniLabel5: TUniLabel
        Left = 643
        Top = 13
        Width = 64
        Height = 13
        Caption = #3618#3629#3604#3648#3591#3636#3609#3629#3609#3640#3617#3633#3605#3636
        Anchors = [akRight, akBottom]
        ParentFont = False
        Transparent = False
        TabOrder = 1
      end
      object UniEdit3: TUniEdit
        Left = 752
        Top = 13
        Width = 156
        Height = 21
        Hint = #3588#3657#3609#3627#3634
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        Anchors = [akRight, akBottom]
        TabOrder = 2
        Color = clWindow
      end
    end
  end
  inherited pnHeader: TUniPanel
    Width = 928
    Height = 129
    ExplicitTop = -6
    ExplicitWidth = 922
    ExplicitHeight = 129
    inherited lbSearch: TUniLabel
      Left = 21
      Top = 69
      Width = 49
      Caption = #3594#3639#3656#3629#3612#3641#3657#3629#3609#3640#3617#3633#3605#3636
      ExplicitLeft = 21
      ExplicitTop = 69
      ExplicitWidth = 49
    end
    inherited edSearch: TUniEdit
      Left = 132
      Top = 67
      Width = 214
      Anchors = [akLeft, akTop]
      ExplicitLeft = 132
      ExplicitTop = 67
      ExplicitWidth = 214
    end
    inherited btnSearch: TUniButton
      Left = 724
      Top = 98
      Anchors = [akLeft, akTop]
      ExplicitLeft = 724
      ExplicitTop = 98
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
    object DbRegStartDate: TUniDateTimePicker
      Left = 132
      Top = 39
      Width = 153
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
    object UniLabel3: TUniLabel
      Left = 22
      Top = 38
      Width = 48
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656#3629#3609#3640#3617#3633#3605#3636
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel1: TUniLabel
      Left = 397
      Top = 67
      Width = 54
      Height = 13
      Caption = #3623#3591#3648#3591#3636#3609#3629#3617#3640#3617#3633#3605#3636
      ParentFont = False
      Transparent = False
      TabOrder = 10
    end
    object UniEdit1: TUniEdit
      Left = 462
      Top = 67
      Width = 218
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 11
      Color = clWindow
    end
    object UniLabel4: TUniLabel
      Left = 21
      Top = 105
      Width = 88
      Height = 13
      Caption = #3588#3657#3609#3627#3634#3619#3627#3633#3626#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
      ParentFont = False
      Transparent = False
      TabOrder = 12
    end
    object UniEdit2: TUniEdit
      Left = 132
      Top = 102
      Width = 218
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 13
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 490
    Width = 928
    ExplicitTop = 490
    ExplicitWidth = 928
    DesignSize = (
      928
      41)
    inherited btnDelete: TUniButton
      Left = 844
      Caption = #3629#3609#3640#3617#3633#3605#3636
      ExplicitLeft = 844
    end
    inherited btnEdit: TUniButton
      Left = 763
      Visible = False
      OnClick = btnAddClick
      ExplicitLeft = 763
    end
    inherited btnAdd: TUniButton
      Left = 682
      Visible = False
      OnClick = btnAddClick
      ExplicitLeft = 682
    end
    inherited BtnView: TUniButton
      Left = 601
      Visible = False
      TabOrder = 5
      OnClick = btnAddClick
      ExplicitLeft = 601
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
