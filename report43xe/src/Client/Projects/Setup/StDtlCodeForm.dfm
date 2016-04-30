inherited frmStDtlCodeGrid: TfrmStDtlCodeGrid
  Caption = #3585#3635#3627#3609#3604#3619#3627#3633#3626#3648#3619#3636#3656#3617#3605#3657#3609#3619#3632#3610#3610' ('#3619#3627#3633#3626#3618#3656#3629#3618')'
  ClientWidth = 1051
  ExplicitLeft = -121
  ExplicitWidth = 1059
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 113
    Width = 1051
    Height = 326
    ExplicitTop = 113
    ExplicitWidth = 1051
    ExplicitHeight = 326
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1051
      Height = 326
      DataSource = dsgridDtl
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'CNOCDE'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3618#3656#3629#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 102
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCDE'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3652#3607#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 187
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ENMCDE'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Title.Font.Charset = THAI_CHARSET
          Width = 193
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'VA1CDE'
          Title.Alignment = taCenter
          Title.Caption = #3617#3641#3621#3588#3656#3634'-1'
          Title.Font.Charset = THAI_CHARSET
          Width = 90
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'VA2CDE'
          Title.Alignment = taCenter
          Title.Caption = #3617#3641#3621#3588#3656#3634'-2'
          Title.Font.Charset = THAI_CHARSET
          Width = 86
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'DT1CDE'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656' 1'
          Width = 64
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DT2CDE'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656' 2'
          Width = 64
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'AC1CDE'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3610#3633#3597#3594#3637' 1'
          Width = 70
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'AC2CDE'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3610#3633#3597#3594#3637' 2'
          Width = 70
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'DESCDE'
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3627#3605#3640
          Width = 92
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ABBCDE'
          Title.Alignment = taCenter
          Title.Caption = #3629#3633#3585#3625#3619#3618#3656#3629
          Width = 78
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'STSCDE'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Width = 40
          Visible = True
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
    Width = 1051
    Height = 113
    ExplicitWidth = 1051
    ExplicitHeight = 113
    inherited lbSearch: TUniLabel
      Left = 27
      Top = 77
      ExplicitLeft = 27
      ExplicitTop = 77
    end
    inherited edSearch: TUniEdit
      Left = 94
      Top = 77
      Width = 565
      Anchors = [akLeft, akTop]
      ExplicitLeft = 94
      ExplicitTop = 77
      ExplicitWidth = 565
    end
    inherited btnSearch: TUniButton
      Left = 715
      Top = 77
      Anchors = [akLeft, akTop]
      OnClick = btnSearchClick
      ExplicitLeft = 715
      ExplicitTop = 77
    end
    object LbHdrCode: TUniLabel
      Left = 27
      Top = 12
      Width = 40
      Height = 13
      Caption = #3619#3627#3633#3626#3627#3621#3633#3585
      ParentFont = False
      TabOrder = 4
    end
    object DbHdrCode: TUniDBEdit
      Left = 94
      Top = 12
      Width = 121
      Height = 21
      DataField = 'CIDCDE'
      DataSource = dsgridHdr
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
      ReadOnly = True
    end
    object LbThaiDesc: TUniLabel
      Left = 250
      Top = 12
      Width = 139
      Height = 13
      Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3652#3607#3618' ('#3619#3627#3633#3626#3627#3621#3633#3585')'
      ParentFont = False
      TabOrder = 6
    end
    object DbThaiDesc: TUniDBEdit
      Left = 408
      Top = 12
      Width = 251
      Height = 21
      DataField = 'TNMCDE'
      DataSource = dsgridHdr
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 7
      Color = clWindow
      ReadOnly = True
    end
    object LbEngDesc: TUniLabel
      Left = 250
      Top = 39
      Width = 152
      Height = 13
      Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625' ('#3619#3627#3633#3626#3627#3621#3633#3585')'
      ParentFont = False
      TabOrder = 8
    end
    object DbEngDesc: TUniDBEdit
      Left = 408
      Top = 39
      Width = 251
      Height = 21
      DataField = 'ENMCDE'
      DataSource = dsgridHdr
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 9
      Color = clWindow
      ReadOnly = True
    end
  end
  inherited pnFooter: TUniPanel
    Width = 1051
    ExplicitWidth = 1051
    DesignSize = (
      1051
      41)
    inherited btnDelete: TUniButton
      Left = 969
      Caption = #3621#3610#3619#3627#3633#3626#3618#3656#3629#3618
      OnClick = btnDeleteClick
      ExplicitLeft = 969
    end
    inherited btnEdit: TUniButton
      Left = 888
      Caption = #3649#3585#3657#3652#3586#3619#3627#3633#3626#3618#3656#3629#3618
      OnClick = btnEditClick
      ExplicitLeft = 888
    end
    inherited btnAdd: TUniButton
      Left = 807
      Caption = #3648#3614#3636#3656#3617#3619#3627#3633#3626#3618#3656#3629#3618
      OnClick = btnAddClick
      ExplicitLeft = 807
    end
    inherited BtnView: TUniButton
      Left = 724
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 724
    end
  end
  object dsgridDtl: TDataSource
    Left = 496
    Top = 200
  end
  object dsgridHdr: TDataSource
    Left = 728
    Top = 16
  end
end
