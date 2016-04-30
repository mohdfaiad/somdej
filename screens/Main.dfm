object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'MainForm'
  ClientHeight = 629
  ClientWidth = 1081
  Color = clBtnFace
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  RTL = False
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel3: TUniPanel
    Left = 0
    Top = 0
    Width = 751
    Height = 629
    Caption = 'UniPanel3'
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 0
    ExplicitWidth = 720
    ExplicitHeight = 505
    object UniPanel2: TUniPanel
      Left = 1
      Top = 588
      Width = 749
      Height = 41
      Caption = 'UniPanel2'
      Align = alBottom
      Anchors = [akLeft, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 1
      ExplicitTop = 464
      ExplicitWidth = 718
    end
    object xxxxx: TUniPageControl
      Left = 1
      Top = 112
      Width = 749
      Height = 476
      ActivePage = UniTabSheet1
      TabOrder = 2
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ExplicitWidth = 718
      ExplicitHeight = 352
      object UniTabSheet1: TUniTabSheet
        Caption = 'V/S'
        ExplicitWidth = 710
        ExplicitHeight = 324
      end
      object UniTabSheet2: TUniTabSheet
        Caption = 'UniTabSheet2'
        ExplicitWidth = 710
        ExplicitHeight = 324
      end
    end
    object UniPanel4: TUniPanel
      Left = 1
      Top = 1
      Width = 749
      Height = 112
      Caption = 'UniPanel4'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 3
      ExplicitWidth = 718
      object UniDBImage1: TUniDBImage
        Left = 1
        Top = 1
        Width = 105
        Height = 110
        Center = True
        Stretch = False
        Proportional = False
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
      end
      object UniLabel1: TUniLabel
        Left = 112
        Top = 7
        Width = 14
        Height = 13
        Caption = 'HN'
        TabOrder = 2
      end
      object UniDBEdit1: TUniDBEdit
        Left = 132
        Top = 3
        Width = 70
        Height = 22
        PasswordChar = #0
        CharCase = ecNormal
        MaxLength = 0
        CharEOL = #0
        TabOrder = 3
        Color = clWindow
      end
    end
  end
  object UniPanel1: TUniPanel
    Left = 751
    Top = 0
    Width = 330
    Height = 629
    Caption = 'UniPanel3'
    Align = alRight
    Anchors = [akTop, akRight, akBottom]
    Color = clBtnFace
    TabOrder = 1
    ExplicitLeft = 720
    ExplicitHeight = 505
    object UniLabel2: TUniLabel
      Left = 6
      Top = 3
      Width = 37
      Height = 13
      Caption = #3588#3636#3623#3612#3641#3657#3611#3656#3623#3618
      TabOrder = 1
    end
    object UniLabel3: TUniLabel
      Left = 8
      Top = 26
      Width = 14
      Height = 13
      Caption = 'HN'
      TabOrder = 2
    end
    object UniDBEdit2: TUniDBEdit
      Left = 28
      Top = 22
      Width = 70
      Height = 22
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      TabOrder = 3
      Color = clWindow
    end
    object UniPanel5: TUniPanel
      Left = 1
      Top = 112
      Width = 328
      Height = 393
      Caption = 'UniPanel5'
      Color = clBtnFace
      TabOrder = 4
      object UniDBGrid1: TUniDBGrid
        Left = 1
        Top = 1
        Width = 326
        Height = 391
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        WebOptions.LoadMaskMsg = 'Please wait...'
        HeaderTitleAlign = taLeftJustify
        StripeRows = False
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        Columns = <
          item
            Title.Caption = 'HN'
            Width = 43
            Visible = True
            Expanded = False
          end
          item
            Title.Caption = 'VN'
            Width = 46
            Visible = True
            Expanded = False
          end
          item
            Title.Caption = #3594#3639#3656#3629'-'#3626#3585#3640#3621
            Width = 112
            Visible = True
            Expanded = False
          end
          item
            Title.Caption = 'L'
            Width = 16
            Visible = True
            Expanded = False
          end
          item
            Title.Caption = 'X'
            Width = 16
            Visible = True
            Expanded = False
          end
          item
            Title.Caption = 'Rx'
            Width = 18
            Visible = True
            Expanded = False
          end
          item
            Title.Caption = 'F'
            Width = 15
            Visible = True
            Expanded = False
          end
          item
            Title.Caption = 'Status'
            Width = 88
            Visible = True
            Expanded = False
          end>
      end
    end
  end
  object UniDBEdit3: TUniDBEdit
    Left = 900
    Top = 22
    Width = 70
    Height = 22
    PasswordChar = #0
    CharCase = ecNormal
    MaxLength = 0
    CharEOL = #0
    TabOrder = 2
    Color = clWindow
  end
  object UniLabel4: TUniLabel
    Left = 880
    Top = 26
    Width = 13
    Height = 13
    Caption = 'VN'
    TabOrder = 3
  end
end
