inherited frmMsSetupLineSummarryData: TfrmMsSetupLineSummarryData
  Caption = #3610#3633#3609#3607#3638#3585#3610#3619#3619#3607#3633#3604#3586#3629#3591#3618#3629#3604#3612#3621#3619#3623#3617
  ClientHeight = 536
  ClientWidth = 952
  Position = poDesigned
  WindowState = wsMaximized
  ExplicitWidth = 960
  ExplicitHeight = 570
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 49
    Width = 952
    Height = 446
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 70
    ExplicitWidth = 870
    ExplicitHeight = 621
    object PnDtlGrid1: TUniPanel
      Left = 1
      Top = 100
      Width = 950
      Height = 346
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      Color = clBtnFace
      TabOrder = 1
      object dbgDataList: TUniDBGrid
        Left = 1
        Top = 45
        Width = 948
        Height = 188
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        WebOptions.LoadMaskMsg = 'Please wait...'
        StripeRows = False
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        ParentFont = False
        TabOrder = 1
        Columns = <
          item
            Title.Alignment = taCenter
            Title.Caption = #3629#3633#3609#3604#3633#3610
            Title.Font.Charset = THAI_CHARSET
            Width = 41
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3616#3634#3625#3634#3652#3607#3618
            Width = 118
            Visible = True
            Color = clWhite
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
            Title.Font.Charset = THAI_CHARSET
            Width = 122
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3629#3657#3634#3591#3629#3636#3591#3610#3619#3619#3607#3633#3604'<br>'#3619#3634#3618#3591#3634#3609#3611#3619#3632#3585#3629#3610
            Width = 98
            Visible = True
            Color = clWhite
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3588#3635#3609#3623#3603'<br>(Y/N)'
            Width = 94
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3605#3635#3649#3627#3609#3656#3591'<br>'#3585#3634#3619#3614#3636#3617#3614#3660
            Width = 97
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3586#3637#3604#3648#3626#3657#3609#3651#3605#3657'<br>'#3610#3619#3619#3607#3633#3604
            Width = 80
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3611#3619#3632#3585#3629#3610#3610#3633#3597#3594#3637'<br>DR/CR'
            Width = 76
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3626#3641#3605#3619#3588#3635#3609#3623#3603'<br>1'
            Width = 65
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3626#3641#3605#3619#3588#3635#3609#3623#3603'<br>2'
            Width = 58
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3626#3606#3634#3609#3632
            Width = 64
            Visible = True
            Expanded = False
          end>
      end
      object PnSearch: TUniPanel
        Left = 1
        Top = 1
        Width = 948
        Height = 45
        Align = alTop
        Anchors = [akLeft, akTop, akRight]
        Color = clBtnFace
        TabOrder = 2
        object lbSearch: TUniLabel
          Left = 15
          Top = 13
          Width = 26
          Height = 13
          Caption = #3588#3657#3609#3627#3634
          ParentFont = False
          Transparent = False
          TabOrder = 1
        end
        object edSearch: TUniEdit
          Left = 78
          Top = 8
          Width = 685
          Height = 21
          Hint = #3588#3657#3609#3627#3634
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 2
          Color = clWindow
        end
        object btnSearch: TUniButton
          Left = 854
          Top = 6
          Width = 75
          Height = 25
          Caption = #3588#3657#3609#3627#3634
          ParentFont = False
          TabOrder = 3
        end
      end
      object UniDBGrid1: TUniDBGrid
        Left = 1
        Top = 237
        Width = 948
        Height = 109
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        WebOptions.LoadMaskMsg = 'Please wait...'
        StripeRows = False
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        ParentFont = False
        TabOrder = 3
        Columns = <
          item
            Title.Alignment = taCenter
            Title.Caption = #3629#3633#3609#3604#3633#3610
            Title.Font.Charset = THAI_CHARSET
            Width = 41
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3594#3656#3623#3591#3610#3619#3619#3607#3633#3604#3585#3634#3619#3588#3635#3609#3623#3603'<br>'#3592#3634#3585
            Width = 175
            Visible = True
            Color = clWhite
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3594#3656#3623#3591#3610#3619#3619#3607#3633#3604#3585#3634#3619#3588#3635#3609#3623#3603'<br>'#3606#3638#3591
            Title.Font.Charset = THAI_CHARSET
            Width = 179
            Visible = True
            Color = clWhite
            Font.Charset = THAI_CHARSET
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3588#3636#3604#3588#3635#3609#3623#3603'<br>A/S/M/D'
            Width = 138
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3588#3629#3621#3633#3614#3607#3660#3619#3634#3618#3591#3634#3609'<br>'#3592#3634#3585
            Width = 141
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3588#3629#3621#3633#3614#3607#3660#3619#3634#3618#3591#3634#3609'<br>'#3606#3638#3591
            Width = 143
            Visible = True
            Expanded = False
          end
          item
            Title.Alignment = taCenter
            Title.Caption = #3626#3606#3634#3609#3632
            Width = 64
            Visible = True
            Expanded = False
          end>
      end
      object UniSplitter1: TUniSplitter
        Left = 0
        Top = 233
        Width = 950
        Height = 4
        Cursor = crVSplit
        MinSize = 30
        Align = alTop
        ParentColor = False
        Color = clBtnFace
      end
    end
    object PnDtlTop: TUniPanel
      Left = 1
      Top = 1
      Width = 950
      Height = 100
      Caption = #3594#3639#3656#3629#3627#3633#3623#3619#3634#3618#3591#3634#3609
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      Color = clBtnFace
      TabOrder = 2
      object UniGroupBox1: TUniGroupBox
        Left = 1
        Top = 1
        Width = 260
        Height = 98
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 1
        object UniLabel3: TUniLabel
          Left = 15
          Top = 19
          Width = 33
          Height = 13
          Caption = #3619#3641#3611#3649#3610#3610
          ParentFont = False
          TabOrder = 1
        end
        object UniDBLookupComboBox8: TUniDBLookupComboBox
          Tag = 9
          Left = 15
          Top = 43
          Width = 226
          Height = 21
          Hint = 'Beg/End Mode'
          ListField = 'DESCRIPTION'
          KeyField = 'CODE'
          ListFieldIndex = 0
          ParentFont = False
          TabOrder = 2
        end
      end
      object UniGroupBox2: TUniGroupBox
        Left = 260
        Top = 1
        Width = 371
        Height = 98
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        TabOrder = 2
        ExplicitLeft = 283
        object UniDBEdit3: TUniDBEdit
          Left = 144
          Top = 17
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 1
          Color = clWindow
        end
        object UniLabel13: TUniLabel
          Left = 14
          Top = 19
          Width = 107
          Height = 13
          Caption = #3594#3639#3656#3629#3627#3633#3623#3619#3634#3618#3591#3634#3609' '#3616#3634#3625#3634#3652#3607#3618
          ParentFont = False
          TabOrder = 2
        end
        object UniDBEdit4: TUniDBEdit
          Left = 144
          Top = 43
          Width = 198
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 3
          Color = clWindow
        end
        object UniLabel1: TUniLabel
          Left = 14
          Top = 45
          Width = 120
          Height = 13
          Caption = #3594#3639#3656#3629#3627#3633#3623#3619#3634#3618#3591#3634#3609' '#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          ParentFont = False
          TabOrder = 4
        end
      end
      object UniGroupBox3: TUniGroupBox
        Left = 631
        Top = 1
        Width = 319
        Height = 98
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 3
        ExplicitLeft = 643
        ExplicitWidth = 325
        ExplicitHeight = 136
        object UniDBEdit1: TUniDBEdit
          Left = 139
          Top = 17
          Width = 162
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 1
          Color = clWindow
        end
        object UniLabel4: TUniLabel
          Left = 14
          Top = 19
          Width = 69
          Height = 13
          Caption = #3619#3629#3610#3585#3634#3619#3588#3635#3609#3623#3603
          ParentFont = False
          TabOrder = 2
        end
        object UniDBEdit2: TUniDBEdit
          Left = 139
          Top = 43
          Width = 162
          Height = 21
          DataSource = dsSt
          PasswordChar = #0
          CharCase = ecNormal
          MaxLength = 0
          CharEOL = #0
          ParentFont = False
          TabOrder = 3
          Color = clWindow
        end
        object UniLabel5: TUniLabel
          Left = 14
          Top = 45
          Width = 119
          Height = 13
          Caption = #3619#3627#3633#3626#3629#3657#3634#3591#3629#3636#3591#3619#3634#3618#3591#3634#3609#3611#3619#3632#3585#3629#3610
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 495
    Width = 952
    TabOrder = 2
    ExplicitTop = 495
    ExplicitWidth = 952
    inherited btnConfirm: TUniButton
      Left = 789
      ExplicitLeft = 789
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 870
      ExplicitLeft = 870
    end
  end
  inherited pnHeader: TUniPanel
    Width = 952
    Height = 49
    TabOrder = 0
    ExplicitWidth = 952
    ExplicitHeight = 49
    object UniLabel2: TUniLabel
      Left = 15
      Top = 12
      Width = 52
      Height = 13
      Caption = #3619#3627#3633#3626#3619#3634#3618#3591#3634#3609
      ParentFont = False
      TabOrder = 1
    end
    object UniDBEdit5: TUniDBEdit
      Left = 80
      Top = 12
      Width = 163
      Height = 21
      DataSource = dsSt
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 2
      Color = clWindow
    end
  end
  object dsSt: TDataSource
    Left = 728
    Top = 48
  end
end
