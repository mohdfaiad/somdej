inherited DSCarSale: TDSCarSale
  OldCreateOrder = True
  Height = 881
  object dsMtCsmGet: TSQLQuery
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
      end
      item
        DataType = ftString
        Name = 'ICFG'
        ParamType = ptInput
        Value = '000'
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_CSM_GET(:CRITERIA,:ORDERFIELD,:ICMP,:IBRN,' +
        ':ICFG)')
    Left = 289
    Top = 88
  end
  object dspMtCsmGet: TDataSetProvider
    DataSet = dsMtCsmGet
    Left = 396
    Top = 88
  end
  object dsMtCsmGetAddr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CCNCSM'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'LNKCSM'
        ParamType = ptInput
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM SP_CSMT_CSM_GET_ADDR(:CCNCSM,:LNKCSM)')
    Left = 289
    Top = 160
  end
  object dspMtCsmGetAddr: TDataSetProvider
    DataSet = dsMtCsmGetAddr
    Left = 396
    Top = 160
  end
  object dsMtCsmGetCard: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'CCNCSM'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM SP_CSMT_CSM_GET_CARD(:CCNCSM)')
    Left = 289
    Top = 232
  end
  object dspMtCsmGetCard: TDataSetProvider
    DataSet = dsMtCsmGetCard
    Left = 396
    Top = 232
  end
  object dsMtCsmInsUpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'STSCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CMPCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BRNCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CTYCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CFGCSM'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'CCNCSM'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'PRECSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FNMCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LNMCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SEXCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SSMCSM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BDTCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NTNCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NTVCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RELCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STACSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CPNCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CPSCSM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CBNCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CPWCSM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CINCSM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CCHCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HTPCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PBTCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PSTCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BUSCSM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SALCSM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BONCSM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'OTHCSM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXPCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PCMCSM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'HDTCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PDPCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DOPCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MEMCSM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENTUSR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT  result,OUT_CCNCSM '
      'FROM SP_CSMT_CSM_INS_UPD ('
      
        ':STSCSM,:CMPCSM,:BRNCSM,:CTYCSM,:CFGCSM,:CCNCSM,:PRECSM,:FNMCSM,' +
        ':LNMCSM,:SEXCSM,:SSMCSM,:BDTCSM,:NTNCSM,:NTVCSM,:RELCSM,:STACSM,' +
        ':CPNCSM,:CPSCSM,:CBNCSM,:CPWCSM,:CINCSM,:CCHCSM,:HTPCSM,:PBTCSM,' +
        ':PSTCSM,:BUSCSM,:SALCSM,:BONCSM,:OTHCSM,:EXPCSM,:PCMCSM,:HDTCSM,' +
        ':PDPCSM,:DOPCSM,:MEMCSM,:ENTUSR,:MD)')
    Left = 190
    Top = 91
  end
  object dsMtAppGetList: TSQLQuery
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
      end
      item
        DataType = ftString
        Name = 'IDEP'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftFloat
        Name = 'IFRM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ITO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'APPSTS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_APP_LIST(:CRITERIA,:ORDERFIELD,:ICMP,:IBRN' +
        ',:IDEP,:IFRM,:ITO,:APPSTS)')
    Left = 289
    Top = 320
  end
  object dspMtAppGetList: TDataSetProvider
    DataSet = dsMtAppGetList
    Left = 396
    Top = 320
  end
  object dsMtAppGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYAR'
        ParamType = ptInput
        Value = 0
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
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'IDNO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_CSMT_APP_GET(:IYAR,:ICMP,:IBRN,:IDCD,:IDNO)')
    Left = 289
    Top = 416
  end
  object dspMtAppGet: TDataSetProvider
    DataSet = dsMtAppGet
    Left = 396
    Top = 416
  end
  object dsMtAppGetCard: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYAR'
        ParamType = ptInput
        Value = 0
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
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'IDNO'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftLargeint
        Name = 'ICNO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_APP_GET_CARD(:IYAR,:ICMP,:IBRN,:IDCD,:IDNO' +
        ',:ICNO)')
    Left = 289
    Top = 536
  end
  object dspMtAppGetCard: TDataSetProvider
    DataSet = dsMtAppGetCard
    Left = 405
    Top = 536
  end
  object dsMtAppGetAccessory: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYAR'
        ParamType = ptInput
        Value = 0
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
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'IDNO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_APP_GET_ACCESSORY(:IYAR,:ICMP,:IBRN,:IDCD,' +
        ':IDNO)')
    Left = 289
    Top = 480
  end
  object dspMtAppGetAccessory: TDataSetProvider
    DataSet = dsMtAppGetAccessory
    Left = 404
    Top = 480
  end
  object dsMtAppGetExp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYAR'
        ParamType = ptInput
        Value = 0
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
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'IDNO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM SP_CSMT_APP_GET_EXP(:IYAR,:ICMP,:IBRN,:IDCD,:IDNO)')
    Left = 289
    Top = 600
  end
  object dspMtAppGetExp: TDataSetProvider
    DataSet = dsMtAppGetExp
    Left = 405
    Top = 600
  end
  object dsMtAppInsUpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'STSOT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YAROT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CMPOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BRNOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DCDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DNOOT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IDTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DEPOT5'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'CNOOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CTYOT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CRTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SMNOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PNOOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RPDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RSNOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RSDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PSTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BRKOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GNOOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CYTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CYROT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'WHSOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RDYOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRCOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PTYOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COLOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SEROT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENGOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USEOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BNOOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'KEYOT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QO1OT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QO2OT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PDCOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PDAOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UP1OT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UP2OT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NETOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PPYOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TAXOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STPOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FCDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DWTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NLEOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RATOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'PMMOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CM1OT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CM2OT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'APCOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'AFEOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DDTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ESDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'APPOT5'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'APNOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'APDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'REJOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ICDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CN1OT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ITSOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'SDTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EDTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ISDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IVSOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BDTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'FDTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'RDTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INOOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PSROT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PAYOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EXDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TMDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PLCOT5'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EPDOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EPTOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EPSOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MEMOT5'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENTUSR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT  result, out_dno'
      
        'FROM SP_CSMT_APP_INS_UPD (:STSOT5,:YAROT5,:CMPOT5,:BRNOT5,:DCDOT' +
        '5,:DNOOT5,:SEQOT5,:IDTOT5,:DEPOT5,:CNOOT5,:CTYOT5,:CRTOT5,:SMNOT' +
        '5,:PNOOT5,:RPDOT5,:RSNOT5,:RSDOT5,:PSTOT5,:BRKOT5,:GNOOT5,:CYTOT' +
        '5,:CYROT5,:WHSOT5,:RDYOT5,:PRCOT5,:PTYOT5,:PRDOT5,:COLOT5,:SEROT' +
        '5,:ENGOT5,:USEOT5,:BNOOT5,:KEYOT5,:QO1OT5,:QO2OT5,:PDCOT5,:PDAOT' +
        '5,:UP1OT5,:UP2OT5,:NETOT5,:PPYOT5,:TAXOT5,:STPOT5,:FCDOT5,:DWTOT' +
        '5,:NLEOT5,:RATOT5,:PMMOT5,:CM1OT5,:CM2OT5,:APCOT5,:AFEOT5,:DDTOT' +
        '5,:ESDOT5,:APPOT5,:APNOT5,:APDOT5,:REJOT5,:ICDOT5,:CN1OT5,:ITSOT' +
        '5,:SDTOT5,:EDTOT5,:ISDOT5,:IVSOT5,:INTOT5,:BDTOT5,:FDTOT5,:RDTOT' +
        '5,:INOOT5,:PSROT5,:PAYOT5,:EXDOT5,:TMDOT5,:PLCOT5,:EPDOT5,:EPTOT' +
        '5,:EPSOT5,:MEMOT5,:ENTUSR,:MD)')
    Left = 190
    Top = 419
  end
  object dsMtAppGetDown: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYAR'
        ParamType = ptInput
        Value = 0
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
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'IDNO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_APP_GET_DOWN(:IYAR,:ICMP,:IBRN,:IDCD,:IDNO' +
        ')')
    Left = 289
    Top = 664
  end
  object dspMtAppGetDown: TDataSetProvider
    DataSet = dsMtAppGetDown
    Left = 405
    Top = 664
  end
  object dsMtAppGetFollowup: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYAR'
        ParamType = ptInput
        Value = 0
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
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'IDNO'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_APP_GET_FOLLOWUP(:IYAR,:ICMP,:IBRN,:IDCD,:' +
        'IDNO)')
    Left = 289
    Top = 744
  end
  object dspMtAppGetFollowup: TDataSetProvider
    DataSet = dsMtAppGetFollowup
    Left = 405
    Top = 744
  end
  object dsMtSetupAccessoryGetList: TSQLQuery
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
      end
      item
        DataType = ftString
        Name = 'IDEP'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftFloat
        Name = 'IFRM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ITO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BRD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_SETUP_ACCESSORY_LIST(:CRITERIA,:ORDERFIELD' +
        ',:ICMP,:IBRN,:IDEP,:IFRM,:ITO,:BRD)')
    Left = 545
    Top = 424
  end
  object pdsMtSetupAccessoryGetList: TDataSetProvider
    DataSet = dsMtSetupAccessoryGetList
    Left = 652
    Top = 424
  end
  object dsSetupAccessoryGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'yarom3'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'cmpom3'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'brnom3'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'dcdom3'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'ordom3'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_SETUP_ACCESSORY_GET(:yarom3,:cmpom3,:brnom' +
        '3,:dcdom3,:ordom3)')
    Left = 545
    Top = 496
  end
  object pdsSetupAccessoryGet: TDataSetProvider
    DataSet = dsSetupAccessoryGet
    Left = 652
    Top = 496
  end
  object dsMtApprGetList: TSQLQuery
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
      end
      item
        DataType = ftString
        Name = 'IDEP'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftFloat
        Name = 'IFRM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ITO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_CSMT_APPR_LIST(:CRITERIA,:ORDERFIELD,:ICMP,:IBR' +
        'N,:IDEP,:IFRM,:ITO)')
    Left = 545
    Top = 320
  end
  object dspMtApprGetList: TDataSetProvider
    DataSet = dsMtApprGetList
    Left = 652
    Top = 320
  end
end
