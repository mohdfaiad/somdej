inherited frmCsApprSaleCarGrid: TfrmCsApprSaleCarGrid
  Caption = #3588#3657#3609#3627#3634'-'#3585#3634#3619#3629#3609#3640#3617#3633#3605#3636#3586#3634#3618#3619#3606#3618#3609#3605#3660
  ClientHeight = 569
  ClientWidth = 1208
  ExplicitWidth = 1216
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 105
    Width = 1208
    Height = 423
    ExplicitTop = 105
    ExplicitWidth = 1208
    ExplicitHeight = 423
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1208
      Height = 423
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'DNOST3'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3629#3609#3640#3617#3633#3605#3636
          Title.Font.Charset = THAI_CHARSET
          Width = 80
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTST3'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 72
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DNOOT5'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
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
          Width = 69
          Visible = True
          Alignment = taCenter
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
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618
          Width = 91
          Visible = True
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
          Width = 129
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSTP'
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
          FieldName = 'ASDOT5'
          Title.Alignment = taCenter
          Title.Caption = 'Assign Date'
          Width = 65
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
        end
        item
          FieldName = 'TNMFCD'
          Title.Alignment = taCenter
          Title.Caption = #3610#3619#3636#3625#3633#3607#3652#3615#3649#3609#3609#3595#3660
          Width = 90
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'DWTOT5'
          Title.Alignment = taCenter
          Title.Caption = #3648#3591#3636#3609#3604#3634#3623#3609#3660
          Width = 77
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1208
    Height = 105
    ExplicitWidth = 1208
    ExplicitHeight = 105
    inherited lbSearch: TUniLabel
      Left = 317
      Top = 82
      ExplicitLeft = 317
      ExplicitTop = 82
    end
    inherited edSearch: TUniEdit
      Left = 350
      Top = 79
      Width = 554
      ExplicitLeft = 350
      ExplicitTop = 79
      ExplicitWidth = 554
    end
    inherited btnSearch: TUniButton
      Left = 923
      Top = 74
      OnClick = btnSearchClick
      ExplicitLeft = 923
      ExplicitTop = 74
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
    object UniLabel6: TUniLabel
      Left = 15
      Top = 78
      Width = 84
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3629#3609#3640#3617#3633#3605#3636#3586#3634#3618
      ParentFont = False
      TabOrder = 14
    end
    object UniDBEdit1: TUniDBEdit
      Left = 105
      Top = 78
      Width = 183
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 15
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 528
    Width = 1208
    ExplicitTop = 528
    ExplicitWidth = 1208
    DesignSize = (
      1208
      41)
    inherited btnDelete: TUniButton
      Left = 1126
      OnClick = btnDeleteClick
      ExplicitLeft = 1126
    end
    inherited btnEdit: TUniButton
      Left = 1045
      Visible = False
      OnClick = btnEditClick
      ExplicitLeft = 1045
    end
    inherited btnAdd: TUniButton
      Left = 964
      OnClick = btnAddClick
      ExplicitLeft = 964
    end
    inherited BtnView: TUniButton
      Left = 883
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 883
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
