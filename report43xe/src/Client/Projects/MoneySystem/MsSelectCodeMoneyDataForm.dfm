inherited frmMsSelectCodeMoneyData: TfrmMsSelectCodeMoneyData
  Caption = #3648#3621#3639#3629#3585#3619#3627#3633#3626#3619#3634#3618#3591#3634#3609#3604#3657#3634#3609#3585#3634#3619#3648#3591#3636#3609
  ClientHeight = 430
  ClientWidth = 945
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitLeft = 3
  ExplicitWidth = 953
  ExplicitHeight = 464
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 64
    Width = 945
    Height = 325
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 70
    ExplicitWidth = 870
    ExplicitHeight = 621
    object PnDtlGrid1: TUniPanel
      Left = 1
      Top = 1
      Width = 943
      Height = 323
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 1
      ExplicitTop = 184
      ExplicitWidth = 977
      ExplicitHeight = 174
      object dbgDataList: TUniDBGrid
        Left = 1
        Top = 1
        Width = 941
        Height = 321
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        WebOptions.LoadMaskMsg = 'Please wait...'
        StripeRows = False
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentFont = False
        TabOrder = 1
        Columns = <
          item
            Title.Alignment = taCenter
            Title.Caption = #3588#3635#3609#3623#3603'<br>Y/N'
            Title.Font.Charset = THAI_CHARSET
            Width = 83
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3627#3609#3656#3623#3618#3591#3634#3609
            Width = 90
            Visible = True
            Color = clWhite
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3634#3618#3591#3634#3609'<br>'#3619#3627#3633#3626
            Title.Font.Charset = THAI_CHARSET
            Width = 99
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3634#3618#3591#3634#3609'<br>'#3594#3639#3656#3629
            Width = 101
            Visible = True
            Color = clWhite
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3641#3611#3649#3610#3610'<br>'#3619#3627#3633#3626
            Width = 115
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3641#3611#3649#3610#3610'<br>'#3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
            Width = 91
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3629#3610#3585#3634#3619#3588#3635#3609#3623#3603
            Width = 90
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3619#3627#3633#3626#3619#3634#3618#3591#3634#3609#3611#3619#3632#3585#3629#3610
            Width = 135
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3588#3635#3609#3623#3603#3588#3656#3634#3648#3604#3636#3617
            Width = 84
            Visible = True
            Expanded = False
          end>
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 389
    Width = 945
    TabOrder = 2
    ExplicitTop = 581
    ExplicitWidth = 979
    inherited btnConfirm: TUniButton
      Left = 782
      ExplicitLeft = 816
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 863
      ExplicitLeft = 897
    end
  end
  inherited pnHeader: TUniPanel
    Width = 945
    Height = 64
    TabOrder = 0
    ExplicitWidth = 978
    ExplicitHeight = 64
    object UniLabel10: TUniLabel
      Left = 345
      Top = 6
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 1
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 126
      Top = 6
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 2
    end
    object UniDBLookupComboBox4: TUniDBLookupComboBox
      Tag = 9
      Left = 452
      Top = 6
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel11: TUniLabel
      Left = 19
      Top = 6
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 4
    end
    object UniLabel1: TUniLabel
      Left = 345
      Top = 30
      Width = 25
      Height = 13
      Caption = #3627#3609#3656#3623#3618
      ParentFont = False
      TabOrder = 5
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 126
      Top = 30
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 6
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Tag = 9
      Left = 452
      Top = 30
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel2: TUniLabel
      Left = 19
      Top = 30
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 8
    end
  end
  object dsSt: TDataSource
    Left = 728
    Top = 16
  end
end
