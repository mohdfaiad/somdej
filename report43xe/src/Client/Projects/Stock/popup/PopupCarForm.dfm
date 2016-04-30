object PopupCar: TPopupCar
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #3588#3657#3609#3627#3634' - '#3619#3606#3618#3609#3605#3660
  ClientHeight = 372
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnBody: TUniPanel
    Left = 0
    Top = 41
    Width = 594
    Height = 290
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 0
    DesignSize = (
      594
      290)
    object dbgDataList: TUniDBGrid
      Left = 3
      Top = 6
      Width = 582
      Height = 276
      DataSource = dscPopupData
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMask = True
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3588#3657#3609#3627#3634'...'
      StripeRows = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 0
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
          Width = 140
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
          Width = 139
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3640#3656#3609#3619#3606
          Width = 128
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3626#3637
          Width = 112
          Visible = True
          Expanded = False
        end>
    end
  end
  object pnFooter: TUniPanel
    Left = 0
    Top = 331
    Width = 594
    Height = 41
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 1
    DesignSize = (
      594
      41)
    object btnPopupConfirm: TUniButton
      Left = 431
      Top = 6
      Width = 75
      Height = 25
      Caption = #3605#3585#3621#3591
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 0
      OnClick = btnPopupConfirmClick
    end
    object btnPopupCancel: TUniButton
      Left = 512
      Top = 6
      Width = 75
      Height = 25
      Caption = #3618#3585#3648#3621#3636#3585
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 1
      OnClick = btnPopupCancelClick
    end
    object btnPopupView: TUniButton
      Left = 5
      Top = 6
      Width = 75
      Height = 25
      Visible = False
      Enabled = False
      Caption = #3604#3641#3586#3657#3629#3617#3641#3621
      ParentFont = False
      TabOrder = 2
      OnClick = btnPopupViewClick
    end
    object btnPopupAdd: TUniButton
      Left = 86
      Top = 6
      Width = 75
      Height = 25
      Visible = False
      Enabled = False
      Caption = #3648#3614#3636#3656#3617
      ParentFont = False
      TabOrder = 3
      OnClick = btnPopupAddClick
    end
    object btnPopupEdit: TUniButton
      Left = 167
      Top = 6
      Width = 75
      Height = 25
      Visible = False
      Enabled = False
      Caption = #3649#3585#3657#3652#3586
      ParentFont = False
      TabOrder = 4
      OnClick = btnPopupEditClick
    end
  end
  object pnHeader: TUniPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 41
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    TabOrder = 2
    DesignSize = (
      594
      41)
    object lbSearch: TUniLabel
      Left = 15
      Top = 14
      Width = 26
      Height = 13
      Caption = #3588#3657#3609#3627#3634
      ParentFont = False
      TabOrder = 3
    end
    object edSearch: TUniEdit
      Left = 55
      Top = 11
      Width = 451
      Height = 21
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Color = clWindow
      OnKeyPress = edSearchKeyPress
    end
    object btnSearch: TUniButton
      Left = 512
      Top = 10
      Width = 75
      Height = 25
      Caption = #3588#3657#3609#3627#3634
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSearchClick
    end
  end
  object dscPopupData: TDataSource
    Left = 152
    Top = 88
  end
end
