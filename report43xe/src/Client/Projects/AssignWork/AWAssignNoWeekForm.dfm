inherited frmAWAssignNoWeekGrid: TfrmAWAssignNoWeekGrid
  ActiveControl = EdtCom
  Caption = #3610#3633#3609#3607#3638#3585#3651#3610' Assign ('#3652#3617#3656#3619#3632#3610#3640' Week) '#3629#3657#3634#3591#3651#3610' Rundown'
  ClientHeight = 451
  ClientWidth = 900
  ExplicitWidth = 908
  ExplicitHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 73
    Width = 900
    Height = 337
    ExplicitTop = 73
    ExplicitWidth = 900
    ExplicitHeight = 337
    inherited dbgDataList: TUniDBGrid
      Left = 14
      Top = 0
      Width = 883
      Height = 327
      DataSource = dsgrid
      TabOrder = 1
      Columns = <
        item
          FieldName = 'TNMSRS'
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'ITNASN'
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
          Width = 55
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMPM1'
          Title.Alignment = taCenter
          Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3626#3636#3609#3588#3657#3634
          Title.Font.Charset = THAI_CHARSET
          Width = 120
          Visible = True
          Expanded = False
        end
        item
          FieldName = 'SO1ASN'
          Title.Alignment = taCenter
          Title.Caption = #3626#3605#3658#3629#3588#3619#3606'<br>'#3648#3585#3656#3634
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SN1ASN'
          Title.Alignment = taCenter
          Title.Caption = #3626#3605#3658#3629#3588#3619#3606'<br>'#3651#3627#3617#3656
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'SSMASN'
          Title.Alignment = taCenter
          Title.Caption = #3619#3623#3617
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'A11ASN'
          Title.Alignment = taCenter
          Title.Caption = 'Assign<br>'#3626#3633#3611#3604#3634#3627#3660' 1'
          Title.Font.Charset = THAI_CHARSET
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'A21ASN'
          Title.Alignment = taCenter
          Title.Caption = 'Assign<br>'#3626#3633#3611#3604#3634#3627#3660' 2'
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'A31ASN'
          Title.Alignment = taCenter
          Title.Caption = ' Assign<br>'#3626#3633#3611#3604#3634#3627#3660' 3'
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'A41ASN'
          Title.Alignment = taCenter
          Title.Caption = 'Assign<br>'#3626#3633#3611#3604#3634#3627#3660' 4'
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'ASMASN'
          Title.Alignment = taCenter
          Title.Caption = 'Assign<br>'#3619#3623#3617
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'ALLASN'
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3636#3617#3634#3603#3592#3633#3604#3626#3619#3619'<br>'#3619#3623#3617
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'ODTASN'
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3588#3635#3586#3629#3595#3639#3657#3629'<br>'#3623#3633#3609#3619#3633#3610#3592#3629#3591
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'ODNASN'
          Title.Alignment = taCenter
          Title.Caption = #3651#3610#3588#3635#3586#3629#3595#3639#3657#3629'<br>'#3648#3621#3586#3607#3637#3656
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMCNO'
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'TNMSMN'
          Title.Alignment = taCenter
          Title.Caption = #3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'EXDOM5'
          Title.Alignment = taCenter
          Title.Caption = #3623#3633#3609#3607#3637#3656#3626#3656#3591#3617#3629#3610
          Width = 64
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          FieldName = 'REMASN'
          Title.Alignment = taCenter
          Title.Caption = #3619#3606#3648#3627#3621#3639#3629'<br>'#3626#3636#3609#3648#3604#3639#3629#3609
          Width = 60
          Visible = True
          Alignment = taCenter
          Expanded = False
        end>
    end
  end
  inherited pnHeader: TUniPanel
    Width = 900
    Height = 73
    ExplicitWidth = 900
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
      Top = 42
      Width = 56
      Caption = '...'
      Anchors = [akLeft, akTop]
      TabOrder = 4
      OnClick = btnSearchClick
      ExplicitLeft = 815
      ExplicitTop = 42
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
    object UniLabel1: TUniLabel
      Left = 299
      Top = 9
      Width = 118
      Height = 13
      Caption = #3629#3657#3634#3591#3629#3636#3591#3651#3610' Rundown '#3648#3621#3586#3607#3637#3656
      ParentFont = False
      TabOrder = 10
    end
    object RDTRDW: TUniDateTimePicker
      Tag = 9
      Left = 671
      Top = 13
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656
      DateTime = 41173.000000000000000000
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
      Left = 619
      Top = 13
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 12
    end
    object UniLabel5: TUniLabel
      Left = 299
      Top = 37
      Width = 146
      Height = 13
      Caption = #3648#3621#3586#3607#3637#3656' '#3651#3610' Assign ('#3652#3617#3656#3619#3632#3610#3640' Week)'
      ParentFont = False
      TabOrder = 13
    end
    object DNOPAS: TUniEdit
      Tag = 9
      Left = 454
      Top = 37
      Width = 147
      Height = 21
      Hint = #3648#3621#3586#3607#3637#3656' '#3651#3610' Pre Assign'
      HelpType = htKeyword
      HelpKeyword = 'DNOPAS'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 14
      Color = clWindow
      ReadOnly = True
    end
    object DNORDW: TUniEdit
      Tag = 9
      Left = 454
      Top = 9
      Width = 147
      Height = 21
      Hint = #3648#3621#3586#3607#3637#3656#3651#3610' Rundown '#3592#3634#3585' TMT'
      HelpType = htKeyword
      HelpKeyword = 'DNORDW'
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 15
      Color = clWindow
      ReadOnly = True
    end
    object UniLabel6: TUniLabel
      Left = 619
      Top = 40
      Width = 20
      Height = 13
      Caption = #3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 16
    end
    object RDTPAS: TUniDateTimePicker
      Tag = 9
      Left = 671
      Top = 40
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656
      DateTime = 41173.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      ReadOnly = True
      TabOrder = 17
      ParentColor = False
      Color = clWhite
    end
    object BtnGetPreAssignNo: TUniButton
      Left = 815
      Top = 9
      Width = 56
      Height = 25
      Caption = 'Assign'
      ParentFont = False
      TabOrder = 18
      OnClick = BtnGetPreAssignNoClick
    end
  end
  inherited pnFooter: TUniPanel
    Top = 410
    Width = 900
    ExplicitTop = 410
    ExplicitWidth = 900
    DesignSize = (
      900
      41)
    inherited btnDelete: TUniButton
      Left = 817
      Visible = False
      ExplicitLeft = 817
    end
    inherited btnEdit: TUniButton
      Left = 736
      Visible = False
      ExplicitLeft = 736
    end
    inherited btnAdd: TUniButton
      Left = 655
      Visible = False
      ExplicitLeft = 655
    end
    inherited BtnView: TUniButton
      Left = 572
      Visible = False
      TabOrder = 5
      ExplicitLeft = 572
    end
    object btnConfirm: TUniButton
      Left = 736
      Top = 6
      Width = 75
      Height = 25
      Caption = #3618#3639#3609#3618#3633#3609
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 7
      OnClick = btnConfirmClick
    end
    object btnCancel: TUniButton
      Tag = 1
      Left = 817
      Top = 6
      Width = 75
      Height = 25
      Visible = False
      Caption = #3618#3585#3648#3621#3636#3585
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 6
      OnClick = btnCancelClick
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
