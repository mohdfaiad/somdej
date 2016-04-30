object MainPrint: TMainPrint
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'MainPrint'
  ClientHeight = 349
  ClientWidth = 452
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnFooter: TUniPanel
    Left = 0
    Top = 308
    Width = 452
    Height = 41
    Align = alBottom
    Anchors = [akLeft, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 0
    object btnBack: TUniButton
      Left = 5
      Top = 6
      Width = 75
      Height = 25
      Caption = #3585#3621#3633#3610#3627#3609#3657#3634#3648#3604#3636#3617
      ParentFont = False
      TabOrder = 0
      OnClick = btnBackClick
    end
  end
  object PrintURLFrame: TUniURLFrame
    Left = 0
    Top = 0
    Width = 452
    Height = 308
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ParentColor = False
    Color = clWindow
  end
end
