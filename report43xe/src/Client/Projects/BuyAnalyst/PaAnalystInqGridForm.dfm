inherited frmPaAnalystInqGrid: TfrmPaAnalystInqGrid
  BorderStyle = bsSingle
  Caption = #3626#3629#3610#3606#3634#3617' - '#3586#3657#3629#3617#3641#3621#3619#3632#3610#3610#3623#3636#3648#3588#3619#3634#3632#3627#3660#3592#3633#3604#3595#3639#3657#3629
  ClientHeight = 546
  ClientWidth = 929
  Position = poDesigned
  ExplicitWidth = 935
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 121
    Width = 929
    Height = 384
    ExplicitTop = 121
    ExplicitWidth = 927
    ExplicitHeight = 382
    inherited dbgDataList: TUniDBGrid
      Left = 10
      Top = 104
      Width = 81
      Height = 65
      Visible = False
      Align = alCustom
      Anchors = [akLeft, akTop]
      Columns = <
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3652#3607#3618
          Title.Font.Charset = THAI_CHARSET
          Width = 176
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
          Title.Font.Charset = THAI_CHARSET
          Width = 146
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3607#3637#3656#3629#3618#3641#3656
          Title.Font.Charset = THAI_CHARSET
          Width = 174
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3650#3607#3619#3624#3633#3614#3607#3660
          Title.Font.Charset = THAI_CHARSET
          Width = 118
          Visible = True
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3611#3619#3632#3648#3616#3607
          Title.Font.Charset = THAI_CHARSET
          Width = 111
          Visible = True
          Alignment = taCenter
          Expanded = False
        end
        item
          Title.Alignment = taCenter
          Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
          Width = 129
          Visible = True
          Expanded = False
        end>
    end
    object PgControlAnalyst: TUniPageControl
      Left = 0
      Top = 0
      Width = 929
      Height = 384
      ActivePage = tabDealer
      TabOrder = 2
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      ExplicitLeft = 21
      ExplicitTop = 3
      object tabDealer: TUniTabSheet
        Caption = #3619#3634#3618#3594#3639#3656#3629#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
        ExplicitWidth = 919
        ExplicitHeight = 354
        object dbgDealer: TUniDBGrid
          Left = 0
          Top = 0
          Width = 921
          Height = 356
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3652#3607#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 176
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3594#3639#3656#3629#3616#3634#3625#3634#3629#3633#3591#3585#3620#3625
              Title.Font.Charset = THAI_CHARSET
              Width = 146
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3607#3637#3656#3629#3618#3641#3656
              Title.Font.Charset = THAI_CHARSET
              Width = 174
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3650#3607#3619#3624#3633#3614#3607#3660
              Title.Font.Charset = THAI_CHARSET
              Width = 118
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607
              Title.Font.Charset = THAI_CHARSET
              Width = 111
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
              Width = 129
              Visible = True
              Expanded = False
            end>
        end
      end
      object tabProduct: TUniTabSheet
        Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
        ExplicitWidth = 919
        ExplicitHeight = 354
        object dbgProduct: TUniDBGrid
          Left = 0
          Top = 0
          Width = 921
          Height = 356
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3594#3639#3656#3629#3626#3636#3609#3588#3657#3634
              Title.Font.Charset = THAI_CHARSET
              Width = 53
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3609#3656#3623#3618#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 94
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3609#3656#3623#3618#3618#3656#3629#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 90
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3607#3629#3609
              Title.Font.Charset = THAI_CHARSET
              Width = 75
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3585#3621#3640#3656#3617#3626#3636#3609#3588#3657#3634
              Title.Font.Charset = THAI_CHARSET
              Width = 79
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3626#3636#3609#3588#3657#3634#3618#3656#3629#3618
              Width = 86
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3618#3637#3656#3627#3657#3629
              Width = 101
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3595#3637#3619#3637#3656
              Width = 102
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3585#3655#3610#3626#3605#3658#3629#3588
              Width = 92
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
              Width = 86
              Visible = True
              Expanded = False
            end>
        end
      end
      object tabRcvDaily: TUniTabSheet
        Caption = #3619#3633#3610#3626#3636#3609#3588#3657#3634#3611#3619#3632#3592#3635#3623#3633#3609
        ExplicitWidth = 919
        ExplicitHeight = 354
        object dbgRcvDaily: TUniDBGrid
          Left = 0
          Top = 0
          Width = 921
          Height = 356
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Title.Font.Charset = THAI_CHARSET
              Width = 53
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
              Title.Font.Charset = THAI_CHARSET
              Width = 94
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
              Title.Font.Charset = THAI_CHARSET
              Width = 90
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
              Title.Font.Charset = THAI_CHARSET
              Width = 91
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3594#3639#3656#3629
              Title.Font.Charset = THAI_CHARSET
              Width = 79
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610'<br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 86
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603#3619#3633#3610'<br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 101
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3629#3618'<br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 102
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3605#3656#3629#3627#3609#3656#3623#3618'<br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 92
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 86
              Visible = True
              Expanded = False
            end>
        end
      end
      object tabRcvDealer: TUniTabSheet
        Caption = #3619#3633#3610#3626#3636#3609#3588#3657#3634'/'#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
        ExplicitWidth = 919
        ExplicitHeight = 354
        object dbgrcvdealertop: TUniDBGrid
          Left = 0
          Top = 0
          Width = 921
          Height = 130
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3604#3639#3629#3609
              Title.Font.Charset = THAI_CHARSET
              Width = 53
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3611#3619#3636#3617#3634#3603#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 94
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3611#3619#3636#3617#3634#3603#3618#3656#3629#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 90
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3592#3635#3609#3623#3609#3648#3591#3636#3609
              Title.Font.Charset = THAI_CHARSET
              Width = 75
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623'<br>'#3611#3619#3636#3617#3634#3603#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 79
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623'<br>'#3611#3619#3636#3617#3634#3603#3618#3656#3629#3618
              Width = 86
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623'<br>'#3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 85
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591'<br>'#3611#3619#3636#3617#3634#3603#3627#3621#3633#3585
              Width = 96
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591'<br>'#3611#3619#3636#3617#3634#3603#3618#3656#3629#3618
              Width = 87
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 79
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 58
              Visible = True
              Expanded = False
            end>
        end
        object dbgrcvdealerbottom: TUniDBGrid
          Left = 0
          Top = 134
          Width = 921
          Height = 222
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alBottom
          Anchors = [akLeft, akRight, akBottom]
          ParentFont = False
          TabOrder = 1
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Title.Font.Charset = THAI_CHARSET
              Width = 53
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
              Title.Font.Charset = THAI_CHARSET
              Width = 94
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3585#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 90
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
              Title.Font.Charset = THAI_CHARSET
              Width = 79
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
              Title.Font.Charset = THAI_CHARSET
              Width = 75
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603'<br> '#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Width = 82
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603'<br> '#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 83
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 84
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3619#3623#3617'/'#3626#3636#3609#3588#3657#3634'<br> '#3627#3621#3633#3585
              Width = 86
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3619#3623#3617'/'#3626#3636#3609#3588#3657#3634'<br> '#3618#3656#3629#3618
              Width = 76
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 76
              Visible = True
              Expanded = False
            end>
        end
        object UniSplitter1: TUniSplitter
          Left = 0
          Top = 130
          Width = 921
          Height = 4
          Cursor = crVSplit
          MinSize = 30
          Align = alBottom
          ParentColor = False
          Color = clBtnFace
          ExplicitTop = 128
          ExplicitWidth = 919
        end
      end
      object tabRcvProduct: TUniTabSheet
        Caption = #3619#3633#3610#3626#3636#3609#3588#3657#3634'/'#3626#3636#3609#3588#3657#3634
        ExplicitWidth = 919
        ExplicitHeight = 354
        object dbgRcvProductTop: TUniDBGrid
          Left = 0
          Top = 0
          Width = 921
          Height = 127
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3604#3639#3629#3609
              Title.Font.Charset = THAI_CHARSET
              Width = 60
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3611#3619#3636#3617#3634#3603#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 94
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3611#3619#3636#3617#3634#3603#3618#3656#3629#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 90
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3592#3635#3609#3623#3609#3648#3591#3636#3609
              Title.Font.Charset = THAI_CHARSET
              Width = 84
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623'<br>'#3611#3619#3636#3617#3634#3603#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 86
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623'<br>'#3611#3619#3636#3617#3634#3603#3618#3656#3629#3618
              Width = 86
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623'<br>'#3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 85
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591'<br>'#3611#3619#3636#3617#3634#3603#3627#3621#3633#3585
              Width = 96
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591'<br>'#3611#3619#3636#3617#3634#3603#3618#3656#3629#3618
              Width = 87
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 79
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = '%'
              Width = 58
              Visible = True
              Expanded = False
            end>
        end
        object dbgRcvProductBottom: TUniDBGrid
          Left = 0
          Top = 131
          Width = 921
          Height = 225
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alBottom
          Anchors = [akLeft, akRight, akBottom]
          ParentFont = False
          TabOrder = 1
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656
              Title.Font.Charset = THAI_CHARSET
              Width = 53
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
              Width = 90
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3594#3639#3656#3629
              Width = 79
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
              Width = 106
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
              Width = 84
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3611#3619#3636#3617#3634#3603#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 81
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3611#3619#3636#3617#3634#3603#3618#3656#3629#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 85
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Title.Font.Charset = THAI_CHARSET
              Width = 75
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3619#3623#3617'/'#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618'<br>'#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 79
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3618#3629#3604#3619#3623#3617'/'#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618'<br>'#3618#3656#3629#3618
              Width = 86
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 85
              Visible = True
              Expanded = False
            end>
        end
        object UniSplitter2: TUniSplitter
          Left = 0
          Top = 127
          Width = 921
          Height = 4
          Cursor = crVSplit
          MinSize = 30
          Align = alBottom
          ParentColor = False
          Color = clBtnFace
          ExplicitTop = 125
          ExplicitWidth = 919
        end
      end
      object tabOrderDealer: TUniTabSheet
        Caption = #3592#3633#3604#3629#3633#3609#3604#3633#3610'/'#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
        ExplicitWidth = 919
        ExplicitHeight = 354
        object dbgRcvDealer: TUniDBGrid
          Left = 0
          Top = 0
          Width = 921
          Height = 356
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3629#3633#3609#3604#3633#3610
              Title.Font.Charset = THAI_CHARSET
              Width = 53
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
              Width = 91
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3594#3639#3656#3629
              Width = 95
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3648#3604#3639#3629#3609#3609#3637#3657
              Title.Font.Charset = THAI_CHARSET
              Width = 86
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609'<br>'#3626#3632#3626#3617#3606#3638#3591#3648#3604#3639#3629#3609#3609#3637#3657
              Title.Font.Charset = THAI_CHARSET
              Width = 92
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623'<br>'#3648#3604#3639#3629#3609#3609#3637#3657
              Width = 106
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623'<br>'#3626#3632#3626#3617#3606#3638#3591#3648#3604#3639#3629#3609#3609#3637#3657
              Width = 84
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591'<br>'#3648#3604#3639#3629#3609#3609#3637#3657
              Title.Font.Charset = THAI_CHARSET
              Width = 79
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591'<br>'#3626#3632#3626#3617#3606#3638#3591#3648#3604#3639#3629#3609#3609#3637#3657
              Title.Font.Charset = THAI_CHARSET
              Width = 79
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591'<br>%'
              Width = 86
              Visible = True
              Expanded = False
            end>
        end
      end
      object tabOrderProduct: TUniTabSheet
        Caption = #3592#3633#3604#3629#3633#3609#3604#3633#3610'/'#3626#3636#3609#3588#3657#3634
        ExplicitWidth = 919
        ExplicitHeight = 354
        object dbgorderproduct: TUniDBGrid
          Left = 0
          Top = 0
          Width = 921
          Height = 356
          Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
          StripeRows = False
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          ParentFont = False
          TabOrder = 0
          Columns = <
            item
              Title.Alignment = taCenter
              Title.Caption = #3629#3633#3609#3604#3633#3610
              Title.Font.Charset = THAI_CHARSET
              Width = 53
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
              Title.Font.Charset = THAI_CHARSET
              Width = 94
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3629#3608#3636#3610#3634#3618#3619#3634#3618#3585#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 90
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609' <br>'#3648#3604#3639#3629#3609#3609#3637#3657
              Title.Font.Charset = THAI_CHARSET
              Width = 75
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3611#3633#3592#3592#3640#3610#3633#3609' <br>'#3626#3632#3626#3617#3606#3638#3591#3648#3604#3639#3629#3609#3609#3637#3657
              Title.Font.Charset = THAI_CHARSET
              Width = 79
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623' <br>'#3648#3604#3639#3629#3609#3609#3637#3657
              Width = 86
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3637#3607#3637#3656#3649#3621#3657#3623' <br>'#3626#3632#3626#3617#3606#3638#3591#3648#3604#3639#3629#3609#3609#3637#3657
              Width = 101
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591' <br>'#3648#3604#3639#3629#3609#3609#3637#3657
              Width = 102
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591' <br>'#3626#3632#3626#3617#3606#3638#3591#3648#3604#3639#3629#3609#3609#3637#3657
              Width = 92
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3612#3621#3605#3656#3634#3591' <br>'#3648#3611#3629#3648#3595#3655#3609#3605#3660
              Width = 86
              Visible = True
              Expanded = False
            end>
        end
      end
    end
  end
  inherited pnHeader: TUniPanel
    Width = 929
    Height = 121
    ExplicitTop = -6
    ExplicitWidth = 927
    ExplicitHeight = 121
    inherited lbSearch: TUniLabel
      Left = 372
      Top = 91
      Width = 25
      Caption = #3648#3604#3639#3629#3609
      ExplicitLeft = 372
      ExplicitTop = 91
      ExplicitWidth = 25
    end
    inherited edSearch: TUniEdit
      Left = 457
      Top = 88
      Width = 117
      Anchors = [akLeft, akTop]
      ExplicitLeft = 457
      ExplicitTop = 88
      ExplicitWidth = 117
    end
    inherited btnSearch: TUniButton
      Left = 600
      Top = 81
      Anchors = [akLeft, akTop]
      ExplicitLeft = 600
      ExplicitTop = 81
    end
    object UniLabel1: TUniLabel
      Left = 372
      Top = 68
      Width = 7
      Height = 13
      Caption = #3611#3637
      ParentFont = False
      Transparent = False
      TabOrder = 4
    end
    object UniEdit1: TUniEdit
      Left = 457
      Top = 61
      Width = 117
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
    object LbBrn: TUniLabel
      Left = 373
      Top = 18
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 6
    end
    object cmbcmp: TUniDBLookupComboBox
      Tag = 9
      Left = 132
      Top = 9
      Width = 214
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 7
    end
    object Cmbbrn: TUniDBLookupComboBox
      Tag = 9
      Left = 457
      Top = 11
      Width = 218
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 8
    end
    object Lbcmp: TUniLabel
      Left = 21
      Top = 17
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 9
    end
    object LbDealer: TUniLabel
      Left = 21
      Top = 41
      Width = 84
      Height = 13
      Caption = #3619#3627#3633#3626#3612#3641#3657#3649#3607#3609#3592#3635#3627#3609#3656#3634#3618
      ParentFont = False
      TabOrder = 10
    end
    object CmbDealer: TUniDBLookupComboBox
      Tag = 9
      Left = 132
      Top = 34
      Width = 214
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 11
    end
    object LbProduct: TUniLabel
      Left = 372
      Top = 41
      Width = 45
      Height = 13
      Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
      ParentFont = False
      TabOrder = 12
    end
    object EdtSer: TUniEdit
      Left = 132
      Top = 61
      Width = 214
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 13
      Color = clWindow
    end
    object LbSer: TUniLabel
      Left = 21
      Top = 69
      Width = 66
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3621#3586#3605#3633#3623#3606#3633#3591
      ParentFont = False
      Transparent = False
      TabOrder = 14
    end
    object EdtEng: TUniEdit
      Left = 132
      Top = 88
      Width = 214
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 15
      Color = clWindow
    end
    object Lbeng: TUniLabel
      Left = 20
      Top = 88
      Width = 71
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
      ParentFont = False
      Transparent = False
      TabOrder = 16
    end
    object EdtProduct: TUniEdit
      Left = 457
      Top = 38
      Width = 216
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 17
      Color = clWindow
    end
  end
  inherited pnFooter: TUniPanel
    Top = 505
    Width = 929
    inherited btnBack: TUniButton
      Left = 4
      ExplicitLeft = 4
    end
    inherited btnDelete: TUniButton
      Left = 843
      Visible = False
      ExplicitLeft = 841
    end
    inherited btnEdit: TUniButton
      Left = 762
      Visible = False
      ExplicitLeft = 760
    end
    inherited btnAdd: TUniButton
      Left = 681
      Visible = False
      ExplicitLeft = 679
    end
    inherited BtnView: TUniButton
      Left = 600
      Visible = False
      ExplicitLeft = 598
    end
  end
  object dsgrid: TDataSource
    Left = 496
    Top = 200
  end
end
