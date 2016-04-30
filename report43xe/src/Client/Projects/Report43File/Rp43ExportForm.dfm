inherited frmRp43Export: TfrmRp43Export
  Caption = ' Export'
  ClientHeight = 679
  ClientWidth = 1178
  Font.Charset = THAI_CHARSET
  Font.Height = -13
  OnCreate = UniFormCreate
  OnShow = UniFormShow
  ExplicitWidth = 1184
  ExplicitHeight = 708
  PixelsPerInch = 96
  TextHeight = 16
  inherited pnBody: TUniPanel
    Top = 89
    Width = 1178
    Height = 553
    ExplicitTop = 89
    ExplicitWidth = 1178
    ExplicitHeight = 553
    object btnExport: TUniButton
      Left = 225
      Top = 34
      Width = 88
      Height = 25
      Caption = '1.Export'
      TabOrder = 1
      OnClick = btnExportClick
    end
    object cmbMonth: TUniComboBox
      Left = 768
      Top = 16
      Width = 145
      Height = 24
      Visible = False
      Style = csDropDown
      MaxLength = 0
      Text = 'cmbMonth'
      ItemIndex = -1
      TabOrder = 2
      RemoteQuery = False
      CharCase = ecNormal
    end
    object cmbYear: TUniComboBox
      Left = 919
      Top = 16
      Width = 145
      Height = 24
      Visible = False
      Style = csDropDown
      MaxLength = 0
      Text = 'cmbYear'
      ItemIndex = -1
      TabOrder = 3
      RemoteQuery = False
      CharCase = ecNormal
    end
    object dtFrom: TUniDateTimePicker
      Left = 63
      Top = 38
      Width = 145
      Height = 21
      DateTime = 41939.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 4
    end
    object dtTo: TUniDateTimePicker
      Left = 63
      Top = 65
      Width = 145
      Height = 21
      DateTime = 41939.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Kind = tUniDate
      FirstDayOfWeek = dowLocaleDefault
      TabOrder = 5
    end
    object UniLabel1: TUniLabel
      Left = 27
      Top = 38
      Width = 30
      Height = 16
      Caption = 'From'
      TabOrder = 6
    end
    object UniLabel2: TUniLabel
      Left = 38
      Top = 70
      Width = 15
      Height = 16
      Caption = 'To'
      TabOrder = 7
    end
    object btnExportAFile: TUniButton
      Left = 225
      Top = 65
      Width = 88
      Height = 25
      Visible = False
      Caption = 'Export File'
      TabOrder = 8
    end
    object btnDownload: TUniButton
      Left = 345
      Top = 65
      Width = 184
      Height = 25
      Visible = False
      Caption = '2.Prepare Download File'
      TabOrder = 9
      OnClick = btnDownloadClick
    end
    object lbDownload: TUniLabel
      Left = 345
      Top = 38
      Width = 66
      Height = 16
      TextConversion = txtHTML
      Caption = 'lbDownload'
      TabOrder = 10
    end
    object ckPERSON: TUniCheckBox
      Left = 63
      Top = 120
      Width = 150
      Height = 17
      Checked = False
      Caption = '1.PERSON'
      ParentFont = False
      Font.Charset = THAI_CHARSET
      Font.Height = -13
      TabOrder = 11
    end
    object ckADDRESS: TUniCheckBox
      Left = 63
      Top = 143
      Width = 150
      Height = 17
      Checked = False
      Caption = '2.ADDRESS'
      TabOrder = 12
    end
    object ckDEATH: TUniCheckBox
      Left = 63
      Top = 166
      Width = 150
      Height = 17
      Checked = False
      Caption = '3.DEATH'
      TabOrder = 13
    end
    object ckCARD: TUniCheckBox
      Left = 63
      Top = 189
      Width = 150
      Height = 17
      Checked = False
      Caption = '4.CARD'
      TabOrder = 14
    end
    object ckDRUGALLERGY: TUniCheckBox
      Left = 63
      Top = 212
      Width = 150
      Height = 17
      Checked = False
      Caption = '5.DRUGALLERGY'
      TabOrder = 15
    end
    object ckHOME: TUniCheckBox
      Left = 63
      Top = 235
      Width = 150
      Height = 17
      Checked = False
      Caption = '6.HOME'
      TabOrder = 16
    end
    object ckSERVICE: TUniCheckBox
      Left = 63
      Top = 258
      Width = 150
      Height = 17
      Checked = False
      Caption = '7.SERVICE'
      TabOrder = 17
    end
    object ckAPPOINTMENT: TUniCheckBox
      Left = 63
      Top = 281
      Width = 150
      Height = 17
      Checked = False
      Caption = '8.APPOINTMENT'
      TabOrder = 18
    end
    object ckACCIDENT: TUniCheckBox
      Left = 63
      Top = 304
      Width = 150
      Height = 17
      Checked = False
      Caption = '9.ACCIDENT'
      TabOrder = 19
    end
    object ckDIAGNOSIS_OPD: TUniCheckBox
      Left = 63
      Top = 327
      Width = 150
      Height = 17
      Checked = False
      Caption = '10.DIAGNOSIS_OPD'
      TabOrder = 20
    end
    object ckPROCEDURE_OPD: TUniCheckBox
      Left = 239
      Top = 120
      Width = 150
      Height = 17
      Checked = False
      Caption = '11.PROCEDURE_OPD'
      TabOrder = 21
    end
    object ckDRUG_OPD: TUniCheckBox
      Left = 239
      Top = 143
      Width = 150
      Height = 17
      Checked = False
      Caption = '12.DRUG_OPD'
      TabOrder = 22
    end
    object ckCHARGE_OPD: TUniCheckBox
      Left = 239
      Top = 166
      Width = 150
      Height = 17
      Checked = False
      Caption = '13.CHARGE_OPD'
      TabOrder = 23
    end
    object ckADMISSION: TUniCheckBox
      Left = 239
      Top = 189
      Width = 150
      Height = 17
      Checked = False
      Caption = '14.ADMISSION'
      TabOrder = 24
    end
    object ckDIAGNOSIS_IPD: TUniCheckBox
      Left = 239
      Top = 212
      Width = 150
      Height = 17
      Checked = False
      Caption = '15.DIAGNOSIS_IPD'
      TabOrder = 25
    end
    object ckPROCEDURE_IPD: TUniCheckBox
      Left = 239
      Top = 235
      Width = 150
      Height = 17
      Checked = False
      Caption = '16.PROCEDURE_IPD'
      TabOrder = 26
    end
    object ckDRUG_IPD: TUniCheckBox
      Left = 239
      Top = 258
      Width = 150
      Height = 17
      Checked = False
      Caption = '17.DRUG_IPD'
      TabOrder = 27
    end
    object ckCHARGE_IPD: TUniCheckBox
      Left = 239
      Top = 281
      Width = 150
      Height = 17
      Checked = False
      Caption = '18.CHARGE_IPD'
      TabOrder = 28
    end
    object ckSURVEILLANCE: TUniCheckBox
      Left = 239
      Top = 304
      Width = 150
      Height = 17
      Checked = False
      Caption = '19.SURVEILLANCE'
      TabOrder = 29
    end
    object ckWOMEN: TUniCheckBox
      Left = 239
      Top = 327
      Width = 150
      Height = 17
      Checked = False
      Caption = '20.WOMEN'
      TabOrder = 30
    end
    object ckFP: TUniCheckBox
      Left = 415
      Top = 120
      Width = 150
      Height = 17
      Checked = False
      Caption = '21.FP'
      TabOrder = 31
    end
    object ckEPI: TUniCheckBox
      Left = 415
      Top = 143
      Width = 150
      Height = 17
      Checked = False
      Caption = '22.EPI'
      TabOrder = 32
    end
    object ckNUTRITION: TUniCheckBox
      Left = 415
      Top = 166
      Width = 150
      Height = 17
      Checked = False
      Caption = '23.NUTRITION'
      TabOrder = 33
    end
    object ckPRENATAL: TUniCheckBox
      Left = 415
      Top = 189
      Width = 150
      Height = 17
      Checked = False
      Caption = '24.PRENATAL'
      TabOrder = 34
    end
    object ckANC: TUniCheckBox
      Left = 415
      Top = 212
      Width = 150
      Height = 17
      Checked = False
      Caption = '25.ANC'
      TabOrder = 35
    end
    object ckLABOR: TUniCheckBox
      Left = 415
      Top = 235
      Width = 150
      Height = 17
      Checked = False
      Caption = '26.LABOR'
      TabOrder = 36
    end
    object ckPOSTNATAL: TUniCheckBox
      Left = 415
      Top = 258
      Width = 150
      Height = 17
      Checked = False
      Caption = '27.POSTNATAL'
      TabOrder = 37
    end
    object ckNEWBORN: TUniCheckBox
      Left = 415
      Top = 281
      Width = 150
      Height = 17
      Checked = False
      Caption = '28.NEWBORN'
      TabOrder = 38
    end
    object ckNEWBORNCARE: TUniCheckBox
      Left = 415
      Top = 304
      Width = 150
      Height = 17
      Checked = False
      Caption = '29.NEWBORNCARE'
      TabOrder = 39
    end
    object ckDENTAL: TUniCheckBox
      Left = 415
      Top = 327
      Width = 150
      Height = 17
      Checked = False
      Caption = '30.DENTAL'
      TabOrder = 40
    end
    object ckSPECIALPP: TUniCheckBox
      Left = 583
      Top = 120
      Width = 150
      Height = 17
      Checked = False
      Caption = '31.SPECIALPP'
      TabOrder = 41
    end
    object ckNCDSCREEN: TUniCheckBox
      Left = 583
      Top = 143
      Width = 150
      Height = 17
      Checked = False
      Caption = '32.NCDSCREEN'
      TabOrder = 42
    end
    object ckCHRONIC: TUniCheckBox
      Left = 583
      Top = 166
      Width = 150
      Height = 17
      Checked = False
      Caption = '33.CHRONIC'
      TabOrder = 43
    end
    object ckCHRONICFU: TUniCheckBox
      Left = 583
      Top = 189
      Width = 150
      Height = 17
      Checked = False
      Caption = '34.CHRONICFU'
      TabOrder = 44
    end
    object ckLABFU: TUniCheckBox
      Left = 583
      Top = 212
      Width = 150
      Height = 17
      Checked = False
      Caption = '35.LABFU'
      TabOrder = 45
    end
    object ckCOMMUNITY_SERVICE: TUniCheckBox
      Left = 583
      Top = 235
      Width = 306
      Height = 17
      Checked = False
      Caption = '36.COMMUNITY_SERVICE'
      TabOrder = 46
    end
    object ckDISABILITY: TUniCheckBox
      Left = 583
      Top = 258
      Width = 150
      Height = 17
      Checked = False
      Caption = '37.DISABILITY'
      TabOrder = 47
    end
    object ckICF: TUniCheckBox
      Left = 583
      Top = 281
      Width = 150
      Height = 17
      Checked = False
      Caption = '38.ICF'
      TabOrder = 48
    end
    object ckFUNCTIONAL: TUniCheckBox
      Left = 583
      Top = 304
      Width = 150
      Height = 17
      Checked = False
      Caption = '39.FUNCTIONAL'
      TabOrder = 49
    end
    object ckREHABILITATION: TUniCheckBox
      Left = 583
      Top = 327
      Width = 150
      Height = 17
      Checked = False
      Caption = '40.REHABILITATION'
      TabOrder = 50
    end
    object ckVILLAGE: TUniCheckBox
      Left = 768
      Top = 120
      Width = 150
      Height = 17
      Checked = False
      Caption = '41.VILLAGE'
      TabOrder = 51
    end
    object ckCOMMUNITY_ACTIVITY: TUniCheckBox
      Left = 768
      Top = 143
      Width = 321
      Height = 17
      Checked = False
      Caption = '42.COMMUNITY_ACTIVITY'
      TabOrder = 52
    end
    object ckPROVIDER: TUniCheckBox
      Left = 768
      Top = 166
      Width = 150
      Height = 17
      Checked = False
      Caption = '43.PROVIDER'
      TabOrder = 53
    end
    object btnUnCheckAll: TUniButton
      Left = 150
      Top = 89
      Width = 104
      Height = 25
      Caption = #3652#3617#3656#3648#3621#3639#3629#3585#3607#3633#3657#3591#3627#3617#3604
      TabOrder = 54
      OnClick = btnUnCheckAllClick
    end
    object btnCheckAll: TUniButton
      Left = 63
      Top = 89
      Width = 82
      Height = 25
      Caption = #3648#3621#3639#3629#3585#3607#3633#3657#3591#3627#3617#3604
      TabOrder = 55
      OnClick = btnCheckAllClick
    end
    object cmbBatchCode: TUniComboBox
      Left = 63
      Top = 8
      Width = 145
      Height = 24
      Style = csDropDown
      MaxLength = 0
      ItemIndex = -1
      TabOrder = 56
      RemoteQuery = False
      CharCase = ecNormal
    end
  end
  inherited pnFooter: TUniPanel
    Top = 642
    Width = 1178
    ExplicitTop = 642
    ExplicitWidth = 1178
    DesignSize = (
      1178
      37)
    inherited imgBotton: TUniImage
      Width = 1178
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
      ExplicitWidth = 1178
    end
    inherited btnCancel: TUniButton
      Left = 837
      Visible = False
      ExplicitLeft = 837
    end
    inherited btnConfirm: TUniButton
      Left = 1094
      Visible = False
      Caption = #3610#3633#3609#3607#3638#3585
      ExplicitLeft = 1094
    end
    object BtnAddEdtSubCode: TUniButton
      Left = 727
      Top = 6
      Width = 110
      Height = 25
      Visible = False
      Caption = #3648#3614#3636#3656#3617'/'#3649#3585#3657#3652#3586#3619#3627#3633#3626#3618#3656#3629#3618
      Anchors = [akTop, akRight]
      ParentFont = False
      TabOrder = 5
    end
  end
  inherited pnHeader: TUniPanel
    Width = 1178
    Height = 89
    ExplicitWidth = 1178
    ExplicitHeight = 89
  end
  inherited scClosing: TUniScreenMask
    Left = 944
    Top = 184
  end
  inherited scCancel: TUniScreenMask
    Left = 784
    Top = 144
  end
  inherited csConfirm: TUniScreenMask
    Left = 832
    Top = 56
  end
  object UniScreenMask1: TUniScreenMask
    AttachedControl = btnExport
    Enabled = True
    DisplayMessage = #3626#3656#3591#3629#3629#3585#3586#3657#3629#3617#3641#3621'...'
    Left = 352
    Top = 304
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 672
    Top = 224
  end
  object scDownloadFile: TUniScreenMask
    AttachedControl = btnDownload
    Enabled = True
    DisplayMessage = #3585#3635#3621#3633#3591#3610#3633#3609#3607#3638#3585#3586#3657#3629#3617#3641#3621'...'
    Left = 672
    Top = 424
  end
  object IdUnixTime1: TIdUnixTime
    Left = 576
    Top = 400
  end
end
