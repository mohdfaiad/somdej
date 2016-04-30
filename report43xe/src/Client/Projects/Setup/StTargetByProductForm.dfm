inherited frmStTargetByProductGrid: TfrmStTargetByProductGrid
  Caption = #3588#3657#3609#3627#3634' - '#3648#3611#3657#3634#3618#3629#3604#3586#3634#3618#3619#3632#3610#3610#3623#3636#3648#3588#3619#3634#3632#3627#3660#3586#3634#3618' ('#3626#3636#3609#3588#3657#3634')'
  ClientHeight = 508
  ClientWidth = 975
  OnCreate = UniFormCreate
  ExplicitWidth = 983
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 975
    Height = 418
    ExplicitTop = 49
    ExplicitWidth = 975
    ExplicitHeight = 418
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 975
      Height = 418
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'YARBG2'
          Title.Alignment = taCenter
          Title.Caption = #3611#3637
          Width = 57
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'CMPBG2'
          Title.Alignment = taCenter
          Title.Caption = #3610#3619#3636#3625#3633#3607
          Width = 44
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'BRNBG2'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634
          Width = 41
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SMNTNM'
          Title.Alignment = taCenter
          Title.Caption = #3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          FieldName = 'ITNBG2'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 66
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
          Width = 169
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'Q01BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 1<br>'#3611#3619#3636#3617#3634#3603
          Title.Font.Charset = THAI_CHARSET
          Width = 70
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A01BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 1<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q02BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 2<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A02BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 2<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q03BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 3<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A03BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 3<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q04BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 4<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A04BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 4<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q05BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 5<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A05BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 5<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q06BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 6<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A06BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 6<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q07BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 7<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A07BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 7<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q08BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 8<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A08BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 8<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q09BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 9<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A09BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 9<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q10BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 10<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A10BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 10<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q11BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 11<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A11BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 11<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'Q12BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 12<br>'#3611#3619#3636#3617#3634#3603
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'A12BG2'
          Title.Alignment = taCenter
          Title.Caption = #3648#3604#3639#3629#3609' 12<br>'#3592#3635#3609#3623#3609
          Width = 70
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 975
    Height = 49
    ExplicitWidth = 975
    ExplicitHeight = 49
    inherited lbSearch: TUniLabel
      Left = 462
      Top = 18
      ExplicitLeft = 462
      ExplicitTop = 18
    end
    inherited edSearch: TUniEdit
      Left = 519
      Top = 13
      Width = 304
      ExplicitLeft = 519
      ExplicitTop = 13
      ExplicitWidth = 304
    end
    inherited btnSearch: TUniButton
      Left = 867
      Top = 12
      OnClick = btnSearchClick
      ExplicitLeft = 867
      ExplicitTop = 12
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
    Top = 467
    Width = 975
    ExplicitTop = 467
    ExplicitWidth = 975
    DesignSize = (
      975
      41)
    inherited btnDelete: TUniButton
      Left = 893
      OnClick = btnDeleteClick
      ExplicitLeft = 893
    end
    inherited btnEdit: TUniButton
      Left = 812
      OnClick = btnEditClick
      ExplicitLeft = 812
    end
    inherited btnAdd: TUniButton
      Left = 731
      OnClick = btnAddClick
      ExplicitLeft = 731
    end
    inherited BtnView: TUniButton
      Left = 648
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 648
    end
  end
  object dsgrid: TDataSource [7]
    Left = 496
    Top = 200
  end
end
