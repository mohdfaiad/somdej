inherited frmCsApprSaleCarData: TfrmCsApprSaleCarData
  Caption = 'frmCsApprSaleCarData'
  ClientHeight = 579
  ClientWidth = 1025
  ExplicitWidth = 1025
  ExplicitHeight = 579
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    Width = 1025
    Height = 440
    ExplicitWidth = 1025
    ExplicitHeight = 440
    inherited PgCarsale: TUniPageControl
      Width = 1023
      Height = 438
      inherited TabCondition: TUniTabSheet
        inherited pnCondition: TUniPanel
          Width = 1015
        end
        inherited GrpDown: TUniGroupBox
          Width = 1015
          Height = 238
          inherited DbDown: TUniDBGrid
            Columns = <
              item
                FieldName = 'SEQOM7'
                Title.Alignment = taCenter
                Title.Caption = #3621#3635#3604#3633#3610
                Title.Font.Charset = THAI_CHARSET
                Width = 39
                Visible = True
                Color = clWhite
                Font.Charset = THAI_CHARSET
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'PPDOM7'
                Title.Alignment = taCenter
                Title.Caption = #3591#3623#3604#3607#3637#3656
                Width = 65
                Visible = True
                Color = clWhite
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'TNMPTP'
                Title.Alignment = taCenter
                Title.Caption = #3592#3656#3634#3618#3648#3594#3655#3588'/'#3648#3591#3636#3609#3626#3604
                Title.Font.Charset = THAI_CHARSET
                Width = 125
                Visible = True
                Color = clWhite
                Font.Charset = THAI_CHARSET
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'NOTOM7'
                Title.Alignment = taCenter
                Title.Caption = #3648#3621#3586#3607#3637#3656#3648#3594#3655#3588
                Width = 156
                Visible = True
                Color = clWhite
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'PDTOM7'
                Title.Alignment = taCenter
                Title.Caption = #3585#3635#3627#3609#3604#3594#3635#3619#3632
                Width = 135
                Visible = True
                Alignment = taCenter
                Expanded = False
              end
              item
                FieldName = 'PATOM7'
                Title.Alignment = taCenter
                Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
                Width = 172
                Visible = True
                Alignment = taRightJustify
                Expanded = False
              end
              item
                FieldName = 'NAROM7'
                Title.Alignment = taCenter
                Title.Caption = #3648#3591#3639#3656#3629#3609#3652#3586
                Width = 114
                Visible = True
                Expanded = False
              end
              item
                FieldName = 'STSOM7'
                Title.Alignment = taCenter
                Title.Caption = #3626#3606#3634#3609#3632
                Width = 78
                Visible = True
                Alignment = taCenter
                Expanded = False
              end>
          end
          inherited PnHeadDown: TUniPanel
            Width = 1011
            ExplicitWidth = 1011
          end
        end
      end
      inherited TabAccessory: TUniTabSheet
        ExplicitWidth = 1015
        ExplicitHeight = 410
        inherited DbgAccessory: TUniDBGrid
          Width = 1015
          Height = 370
          Columns = <
            item
              FieldName = 'SEQOT6'
              Title.Alignment = taCenter
              Title.Caption = #3621#3635#3604#3633#3610
              Title.Font.Charset = THAI_CHARSET
              Width = 36
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'FSROT6'
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626#3619#3634#3618#3585#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 93
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'TNMPM1'
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
              Width = 167
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'FQ1OT6'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603'<br>'#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 90
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'FQ2OT6'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3636#3617#3634#3603'<br>'#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 82
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'FU1OT6'
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634'/'#3627#3609#3656#3623#3618'<br>'#3627#3609#3656#3623#3618#3627#3621#3633#3585
              Title.Font.Charset = THAI_CHARSET
              Width = 94
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'FU2OT6'
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3588#3634'/'#3627#3609#3656#3623#3618'<br>'#3627#3609#3656#3623#3618#3618#3656#3629#3618
              Width = 92
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'AMTOT6'
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 82
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'FP1OT6'
              Title.Alignment = taCenter
              Title.Caption = #3626#3656#3623#3609#3621#3604'<br>'#3614#3609#3633#3585#3591#3634#3609#3586#3634#3618
              Width = 90
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'FP2OT6'
              Title.Alignment = taCenter
              Title.Caption = #3626#3656#3623#3609#3621#3604'<br>'#3612#3592#3585'.'#3586#3634#3618
              Width = 84
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'FP3OT6'
              Title.Alignment = taCenter
              Title.Caption = #3626#3656#3623#3609#3621#3604'<br>'#3614#3636#3648#3624#3625'(VIP)'
              Width = 81
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'FP4OT6'
              Title.Alignment = taCenter
              Title.Caption = #3626#3656#3623#3609#3621#3604'<br>TM'
              Width = 81
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'NETOT6'
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609#3626#3640#3607#3608#3636
              Width = 94
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end>
        end
        inherited pnHeadAccessory: TUniPanel
          Width = 1015
          ExplicitWidth = 1015
        end
      end
      inherited TabEXP: TUniTabSheet
        ExplicitWidth = 1015
        ExplicitHeight = 410
        inherited DbgExp: TUniDBGrid
          Width = 1015
          Height = 370
          Columns = <
            item
              FieldName = 'SEQEXP'
              Title.Alignment = taCenter
              Title.Caption = #3621#3635#3604#3633#3610
              Title.Font.Charset = THAI_CHARSET
              Width = 36
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'CDCEXP'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3585#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 87
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'TNMCDC'
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604
              Width = 165
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'AMTEXP'
              Title.Alignment = taCenter
              Title.Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
              Width = 112
              Visible = True
              Alignment = taRightJustify
              Expanded = False
            end
            item
              FieldName = 'TNMTP1'
              Title.Alignment = taCenter
              Title.Caption = #3612#3641#3657#3629#3629#3585#3588#3656#3634#3651#3594#3657#3592#3656#3634#3618
              Title.Font.Charset = THAI_CHARSET
              Width = 102
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'TNMTP2'
              Title.Alignment = taCenter
              Title.Caption = #3612#3641#3657#3619#3633#3610#3612#3636#3604#3594#3629#3610#3605#3634#3617#3648#3585#3655#3610
              Title.Font.Charset = THAI_CHARSET
              Width = 104
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'DCREXP'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3619#3633#3610
              Width = 84
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'DCPEXP'
              Title.Alignment = taCenter
              Title.Caption = #3611#3619#3632#3648#3616#3607#3619#3634#3618#3592#3656#3634#3618
              Width = 85
              Visible = True
              Expanded = False
            end>
        end
        inherited PnHeadExp: TUniPanel
          Width = 1015
          ExplicitWidth = 1015
        end
      end
      inherited TabCard: TUniTabSheet
        inherited DbgCard: TUniDBGrid
          Width = 1015
          Height = 163
          Columns = <
            item
              FieldName = 'CDCOMI'
              Title.Alignment = taCenter
              Title.Caption = #3619#3627#3633#3626
              Width = 79
              Visible = True
              Color = clWhite
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'TNMCDC'
              Title.Alignment = taCenter
              Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3648#3629#3585#3626#3634#3619
              Title.Font.Charset = THAI_CHARSET
              Width = 214
              Visible = True
              Color = clWhite
              Font.Charset = THAI_CHARSET
              Expanded = False
            end
            item
              FieldName = 'RDTOMI'
              Title.Alignment = taCenter
              Title.Caption = #3623#3633#3609#3607#3637#3656#3619#3633#3610
              Width = 129
              Visible = True
              Color = clWhite
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'RTMOMI'
              Title.Alignment = taCenter
              Title.Caption = #3648#3623#3621#3634
              Width = 89
              Visible = True
              Alignment = taCenter
              Expanded = False
            end
            item
              FieldName = 'TNMPSN'
              Title.Alignment = taCenter
              Title.Caption = #3648#3592#3657#3634#3627#3609#3657#3634#3607#3637#3656#3612#3641#3657#3619#3633#3610
              Width = 213
              Visible = True
              Expanded = False
            end
            item
              FieldName = 'FLGOMI'
              Title.Alignment = taCenter
              Title.Caption = #3648#3621#3639#3629#3585
              Width = 55
              Visible = True
              Alignment = taCenter
              Expanded = False
            end>
        end
        inherited UniPanel4: TUniPanel
          Top = 203
          Width = 1015
          inherited GrpCollector: TUniGroupBox
            Width = 631
            inherited DbgCollector: TUniDBGrid
              Width = 627
              Columns = <
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3621#3635#3604#3633#3610
                  Title.Font.Charset = THAI_CHARSET
                  Width = 33
                  Visible = True
                  Color = clWhite
                  Font.Charset = THAI_CHARSET
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3619#3627#3633#3626
                  Width = 76
                  Visible = True
                  Color = clWhite
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604#3585#3634#3619#3611#3598#3636#3610#3657#3605#3636#3591#3634#3609
                  Title.Font.Charset = THAI_CHARSET
                  Width = 187
                  Visible = True
                  Color = clWhite
                  Font.Charset = THAI_CHARSET
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3623#3633#3609#3607#3637#3656
                  Width = 110
                  Visible = True
                  Color = clWhite
                  Expanded = False
                end
                item
                  Title.Alignment = taCenter
                  Title.Caption = #3648#3592#3657#3634#3627#3609#3657#3634#3607#3637#3656
                  Width = 145
                  Visible = True
                  Expanded = False
                end>
            end
          end
        end
        inherited PnHeadCard: TUniPanel
          Width = 1015
          ExplicitWidth = 1015
        end
      end
    end
  end
  inherited pnFooter: TUniPanel
    Top = 542
    Width = 1025
    TabOrder = 0
    ExplicitTop = 542
    ExplicitWidth = 1025
    inherited imgBotton: TUniImage
      Width = 1025
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
      ExplicitWidth = 1025
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1025
    TabOrder = 2
  end
  inherited pnUser: TUniPanel
    Top = 521
    Width = 1025
    ExplicitTop = 521
    ExplicitWidth = 1025
  end
end
