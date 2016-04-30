inherited frmAWAssignOutGrid: TfrmAWAssignOutGrid
  ActiveControl = EdtCom
  Caption = #3610#3633#3609#3607#3638#3585#3651#3610' Assign Week '#3629#3629#3585' '#3629#3657#3634#3591#3651#3610#3626#3633#3656#3591#3626#3637
  ClientHeight = 451
  ClientWidth = 957
  ExplicitWidth = 965
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 121
    Width = 957
    Height = 289
    ExplicitLeft = 15
    ExplicitTop = 115
    ExplicitWidth = 909
    ExplicitHeight = 289
    inherited dbgDataList: TUniDBGrid
      Left = 15
      Top = 32
      Width = 904
      Height = 240
      DataSource = dsgrid
      TabOrder = 1
      Columns = <
        item
          FieldName = 'EDTAD1'
          Title.Alignment = taCenter
          Title.Caption = 'Assign <br>Schedule Date'
          Width = 120
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'WISAD1'
          Title.Alignment = taCenter
          Title.Caption = 'Week'
          Width = 40
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSRS'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Title.Font.Charset = THAI_CHARSET
          Width = 135
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'ITNAD1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Width = 197
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCOL'
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 151
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'QT1AD1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609
          Width = 97
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Alignment = taCenter
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
          Title.Font.Charset = THAI_CHARSET
          Width = -1
          Visible = False
          Alignment = taCenter
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end>
    end
    object LbEdt: TUniLabel
      Left = 34
      Top = 5
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 2
    end
    object CmbEDT: TUniComboBox
      Left = 88
      Top = 3
      Width = 80
      Height = 21
      Style = csDropDown
      MaxLength = 0
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24'
        '25'
        '26'
        '27'
        '28'
        '29'
        '30'
        '31')
      ItemIndex = 0
      TabOrder = 3
      RemoteQuery = False
    end
    object LbITN: TUniLabel
      Left = 182
      Top = 5
      Width = 45
      Height = 13
      Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      ParentFont = False
      TabOrder = 4
    end
    object EdtITN: TUniEdit
      Tag = 9
      Left = 233
      Top = 3
      Width = 197
      Height = 21
      Hint = #3648#3621#3586#3607#3637#3656' '#3651#3610' Pre Assign'
      HelpType = htKeyword
      HelpKeyword = 'DNOCOL'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
    end
    object LbCol: TUniLabel
      Left = 436
      Top = 6
      Width = 7
      Height = 13
      Caption = #3626#3637
      ParentFont = False
      TabOrder = 6
    end
    object COLAD1: TUniDBLookupComboBox
      Tag = 9
      Left = 483
      Top = 3
      Width = 141
      Height = 21
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      DataField = 'COLAD1'
      ParentFont = False
      TabOrder = 7
    end
    object BtnOk: TUniButton
      Left = 793
      Top = 3
      Width = 56
      Height = 25
      Caption = #3605#3585#3621#3591
      ParentFont = False
      TabOrder = 8
      OnClick = BtnOkClick
    end
    object EdtQT1: TUniSpinEdit
      Left = 694
      Top = 3
      Width = 83
      Height = 22
      Value = 1
      MaxValue = 500
      MinValue = 1
      TabOrder = 9
    end
    object LbQT1: TUniLabel
      Left = 630
      Top = 6
      Width = 30
      Height = 13
      Caption = #3592#3635#3609#3623#3609
      ParentFont = False
      TabOrder = 10
    end
    object BtnDelAssign: TUniButton
      Left = 855
      Top = 4
      Width = 56
      Height = 25
      Caption = #3621#3610
      ParentFont = False
      TabOrder = 11
      OnClick = BtnDelAssignClick
    end
  end
  inherited pnHeader: TUniPanel
    Width = 957
    Height = 121
    ExplicitTop = -1
    ExplicitWidth = 914
    ExplicitHeight = 121
    inherited lbSearch: TUniLabel
      Left = 186
      Top = 40
      Width = 25
      Caption = #3648#3604#3639#3629#3609
      TabOrder = 6
      ExplicitLeft = 186
      ExplicitTop = 40
      ExplicitWidth = 25
    end
    inherited edSearch: TUniEdit
      Tag = 9
      Left = 231
      Top = 40
      Width = 73
      Anchors = [akLeft, akTop]
      TabOrder = 3
      ReadOnly = True
      ExplicitLeft = 231
      ExplicitTop = 40
      ExplicitWidth = 73
    end
    inherited btnSearch: TUniButton
      Left = 694
      Top = 36
      Width = 56
      Hint = #3588#3657#3609#3627#3634#3651#3610#3626#3633#3656#3591#3626#3637
      Caption = '...'
      Anchors = [akLeft, akTop]
      TabOrder = 4
      OnClick = btnSearchClick
      ExplicitLeft = 694
      ExplicitTop = 36
      ExplicitWidth = 56
    end
    object LbCid: TUniLabel
      Left = 37
      Top = 41
      Width = 35
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3611#3637
      ParentFont = False
      Transparent = False
      TabOrder = 7
    end
    object EdtYar: TUniEdit
      Tag = 9
      Left = 89
      Top = 40
      Width = 80
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 2
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel2: TUniLabel
      Left = 37
      Top = 13
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      Transparent = False
      TabOrder = 8
    end
    object EdtCom: TUniEdit
      Tag = 9
      Left = 89
      Top = 13
      Width = 80
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 0
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel3: TUniLabel
      Left = 187
      Top = 13
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      Transparent = False
      TabOrder = 9
    end
    object EdtBrn: TUniEdit
      Tag = 9
      Left = 231
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 1
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel1: TUniLabel
      Left = 322
      Top = 13
      Width = 27
      Height = 13
      Caption = 'Week'
      ParentFont = False
      TabOrder = 10
    end
    object IDTAD1: TUniDateTimePicker
      Tag = 9
      Left = 486
      Top = 13
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656
      DateTime = 40190.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      ReadOnly = True
      TabOrder = 11
      ParentColor = False
      Color = clWhite
    end
    object UniLabel4: TUniLabel
      Left = 454
      Top = 21
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel5: TUniLabel
      Left = 322
      Top = 41
      Width = 126
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610' Assign Week '#3629#3629#3585
      ParentFont = False
      TabOrder = 13
    end
    object DNOAD1: TUniEdit
      Tag = 9
      Left = 486
      Top = 40
      Width = 138
      Height = 21
      Hint = #3648#3621#3586#3607#3637#3656' '#3651#3610' Pre Assign'
      HelpType = htKeyword
      HelpKeyword = 'DNOAD1'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
      ReadOnly = True
    end
    object IWKAD1: TUniEdit
      Tag = 9
      Left = 366
      Top = 13
      Width = 66
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 15
      Color = clWindow
      ReadOnly = True
    end
    object GrpAssign: TUniGroupBox
      Left = 15
      Top = 67
      Width = 856
      Height = 51
      Caption = #3619#3632#3610#3640' Assign'
      TabOrder = 16
      object LbAssignMonth: TUniLabel
        Left = 167
        Top = 18
        Width = 25
        Height = 13
        Caption = #3648#3604#3639#3629#3609
        ParentFont = False
        Transparent = False
        TabOrder = 1
      end
      object EdtAssignMonth: TUniEdit
        Tag = 9
        Left = 217
        Top = 13
        Width = 73
        Height = 21
        Hint = #3648#3604#3639#3629#3609
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 2
        Color = clWindow
      end
      object LbAssignYare: TUniLabel
        Left = 21
        Top = 18
        Width = 35
        Height = 13
        Caption = #3611#3619#3632#3592#3635#3611#3637
        ParentFont = False
        Transparent = False
        TabOrder = 3
      end
      object EdtAssignYear: TUniEdit
        Tag = 9
        Left = 73
        Top = 13
        Width = 80
        Height = 21
        Hint = #3611#3619#3632#3592#3635#3611#3637
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        ParentFont = False
        TabOrder = 4
        Color = clWindow
      end
      object LbAssignWeek: TUniLabel
        Left = 305
        Top = 18
        Width = 89
        Height = 13
        Caption = #3648#3621#3639#3629#3585' Week Assign'
        ParentFont = False
        TabOrder = 5
      end
      object CmbWISAD1: TUniComboBox
        Left = 471
        Top = 13
        Width = 138
        Height = 21
        Style = csDropDown
        MaxLength = 0
        Items.Strings = (
          '1'
          '2'
          '3'
          '4')
        ItemIndex = -1
        TabOrder = 6
        RemoteQuery = False
        OnCloseUp = CmbWISAD1CloseUp
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 410
    Width = 957
    ExplicitTop = 410
    ExplicitWidth = 957
    DesignSize = (
      957
      41)
    inherited btnDelete: TUniButton
      Left = 874
      Visible = False
      ExplicitLeft = 874
    end
    inherited btnEdit: TUniButton
      Left = 793
      Visible = False
      ExplicitLeft = 793
    end
    inherited btnAdd: TUniButton
      Left = 712
      Visible = False
      ExplicitLeft = 712
    end
    inherited BtnView: TUniButton
      Left = 629
      Visible = False
      TabOrder = 5
      ExplicitLeft = 629
    end
    object btnConfirm: TUniButton
      Left = 793
      Top = 6
      Width = 75
      Height = 25
      Caption = #3618#3639#3609#3618#3633#3609
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 7
      OnClick = btnConfirmClick
    end
    object btnCancel: TUniButton
      Tag = 1
      Left = 874
      Top = 6
      Width = 75
      Height = 25
      Caption = #3618#3585#3648#3621#3636#3585
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 6
      OnClick = btnBackClick
    end
  end
  inherited smView: TUniScreenMask
    Left = 120
    Top = 192
  end
  inherited smAdd: TUniScreenMask
    Top = 192
  end
  inherited scBlak: TUniScreenMask
    Left = 24
    Top = 432
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
