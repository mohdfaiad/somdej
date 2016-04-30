inherited frmStFrameNoGrid: TfrmStFrameNoGrid
  Caption = #3588#3657#3609#3627#3634' - '#3619#3627#3633#3626' Frame No.'
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
          FieldName = 'SERSTY'
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3638#3591
          Title.Font.Charset = THAI_CHARSET
          Width = 103
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'CNOSTY'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
          Width = 79
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'TNMCM1'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629
          Title.Font.Charset = THAI_CHARSET
          Width = 136
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'ENGSTY'
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          Width = 117
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'SRSSTY'
          Title.Alignment = taCenter
          Title.Caption = #3595#3637#3619#3637#3656
          Width = 133
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ITNSTY'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3606#3618#3609#3605#3660
          Width = 106
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
          Width = 98
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'COLTNM'
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 103
          Visible = True
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
