inherited frmStCtShpGrid: TfrmStCtShpGrid
  Caption = #3588#3657#3609#3627#3634' - '#3605#3634#3619#3634#3591#3609#3635#3626#3656#3591#3619#3606#3651#3627#3617#3656
  ClientHeight = 508
  ClientWidth = 932
  OnCreate = UniFormCreate
  ExplicitWidth = 940
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 932
    Height = 418
    ExplicitTop = 49
    ExplicitWidth = 932
    ExplicitHeight = 418
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 932
      Height = 418
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'CNOSHP'
          Title.Alignment = taCenter
          Title.Caption = #3595#3637#3619#3637#3656#3619#3606#3618#3609#3605#3660
          Title.Font.Charset = THAI_CHARSET
          Width = 70
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'CNOTNM'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3619#3606#3618#3609#3605#3660
          Width = 157
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'FBNSHP'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634#3605#3657#3609#3607#3634#3591
          Width = 84
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'FBNTNM'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3626#3634#3586#3634#3605#3657#3609#3607#3634#3591
          Width = 110
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TBNSHP'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634#3611#3621#3634#3618#3607#3634#3591
          Width = 77
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TBNTNM'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3626#3634#3586#3634#3611#3621#3634#3618#3607#3634#3591
          Width = 106
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'AMTSHP'
          Title.Alignment = taCenter
          Title.Caption = #3588#3656#3634#3609#3635#3626#3656#3591
          Width = 103
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'STSSHP'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Width = 50
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3621#3635#3604#3633#3610
          Title.Font.Charset = THAI_CHARSET
          Width = -1
          Visible = False
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 932
    Height = 49
    ExplicitWidth = 932
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
      Width = 737
      ExplicitLeft = 72
      ExplicitTop = 13
      ExplicitWidth = 737
    end
    inherited btnSearch: TUniButton
      Left = 835
      Top = 18
      OnClick = btnSearchClick
      ExplicitLeft = 835
      ExplicitTop = 18
    end
  end
  inherited pnFooter: TUniPanel
    Top = 467
    Width = 932
    ExplicitTop = 467
    ExplicitWidth = 932
    DesignSize = (
      932
      41)
    inherited btnDelete: TUniButton
      Left = 850
      OnClick = btnDeleteClick
      ExplicitLeft = 850
    end
    inherited btnEdit: TUniButton
      Left = 769
      OnClick = btnEditClick
      ExplicitLeft = 769
    end
    inherited btnAdd: TUniButton
      Left = 688
      OnClick = btnAddClick
      ExplicitLeft = 688
    end
    inherited BtnView: TUniButton
      Left = 605
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 605
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
