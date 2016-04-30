inherited frmStArOvdAmtGrid: TfrmStArOvdAmtGrid
  Caption = #3588#3657#3609#3627#3634' - '#3618#3629#3604#3588#3657#3634#3591#3594#3635#3619#3632#3621#3641#3585#3627#3609#3637#3657
  ClientHeight = 508
  ClientWidth = 932
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
          FieldName = 'DNOAM1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3585#3635#3585#3633#3610#3616#3634#3625#3637
          Width = 108
          Visible = True
          Color = clWhite
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IDTAM1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3648#3629#3585#3626#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 72
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'CNOAM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3621#3641#3585#3588#3657#3634
          Width = 110
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'DEPAM1'
          Title.Alignment = taCenter
          Title.Caption = #3649#3612#3609#3585
          Width = 113
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SMNCM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          Width = 86
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'SERAM1'
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3638#3591
          Width = 111
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DDTAM1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3588#3619#3610#3585#3635#3627#3609#3604
          Width = 91
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'AMTAM1'
          Title.Alignment = taCenter
          Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
          Width = 100
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'BALAM1'
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
