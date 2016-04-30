inherited frmStFg1Grid: TfrmStFg1Grid
  Caption = #3588#3657#3609#3627#3634' - '#3605#3634#3619#3634#3591#3650#3611#3619#3650#3617#3594#3633#3656#3609#3586#3629#3591#3649#3606#3617#3619#3606#3618#3609#3605#3660
  ClientHeight = 515
  ClientWidth = 944
  ExplicitWidth = 952
  ExplicitHeight = 549
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 944
    Height = 425
    ExplicitTop = 49
    ExplicitWidth = 944
    ExplicitHeight = 425
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 944
      Height = 425
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'YARFG1'
          Title.Alignment = taCenter
          Title.Caption = #3611#3637
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'CMPFG1'
          Title.Alignment = taCenter
          Title.Caption = #3610#3619#3636#3625#3633#3607
          Title.Font.Charset = THAI_CHARSET
          Width = 96
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'BRNFG1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634
          Width = -1
          Visible = False
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'PRDFG1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 118
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3626#3636#3609#3588#3657#3634
          Width = 300
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'COUNT_ITEM'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3586#3629#3591#3649#3606#3617
          Title.Font.Charset = THAI_CHARSET
          Width = 99
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SUMAMT'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3619#3623#3617#3586#3629#3591#3649#3606#3617
          Width = 221
          Visible = True
          Alignment = taRightJustify
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
    Width = 944
    Height = 49
    ExplicitWidth = 944
    ExplicitHeight = 49
    inherited lbSearch: TUniLabel
      Left = 452
      Top = 18
      ExplicitLeft = 452
      ExplicitTop = 18
    end
    inherited edSearch: TUniEdit
      Left = 486
      Top = 13
      Width = 345
      ExplicitLeft = 486
      ExplicitTop = 13
      ExplicitWidth = 345
    end
    inherited btnSearch: TUniButton
      Left = 856
      Top = 13
      OnClick = btnSearchClick
      ExplicitLeft = 856
      ExplicitTop = 13
    end
    object UniLabel1: TUniLabel
      Left = 27
      Top = 18
      Width = 7
      Height = 13
      Caption = #3611#3637
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object EdtYar: TUniEdit
      Left = 64
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
    end
    object EdtCom: TUniEdit
      Left = 200
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 155
      Top = 18
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      Transparent = False
      TabOrder = 7
    end
    object EdtBrn: TUniEdit
      Left = 342
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 8
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 297
      Top = 18
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      Transparent = False
      TabOrder = 9
    end
  end
  inherited pnFooter: TUniPanel
    Top = 474
    Width = 944
    ExplicitTop = 474
    ExplicitWidth = 944
    DesignSize = (
      944
      41)
    inherited btnDelete: TUniButton
      Left = 862
      OnClick = btnDeleteClick
      ExplicitLeft = 862
    end
    inherited btnEdit: TUniButton
      Left = 781
      OnClick = btnEditClick
      ExplicitLeft = 781
    end
    inherited btnAdd: TUniButton
      Left = 700
      OnClick = btnAddClick
      ExplicitLeft = 700
    end
    inherited BtnView: TUniButton
      Left = 617
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 617
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
