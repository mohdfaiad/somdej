inherited frmRmReceiveMoneyGrid: TfrmRmReceiveMoneyGrid
  Caption = #3588#3657#3609#3627#3634'-'#3585#3634#3619#3619#3633#3610#3648#3591#3636#3609
  ClientHeight = 542
  ClientWidth = 1031
  OnDestroy = UniFormDestroy
  ExplicitWidth = 1039
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 97
    Width = 1031
    Height = 404
    ExplicitTop = 97
    ExplicitWidth = 1031
    ExplicitHeight = 404
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1031
      Height = 404
      DataSource = dsgrid
      OnDblClick = btnEditClick
      Align = alClient
      Columns = <
        item
          FieldName = 'DNORT4'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3619#3633#3610#3648#3591#3636#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 82
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTRT4'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Width = 80
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCSM'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
          Width = 120
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMPTP'
          Title.Alignment = taCenter
          Title.Caption = #3594#3635#3619#3632#3650#3604#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 72
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMBAK'
          Title.Alignment = taCenter
          Title.Caption = #3648#3594#3655#3588#3608#3609#3634#3588#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 120
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'BBRRT4'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634#3648#3594#3655#3588
          Title.Font.Charset = THAI_CHARSET
          Width = 80
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'NOTRT4'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
          Title.Font.Charset = THAI_CHARSET
          Width = 80
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DDTRT4'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3588#3619#3610#3585#3635#3627#3609#3604#3648#3594#3655#3588
          Width = 90
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMBCM'
          Title.Alignment = taCenter
          Title.Caption = #3613#3634#3585#3648#3586#3657#3634#3626#3617#3640#3604#3608#3609#3634#3588#3634#3619
          Width = 120
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'AMTRT4'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 105
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'MEMRT4'
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Width = 100
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
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1031
    Height = 97
    ExplicitWidth = 1031
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
      TabOrder = 14
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 501
    Width = 1031
    ExplicitTop = 501
    ExplicitWidth = 1031
    DesignSize = (
      1031
      41)
    inherited btnDelete: TUniButton
      Left = 945
      OnClick = btnDeleteClick
      ExplicitLeft = 945
    end
    inherited btnEdit: TUniButton
      Left = 864
      OnClick = btnEditClick
      ExplicitLeft = 864
    end
    inherited btnAdd: TUniButton
      Left = 783
      OnClick = btnAddClick
      ExplicitLeft = 783
    end
    inherited BtnView: TUniButton
      Left = 702
      OnClick = BtnViewClick
      ExplicitLeft = 702
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
