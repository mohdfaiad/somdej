inherited frmStRunningGrid: TfrmStRunningGrid
  Caption = #3588#3657#3609#3627#3634' - '#3585#3635#3627#3609#3604#3619#3627#3633#3626#3648#3619#3636#3656#3617#3605#3657#3609#3619#3632#3610#3610
  ClientHeight = 492
  ClientWidth = 1022
  OnCreate = UniFormCreate
  ExplicitWidth = 1030
  ExplicitHeight = 526
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 1022
    Height = 402
    ExplicitTop = 49
    ExplicitWidth = 1022
    ExplicitHeight = 402
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 1022
      Height = 402
      DataSource = dsgrid
      WebOptions.LoadMaskMsg = 'Please wait...'
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'CMPNB1'
          Title.Alignment = taCenter
          Title.Caption = #3610#3619#3636#3625#3633#3607
          Width = 33
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'BRNNB1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634
          Width = 32
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DCDNB1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3648#3629#3585#3626#3634#3619
          Title.Font.Charset = THAI_CHARSET
          Width = 60
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'TNMCDE'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3652#3607#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 125
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'ENMCDE'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3629#3608#3636#3610#3634#3618#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Title.Font.Charset = THAI_CHARSET
          Width = 108
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Expanded = False
        end
        item
          FieldName = 'DCDNB1'
          Title.Alignment = taCenter
          Title.Caption = #3588#3635#3609#3635#3627#3609#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 49
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'PR1NB1'
          Title.Alignment = taCenter
          Title.Caption = #3586#3633#3657#3609
          Width = 23
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'YARNB1'
          Title.Alignment = taCenter
          Title.Caption = #3611#3637
          Title.Font.Charset = THAI_CHARSET
          Width = 35
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'PR2NB1'
          Title.Alignment = taCenter
          Title.Caption = #3586#3633#3657#3609#3585#3621#3634#3591
          Width = 42
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'N01NB1'
          Title.Alignment = taCenter
          Title.Caption = '1'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N02NB1'
          Title.Alignment = taCenter
          Title.Caption = '2'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N03NB1'
          Title.Alignment = taCenter
          Title.Caption = '3'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N04NB1'
          Title.Alignment = taCenter
          Title.Caption = '4'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N05NB1'
          Title.Alignment = taCenter
          Title.Caption = '5'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N06NB1'
          Title.Alignment = taCenter
          Title.Caption = '6'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N07NB1'
          Title.Alignment = taCenter
          Title.Caption = '7'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N08NB1'
          Title.Alignment = taCenter
          Title.Caption = '8'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N09NB1'
          Title.Alignment = taCenter
          Title.Caption = '9'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N10NB1'
          Title.Alignment = taCenter
          Title.Caption = '10'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N11NB1'
          Title.Alignment = taCenter
          Title.Caption = '11'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'N12NB1'
          Title.Alignment = taCenter
          Title.Caption = '12'
          Title.Font.Charset = THAI_CHARSET
          Width = 50
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'STSNB1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3606#3634#3609#3632
          Title.Font.Charset = THAI_CHARSET
          Width = 44
          Visible = True
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1022
    Height = 49
    ExplicitWidth = 1022
    ExplicitHeight = 49
    inherited lbSearch: TUniLabel
      Left = 19
      Top = 18
      Width = 7
      Caption = #3611#3637
      TabOrder = 1
      ExplicitLeft = 19
      ExplicitTop = 18
      ExplicitWidth = 7
    end
    inherited edSearch: TUniEdit
      Left = 552
      Top = 13
      Width = 105
      Anchors = [akLeft, akTop]
      TabOrder = 7
      OnKeyPress = edSearchKeyPress
      ExplicitLeft = 552
      ExplicitTop = 13
      ExplicitWidth = 105
    end
    inherited btnSearch: TUniButton
      Left = 682
      Top = 13
      Anchors = [akLeft, akTop]
      TabOrder = 0
      OnClick = btnSearchClick
      ExplicitLeft = 682
      ExplicitTop = 13
    end
    object EdtYar: TUniEdit
      Left = 64
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 3
      Color = clWindow
      OnKeyPress = EdtYarKeyPress
    end
    object EdtCom: TUniEdit
      Left = 200
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 4
      Color = clWindow
      OnKeyPress = EdtComKeyPress
    end
    object UniLabel1: TUniLabel
      Left = 155
      Top = 18
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      Transparent = False
      TabOrder = 2
    end
    object EdtBrn: TUniEdit
      Left = 342
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 5
      Color = clWindow
      OnKeyPress = EdtBrnKeyPress
    end
    object UniLabel2: TUniLabel
      Left = 297
      Top = 18
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      Transparent = False
      TabOrder = 8
    end
    object UniLabel3: TUniLabel
      Left = 457
      Top = 18
      Width = 54
      Height = 13
      Caption = #3619#3627#3633#3626#3648#3629#3585#3626#3634#3619
      ParentFont = False
      Transparent = False
      TabOrder = 9
    end
  end
  inherited pnFooter: TUniPanel
    Top = 451
    Width = 1022
    ExplicitTop = 451
    ExplicitWidth = 1022
    DesignSize = (
      1022
      41)
    inherited btnDelete: TUniButton
      Left = 940
      OnClick = btnDeleteClick
      ExplicitLeft = 940
    end
    inherited btnEdit: TUniButton
      Left = 859
      OnClick = btnEditClick
      ExplicitLeft = 859
    end
    inherited btnAdd: TUniButton
      Left = 778
      OnClick = btnAddClick
      ExplicitLeft = 778
    end
    inherited BtnView: TUniButton
      Left = 695
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 695
    end
    object BtnAddBrnGenDoc: TUniButton
      Left = 552
      Top = 6
      Width = 110
      Height = 25
      Caption = #3648#3614#3636#3656#3617#3614#3636#3648#3624#3625
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 6
      OnClick = BtnAddBrnGenDocClick
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
