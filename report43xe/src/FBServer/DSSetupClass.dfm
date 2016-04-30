inherited DSSetup: TDSSetup
  OldCreateOrder = True
  Height = 778
  Width = 1219
  inherited dsDescList: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'IPARAM_ABBR_CODE'
        ParamType = ptInput
        Value = 'AC'
      end
      item
        DataType = ftString
        Name = 'IPARAM_PREFIX_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IPARAM_ORDER_BY'
        ParamType = ptInput
      end>
  end
  object dsStGetCde: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from report43_address limit 1000')
    Left = 172
    Top = 8
  end
  object dspStGetCde: TDataSetProvider
    DataSet = dsStGetCde
    Left = 268
  end
  object dsStGetNb1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'I_YARNB1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'I_CMPNB1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'I_BRNNB1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'I_DCDNB1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_STCT_NB1_GET(:I_YARNB1,:I_CMPNB1,:I_BRNNB1,:I_D' +
        'CDNB1)')
    Left = 204
    Top = 96
  end
  object dspStGetNb1: TDataSetProvider
    DataSet = dsStGetNb1
    Left = 292
    Top = 96
  end
  object dsStGetVm1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_VM1_GET(:CRITERIA,:ORDERFIELD)')
    Left = 204
    Top = 160
  end
  object dspStGetVm1: TDataSetProvider
    DataSet = dsStGetVm1
    Left = 292
    Top = 160
  end
  object dsStVm1GetAddr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'VNOVMA'
        ParamType = ptInput
        Value = '0000'
      end
      item
        DataType = ftInteger
        Name = 'LNKVMA'
        ParamType = ptInput
        Value = 1
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_VM1_GET_ADDR(:VNOVMA,:LNKVMA)')
    Left = 204
    Top = 216
  end
  object dspStVm1GetAddr: TDataSetProvider
    DataSet = dsStVm1GetAddr
    Left = 292
    Top = 216
  end
  object dsStGetCm1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_CM1_GET(:CRITERIA,:ORDERFIELD)')
    Left = 204
    Top = 288
  end
  object dspStGetCm1: TDataSetProvider
    DataSet = dsStGetCm1
    Left = 292
    Top = 288
  end
  object dsStCm1GetAddr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNOCMA'
        ParamType = ptInput
        Value = '0000'
      end
      item
        DataType = ftInteger
        Name = 'LNKCMA'
        ParamType = ptInput
        Value = 1
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_CM1_GET_ADDR(:CNOCMA,:LNKCMA)')
    Left = 204
    Top = 352
  end
  object dspStCm1GetAddr: TDataSetProvider
    DataSet = dsStCm1GetAddr
    Left = 292
    Top = 352
  end
  object dsStGetPm1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ISRSPM1'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_PM1_GET(:CRITERIA,:ORDERFIELD,:ISRSPM1)')
    Left = 204
    Top = 504
  end
  object dspStGetPm1: TDataSetProvider
    DataSet = dsStGetPm1
    Left = 292
    Top = 504
  end
  object dsStGetBg: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'I_YARBG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'I_CMPBG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'I_BRNBG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FLGBG'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_STMT_BG_GET(:I_YARBG,:I_CMPBG,:I_BRNBG,:CRITERI' +
        'A,:ORDERFIELD,:FLGBG)')
    Left = 204
    Top = 568
  end
  object dspStGetBg: TDataSetProvider
    DataSet = dsStGetBg
    Left = 292
    Top = 568
  end
  object dsStGetSty: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_STY_GET(:CRITERIA,:ORDERFIELD)')
    Left = 204
    Top = 640
  end
  object dspStGetSty: TDataSetProvider
    DataSet = dsStGetSty
    Left = 292
    Top = 640
  end
  object dsStGetShp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STCT_SHP_GET(:CRITERIA,:ORDERFIELD)')
    Left = 204
    Top = 704
  end
  object dspStGetShp: TDataSetProvider
    DataSet = dsStGetShp
    Left = 292
    Top = 704
  end
  object dsStCm1GetAm3: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ICNOAM3'
        ParamType = ptInput
        Value = '000000'
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_CM1_GET_AM3(:ICNOAM3)')
    Left = 14
    Top = 288
  end
  object dspStCm1GetAm3: TDataSetProvider
    DataSet = dsStCm1GetAm3
    Left = 102
    Top = 288
  end
  object dsStGetCm3: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_CM3_GET(:CRITERIA,:ORDERFIELD)')
    Left = 388
    Top = 96
  end
  object dspStGetCm3: TDataSetProvider
    DataSet = dsStGetCm3
    Left = 484
    Top = 96
  end
  object dsStGetRm1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_RM1_GET(:CRITERIA,:ORDERFIELD)')
    Left = 388
    Top = 464
  end
  object dspStGetRm1: TDataSetProvider
    DataSet = dsStGetRm1
    Left = 484
    Top = 464
  end
  object dsStGetReg: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_REG_GET(:CRITERIA,:ORDERFIELD)')
    Left = 388
    Top = 528
  end
  object dspStGetReg: TDataSetProvider
    DataSet = dsStGetReg
    Left = 484
    Top = 528
  end
  object dsStRegGetPm1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CNOREG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_REG_GET_PM1(:CNOREG,:MD)')
    Left = 388
    Top = 592
  end
  object dspStRegGetPm1: TDataSetProvider
    DataSet = dsStRegGetPm1
    Left = 484
    Top = 592
  end
  object dsStGetAm1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_AM1_GET(:CRITERIA,:ORDERFIELD)')
    Left = 396
    Top = 288
  end
  object dspStGetAm1: TDataSetProvider
    DataSet = dsStGetAm1
    Left = 492
    Top = 288
  end
  object dsStCm1GetUsedBrn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ICMP'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRN'
        ParamType = ptInput
        Value = '000'
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_STMT_CM1_GET_USED_BRN(:CRITERIA,:ORDERFIELD,:IC' +
        'MP,:IBRN)')
    Left = 14
    Top = 352
  end
  object dspStCm1GetUsedBrn: TDataSetProvider
    DataSet = dsStCm1GetUsedBrn
    Left = 99
    Top = 368
  end
  object dsStVm1GetYm3: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'IVNOYM3'
        ParamType = ptInput
        Value = '000000'
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_VM1_GET_YM3(:IVNOYM3)')
    Left = 14
    Top = 160
  end
  object dspStVm1GetYm3: TDataSetProvider
    DataSet = dsStVm1GetYm3
    Left = 102
    Top = 160
  end
  object dsStGetYm1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STMT_YM1_GET(:CRITERIA,:ORDERFIELD)')
    Left = 396
    Top = 160
  end
  object dspStGetYm1: TDataSetProvider
    DataSet = dsStGetYm1
    Left = 492
    Top = 160
  end
  object dsStGetZip: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_STCT_ZIP_GET(:CRITERIA,:ORDERFIELD)')
    Left = 388
    Top = 32
  end
  object dspStGetZip: TDataSetProvider
    DataSet = dsStGetZip
    Left = 484
    Top = 32
  end
  object dsStVm1GetUsedBrn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ICMP'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRN'
        ParamType = ptInput
        Value = '000'
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_STMT_VM1_GET_USED_BRN(:CRITERIA,:ORDERFIELD,:IC' +
        'MP,:IBRN)')
    Left = 17
    Top = 208
  end
  object dspStVm1GetUsedBrn: TDataSetProvider
    DataSet = dsStVm1GetUsedBrn
    Left = 100
    Top = 224
  end
  object dsStGetPm1Image: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ITNPM1'
        ParamType = ptInput
        Value = '000'
      end>
    SQL.Strings = (
      'SELECT * FROM MT_ERPPM1_IMAGE WHERE ITNPM1 = :INTPM1')
    Left = 204
    Top = 448
  end
  object dspStGetPm1Image: TDataSetProvider
    DataSet = dsStGetPm1Image
    Left = 292
    Top = 448
  end
  object dsStGetIm2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IYAR'
        ParamType = ptInput
        Value = '1000'
      end
      item
        DataType = ftString
        Name = 'ICMP'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRN'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDCD'
        ParamType = ptInput
        Value = '000'
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_STMT_IM2_GET(:CRITERIA,:ORDERFIELD,:IYAR,:ICMP,' +
        ':IBRN,:IDCD)')
    Left = 17
    Top = 440
  end
  object dspStGetIm2: TDataSetProvider
    DataSet = dsStGetIm2
    Left = 100
    Top = 456
  end
  object dsStGetAcc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
        Value = ' '
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SP_STMT_AC1_GET(:CRITERIA,:ORDERFIELD)')
    Left = 30
    Top = 100
  end
  object dspStGetAcc: TDataSetProvider
    DataSet = dsStGetAcc
    Left = 110
    Top = 100
  end
  object dstStGetIM1ByItn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ITNIM1'
        ParamType = ptInput
        Value = '-'
      end
      item
        DataType = ftString
        Name = 'COLIM1'
        ParamType = ptInput
        Value = 'ALL'
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_STMT_IM1_GET_BY_ITN(:CRITERIA,:ORDERFIELD,:ITNI' +
        'M1,:COLIM1)')
    Left = 17
    Top = 520
  end
  object dsptStGetIM1ByItn: TDataSetProvider
    DataSet = dstStGetIM1ByItn
    Left = 100
    Top = 536
  end
  object dsStGetPm1ByItc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CRITERIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORDERFIELD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ITCPM1'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_STMT_PM1_GET_BY_ITC(:CRITERIA,:ORDERFIELD,:ITCP' +
        'M1)')
    Left = 604
    Top = 504
  end
  object dspStGetPm1ByItc: TDataSetProvider
    DataSet = dsStGetPm1ByItc
    Left = 708
    Top = 504
  end
  object dsStRedCardGet: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select STSRM1, CMPRM1, BRNRM1,  REGRM1,  RGNRM1,'
      'REGRM1 || '#39'-'#39' || CAST(RGNRM1 AS VARCHAR(10)) AS REGFULL,'
      'PRVRM1, AC.TNMCDE AS PRVTNM,'
      'PDTRM1,  PATRM1, OATRM1,   AVLRM1,   NARRM1,  PATRM1 + OATRM1'
      'from MT_ERPRM1  P'
      'inner join CT_ERPCDE AC'
      'on AC.CNOCDE = P.PRVRM1'
      'and AC.CIDCDE = '#39'AC'#39
      'AND AC.FMTCDE = '#39'1'#39
      'WHERE P.AVLRM1 = '#39'Y'#39)
    Left = 388
    Top = 664
  end
  object dspStRedCardGet: TDataSetProvider
    DataSet = dsStRedCardGet
    Left = 484
    Top = 664
  end
  object dsHisGetReport43Person: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from report43_person limit 1000')
    Left = 670
    Top = 188
  end
  object dspHisGetReport43Person: TDataSetProvider
    DataSet = dsHisGetReport43Person
    Left = 670
    Top = 244
  end
end
