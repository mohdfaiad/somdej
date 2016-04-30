inherited frmRgRegistationBookFromOutGrid: TfrmRgRegistationBookFromOutGrid
  Caption = #3588#3657#3609#3627#3634' - '#3619#3634#3618#3585#3634#3619#3619#3633#3610#3588#3641#3656#3617#3639#3629#3607#3632#3648#3610#3637#3618#3609#3619#3606
  ClientHeight = 542
  ClientWidth = 1141
  OnDestroy = UniFormDestroy
  ExplicitWidth = 1149
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 97
    Width = 1141
    Height = 404
    ExplicitTop = 97
    ExplicitWidth = 1141
    ExplicitHeight = 404
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1141
      Height = 404
      DataSource = dsgrid
      OnDblClick = btnEditClick
      Align = alClient
      Columns = <
        item
          FieldName = 'DNORG2'
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3619#3633#3610#3607#3632#3648#3610#3637#3618#3609#3619#3606#3591#3634#3609#3609#3629#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 122
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTRG2'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Width = -1
          Visible = False
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'RDNRG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3610#3636#3585#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618#3591#3634#3609#3609#3629#3585
          Width = 169
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'RDTRG2'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = -1
          Visible = False
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'TNMVM1'
          Title.Alignment = taCenter
          Title.Caption = #3612#3641#3657#3619#3633#3610#3648#3627#3617#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 105
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'APNOM5'
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Width = 74
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'tnmcsm'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
          Width = 86
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'prdom5'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Title.Font.Charset = THAI_CHARSET
          Width = 77
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'serom5'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMPRV'
          Title.Alignment = taCenter
          Title.Caption = #3611#3657#3634#3618#3607#3632#3648#3610#3637#3618#3609#3592#3633#3591#3627#3623#3633#3604
          Width = 97
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'REGFULL'
          Title.Alignment = taCenter
          Title.Caption = #3607#3632#3648#3610#3637#3618#3609#3627#3617#3634#3618#3648#3621#3586
          Width = 103
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'RVNRG2'
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3648#3626#3619#3655#3592#3648#3621#3586#3607#3637#3656
          Width = 85
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'BDTRG2'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3652#3604#3657#3619#3633#3610#3588#3641#3656#3617#3639#3629#3619#3606
          Width = 97
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1141
    Height = 97
    ExplicitWidth = 1141
    ExplicitHeight = 97
    inherited lbSearch: TUniLabel
      Top = 68
      ExplicitTop = 68
    end
    inherited edSearch: TUniEdit
      Left = 88
      Top = 68
      Width = 619
      Anchors = [akLeft, akTop]
      ExplicitLeft = 88
      ExplicitTop = 68
      ExplicitWidth = 619
    end
    inherited btnSearch: TUniButton
      Left = 726
      Top = 69
      Anchors = [akLeft, akTop]
      OnClick = btnSearchClick
      ExplicitLeft = 726
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
      TabOrder = 5
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
      TabOrder = 6
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
      TabOrder = 7
      Color = clWindow
    end
    object UniLabel1: TUniLabel
      Left = 255
      Top = 13
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      Transparent = False
      TabOrder = 8
    end
    object UniLabel4: TUniLabel
      Left = 509
      Top = 13
      Width = 28
      Height = 13
      Caption = #3649#3612#3609#3585
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel5: TUniLabel
      Left = 15
      Top = 40
      Width = 52
      Height = 13
      Caption = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 10
    end
    object IFRM: TUniDateTimePicker
      Left = 88
      Top = 40
      Width = 138
      Height = 22
      Hint = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656' '#3592#3634#3585
      DateTime = 41193.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 11
      ParentColor = False
      Color = clWhite
    end
    object UniLabel6: TUniLabel
      Left = 255
      Top = 43
      Width = 11
      Height = 13
      Caption = #3606#3638#3591
      ParentFont = False
      TabOrder = 12
    end
    object ITO: TUniDateTimePicker
      Left = 318
      Top = 40
      Width = 138
      Height = 22
      Hint = #3606#3638#3591
      DateTime = 41193.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 13
      ParentColor = False
      Color = clWhite
    end
    object EdtDEP: TUniEdit
      Left = 558
      Top = 3
      Width = 149
      Height = 21
      Hint = #3649#3612#3609#3585
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 501
    Width = 1141
    ExplicitTop = 501
    ExplicitWidth = 1141
    DesignSize = (
      1141
      41)
    inherited btnDelete: TUniButton
      Left = 1057
      OnClick = btnDeleteClick
      ExplicitLeft = 1057
    end
    inherited btnEdit: TUniButton
      Left = 976
      Visible = False
      OnClick = btnEditClick
      ExplicitLeft = 976
    end
    inherited btnAdd: TUniButton
      Left = 895
      OnClick = btnAddClick
      ExplicitLeft = 895
    end
    inherited BtnView: TUniButton
      Left = 814
      Visible = False
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 814
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
