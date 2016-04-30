inherited frmStMtRegGrid: TfrmStMtRegGrid
  Caption = #3588#3657#3609#3627#3634' - '#3605#3634#3619#3634#3591#3588#3656#3634#3592#3604#3607#3632#3648#3610#3637#3618#3609#3619#3640#3656#3609#3619#3606#3618#3609#3605#3660
  ClientHeight = 508
  ClientWidth = 1054
  OnCreate = UniFormCreate
  ExplicitWidth = 1062
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 1054
    Height = 418
    ExplicitTop = 49
    ExplicitWidth = 1054
    ExplicitHeight = 418
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1054
      Height = 418
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'CNOREG'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3640#3656#3609#3619#3606#3618#3609#3605#3660
          Width = 81
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'CNOTNM'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606#3618#3609#3605#3660
          Width = 132
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ITNREG'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3606#3618#3609#3605#3660
          Title.Font.Charset = THAI_CHARSET
          Width = 97
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 255
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'AMTREG'
          Title.Alignment = taCenter
          Title.Caption = #3588#3656#3634#3592#3604#3607#3632#3648#3610#3637#3618#3609
          Title.Font.Charset = THAI_CHARSET
          Width = 102
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'OTHREG'
          Title.Alignment = taCenter
          Title.Caption = #3588#3656#3634#3651#3594#3657#3592#3656#3634#3618#3629#3639#3656#3609' '#3654' '
          Width = 100
          Visible = True
          Color = clWhite
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'SUMREG'
          Title.Alignment = taCenter
          Title.Caption = #3619#3623#3617
          Width = 107
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'NARREG'
          Title.Alignment = taCenter
          Title.Caption = #3629#3608#3636#3610#3634#3618
          Width = 151
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'STSREG'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Width = 50
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1054
    Height = 49
    ExplicitWidth = 1054
    ExplicitHeight = 49
    inherited lbSearch: TUniLabel
      Left = 19
      Top = 18
      ExplicitLeft = 19
      ExplicitTop = 18
    end
    inherited edSearch: TUniEdit
      Left = 72
      Top = 13
      Width = 859
      ExplicitLeft = 72
      ExplicitTop = 13
      ExplicitWidth = 859
    end
    inherited btnSearch: TUniButton
      Left = 957
      Top = 13
      OnClick = btnSearchClick
      ExplicitLeft = 957
      ExplicitTop = 13
    end
  end
  inherited pnFooter: TUniPanel
    Top = 467
    Width = 1054
    ExplicitTop = 467
    ExplicitWidth = 1054
    DesignSize = (
      1054
      41)
    inherited btnDelete: TUniButton
      Left = 972
      OnClick = btnDeleteClick
      ExplicitLeft = 972
    end
    inherited btnEdit: TUniButton
      Left = 891
      OnClick = btnEditClick
      ExplicitLeft = 891
    end
    inherited btnAdd: TUniButton
      Left = 810
      OnClick = btnAddClick
      ExplicitLeft = 810
    end
    inherited BtnView: TUniButton
      Left = 727
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 727
    end
    object BtnAddExtra: TUniButton
      Left = 576
      Top = 3
      Width = 113
      Height = 25
      Caption = #3648#3614#3636#3656#3617'/'#3649#3585#3657#3652#3586' '#3605#3634#3617#3619#3640#3656#3609
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 6
      OnClick = BtnAddExtraClick
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
