inherited frmRrInqRedCardData: TfrmRrInqRedCardData
  Caption = #3586#3657#3629#3617#3641#3621#3585#3634#3619#3592#3604#3607#3632#3648#3610#3637#3618#3609#3611#3657#3634#3618#3649#3604#3591
  ClientHeight = 530
  ClientWidth = 974
  Position = poDesigned
  ExplicitWidth = 980
  ExplicitHeight = 562
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Top = 120
    Width = 974
    Height = 352
    TabOrder = 1
    ExplicitTop = 139
    ExplicitWidth = 931
    ExplicitHeight = 470
    object UniPageControl1: TUniPageControl
      Left = 1
      Top = 1
      Width = 972
      Height = 350
      ActivePage = UniTabSheet1
      TabOrder = 1
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UniTabSheet1: TUniTabSheet
        Caption = #3611#3657#3634#3618#3649#3604#3591#3607#3633#3657#3591#3619#3632#3610#3610
        object UniDBGrid1: TUniDBGrid
          Left = 0
          Top = 0
          Width = 964
          Height = 322
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
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3611#3657#3634#3618#3649#3604#3591
              Title.Font.Charset = THAI_CHARSET
              Width = 129
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3604#3592#3633#3591#3627#3623#3633#3604
              Title.Font.Charset = THAI_CHARSET
              Width = 118
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656#3592#3604
              Width = 112
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3626#3617#3640#3604
              Title.Font.Charset = THAI_CHARSET
              Width = 107
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634#3611#3657#3634#3618
              Width = 113
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3588#3656#3634#3651#3594#3657#3592#3656#3634#3618#3629#3639#3656#3609' '#3654' '
              Title.Font.Charset = THAI_CHARSET
              Width = 132
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3627#3617#3634#3618#3648#3627#3605#3640
              Width = 144
              Visible = True
              Expanded = False
            end>
        end
      end
      object UniTabSheet2: TUniTabSheet
        Caption = #3626#3606#3634#3609#3632#3611#3657#3634#3618#3649#3604#3591
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 929
        ExplicitHeight = 468
        object UniGroupBox2: TUniGroupBox
          Left = 409
          Top = 0
          Width = 555
          Height = 322
          Caption = #3626#3606#3634#3609#3632' : '#3629#3618#3641#3656#3607#3637#3656#3621#3641#3585#3588#3657#3634
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          object UniDBGrid3: TUniDBGrid
            Left = 2
            Top = 15
            Width = 551
            Height = 305
            Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
            StripeRows = False
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            ParentFont = False
            TabOrder = 1
            Columns = <
              item
                Title.Alignment = taCenter
                Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3611#3657#3634#3618#3649#3604#3591
                Title.Font.Charset = THAI_CHARSET
                Width = 93
                Visible = True
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3592#3604#3592#3633#3591#3627#3623#3633#3604
                Title.Font.Charset = THAI_CHARSET
                Width = 70
                Visible = True
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
                Width = 82
                Visible = True
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
                Title.Font.Charset = THAI_CHARSET
                Width = 55
                Visible = True
                Alignment = taCenter
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
                Width = 107
                Visible = True
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3623#3633#3609#3607#3637#3656
                Width = 58
                Visible = True
                Expanded = False
              end>
          end
        end
        object UniGroupBox1: TUniGroupBox
          Left = 0
          Top = 0
          Width = 409
          Height = 322
          Caption = #3626#3606#3634#3609#3632' : '#3629#3618#3641#3656#3607#3637#3656#3610#3619#3636#3625#3633#3607
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 1
          object UniDBGrid2: TUniDBGrid
            Left = 2
            Top = 15
            Width = 405
            Height = 305
            Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
            StripeRows = False
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            ParentFont = False
            TabOrder = 1
            Columns = <
              item
                Title.Alignment = taCenter
                Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3611#3657#3634#3618#3649#3604#3591
                Title.Font.Charset = THAI_CHARSET
                Width = 88
                Visible = True
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3592#3604#3592#3633#3591#3627#3623#3633#3604
                Title.Font.Charset = THAI_CHARSET
                Width = 59
                Visible = True
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3648#3626#3619#3655#3592
                Width = 76
                Visible = True
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3623#3633#3609#3607#3637#3656
                Title.Font.Charset = THAI_CHARSET
                Width = 47
                Visible = True
                Alignment = taCenter
                Expanded = False
              end
              item
                Title.Alignment = taCenter
                Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
                Width = 95
                Visible = True
                Expanded = False
              end>
          end
        end
      end
      object UniTabSheet3: TUniTabSheet
        Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3651#3594#3657#3591#3634#3609
        object UniDBGrid4: TUniDBGrid
          Left = 0
          Top = 0
          Width = 964
          Height = 322
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
              Width = 55
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3585#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 102
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
              Width = 80
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
              Title.Font.Charset = THAI_CHARSET
              Width = 83
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
              Width = 108
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3640#3656#3609#3619#3606
              Title.Font.Charset = THAI_CHARSET
              Width = 75
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
              Width = 81
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591
              Width = 70
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656#3609#3633#3604#3626#3656#3591#3588#3639#3609
              Width = 70
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3591#3636#3609#3617#3633#3604#3592#3635
              Width = 64
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3626#3606#3634#3609#3632#3585#3634#3619#3651#3594#3657#3591#3634#3609
              Width = 83
              Visible = True
              Expanded = False
            end>
        end
      end
      object UniTabSheet4: TUniTabSheet
        Caption = #3626#3619#3640#3611#3626#3606#3634#3609#3632#3611#3657#3634#3618#3649#3604#3591
        object UniDBGrid5: TUniDBGrid
          Left = 0
          Top = 0
          Width = 964
          Height = 322
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
              Title.Caption = #3627#3617#3634#3618#3648#3621#3586#3611#3657#3634#3618#3649#3604#3591
              Title.Font.Charset = THAI_CHARSET
              Width = 101
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3592#3604#3592#3633#3591#3627#3623#3633#3604
              Title.Font.Charset = THAI_CHARSET
              Width = 88
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3607#3637#3656#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
              Title.Font.Charset = THAI_CHARSET
              Width = 101
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656#3592#3604
              Width = 80
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3621#3641#3585#3588#3657#3634
              Width = 108
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3640#3656#3609#3619#3606
              Title.Font.Charset = THAI_CHARSET
              Width = 83
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3586#3605#3633#3623#3606#3633#3591
              Width = 103
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3633#3610#3648#3591#3636#3609#3617#3633#3604#3592#3635'<br>'#3648#3621#3586#3607#3637#3656
              Width = 85
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3619#3633#3610#3648#3591#3636#3609#3617#3633#3604#3592#3635'<br>'#3623#3633#3609#3607#3637#3656
              Width = 87
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3610#3636#3585#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618'<br>'#3648#3621#3586#3607#3637#3656
              Width = 106
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3648#3610#3636#3585#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618'<br>'#3623#3633#3609#3607#3637#3656
              Width = 91
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3588#3639#3609#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618'<br>'#3648#3621#3586#3607#3637#3656
              Width = 94
              Visible = True
              Expanded = False
            end
            item
              Title.Alignment = taCenter
              Title.Caption = #3588#3639#3609#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618'<br>'#3623#3633#3609#3607#3637#3656
              Width = 102
              Visible = True
              Expanded = False
            end>
        end
      end
      object UniTabSheet5: TUniTabSheet
        Caption = #3626#3619#3640#3611#3605#3634#3617#3626#3606#3634#3609#3632
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 929
        ExplicitHeight = 468
        object UniScrollBox1: TUniScrollBox
          Left = 0
          Top = 0
          Width = 964
          Height = 322
          AutoScroll = True
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          BorderStyle = ubsNone
          TabOrder = 0
          object UniGroupBox3: TUniGroupBox
            Left = 640
            Top = 0
            Width = 324
            Height = 322
            Caption = #3588#3639#3609#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 1
            ExplicitWidth = 345
            ExplicitHeight = 459
            object UniDBGrid6: TUniDBGrid
              Left = 2
              Top = 15
              Width = 320
              Height = 305
              Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
              StripeRows = False
              Align = alClient
              Anchors = [akLeft, akTop, akRight, akBottom]
              ParentFont = False
              TabOrder = 1
              Columns = <
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3627#3617#3634#3618#3648#3621#3586'<br>'#3611#3657#3634#3618#3649#3604#3591
                  Title.Font.Charset = THAI_CHARSET
                  Width = 55
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3592#3633#3591#3627#3623#3633#3604
                  Title.Font.Charset = THAI_CHARSET
                  Width = 49
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
                  Width = 65
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3623#3633#3609#3607#3637#3656
                  Title.Font.Charset = THAI_CHARSET
                  Width = 37
                  Visible = True
                  Alignment = taCenter
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3629#3657#3634#3591#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
                  Width = 75
                  Visible = True
                  Expanded = False
                end>
            end
          end
          object UniGroupBox4: TUniGroupBox
            Left = 0
            Top = 0
            Width = 313
            Height = 322
            Caption = #3619#3633#3610#3648#3591#3636#3609#3617#3633#3604#3592#3635
            Align = alLeft
            Anchors = [akLeft, akTop, akBottom]
            TabOrder = 2
            ExplicitHeight = 459
            object UniDBGrid7: TUniDBGrid
              Left = 2
              Top = 15
              Width = 309
              Height = 305
              Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
              StripeRows = False
              Align = alClient
              Anchors = [akLeft, akTop, akRight, akBottom]
              ParentFont = False
              TabOrder = 1
              Columns = <
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3627#3617#3634#3618#3648#3621#3586'<br>'#3611#3657#3634#3618#3649#3604#3591
                  Title.Font.Charset = THAI_CHARSET
                  Width = 58
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3592#3633#3591#3627#3623#3633#3604
                  Title.Font.Charset = THAI_CHARSET
                  Width = 49
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
                  Width = 64
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3623#3633#3609#3607#3637#3656
                  Title.Font.Charset = THAI_CHARSET
                  Width = 42
                  Visible = True
                  Alignment = taCenter
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
                  Width = 59
                  Visible = True
                  Expanded = False
                end>
            end
          end
          object UniGroupBox5: TUniGroupBox
            Left = 313
            Top = 0
            Width = 327
            Height = 322
            Caption = #3648#3610#3636#3585#3648#3591#3636#3609#3607#3604#3619#3629#3591#3592#3656#3634#3618
            Align = alLeft
            Anchors = [akLeft, akTop, akBottom]
            TabOrder = 3
            ExplicitHeight = 459
            object UniDBGrid8: TUniDBGrid
              Left = 2
              Top = 15
              Width = 323
              Height = 305
              Hint = #3605#3634#3619#3634#3591#3586#3657#3629#3617#3641#3621
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              WebOptions.LoadMaskMsg = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3586#3657#3629#3617#3641#3621'...'
              StripeRows = False
              Align = alClient
              Anchors = [akLeft, akTop, akRight, akBottom]
              ParentFont = False
              TabOrder = 1
              Columns = <
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3627#3617#3634#3618#3648#3621#3586'<br>'#3611#3657#3634#3618#3649#3604#3591
                  Title.Font.Charset = THAI_CHARSET
                  Width = 62
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3592#3633#3591#3627#3623#3633#3604
                  Title.Font.Charset = THAI_CHARSET
                  Width = 49
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3629#3585#3626#3634#3619
                  Width = 65
                  Visible = True
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3623#3633#3609#3607#3637#3656
                  Title.Font.Charset = THAI_CHARSET
                  Width = 37
                  Visible = True
                  Alignment = taCenter
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3629#3657#3634#3591#3651#3610#3588#3635#3586#3629#3595#3639#3657#3629
                  Width = 75
                  Visible = True
                  Expanded = False
                end>
            end
          end
        end
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 493
    Width = 974
    TabOrder = 2
    ExplicitTop = 493
    ExplicitWidth = 974
    inherited imgBotton: TUniImage
      Width = 974
      Picture.Data = {
        0954474946496D6167654749463837611B00C200F70000BE0F16FFFDFFFFFFFF
        FDFFFFFBFFFFF9FFFFDB464CE37176F2BEC1EBBBBCF1BBBDEDC3C3F3C2C4F4C6
        C8F5CACCF3C8C5F5CED0F6D1D3F7D3D5F7D5D6F7D7D8F8D9DAF9DCDDF9DFE0F9
        E1E2FAE3E4FBE5E6FBE7E8FBE9EAFBEBECFBEDEEFDEFEFFDF2F2FDF6F6FFF9F9
        FDFDFDFFFBFDFFFFFCFEF2F6FDFFFDFEFEF9FFFEF6FBFBFCF6F9FAF9F9FAFBFF
        FCFAFBF4F9FFFCF6FFFFF2FFFEFAFEF6F1FFF9ECFEFCFFFBF5F4FDF4FAFFF9FF
        F6FCF6F7F9000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000002C000000001B00C200
        87BE0F16FFFDFFFFFFFFFDFFFFFBFFFFF9FFFFDB464CE37176F2BEC1EBBBBCF1
        BBBDEDC3C3F3C2C4F4C6C8F5CACCF3C8C5F5CED0F6D1D3F7D3D5F7D5D6F7D7D8
        F8D9DAF9DCDDF9DFE0F9E1E2FAE3E4FBE5E6FBE7E8FBE9EAFBEBECFBEDEEFDEF
        EFFDF2F2FDF6F6FFF9F9FDFDFDFFFBFDFFFFFCFEF2F6FDFFFDFEFEF9FFFEF6FB
        FBFCF6F9FAF9F9FAFBFFFCFAFBF4F9FFFCF6FFFFF2FFFEFAFEF6F1FFF9ECFEFC
        FFFBF5F4FDF4FAFFF9FFF6FCF6F7F90000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0008FF000D081C48B0A0418307122A5CC8B06143060922268048712245061731
        6A64E0C0E2C6040B34866410B2A4C68E0E386E5CC932A54B952F5DCAE4E8A0A6
        CD9B3873EADCC933424E9F401D44085A93A8040B42872A5DCAB4A9D3A74F2D28
        951AC182D4AB4DA96A1D8AF56AD7AA56BF86B50A16EC58AF66CF564D7BB6ADDB
        B770E38ECD60816EDDBB1AEE66A0BB572FDFBD743D58102CF8C387C175012B5E
        0C183161AB84F77A604C7932610D863558969CC183E5CF9E4177FEA0B973E7CD
        A84D9FFE6CD870E8D7B063C3CED05AB66DDBAD5DC7CE119A37EE0F38727FF060
        9806F11C1F6C10A7F1C1B880E61E9E7F10F05C000D1CD5A71BCE1E5C808714DA
        A56BFF370C1EBC77EFC1B583EFBE9DFA74EAD8B1BF9F9E02F9F9E8D1A7E34821
        9F7B8AEACFF5D7DF7BD41568E0810826A8E0820C36E8E083104628E184145668
        E1851866A8E1861C76E8E187208628E28824968861741BD260A284386077E07F
        13B6A7E27F3456E8620A386E688300394298430EF00970A37511AA4864814646
        F81F0D2AC6E762920FDAC06490D441E9600A34EC68A48B474228E5964276F9E0
        9253868964845216C8A5950DF6982497145A592384D8E5809D8A3BF2D8E383C1
        2539238C749A69248CDFB18820A013C2B9A2830462C8E6A290462AE9A494566A
        E9A59866AAE9A69C76EAE9A7A0862AEAA8A4966AEAA9A8A6AAEAAAACB6EAEAAB
        B0C6212AEBACB4D66AEBADB8E6AAEBAEBCF6EAEBAFA33A24ECB00A1D64ECB1C8
        267B6C40003B}
      ExplicitWidth = 974
    end
    inherited btnCancel: TUniButton
      Tag = 1
      Left = 892
      Visible = False
      ExplicitLeft = 892
    end
    inherited btnConfirm: TUniButton
      Left = 811
      Visible = False
      ExplicitLeft = 811
    end
  end
  inherited pnHeader: TUniPanel
    Width = 974
    Height = 120
    BorderStyle = ubsFrameLowered
    TabOrder = 0
    ExplicitWidth = 931
    ExplicitHeight = 120
    object UniLabel2: TUniLabel
      Left = 369
      Top = 8
      Width = 24
      Height = 13
      Caption = #3626#3634#3586#3634
      ParentFont = False
      TabOrder = 1
    end
    object UniDBLookupComboBox1: TUniDBLookupComboBox
      Tag = 9
      Left = 142
      Top = 8
      Width = 214
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 2
    end
    object UniDBLookupComboBox2: TUniDBLookupComboBox
      Tag = 9
      Left = 464
      Top = 8
      Width = 181
      Height = 21
      Hint = 'Beg/End Mode'
      ListField = 'DESCRIPTION'
      KeyField = 'CODE'
      ListFieldIndex = 0
      ParentFont = False
      TabOrder = 3
    end
    object UniLabel8: TUniLabel
      Left = 13
      Top = 8
      Width = 28
      Height = 13
      Caption = #3610#3619#3636#3625#3633#3607
      ParentFont = False
      TabOrder = 4
    end
    object UniLabel13: TUniLabel
      Left = 13
      Top = 33
      Width = 52
      Height = 13
      Caption = #3619#3632#3627#3623#3656#3634#3591#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 5
    end
    object DbRegStartDate: TUniDateTimePicker
      Left = 143
      Top = 31
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 6
      ParentColor = False
      Color = clWhite
    end
    object lbSearch: TUniLabel
      Left = 13
      Top = 87
      Width = 117
      Height = 13
      Caption = #3627#3617#3634#3618#3648#3621#3586#3607#3632#3648#3610#3637#3618#3609#3611#3657#3634#3618#3649#3604#3591
      ParentFont = False
      Transparent = False
      TabOrder = 7
    end
    object edSearch: TUniEdit
      Left = 142
      Top = 85
      Width = 214
      Height = 21
      Hint = #3588#3657#3609#3627#3634
      PasswordChar = #0
      CharCase = ecNormal
      MaxLength = 0
      CharEOL = #0
      ParentFont = False
      TabOrder = 8
      Color = clWindow
    end
    object btnSearch: TUniButton
      Left = 464
      Top = 80
      Width = 75
      Height = 25
      Caption = #3588#3657#3609#3627#3634
      ParentFont = False
      TabOrder = 9
    end
    object UniLabel7: TUniLabel
      Left = 13
      Top = 59
      Width = 73
      Height = 13
      Caption = #3623#3636#3648#3588#3619#3634#3632#3627#3660' '#3603' '#3623#3633#3609#3607#3637#3656
      ParentFont = False
      TabOrder = 10
    end
    object UniLabel3: TUniLabel
      Left = 370
      Top = 33
      Width = 11
      Height = 13
      Caption = #3606#3638#3591
      ParentFont = False
      TabOrder = 11
    end
    object UniDateTimePicker1: TUniDateTimePicker
      Left = 464
      Top = 31
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 12
      ParentColor = False
      Color = clWhite
    end
    object UniDateTimePicker2: TUniDateTimePicker
      Left = 143
      Top = 57
      Width = 138
      Height = 22
      Hint = #3623#3633#3609#3607#3637#3656#3648#3619#3636#3656#3617#3592#3604#3607#3632#3648#3610#3637#3618#3609
      DateTime = 40742.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 13
      ParentColor = False
      Color = clWhite
    end
  end
  inherited pnUser: TUniPanel
    Top = 472
    Width = 974
    ExplicitTop = 472
    ExplicitWidth = 974
  end
end
