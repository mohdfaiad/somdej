inherited frmStArGrid: TfrmStArGrid
  Caption = #3588#3657#3609#3627#3634' -'#3621#3641#3585#3627#3609#3637#3657
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
          FieldName = 'CNOCM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3621#3641#3585#3627#3609#3637#3657
          Title.Font.Charset = THAI_CHARSET
          Width = 71
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMCM1'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3652#3607#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 292
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ENMCM1'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Title.Font.Charset = THAI_CHARSET
          Width = 315
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TAXCM1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 135
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'STSCM1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Title.Font.Charset = THAI_CHARSET
          Width = 54
          Visible = True
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
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
