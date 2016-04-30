inherited frmRgRegistationToOutGrid: TfrmRgRegistationToOutGrid
  Caption = #3588#3657#3609#3627#3634' - '#3592#3604#3607#3632#3648#3610#3637#3618#3609#3626#3656#3591#3591#3634#3609#3609#3629#3585
  ClientHeight = 542
  ClientWidth = 1159
  OnDestroy = UniFormDestroy
  ExplicitWidth = 1167
  ExplicitHeight = 576
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 97
    Width = 1159
    Height = 404
    ExplicitTop = 97
    ExplicitWidth = 1159
    ExplicitHeight = 404
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1159
      Height = 404
      DataSource = dsgrid
      OnDblClick = btnEditClick
      Align = alClient
      Columns = <
        item
          FieldName = 'DNORG1'
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3648#3610#3636#3585#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618#3591#3634#3609#3609#3629#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 174
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTRG1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Width = 89
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'tnmvm1'
          Title.Alignment = taCenter
          Title.Caption = #3612#3641#3657#3619#3633#3610#3648#3627#3617#3634
          Width = 246
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'EDTRG1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3588#3634#3604#3623#3656#3634#3592#3632#3652#3604#3657#3619#3633#3610#3607#3632#3648#3610#3637#3618#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 126
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TOTALRG1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3592#3604#3607#3632#3648#3610#3637#3618#3609
          Width = 130
          Visible = True
          Alignment = taRightJustify
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
          Title.Alignment = taCenter
          Title.Font.Charset = THAI_CHARSET
          Width = -1
          Visible = False
          Alignment = taCenter
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
          Width = -1
          Visible = False
          Alignment = taRightJustify
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
          Alignment = taCenter
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
    Width = 1159
    Height = 97
    ExplicitWidth = 1159
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
    Width = 1159
    ExplicitTop = 501
    ExplicitWidth = 1159
    DesignSize = (
      1159
      41)
    inherited btnDelete: TUniButton
      Left = 1075
      OnClick = btnDeleteClick
      ExplicitLeft = 1075
    end
    inherited btnEdit: TUniButton
      Left = 994
      OnClick = btnEditClick
      ExplicitLeft = 994
    end
    inherited btnAdd: TUniButton
      Left = 913
      OnClick = btnAddClick
      ExplicitLeft = 913
    end
    inherited BtnView: TUniButton
      Left = 832
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 832
    end
  end
  inherited scBlak: TUniScreenMask
    Left = 65520
    Top = 288
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
