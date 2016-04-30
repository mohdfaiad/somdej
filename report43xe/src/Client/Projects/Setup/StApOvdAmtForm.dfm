inherited frmStApOvdAmtGrid: TfrmStApOvdAmtGrid
  Caption = #3588#3657#3609#3627#3634' - '#3618#3629#3604#3588#3657#3634#3591#3594#3635#3619#3632#3648#3592#3657#3634#3627#3609#3637#3657
  ClientHeight = 508
  ClientWidth = 1062
  ExplicitWidth = 1070
  ExplicitHeight = 542
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 1062
    Height = 418
    ExplicitTop = 49
    ExplicitWidth = 1062
    ExplicitHeight = 418
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1062
      Height = 418
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'DNOYM1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Width = 97
          Visible = True
          Color = clWhite
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTYM1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 68
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'VNOVM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3648#3592#3657#3634#3627#3609#3637#3657
          Width = 83
          Visible = True
          Color = clWhite
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DEPYM1'
          Title.Alignment = taCenter
          Title.Caption = #3649#3612#3609#3585
          Width = 86
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'POYM1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
          Width = 86
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'SERYM1'
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3638#3591
          Width = 111
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DDTYM1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3588#3619#3610#3585#3635#3627#3609#3604
          Width = 87
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'ABTYM1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3585#3656#3629#3609#3616#3634#3625#3637
          Width = 97
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'VATYM1'
          Title.Alignment = taCenter
          Title.Caption = #3616#3634#3625#3637
          Width = 30
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'AVTYM1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3616#3634#3625#3637
          Width = 91
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'AMTYM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3623#3617
          Width = 88
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'BALYM1'
          Title.Alignment = taCenter
          Title.Caption = #3618#3629#3604#3588#3591#3648#3627#3621#3639#3629
          Width = 100
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1062
    Height = 49
    ExplicitWidth = 1062
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
      Width = 867
      ExplicitLeft = 72
      ExplicitTop = 13
      ExplicitWidth = 867
    end
    inherited btnSearch: TUniButton
      Left = 965
      Top = 13
      OnClick = btnSearchClick
      ExplicitLeft = 965
      ExplicitTop = 13
    end
  end
  inherited pnFooter: TUniPanel
    Top = 467
    Width = 1062
    ExplicitTop = 467
    ExplicitWidth = 1062
    DesignSize = (
      1062
      41)
    inherited btnDelete: TUniButton
      Left = 980
      OnClick = btnDeleteClick
      ExplicitLeft = 980
    end
    inherited btnEdit: TUniButton
      Left = 899
      OnClick = btnEditClick
      ExplicitLeft = 899
    end
    inherited btnAdd: TUniButton
      Left = 818
      OnClick = btnAddClick
      ExplicitLeft = 818
    end
    inherited BtnView: TUniButton
      Left = 735
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 735
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
