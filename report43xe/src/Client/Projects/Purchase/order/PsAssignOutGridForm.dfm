inherited frmPsAssignOutGrid: TfrmPsAssignOutGrid
  Caption = #3588#3657#3609#3627#3634' - '#3651#3610' Assign Week '#3629#3629#3585' '#3629#3657#3634#3591#3651#3610#3626#3633#3656#3591#3626#3637
  ClientHeight = 569
  ClientWidth = 1009
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
          FieldName = 'CMPAD1'
          Title.Alignment = taCenter
          Title.Caption = #3610#3619#3636#3625#3633#3607
          Width = 120
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'BRNAD1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634
          Width = 150
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DNOAD1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610' Assign Week '#3629#3629#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 323
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTAD1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Width = -1
          Visible = False
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'QT1AD1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609
          Width = 237
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
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
      Top = 74
      OnClick = btnSearchClick
      ExplicitLeft = 462
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
    object UniLabel4: TUniLabel
      Left = 15
      Top = 43
      Width = 52
      Height = 13
      Caption = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 8
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
      TabOrder = 9
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
      TabOrder = 10
    end
    object ITO: TUniDateTimePicker
      Left = 318
      Top = 40
      Width = 138
      Height = 22
      Hint = #3606#3638#3591
      DateTime = 41134.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 11
      ParentColor = False
      Color = clWhite
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
