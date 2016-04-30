inherited frmStCtRm1Grid: TfrmStCtRm1Grid
  Caption = #3607#3632#3648#3610#3637#3618#3609#3611#3657#3634#3618#3649#3604#3591
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
          FieldName = 'RNORM1'
          Title.Alignment = taCenter
          Title.Caption = #3607#3632#3648#3610#3637#3618#3609#3611#3657#3634#3618#3649#3604#3591
          Title.Font.Charset = THAI_CHARSET
          Width = 137
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'PRVTNM'
          Title.Alignment = taCenter
          Title.Caption = #3592#3604#3592#3633#3591#3627#3623#3633#3604
          Width = 179
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'PDTRM1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3595#3639#3657#3629
          Width = 135
          Visible = True
          Color = clWhite
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'PATRM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634#3611#3657#3634#3618
          Width = 121
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'OATRM1'
          Title.Alignment = taCenter
          Title.Caption = #3588#3656#3634#3651#3594#3657#3592#3656#3634#3618#3629#3639#3656#3609' '#3654' '
          Width = 121
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'SUMRM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3623#3617
          Width = 122
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'STSRM1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Width = 59
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Width = -1
          Visible = False
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
      Top = 13
      OnClick = btnSearchClick
      ExplicitLeft = 835
      ExplicitTop = 13
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
