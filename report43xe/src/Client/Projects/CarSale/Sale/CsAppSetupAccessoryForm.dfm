inherited frmCsAppSetupAccessoryGrid: TfrmCsAppSetupAccessoryGrid
  Caption = #3588#3657#3609#3627#3634' - '#3651#3610#3605#3636#3604#3605#3633#3657#3591'/'#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629' '#3629#3640#3611#3585#3619#3603#3660#3605#3585#3649#3605#3656#3591
  ClientHeight = 569
  ClientWidth = 1009
  ExplicitTop = -33
  ExplicitWidth = 1017
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 105
    Width = 1009
    Height = 423
    ExplicitTop = 105
    ExplicitWidth = 1009
    ExplicitHeight = 423
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1009
      Height = 423
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'ORDOM3'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3629#3585#3626#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 100
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTOM3'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 58
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DNOOT5'
          Title.Alignment = taCenter
          Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610#3588#3635#3586#3629
          Title.Font.Charset = THAI_CHARSET
          Width = 91
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTOT5'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 68
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSMN'
          Title.Alignment = taCenter
          Title.Caption = #3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          Width = 91
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'FULLNAME'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 116
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ITNPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Width = 55
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'tnmpm1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3585#3634#3619
          Width = 68
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCOL'
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 54
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SEROT5'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 96
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'STPOT5'
          Title.Alignment = taCenter
          Title.Caption = #3648#3591#3639#3656#3629#3609#3652#3586' FS/CS'
          Width = 79
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'EPDOT5'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3609#3633#3604#3626#3656#3591#3619#3606
          Width = 73
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'STSOT5'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Width = 53
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1009
    Height = 105
    ExplicitWidth = 1009
    ExplicitHeight = 105
    inherited lbSearch: TUniLabel
      Top = 73
      ExplicitTop = 73
    end
    inherited edSearch: TUniEdit
      Left = 88
      Top = 73
      Width = 355
      ExplicitLeft = 88
      ExplicitTop = 73
      ExplicitWidth = 355
    end
    inherited btnSearch: TUniButton
      Left = 462
      Top = 73
      OnClick = btnSearchClick
      ExplicitLeft = 462
      ExplicitTop = 73
    end
    object EdtCom: TUniEdit
      Left = 88
      Top = 13
      Width = 138
      Height = 21
      Hint = #3610#3619#3636#3625#3633#3607
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 4
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 15
      Top = 13
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      Transparent = False
      TabOrder = 5
    end
    object EdtBrn: TUniEdit
      Left = 318
      Top = 13
      Width = 138
      Height = 21
      Hint = #3626#3634#3586#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 255
      Top = 13
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      Transparent = False
      TabOrder = 7
    end
    object UniLabel1: TUniLabel
      Left = 509
      Top = 13
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 8
    end
    object UniLabel4: TUniLabel
      Left = 15
      Top = 43
      Width = 52
      Height = 13
      Caption = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 9
    end
    object IFRM: TUniDateTimePicker
      Left = 88
      Top = 40
      Width = 138
      Height = 22
      Hint = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656' '#3592#3634#3585
      DateTime = 41134.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 10
      ParentColor = False
      Color = clWhite
    end
    object UniLabel5: TUniLabel
      Left = 255
      Top = 43
      Width = 11
      Height = 13
      Caption = #3606#3638#3591
      ParentFont = False
      TabOrder = 11
    end
    object ITO: TUniDateTimePicker
      Left = 318
      Top = 45
      Width = 138
      Height = 22
      Hint = #3606#3638#3591
      DateTime = 41134.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 12
      ParentColor = False
      Color = clWhite
    end
    object EdtDEP: TUniEdit
      Left = 556
      Top = 13
      Width = 149
      Height = 21
      Hint = #3649#3612#3609#3585
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 13
      Color = clWindow
    end
    object Rdo502: TUniRadioButton
      Left = 520
      Top = 48
      Width = 113
      Height = 17
      Checked = True
      Caption = #3651#3610#3626#3633#3656#3591#3595#3639#3657#3629#3616#3634#3618#3609#3629#3585
      TabOrder = 14
      OnClick = Rdo502Click
    end
    object Rdo503: TUniRadioButton
      Left = 664
      Top = 48
      Width = 113
      Height = 17
      Checked = False
      Caption = #3651#3610#3626#3633#3656#3591#3605#3636#3604#3605#3633#3657#3591#3616#3634#3618#3651#3609
      TabOrder = 15
      OnClick = Rdo503Click
    end
  end
  inherited pnFooter: TUniPanel
    Top = 528
    Width = 1009
    ExplicitTop = 528
    ExplicitWidth = 1009
    DesignSize = (
      1009
      41)
    inherited btnDelete: TUniButton
      Left = 927
      OnClick = btnDeleteClick
      ExplicitLeft = 927
    end
    inherited btnEdit: TUniButton
      Left = 846
      OnClick = btnEditClick
      ExplicitLeft = 846
    end
    inherited btnAdd: TUniButton
      Left = 765
      OnClick = btnAddClick
      ExplicitLeft = 765
    end
    inherited BtnView: TUniButton
      Left = 684
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 684
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
