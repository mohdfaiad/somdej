inherited MainGridForm: TMainGridForm
  BorderIcons = []
  Caption = 'MainGridForm'
  ClientHeight = 480
  ClientWidth = 851
  OnCreate = UniFormCreate
  ExplicitWidth = 859
  ExplicitHeight = 507
  PixelsPerInch = 96
  TextHeight = 13
  object pnBody: TUniPanel
    Left = 0
    Top = 41
    Width = 851
    Height = 398
    Hint = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3627#3609#3657#3634#3592#3629#3626#3656#3623#3609#3585#3621#3634#3591
    BorderStyle = ubsNone
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 0
    DesignSize = (
      851
      398)
    object dbgDataList: TUniDBGrid
      Left = 5
      Top = 6
      Width = 839
      Height = 384
      Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
      HeaderTitleAlign = taLeftJustify
      StripeRows = False
      Anchors = [akLeft, akTop, akRight, akBottom]
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnHeader: TUniPanel
    Left = 0
    Top = 0
    Width = 851
    Height = 41
    Hint = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3627#3609#3657#3634#3592#3629#3626#3656#3623#3609#3627#3633#3623
    BorderStyle = ubsNone
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    TabOrder = 2
    DesignSize = (
      851
      41)
    object lbSearch: TUniLabel
      Left = 15
      Top = 14
      Width = 26
      Height = 13
      Caption = #3588#3657#3609#3627#3634
      ParentFont = False
      Transparent = False
      TabOrder = 3
    end
    object edSearch: TUniEdit
      Left = 55
      Top = 11
      Width = 708
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 0
      Color = clWindow
    end
    object btnSearch: TUniButton
      Left = 769
      Top = 10
      Width = 75
      Height = 25
      Caption = #3588#3657#3609#3627#3634
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 1
    end
  end
  object pnFooter: TUniPanel
    Left = 0
    Top = 439
    Width = 851
    Height = 41
    Hint = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3627#3609#3657#3634#3592#3629#3626#3656#3623#3609#3621#3656#3634#3591
    BorderStyle = ubsNone
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 1
    DesignSize = (
      851
      41)
    object btnBack: TUniButton
      Left = 3
      Top = 6
      Width = 75
      Height = 25
      Caption = #3585#3621#3633#3610#3627#3609#3657#3634#3648#3604#3636#3617
      ParentFont = False
      TabOrder = 0
      OnClick = btnBackClick
    end
    object btnDelete: TUniButton
      Left = 769
      Top = 6
      Width = 75
      Height = 25
      Caption = #3621#3610
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 3
    end
    object btnEdit: TUniButton
      Left = 688
      Top = 6
      Width = 75
      Height = 25
      Caption = #3649#3585#3657#3652#3586
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 2
    end
    object btnAdd: TUniButton
      Left = 607
      Top = 6
      Width = 75
      Height = 25
      Caption = #3648#3614#3636#3656#3617
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 1
    end
    object BtnView: TUniButton
      Left = 526
      Top = 6
      Width = 75
      Height = 25
      Caption = #3604#3641#3586#3657#3629#3617#3641#3621
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 4
    end
  end
  object smView: TUniScreenMask
    AttachedControl = BtnView
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3648#3619#3637#3618#3585#3604#3641#3586#3657#3629#3617#3641#3621'...'
    Left = 104
    Top = 160
  end
  object smAdd: TUniScreenMask
    AttachedControl = btnAdd
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3648#3605#3619#3637#3618#3617#3585#3634#3619#3648#3614#3636#3656#3617#3586#3657#3629#3617#3641#3621'...'
    Left = 176
    Top = 160
  end
  object smEdit: TUniScreenMask
    AttachedControl = btnEdit
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3648#3605#3619#3637#3618#3617#3585#3634#3619#3649#3585#3657#3652#3586#3586#3657#3629#3617#3641#3621'...'
    Left = 264
    Top = 160
  end
  object smSearch: TUniScreenMask
    AttachedControl = btnSearch
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3588#3657#3609#3627#3634#3586#3657#3629#3617#3641#3621'...'
    Left = 344
    Top = 160
  end
  object scBlak: TUniScreenMask
    AttachedControl = btnBack
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3585#3621#3633#3610#3627#3609#3657#3634#3648#3604#3636#3617'...'
    Left = 32
    Top = 160
  end
end
