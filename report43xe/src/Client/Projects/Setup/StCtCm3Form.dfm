inherited frmStCtCm3Grid: TfrmStCtCm3Grid
  Caption = #3588#3657#3609#3627#3634' - '#3619#3627#3633#3626#3649#3621#3632#3594#3639#3656#3629#3607#3637#3656#3629#3618#3641#3656#3610#3619#3636#3625#3633#3607' '#3605#3634#3617#3607#3632#3648#3610#3637#3618#3609#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
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
          FieldName = 'CMPCM3'
          Title.Alignment = taCenter
          Title.Caption = #3610#3619#3636#3625#3633#3607
          Title.Font.Charset = THAI_CHARSET
          Width = 70
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'BRNCM3'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634
          Width = 85
          Visible = True
          Color = clWhite
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCM3'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3652#3607#3618
          Width = 90
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'ENMCM3'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Width = 149
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TA1CM3'
          Title.Alignment = taCenter
          Title.Caption = #3607#3637#3656#3629#3618#3641#3656' 1'
          Width = 163
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TA2CM3'
          Title.Alignment = taCenter
          Title.Caption = #3607#3637#3656#3629#3618#3641#3656' 2'
          Width = 106
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TIDCM3'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3611#3619#3632#3592#3635#3605#3633#3623#3612#3641#3657#3648#3626#3637#3618#3616#3634#3625#3637
          Width = 141
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
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
          Width = 64
          Visible = True
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
      Left = 80
      Top = 13
      Width = 729
      ExplicitLeft = 80
      ExplicitTop = 13
      ExplicitWidth = 729
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
