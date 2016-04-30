inherited frmPsRcvProductNoPoGrid: TfrmPsRcvProductNoPoGrid
  Caption = #3588#3657#3609#3627#3634' - '#3651#3610#3619#3633#3610#3626#3636#3609#3588#3657#3634' '#3607#3637#3656#3652#3617#3656#3617#3637#3651#3610#3626#3633#3656#3591#3595#3639#3657#3629
  ClientHeight = 405
  ClientWidth = 872
  ExplicitWidth = 880
  ExplicitHeight = 439
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 872
    Height = 315
    ExplicitTop = 49
    ExplicitWidth = 872
    ExplicitHeight = 315
    inherited dbgDataList: TUniDBGrid
      Left = 0
      Top = 0
      Width = 872
      Height = 315
      DataSource = dsgrid
      OnTitleClick = dbgDataListTitleClick
      OnDblClick = btnEditClick
      Align = alClient
      TabOrder = 1
      Columns = <
        item
          FieldName = 'BRNPT1'
          Title.Alignment = taCenter
          Title.Caption = #3626#3634#3586#3634
          Width = 56
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'DNOPT1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
          Width = 77
          Visible = True
          Color = clWhite
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'VNOPT1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3592#3635#3627#3609#3656#3634#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 66
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'RNOPT1'
          Title.Alignment = taCenter
          Title.Caption = #3629#3636#3609#3623#3629#3618#3595#3660
          Width = 78
          Visible = True
          Color = clWhite
          Expanded = False
        end
        item
          FieldName = 'RDVPT1'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 72
          Visible = True
          Color = clWhite
          Font.Charset = THAI_CHARSET
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSRS'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Width = 75
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ITNPT1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3619#3606
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'TNMCOL'
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 67
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'SERPT1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ENGPT1'
          Title.Alignment = taCenter
          Title.Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          Width = 80
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'RATPT1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3588#3634
          Width = 80
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'VAMPT1'
          Title.Alignment = taCenter
          Title.Caption = #3616#3634#3625#3637#3617#3641#3621#3588#3656#3634#3648#3614#3636#3656#3617
          Width = 80
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'NETPT1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3623#3617#3648#3591#3636#3609#3626#3640#3607#3608#3636
          Width = 80
          Visible = True
          Alignment = taRightJustify
          Expanded = False
        end
        item
          FieldName = 'DDTPT1'
          Title.Alignment = taCenter
          Title.Caption = #3585#3635#3627#3609#3604#3594#3635#3619#3632
          Width = 92
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 872
    Height = 49
    ExplicitWidth = 872
    ExplicitHeight = 49
    inherited lbSearch: TUniLabel
      Left = 452
      Top = 18
      ExplicitLeft = 452
      ExplicitTop = 18
    end
    inherited edSearch: TUniEdit
      Left = 486
      Top = 13
      Width = 273
      ExplicitLeft = 486
      ExplicitTop = 13
      ExplicitWidth = 273
    end
    inherited btnSearch: TUniButton
      Left = 782
      Top = 13
      OnClick = btnSearchClick
      ExplicitLeft = 782
      ExplicitTop = 13
    end
    object UniLabel1: TUniLabel
      Left = 27
      Top = 18
      Width = 7
      Height = 13
      Caption = #3611#3637
      ParentFont = False
      Transparent = False
      TabOrder = 4
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
      TabOrder = 5
      Color = clWindow
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
      TabOrder = 6
      Color = clWindow
    end
    object UniLabel2: TUniLabel
      Left = 155
      Top = 18
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      Transparent = False
      TabOrder = 7
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
      TabOrder = 8
      Color = clWindow
    end
    object UniLabel3: TUniLabel
      Left = 297
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
    Top = 364
    Width = 872
    ExplicitTop = 364
    ExplicitWidth = 872
    DesignSize = (
      872
      41)
    inherited btnDelete: TUniButton
      Left = 790
      OnClick = btnDeleteClick
      ExplicitLeft = 790
    end
    inherited btnEdit: TUniButton
      Left = 709
      OnClick = btnEditClick
      ExplicitLeft = 709
    end
    inherited btnAdd: TUniButton
      Left = 628
      OnClick = btnAddClick
      ExplicitLeft = 628
    end
    inherited BtnView: TUniButton
      Left = 545
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 545
    end
  end
  inherited smSearch: TUniScreenMask
    TargetControl = dbgDataList
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
