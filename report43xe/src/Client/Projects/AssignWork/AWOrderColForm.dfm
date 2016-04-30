inherited frmAWOrderColGrid: TfrmAWOrderColGrid
  ActiveControl = EdtCom
  Caption = #3610#3633#3609#3607#3638#3585#3651#3610' '#3626#3633#3656#3591#3626#3637
  ClientHeight = 451
  ClientWidth = 994
  ExplicitTop = 8
  ExplicitWidth = 1002
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 73
    Width = 994
    Height = 337
    ExplicitTop = 73
    ExplicitWidth = 994
    ExplicitHeight = 337
    inherited dbgDataList: TUniDBGrid
      Left = 3
      Width = 977
      Height = 325
      DataSource = dsgrid
      TabOrder = 1
      Columns = <
        item
          FieldName = 'IDTAD1'
          Title.Alignment = taCenter
          Title.Caption = 'Assign Date'
          Width = 133
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'IWKAD1'
          Title.Alignment = taCenter
          Title.Caption = 'Period Week'
          Width = 73
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSRS'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Title.Font.Charset = THAI_CHARSET
          Width = 191
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Width = 237
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCOL'
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 198
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607#3626#3636#3609#3588#3657#3634
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
          Alignment = taCenter
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end
        item
          Width = -1
          Visible = False
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 994
    Height = 73
    BorderStyle = ubsFrameLowered
    ExplicitWidth = 994
    ExplicitHeight = 73
    inherited lbSearch: TUniLabel
      Left = 163
      Top = 40
      Width = 25
      Caption = #3648#3604#3639#3629#3609
      TabOrder = 6
      ExplicitLeft = 163
      ExplicitTop = 40
      ExplicitWidth = 25
    end
    inherited edSearch: TUniEdit
      Tag = 9
      Left = 208
      Top = 40
      Width = 73
      Anchors = [akLeft, akTop]
      TabOrder = 3
      ReadOnly = True
      ExplicitLeft = 208
      ExplicitTop = 40
      ExplicitWidth = 73
    end
    inherited btnSearch: TUniButton
      Left = 815
      Top = 41
      Width = 56
      Hint = #3588#3657#3609#3627#3634#3651#3610#3626#3633#3656#3591#3626#3637
      Caption = '...'
      Anchors = [akLeft, akTop]
      TabOrder = 4
      ExplicitLeft = 815
      ExplicitTop = 41
      ExplicitWidth = 56
    end
    object LbCid: TUniLabel
      Left = 14
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
      Left = 66
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
      Left = 14
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
      Left = 66
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
      Left = 164
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
      Left = 208
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
    object RDTCOL: TUniDateTimePicker
      Tag = 9
      Left = 671
      Top = 13
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656
      DateTime = 41172.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      ReadOnly = True
      TabOrder = 10
      ParentColor = False
      Color = clWhite
    end
    object UniLabel4: TUniLabel
      Left = 629
      Top = 14
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 11
    end
    object UniLabel5: TUniLabel
      Left = 299
      Top = 41
      Width = 57
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3626#3633#3656#3591#3626#3637
      ParentFont = False
      TabOrder = 12
    end
    object DNOCOL: TUniEdit
      Tag = 9
      Left = 386
      Top = 41
      Width = 147
      Height = 21
      Hint = #3648#3621#3586#3607#3637#3656' '#3651#3610' Pre Assign'
      HelpType = htKeyword
      HelpKeyword = 'DNOCOL'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 13
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel6: TUniLabel
      Left = 576
      Top = 41
      Width = 73
      Height = 13
      Caption = #3626#3633#3611#3604#3634#3627#3660#3607#3637#3656' x '#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 14
    end
    object RDTPAS: TUniDateTimePicker
      Tag = 9
      Left = 671
      Top = 41
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656
      DateTime = 41172.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      ReadOnly = True
      TabOrder = 15
      ParentColor = False
      Color = clWhite
    end
    object BtnGetOrderCol: TUniButton
      Left = 815
      Top = 10
      Width = 56
      Height = 25
      Visible = False
      Caption = #3626#3633#3656#3591#3626#3637
      ParentFont = False
      TabOrder = 16
      OnClick = BtnGetOrderColClick
    end
    object UniLabel1: TUniLabel
      Left = 299
      Top = 13
      Width = 133
      Height = 13
      Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610' Assign ('#3619#3632#3610#3640' Week)'
      ParentFont = False
      TabOrder = 17
    end
    object RWKCOL: TUniEdit
      Tag = 9
      Left = 454
      Top = 13
      Width = 79
      Height = 21
      Hint = #3648#3621#3586#3607#3637#3656#3651#3610' Rundown '#3592#3634#3585' TMT'
      HelpType = htKeyword
      HelpKeyword = 'DNORDW'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 18
      Color = clWindow
      ReadOnly = True
    end
  end
  inherited pnFooter: TUniPanel
    Top = 410
    Width = 994
    ExplicitTop = 410
    ExplicitWidth = 994
    DesignSize = (
      994
      41)
    inherited btnDelete: TUniButton
      Left = 911
      Visible = False
      ExplicitLeft = 911
    end
    inherited btnEdit: TUniButton
      Left = 830
      Visible = False
      ExplicitLeft = 830
    end
    inherited btnAdd: TUniButton
      Left = 749
      Visible = False
      ExplicitLeft = 749
    end
    inherited BtnView: TUniButton
      Left = 666
      Visible = False
      TabOrder = 5
      ExplicitLeft = 666
    end
    object btnConfirm: TUniButton
      Left = 830
      Top = 6
      Width = 75
      Height = 25
      Visible = False
      Caption = #3618#3639#3609#3618#3633#3609
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 7
      OnClick = btnConfirmClick
    end
    object btnCancel: TUniButton
      Tag = 1
      Left = 911
      Top = 6
      Width = 75
      Height = 25
      Visible = False
      Caption = #3618#3585#3648#3621#3636#3585
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 6
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
