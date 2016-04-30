inherited frmRegisterNewPatient: TfrmRegisterNewPatient
  BorderIcons = []
  Caption = 'Main Data Form'
  ClientHeight = 430
  ClientWidth = 736
  ClientEvents.ExtEvents.Strings = (
    
      '0-OnActivate=function window.OnActivate(sender, eOpts)'#13#10'{  '#13#10'  /' +
      '/window.curWindow = sender; '#13#10'  var el = FSMainMenusForm.pnAppFr' +
      'ame.getPositionEl();'#13#10'  sender.setPosition(1, el.getTop(true)-1)' +
      ';'#13#10'  sender.setSize(el.getWidth()-1, el.getHeight()+1);  '#13#10'}')
  ExplicitWidth = 744
  ExplicitHeight = 457
  PixelsPerInch = 96
  TextHeight = 13
  object pnBody: TUniPanel
    Left = 0
    Top = 41
    Width = 736
    Height = 348
    Hint = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3627#3609#3657#3634#3592#3629#3626#3656#3623#3609#3585#3621#3634#3591
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 0
  end
  object pnFooter: TUniPanel
    Left = 0
    Top = 389
    Width = 736
    Height = 41
    Hint = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3627#3609#3657#3634#3592#3629#3626#3656#3623#3609#3621#3656#3634#3591
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 1
    DesignSize = (
      736
      41)
    object btnConfirm: TUniButton
      Left = 573
      Top = 6
      Width = 75
      Height = 25
      Caption = #3618#3639#3609#3618#3633#3609
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmClick
    end
    object btnCancel: TUniButton
      Left = 654
      Top = 6
      Width = 75
      Height = 25
      Caption = #3618#3585#3648#3621#3636#3585
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelClick
    end
    object btnBack: TUniButton
      Left = 5
      Top = 6
      Width = 75
      Height = 25
      Caption = #3585#3621#3633#3610#3627#3609#3657#3634#3648#3604#3636#3617
      ParentFont = False
      TabOrder = 2
      OnClick = btnCancelClick
    end
  end
  object pnHeader: TUniPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 41
    Hint = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3627#3609#3657#3634#3592#3629#3626#3656#3623#3609#3627#3633#3623
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    Color = clBtnFace
    TabOrder = 2
  end
end
