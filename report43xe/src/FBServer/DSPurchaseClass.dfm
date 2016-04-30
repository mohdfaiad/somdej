inherited DSPurchase: TDSPurchase
  OldCreateOrder = True
  Height = 760
  object dsTTPt1Get: TSQLQuery
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
      
        'SELECT * FROM SP_PSTT_PT1_GET(:CRITERIA,:ORDERFIELD,:IYAR,:ICMP,' +
        ':IBRN,:IDCD)')
    Left = 673
    Top = 16
  end
  object dspTTPt1Get: TDataSetProvider
    DataSet = dsTTPt1Get
    Left = 756
    Top = 32
  end
  object dsTTAd2GetSrs: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ICMPAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IBRNAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'IYARAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IPRDAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'IDCDAD1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNOAD1'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_AD2_GET_SRS(:ICMPAD1,:IBRNAD1,:IYARAD1, :I' +
        'PRDAD1,:IDCDAD1,:IDNOAD1)')
    Left = 457
    Top = 248
  end
  object pdsTTAd2GetSrs: TDataSetProvider
    DataSet = dsTTAd2GetSrs
    Left = 540
    Top = 264
  end
  object dsTTAd2GetItn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ICMPAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IBRNAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'IYARAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IPRDAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'IDCDAD1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNOAD1'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_AD2_GET_ITN(:ICMPAD1,:IBRNAD1,:IYARAD1, :I' +
        'PRDAD1,:IDCDAD1,:IDNOAD1)')
    Left = 457
    Top = 320
  end
  object pdsTTAd2GetItn: TDataSetProvider
    DataSet = dsTTAd2GetItn
    Left = 540
    Top = 336
  end
  object dsTTAd2GetCol: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ICMPAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IBRNAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'IYARAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IPRDAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'IDCDAD1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNOAD1'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_AD2_GET_COL(:ICMPAD1,:IBRNAD1,:IYARAD1, :I' +
        'PRDAD1,:IDCDAD1,:IDNOAD1)')
    Left = 457
    Top = 392
  end
  object pdsTTAd2GetCol: TDataSetProvider
    DataSet = dsTTAd2GetCol
    Left = 540
    Top = 408
  end
  object dsTTAd2GetByDno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ICMPAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IBRNAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'IYARAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IPRDAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'IDCDAD1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNOAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'IRDNAD2'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_AD2_GET_BY_DNO(:ICMPAD1,:IBRNAD1,:IYARAD1,' +
        ' :IPRDAD1,:IDCDAD1,:IDNOAD1,:IRDNAD2)')
    Left = 457
    Top = 472
  end
  object pdsTTAd2GetByDno: TDataSetProvider
    DataSet = dsTTAd2GetByDno
    Left = 540
    Top = 488
  end
  object dsTTAd2GetDno: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ICMPAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IBRNAD1'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftInteger
        Name = 'IYARAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'IPRDAD1'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_AD2_GET_DNO(:ICMPAD1,:IBRNAD1,:IYARAD1, :I' +
        'PRDAD1)')
    Left = 457
    Top = 536
  end
  object pdsTTAd2GetDno: TDataSetProvider
    DataSet = dsTTAd2GetDno
    Left = 540
    Top = 552
  end
  object dsTTPtXGet: TSQLQuery
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
      
        'SELECT * FROM SP_PSTT_PTX_GET(:CRITERIA,:ORDERFIELD,:IYAR,:ICMP,' +
        ':IBRN,:IDCD)')
    Left = 649
    Top = 264
  end
  object pdsTTPtXGet: TDataSetProvider
    DataSet = dsTTPtXGet
    Left = 732
    Top = 280
  end
end
