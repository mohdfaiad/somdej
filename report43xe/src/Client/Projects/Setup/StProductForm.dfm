inherited frmStProductGrid: TfrmStProductGrid
  Caption = #3588#3657#3609#3627#3634' - '#3619#3627#3633#3626#3619#3606#3618#3609#3605#3660'/'#3629#3640#3611#3585#3619#3603#3660'/'#3623#3633#3626#3604#3640
  ClientHeight = 508
  ClientWidth = 1012
  OnCreate = UniFormCreate
  ExplicitWidth = 1020
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 1012
    Height = 418
    ExplicitTop = 49
    ExplicitWidth = 1012
    ExplicitHeight = 418
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1012
      Height = 418
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'ITNPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 98
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 333
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ENMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Title.Font.Charset = THAI_CHARSET
          Width = 286
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'UP1PM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634#3586#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 178
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'STSPM1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Width = 57
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'BRDPM1'
          Title.Alignment = taCenter
          Title.Caption = #3618#3637#3656#3627#3657#3629
          Title.Font.Charset = THAI_CHARSET
          Width = -1
          Visible = False
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3623#3591#3648#3591#3636#3609#3586#3629#3591#3649#3606#3617
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3618#3637#3656#3627#3657#3629
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
    Width = 1012
    Height = 49
    ExplicitWidth = 1012
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
      Width = 817
      ExplicitLeft = 72
      ExplicitTop = 13
      ExplicitWidth = 817
    end
    inherited btnSearch: TUniButton
      Left = 915
      Top = 13
      OnClick = btnSearchClick
      ExplicitLeft = 915
      ExplicitTop = 13
    end
  end
  inherited pnFooter: TUniPanel
    Top = 467
    Width = 1012
    ExplicitTop = 467
    ExplicitWidth = 1012
    DesignSize = (
      1012
      41)
    inherited btnDelete: TUniButton
      Left = 930
      OnClick = btnDeleteClick
      ExplicitLeft = 930
    end
    inherited btnEdit: TUniButton
      Left = 849
      OnClick = btnEditClick
      ExplicitLeft = 849
    end
    inherited btnAdd: TUniButton
      Left = 768
      OnClick = btnAddClick
      ExplicitLeft = 768
    end
    inherited BtnView: TUniButton
      Left = 687
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 687
    end
  end
  inherited smEdit: TUniScreenMask
    Left = 272
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
