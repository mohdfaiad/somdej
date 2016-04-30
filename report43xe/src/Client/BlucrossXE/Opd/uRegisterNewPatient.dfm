inherited frmRegisterPatient: TfrmRegisterPatient
  Caption = 'frmRegisterPatient'
  ClientHeight = 529
  ClientWidth = 936
  ExplicitWidth = 944
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 153
    Width = 936
    Height = 335
    ExplicitTop = 153
    ExplicitWidth = 936
    ExplicitHeight = 335
    object dbgDataList: TUniDBGrid
      Left = 1
      Top = 1
      Width = 934
      Height = 291
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = 'Please wait...'
      HeaderTitleAlign = taLeftJustify
      StripeRows = False
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 1
      Columns = <
        item
          FieldName = 'item_no'
          Title.Alignment = taCenter
          Title.Caption = #3629#3633#3609#3604#3633#3610
          Title.Font.Charset = THAI_CHARSET
          Width = 55
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'work'
          Title.Alignment = taCenter
          Title.Caption = #3627#3609#3656#3623#3618#3591#3634#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 129
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'acc_code'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3610#3633#3597#3594#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 78
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'acc_name'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3610#3633#3597#3594#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 184
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'cheq_no'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
          Title.Font.Charset = THAI_CHARSET
          Width = 85
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'dr_ame'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3604#3610#3636#3605
          Title.Font.Charset = THAI_CHARSET
          Width = 96
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'cr_amt'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3648#3588#3619#3604#3636#3605
          Title.Font.Charset = THAI_CHARSET
          Width = 99
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'link_sys'
          Title.Alignment = taCenter
          Title.Caption = #3648#3594#3639#3656#3629#3617#3619#3632#3610#3610' Y/N'
          Title.Font.Charset = THAI_CHARSET
          Width = 81
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'link_system'
          Title.Alignment = taCenter
          Title.Caption = #3648#3594#3639#3656#3629#3617#3619#3632#3610#3610' '#3619#3632#3610#3610
          Width = 95
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
    object UniPanel1: TUniPanel
      Left = 1
      Top = 291
      Width = 934
      Height = 44
      BorderStyle = ubsFrameLowered
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 2
      object UniLabel7: TUniLabel
        Left = 527
        Top = 14
        Width = 63
        Height = 13
        Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617
        ParentFont = False
        TabOrder = 1
      end
      object UniDBEdit3: TUniDBEdit
        Left = 767
        Top = 10
        Width = 136
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 2
        Color = clWindow
      end
      object UniDBEdit4: TUniDBEdit
        Left = 625
        Top = 10
        Width = 136
        Height = 21
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 3
        Color = clWindow
      end
      object UniEdit1: TUniEdit
        Left = 224
        Top = 8
        Width = 121
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        Text = 'UniEdit1'
        TabOrder = 4
        Color = clWindow
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 488
    Width = 936
    ExplicitTop = 488
    ExplicitWidth = 936
    inherited btnConfirm: TUniButton
      Left = 773
      ExplicitLeft = 773
    end
    inherited btnCancel: TUniButton
      Left = 854
      ExplicitLeft = 854
    end
    inherited btnBack: TUniButton
      Caption = '<< Back'
      OnClick = btnBackClick
    end
    object UniButton1: TUniButton
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = 'UniButton1'
      TabOrder = 4
      OnClick = UniButton1Click
    end
  end
  inherited pnHeader: TUniPanel
    Width = 936
    Height = 153
    ExplicitWidth = 936
    ExplicitHeight = 153
    object UniLabel10: TUniLabel
      Left = 572
      Top = 11
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 1
    end
    object UniDBLookupComboBox3: TUniDBLookupComboBox
      Tag = 9
      Left = 373
      Top = 11
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
      Left = 633
      Top = 11
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
      Left = 289
      Top = 11
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 4
    end
    object UniDBEdit11: TUniDBEdit
      Left = 373
      Top = 35
      Width = 180
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 292
      Top = 35
      Width = 61
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 6
    end
    object UniLabel2: TUniLabel
      Left = 9
      Top = 35
      Width = 54
      Height = 13
      Caption = #3619#3627#3633#3626#3648#3629#3585#3626#3634#3619
      ParentFont = False
      TabOrder = 7
    end
    object UniLabel3: TUniLabel
      Left = 9
      Top = 90
      Width = 118
      Height = 13
      Caption = #3626#3619#3657#3634#3591#3619#3641#3611#3649#3610#3610#3617#3634#3605#3619#3600#3634#3609' '#3592#3634#3585
      ParentFont = False
      TabOrder = 8
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 97
      Top = 59
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel4: TUniLabel
      Left = 9
      Top = 59
      Width = 80
      Height = 13
      Caption = #3619#3627#3633#3626#3648#3592#3657#3634#3627#3609#3637#3657'/'#3621#3641#3585#3627#3609#3637#3657
      ParentFont = False
      TabOrder = 10
    end
    object UniDBLookupComboBox5: TUniDBLookupComboBox
      Tag = 9
      Left = 97
      Top = 35
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 11
    end
    object UniLabel5: TUniLabel
      Left = 293
      Top = 115
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel6: TUniLabel
      Left = 576
      Top = 115
      Width = 41
      Height = 13
      Caption = #3619#3641#3611#3649#3610#3610#3607#3637#3656
      ParentFont = False
      TabOrder = 13
    end
    object UniLabel8: TUniLabel
      Left = 9
      Top = 11
      Width = 53
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3648#3604#3639#3629#3609
      ParentFont = False
      TabOrder = 14
    end
    object UniDBEdit5: TUniDBEdit
      Left = 97
      Top = 11
      Width = 180
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 15
      Color = clWindow
    end
    object UniLabel12: TUniLabel
      Left = 576
      Top = 35
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 16
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 633
      Top = 35
      Width = 129
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 17
      ParentColor = False
      Color = clWhite
    end
    object UniLabel9: TUniLabel
      Left = 9
      Top = 115
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 18
    end
    object UniDBLookupComboBox6: TUniDBLookupComboBox
      Tag = 9
      Left = 97
      Top = 115
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 19
    end
    object UniDBLookupComboBox7: TUniDBLookupComboBox
      Tag = 9
      Left = 373
      Top = 115
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 20
    end
    object UniDBLookupComboBox8: TUniDBLookupComboBox
      Tag = 9
      Left = 633
      Top = 115
      Width = 180
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 21
    end
    object BtnLinkSystem: TUniButton
      Left = 829
      Top = 115
      Width = 75
      Height = 25
      Caption = #3648#3594#3639#3656#3629#3617#3619#3632#3610#3610
      ParentFont = False
      TabOrder = 22
    end
  end
end
