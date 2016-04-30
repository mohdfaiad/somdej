inherited DSSTOCK: TDSSTOCK
  OldCreateOrder = True
  object dsStockGet: TSQLQuery
    MaxBlobSize = -1
    ParamCheck = False
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
        DataType = ftInteger
        Name = 'IYARIM2'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'ICMPIM2'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IBRNIM2'
        ParamType = ptInput
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IDCDIM2'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_TTST_IM2_GET(:CRITERIA,:ORDERFIELD,:IYARIM2,:IC' +
        'MPIM2,:IBRNIM2,:IDCDIM2)')
    Left = 177
    Top = 184
  end
  object dspStockGet: TDataSetProvider
    DataSet = dsStockGet
    Left = 268
    Top = 184
  end
end
