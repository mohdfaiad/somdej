inherited frmCsCustomerGrid: TfrmCsCustomerGrid
  Caption = #3588#3657#3609#3627#3634' -'#3621#3641#3585#3627#3609#3637#3657'/'#3612#3641#3657#3588#3657#3635
  ClientHeight = 508
  ClientWidth = 1012
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
          FieldName = 'TNMCTY'
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607#3621#3641#3585#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 96
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSTA'
          Title.Alignment = taCenter
          Title.Caption = #3585#3621#3640#3656#3617#3621#3641#3585#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 104
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'CCNCSM'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3610#3640#3588#3588#3621
          Title.Font.Charset = THAI_CHARSET
          Width = 104
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'CDNCSI'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3610#3633#3605#3619
          Width = 140
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'FULLNAME'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629'-'#3626#3585#3640#3621
          Title.Font.Charset = THAI_CHARSET
          Width = 328
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'STSCSM'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Title.Font.Charset = THAI_CHARSET
          Width = 85
          Visible = True
          Alignment = taCenter
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
      Left = 527
      Top = 13
      ExplicitLeft = 527
      ExplicitTop = 13
    end
    inherited edSearch: TUniEdit
      Left = 576
      Top = 13
      Width = 313
      ExplicitLeft = 576
      ExplicitTop = 13
      ExplicitWidth = 313
    end
    inherited btnSearch: TUniButton
      Left = 915
      Top = 13
      OnClick = btnSearchClick
      ExplicitLeft = 915
      ExplicitTop = 13
    end
    object CmbCFG: TUniComboBox
      Left = 354
      Top = 11
      Width = 145
      Height = 21
      Style = csDropDown
      MaxLength = 0
      Text = 'C-'#3621#3641#3585#3588#3657#3634
      Items.Strings = (
        'C-'#3621#3641#3585#3588#3657#3634
        'G-'#3612#3641#3657#3588#3657#3635)
      ItemIndex = 0
      TabOrder = 4
      RemoteQuery = False
    end
    object UniLabel1: TUniLabel
      Left = 299
      Top = 15
      Width = 49
      Height = 13
      Caption = #3621#3641#3585#3588#3657#3634'/'#3612#3641#3657#3588#3657#3635
      ParentFont = False
      TabOrder = 5
    end
    object EdtCom: TUniEdit
      Left = 62
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Text = 'A'
      ParentFont = False
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 17
      Top = 18
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      Transparent = False
      TabOrder = 7
    end
    object EdtBrn: TUniEdit
      Left = 204
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      Text = 'ALL'
      ParentFont = False
      TabOrder = 8
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 159
      Top = 18
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      Transparent = False
      TabOrder = 9
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
