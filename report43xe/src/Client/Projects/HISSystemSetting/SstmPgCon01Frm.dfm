inherited frmSstmPgCon01: TfrmSstmPgCon01
  Caption = #3588#3657#3609#3627#3634' - '#3585#3635#3627#3609#3604#3619#3627#3633#3626#3648#3619#3636#3656#3617#3605#3657#3609#3619#3632#3610#3610
  ClientHeight = 508
  ClientWidth = 900
  KeyPreview = True
  OnKeyDown = UniFormKeyDown
  ExplicitWidth = 908
  ExplicitHeight = 535
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 900
    Height = 418
    ExplicitTop = 49
    ExplicitWidth = 900
    ExplicitHeight = 418
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 900
      Height = 418
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = BtnAddEdtSubCodeClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'CIDCDE'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3627#3621#3633#3585
          Title.Font.Charset = THAI_CHARSET
          Width = 135
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCDE'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3652#3607#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 266
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ENMCDE'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Title.Font.Charset = THAI_CHARSET
          Width = 326
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'STSCDE'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Title.Font.Charset = THAI_CHARSET
          Width = 130
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Font.Charset = THAI_CHARSET
          Width = -1
          Visible = False
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
    Width = 900
    Height = 49
    ExplicitWidth = 900
    ExplicitHeight = 49
    inherited lbSearch: TUniLabel
      Left = 195
      ExplicitLeft = 195
    end
    inherited edSearch: TUniEdit
      Left = 240
      Top = 13
      Width = 557
      ExplicitLeft = 240
      ExplicitTop = 13
      ExplicitWidth = 557
    end
    inherited btnSearch: TUniButton
      Left = 823
      Top = 13
      Caption = 'F6 - '#3588#3657#3609#3627#3634
      OnClick = btnSearchClick
      ExplicitLeft = 823
      ExplicitTop = 13
    end
    object LbCid: TUniLabel
      Left = 19
      Top = 14
      Width = 40
      Height = 13
      Caption = #3619#3627#3633#3626#3627#3621#3633#3585
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object EdCid: TUniEdit
      Left = 71
      Top = 13
      Width = 80
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
  end
  inherited pnFooter: TUniPanel
    Top = 467
    Width = 900
    ExplicitTop = 467
    ExplicitWidth = 900
    DesignSize = (
      900
      41)
    inherited btnDelete: TUniButton
      Left = 822
      Caption = #3621#3610#3619#3627#3633#3626#3627#3621#3633#3585
      OnClick = btnDeleteClick
      ExplicitLeft = 822
    end
    inherited btnEdit: TUniButton
      Left = 741
      Caption = #3649#3585#3657#3652#3586#3619#3627#3633#3626#3627#3621#3633#3585
      OnClick = btnEditClick
      ExplicitLeft = 741
    end
    inherited btnAdd: TUniButton
      Left = 660
      Caption = #3648#3614#3636#3656#3617#3619#3627#3633#3626#3627#3621#3633#3585
      OnClick = btnAddClick
      ExplicitLeft = 660
    end
    inherited BtnView: TUniButton
      Left = 577
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 577
    end
    object BtnAddEdtSubCode: TUniButton
      Left = 449
      Top = 6
      Width = 110
      Height = 25
      Caption = #3648#3614#3636#3656#3617'/'#3649#3585#3657#3652#3586#3619#3627#3633#3626#3618#3656#3629#3618
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 6
      OnClick = BtnAddEdtSubCodeClick
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
