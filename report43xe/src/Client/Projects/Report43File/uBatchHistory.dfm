inherited frmBatchHistory: TfrmBatchHistory
  Caption = 'frmBatchHistory'
  OnShow = UniFormShow
  ExplicitHeight = 437
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnBody: TUniPanel
    ExplicitHeight = 330
    object UniPageControl1: TUniPageControl
      Left = 1
      Top = 1
      Width = 800
      Height = 328
      ActivePage = UniTabSheet1
      TabOrder = 1
      Align = alClient
      Anchors = [akLeft, akTop, akRight, akBottom]
      object UniTabSheet1: TUniTabSheet
        Caption = #3611#3619#3632#3623#3633#3605#3636#3585#3634#3619#3626#3656#3591#3629#3629#3585
        object UniPanel1: TUniPanel
          Left = 0
          Top = 0
          Width = 257
          Height = 300
          Align = alLeft
          Anchors = [akLeft, akTop, akBottom]
          Color = clBtnFace
          TabOrder = 0
          object UniDBGrid1: TUniDBGrid
            Left = 1
            Top = 1
            Width = 255
            Height = 298
            DataSource = dsGetBatchList
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            WebOptions.LoadMaskMsg = 'Please wait...'
            HeaderTitleAlign = taLeftJustify
            OnDblClick = UniDBGrid1DblClick
            StripeRows = False
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            TabOrder = 1
            Columns = <
              item
                FieldName = 'Id'
                Title.Caption = 'No.'
                Width = 34
                Visible = True
                Expanded = False
              end
              item
                FieldName = 'BatchCode'
                Title.Caption = #3619#3627#3633#3626
                Width = 79
                Visible = True
                Expanded = False
              end
              item
                FieldName = 'BatchDate'
                Title.Caption = #3623#3633#3609#3607#3637#3656
                Width = 107
                Visible = True
                Expanded = False
              end>
          end
        end
        object UniPanel2: TUniPanel
          Left = 257
          Top = 0
          Width = 535
          Height = 300
          Align = alClient
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clBtnFace
          TabOrder = 1
          object UniPageControl2: TUniPageControl
            Left = 1
            Top = 1
            Width = 533
            Height = 298
            ActivePage = UniTabSheet4
            TabOrder = 1
            Align = alClient
            Anchors = [akLeft, akTop, akRight, akBottom]
            object UniTabSheet3: TUniTabSheet
              Caption = #3619#3634#3618#3585#3634#3619#3649#3615#3657#3617#3607#3633#3657#3591#3627#3617#3604
              object UniDBGrid2: TUniDBGrid
                Left = 0
                Top = 0
                Width = 525
                Height = 270
                DataSource = dsGetBatchDetail
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                WebOptions.PageSize = 100
                WebOptions.LoadMaskMsg = 'Please wait...'
                HeaderTitleAlign = taLeftJustify
                StripeRows = False
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 0
                Columns = <
                  item
                    FieldName = 'Id'
                    Title.Caption = 'No.'
                    Width = 55
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'FileName'
                    Title.Caption = #3594#3639#3656#3629#3649#3615#3657#3617
                    Width = 152
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'IfxExcuteTime'
                    Title.Caption = 'Execute Time'
                    Width = 74
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'TransferTime'
                    Title.Caption = 'Transfer Time'
                    Width = 87
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'IfxRecords'
                    Title.Caption = #3592#3635#3609#3623#3609' records '#3607#3633#3657#3591#3627#3617#3604
                    Width = 132
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'Transfered'
                    Title.Caption = #3592#3635#3609#3623#3609#3607#3637#3656' '#3650#3629#3609#3652#3604#3657
                    Width = 98
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'ErrRecords'
                    Title.Caption = #3592#3635#3609#3623#3609#3607#3637#3656' Error'
                    Width = 115
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'ExecuteDate'
                    Title.Caption = 'ExecuteDate'
                    Width = 64
                    Visible = True
                    Expanded = False
                  end>
              end
            end
            object UniTabSheet4: TUniTabSheet
              Caption = #3619#3634#3618#3621#3632#3648#3629#3637#3618#3604' Records Errors'
              object UniDBGrid3: TUniDBGrid
                Left = 0
                Top = 41
                Width = 525
                Height = 229
                DataSource = dsGetBatchErrorFilename
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                WebOptions.LoadMaskMsg = 'Please wait...'
                HeaderTitleAlign = taLeftJustify
                StripeRows = False
                Align = alClient
                Anchors = [akLeft, akTop, akRight, akBottom]
                TabOrder = 0
                Columns = <
                  item
                    FieldName = 'Id'
                    Title.Caption = 'No.'
                    Width = 67
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'FileName'
                    Title.Caption = #3594#3639#3656#3629#3649#3615#3657#3617
                    Width = 127
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'PID'
                    Title.Caption = 'PID'
                    Width = 80
                    Visible = True
                    Expanded = False
                  end
                  item
                    FieldName = 'ErrMessage'
                    Title.Caption = 'ErrMessage'
                    Width = 254
                    Visible = True
                    Expanded = False
                  end>
              end
              object UniPanel3: TUniPanel
                Left = 0
                Top = 0
                Width = 525
                Height = 41
                Align = alTop
                Anchors = [akLeft, akTop, akRight]
                Color = clBtnFace
                TabOrder = 1
                object cmbFileName: TUniComboBox
                  Left = 6
                  Top = 8
                  Width = 274
                  Height = 21
                  Style = csDropDown
                  MaxLength = 0
                  Text = 'cmbFileName'
                  ItemIndex = -1
                  TabOrder = 1
                  RemoteQuery = False
                  CharCase = ecNormal
                end
                object btnRefreshError: TUniButton
                  Left = 283
                  Top = 6
                  Width = 75
                  Height = 25
                  Caption = 'Refresh'
                  TabOrder = 2
                  OnClick = btnRefreshErrorClick
                end
              end
            end
          end
        end
      end
    end
  end
  inherited pnFooter: TUniPanel
    inherited imgBotton: TUniImage
      Picture.Data = {
        0954474946496D6167654749463839611B00C200F70000000000FFFFFFFAFCFD
        F4F9FBDCECF2EDF5F863ADC46FB3C892C6D6B4D7E3B4D7E2BEDDE7BFDDE7C9E3
        EBC9E2EAD3E8EFDCECF1E4F1F5E5F1F5ECF5F8F3F9FBF9FCFD017B9E0C81A30C
        81A20D80A30D81A30D80A20D81A21384A51385A51484A51485A51B89A91B88A8
        1B89A81C88A81C89A8248DAC248EAC248DAB248EAB2D92AF2D92AE2E92AF3797
        B33798B33797B2419CB7419DB7419CB6419DB6429CB7429DB7429CB6429DB64C
        A2BB4CA3BB4CA2BA4DA2BB4DA3BB4DA2BA57A7BF57A8BF58A7BF58A8BF62AEC4
        62AEC363AEC463ADC363AEC36EB3C86EB4C86EB3C76EB4C76FB4C86FB4C77ABA
        CD7BBACD7AB9CC7ABACC7BBACC85C0D185C0D086C0D186C1D186C0D091C6D692
        C7D691C6D592C6D59DCCDA9DCDDA9ECCDA9DCCD9A8D2DEA9D2DEB3D8E3B4D8E3
        B3D8E2B4D8E2BEDEE7BFDEE7BEDDE6BFDDE6C9E3EAD2E8EED3E8EEDCEDF286C1
        D091C7D592C7D59DCDD9A9D3DEBEDEE6BFDEE6DCEDF1E5F1F4EDF5F7E4F2F5E5
        F2F5ECF6F8EDF6F8F4F9FAF4FAFBF3F9FAF3FAFBF4FAFAF9FDFDFAFDFDFFFFFF
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
        000000000000000000000000000000000000000000000021F90401000082002C
        000000001B00C20087000000FFFFFFFAFCFDF4F9FBDCECF2EDF5F863ADC46FB3
        C892C6D6B4D7E3B4D7E2BEDDE7BFDDE7C9E3EBC9E2EAD3E8EFDCECF1E4F1F5E5
        F1F5ECF5F8F3F9FBF9FCFD017B9E0C81A30C81A20D80A30D81A30D80A20D81A2
        1384A51385A51484A51485A51B89A91B88A81B89A81C88A81C89A8248DAC248E
        AC248DAB248EAB2D92AF2D92AE2E92AF3797B33798B33797B2419CB7419DB741
        9CB6419DB6429CB7429DB7429CB6429DB64CA2BB4CA3BB4CA2BA4DA2BB4DA3BB
        4DA2BA57A7BF57A8BF58A7BF58A8BF62AEC462AEC363AEC463ADC363AEC36EB3
        C86EB4C86EB3C76EB4C76FB4C86FB4C77ABACD7BBACD7AB9CC7ABACC7BBACC85
        C0D185C0D086C0D186C1D186C0D091C6D692C7D691C6D592C6D59DCCDA9DCDDA
        9ECCDA9DCCD9A8D2DEA9D2DEB3D8E3B4D8E3B3D8E2B4D8E2BEDEE7BFDEE7BEDD
        E6BFDDE6C9E3EAD2E8EED3E8EEDCEDF286C1D091C7D592C7D59DCDD9A9D3DEBE
        DEE6BFDEE6DCEDF1E5F1F4EDF5F7E4F2F5E5F2F5ECF6F8EDF6F8F4F9FAF4FAFB
        F3F9FAF3FAFBF4FAFAF9FDFDFAFDFDFFFFFF0000000000000000000000000000
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
        00000000000000000008FF002D081C48B0A0C18308132A5CC8B0A1C3811C2E60
        C0C061A2C40B1A3650E4A081E2C48E192E48E4E0A18387922751A2FCD0E10388
        0E1D40B8F4F0E143C9113845E024516244899E22449408F173448811247CF62C
        81C2440A1450A19A3021F5E954A827523C8D8A4285D7AF2C548465B142EC58B0
        5FBFBA68D1E205DBB6705FC88DEBF6AD5BB7356CDC801123068D19336204A621
        58068C193560ECCDCB17C68E1E3876E0C0A12307E4C83B24EBA0AC83478F1D9B
        33EFF8413AC80FD3A749FF00923A88EBD3A87D9C2E624488012245880C212284
        B60123467E0B01CEDB0811E24C9624498264C99203CE992069AE04C991E4D191
        543FA2240A94EF4FBE7FFF77D2A4C978F3E2C5A36F42A5FD142A53A4B4B752A5
        4A7B2AF2EFEBA7D2868A962C5920E086166F5C91C57F5A687185820BFE07E07F
        5824B845175E6C516185705438A1175D6CE1E1165C580807885D74F1451C6080
        F1C51729B2B8A28A30A698621C2CB6988018388E21868E3BE2488602640409A4
        906190318691679CB1001A4932C98019682C304719503290A41C0CC8C1641965
        A09146030D38D0401A648E4966995F9A99860369AEB9C69B70BEF9801A70AAF1
        C09B6AD099E71A74BEC9061D6CB04140A010002AE8A110041AE8A07F362AC1A3
        78481081A4754C7A87047844A0E9A39C623A291E054C90C7040514A0471EA54E
        20AAA9AA86AAAA1DA5C6AD4AC1007D5060EB1F03D89A2B1FB5EEB1871FB3F60A
        2C057E08100820C61A1B88000254C0ECB20220DB2CB3C9221BC0B5D866ABEDB6
        DC76EBEDB7E0862BEEB8E4966BEEB9E8A6ABEEBAECB6EBEEBBF0C62BEFBCF4D6
        6BEFBDF8E6ABEFBEFCF6EBEFBF00072CF0C004176CF0C10827ACF0C20C37ECF0
        C310472CF1C414576CF1C51867ACF1C61C77ECF1C720872CF2C824976CF2C928
        A7ACF2CA2CB7ECF2CB30C7FCEF4334D76CF3CD38E79C5040003B}
    end
  end
  inherited pnHeader: TUniPanel
    object btnBatchRefresh: TUniButton
      Left = 5
      Top = 6
      Width = 75
      Height = 29
      Caption = 'Refresh'
      TabOrder = 1
      OnClick = btnBatchRefreshClick
    end
  end
  object dsGetBatchList: TDataSource
    DataSet = DS43FileDM.cdsGetBathList
    Left = 128
    Top = 80
  end
  object dsGetBatchDetail: TDataSource
    DataSet = DS43FileDM.cdsGetBatchDetail
    Left = 360
    Top = 208
  end
  object dsGetBatchError: TDataSource
    DataSet = DS43FileDM.cdsGetBatchError
    Left = 456
    Top = 168
  end
  object dsGetBatchErrorFilename: TDataSource
    DataSet = DS43FileDM.cdsGetBatchErrorByFilename
    Left = 496
    Top = 248
  end
end
