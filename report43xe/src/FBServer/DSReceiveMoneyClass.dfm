inherited DSReceiveMoney: TDSReceiveMoney
  OldCreateOrder = True
  Height = 760
  object dsTtRcvGet: TSQLQuery
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
        Name = 'ICMPRT4'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNRT4'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDEPRT4'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IDCDRT4'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftFloat
        Name = 'IFRMDATE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ITODATE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FG'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_RMTT_RCV_GET(:CRITERIA,:ORDERFIELD,:ICMPRT4,:IB' +
        'RNRT4,:IDEPRT4,:IDCDRT4,:IFRMDATE,:ITODATE,:FG)')
    Left = 673
    Top = 16
  end
  object dspTtRcvGet: TDataSetProvider
    DataSet = dsTtRcvGet
    Left = 756
    Top = 16
  end
  object dsTtRcvGetAm4: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYARAM4'
        ParamType = ptInput
        Value = 1000
      end
      item
        DataType = ftString
        Name = 'ICMPAM4'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNAM4'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDCDAM4'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'ICTYAM4'
        ParamType = ptInput
        Value = '2'
      end
      item
        DataType = ftInteger
        Name = 'ICNOAM4'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'FG'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_RMTT_RCV_GET_AM4(:IYARRT4,:ICMPRT4,:IBRNRT4,:ID' +
        'CDRT4,:ICTYAM4,:ICNOAM4,:FG)')
    Left = 673
    Top = 88
  end
  object dspTtRcvGetAm4: TDataSetProvider
    DataSet = dsTtRcvGetAm4
    Left = 756
    Top = 88
  end
  object dspTtRcvGetRt4: TDataSetProvider
    DataSet = dsTtRcvGetRt4
    Left = 756
    Top = 160
  end
  object dsTtRcvGetRt4: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYARRT4'
        ParamType = ptInput
        Value = 1000
      end
      item
        DataType = ftInteger
        Name = 'IPRDRT4'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'ICMPRT4'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNRT4'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDCDRT4'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNORT4'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'FG'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_RMTT_RCV_GET_RT4(:IYARRT4,:IPRDRT4,:ICMPRT4,:IB' +
        'RNRT4,:IDCDRT4,:IDNORT4,:FG)')
    Left = 673
    Top = 160
  end
end
