inherited frmPsRcvProductCarGrid: TfrmPsRcvProductCarGrid
  Caption = #3588#3657#3609#3627#3634' - '#3651#3610#3619#3633#3610#3619#3606' '#3605#3634#3617#3651#3610' Assign'
  ClientHeight = 405
  ClientWidth = 957
  Position = poDesigned
  ExplicitWidth = 965
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 957
    Height = 315
    ExplicitTop = 49
    ExplicitWidth = 957
    ExplicitHeight = 315
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 957
      Height = 315
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'rnopt1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
          Width = 79
          Visible = True
          Color = clWhite
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'idtpt1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 74
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'dnoad1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610' AssignWeek '#3629#3629#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 130
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'edtad1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656' Assign '#3629#3629#3585
          Width = 105
          Visible = True
          Color = clWhite
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'tnmvm1'
          Title.Alignment = taCenter
          Title.Caption = #3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
          Width = 191
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'DNOPT1'
          Title.Alignment = taCenter
          Title.Caption = #3629#3636#3609#3623#3629#3618#3595#3660
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'brnpt1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634
          Width = 56
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'countad2'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3588#3633#3609
          Width = 66
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'RATPT1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 113
          Visible = True
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
          Width = -1
          Visible = False
          Alignment = taRightJustify
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Width = -1
          Visible = False
          Alignment = taCenter
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 957
    Height = 49
    ExplicitWidth = 957
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
      Width = 358
      ExplicitLeft = 486
      ExplicitTop = 13
      ExplicitWidth = 358
    end
    inherited btnSearch: TUniButton
      Left = 875
      Top = 9
      OnClick = btnSearchClick
      ExplicitLeft = 875
      ExplicitTop = 9
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
    Top = 364
    Width = 957
    ExplicitTop = 364
    ExplicitWidth = 957
    DesignSize = (
      957
      41)
    inherited btnDelete: TUniButton
      Left = 875
      OnClick = btnDeleteClick
      ExplicitLeft = 875
    end
    inherited btnEdit: TUniButton
      Left = 794
      OnClick = btnEditClick
      ExplicitLeft = 794
    end
    inherited btnAdd: TUniButton
      Left = 713
      OnClick = btnAddClick
      ExplicitLeft = 713
    end
    inherited BtnView: TUniButton
      Left = 630
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 630
    end
  end
  inherited smSearch: TUniScreenMask
    TargetControl = dbgDataList
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
