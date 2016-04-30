inherited frmAWRundownTMTGrid: TfrmAWRundownTMTGrid
  ActiveControl = EdtCom
  Caption = #3610#3633#3609#3607#3638#3585#3651#3609' Rundown '#3592#3634#3585' TMT'
  ClientHeight = 451
  ClientWidth = 998
  ExplicitWidth = 1006
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 73
    Width = 998
    Height = 337
    ExplicitTop = 73
    ExplicitWidth = 998
    ExplicitHeight = 337
    inherited dbgDataList: TUniDBGrid
      Left = 3
      Top = 0
      Width = 981
      Height = 327
      DataSource = dsgrid
      TabOrder = 1
      Columns = <
        item
          FieldName = 'TNMSRS'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609
          Width = 98
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'ITNRDW'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Width = 64
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 146
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'Q11RDW'
          Title.Alignment = taCenter
          Title.Caption = #3626#3633#3611#3604#3634#3627#3660' 1<br>'#3623#3633#3609#3607#3637#3656' xx-xx'
          Title.Font.Charset = THAI_CHARSET
          Width = 104
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'Q21RDW'
          Title.Alignment = taCenter
          Title.Caption = #3626#3633#3611#3604#3634#3627#3660' 2<br>'#3623#3633#3609#3607#3637#3656' xx-xx'
          Width = 102
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'Q31RDW'
          Title.Alignment = taCenter
          Title.Caption = #3626#3633#3611#3604#3634#3627#3660' 3<br>'#3623#3633#3609#3607#3637#3656' xx-xx'
          Width = 97
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'Q41RDW'
          Title.Alignment = taCenter
          Title.Caption = #3626#3633#3611#3604#3634#3627#3660' 4<br>'#3623#3633#3609#3607#3637#3656' xx-xx'
          Width = 78
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'Q51RDW'
          Title.Alignment = taCenter
          Title.Caption = #3652#3617#3656#3607#3619#3634#3610#3626#3633#3611#3604#3634#3627#3660
          Width = 91
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SUMRDW'
          Title.Alignment = taCenter
          Title.Caption = #3619#3623#3617
          Width = 96
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 998
    Height = 73
    ExplicitWidth = 998
    ExplicitHeight = 73
    inherited lbSearch: TUniLabel
      Left = 169
      Top = 40
      Width = 25
      Caption = #3648#3604#3639#3629#3609
      TabOrder = 6
      ExplicitLeft = 169
      ExplicitTop = 40
      ExplicitWidth = 25
    end
    inherited edSearch: TUniEdit
      Tag = 9
      Left = 214
      Top = 40
      Width = 73
      Anchors = [akLeft, akTop]
      TabOrder = 3
      ReadOnly = True
      ExplicitLeft = 214
      ExplicitTop = 40
      ExplicitWidth = 73
    end
    inherited btnSearch: TUniButton
      Left = 836
      Top = 40
      Width = 101
      Visible = False
      Caption = #3588#3633#3604#3621#3629#3585#3592#3634#3585#3605#3657#3609#3593#3610#3633#3610
      Anchors = [akLeft, akTop]
      TabOrder = 4
      OnClick = btnSearchClick
      ExplicitLeft = 836
      ExplicitTop = 40
      ExplicitWidth = 101
    end
    object LbCid: TUniLabel
      Left = 20
      Top = 39
      Width = 35
      Height = 13
      Caption = #3611#3619#3632#3592#3635#3611#3637
      ParentFont = False
      Transparent = False
      TabOrder = 7
    end
    object EdtYar: TUniEdit
      Tag = 9
      Left = 72
      Top = 40
      Width = 80
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 2
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel2: TUniLabel
      Left = 27
      Top = 13
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      Transparent = False
      TabOrder = 8
    end
    object EdtCom: TUniEdit
      Tag = 9
      Left = 72
      Top = 13
      Width = 80
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 0
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel3: TUniLabel
      Left = 170
      Top = 13
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      Transparent = False
      TabOrder = 9
    end
    object EdtBrn: TUniEdit
      Tag = 9
      Left = 214
      Top = 13
      Width = 73
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 1
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel1: TUniLabel
      Left = 323
      Top = 13
      Width = 133
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656' '#3651#3610' Rundown '#3592#3634#3585' TMT'
      ParentFont = False
      TabOrder = 10
    end
    object RDTRDW: TUniDateTimePicker
      Tag = 9
      Left = 692
      Top = 12
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      ReadOnly = True
      TabOrder = 11
      ParentColor = False
      Color = clWhite
    end
    object UniLabel4: TUniLabel
      Left = 640
      Top = 12
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel5: TUniLabel
      Left = 640
      Top = 40
      Width = 22
      Height = 13
      Caption = #3594#3640#3604#3607#3637#3656
      ParentFont = False
      TabOrder = 13
    end
    object DNORDW: TUniEdit
      Tag = 9
      Left = 692
      Top = 40
      Width = 138
      Height = 21
      Hint = #3594#3640#3604#3607#3637#3656
      HelpType = htKeyword
      HelpKeyword = 'DNORDW'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
      ReadOnly = True
    end
    object RNORDW: TUniEdit
      Tag = 9
      Left = 476
      Top = 13
      Width = 147
      Height = 21
      Hint = #3594#3640#3604#3607#3637#3656
      HelpType = htKeyword
      HelpKeyword = 'RNORDW'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 15
      Color = clWindow
    end
    object RdoRundown: TUniRadioButton
      Left = 323
      Top = 40
      Width = 113
      Height = 17
      Checked = True
      Caption = 'Rundown '#3605#3657#3609#3593#3610#3633#3610
      TabOrder = 16
      OnClick = RdoRundownClick
    end
    object RdoEdit: TUniRadioButton
      Left = 476
      Top = 40
      Width = 113
      Height = 17
      Checked = False
      Caption = #3611#3619#3633#3610#3611#3619#3640#3591
      TabOrder = 17
      OnClick = RdoEditClick
    end
  end
  inherited pnFooter: TUniPanel
    Top = 410
    Width = 998
    ExplicitTop = 410
    ExplicitWidth = 998
    DesignSize = (
      998
      41)
    inherited btnDelete: TUniButton
      Left = 915
      OnClick = btnDeleteClick
      ExplicitLeft = 915
    end
    inherited btnEdit: TUniButton
      Left = 834
      OnClick = btnEditClick
      ExplicitLeft = 834
    end
    inherited btnAdd: TUniButton
      Left = 753
      OnClick = btnAddClick
      ExplicitLeft = 753
    end
    inherited BtnView: TUniButton
      Left = 670
      TabOrder = 5
      OnClick = BtnViewClick
      ExplicitLeft = 670
    end
  end
  inherited smView: TUniScreenMask
    Left = 120
    Top = 192
  end
  inherited scBlak: TUniScreenMask
    Left = 24
    Top = 432
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
