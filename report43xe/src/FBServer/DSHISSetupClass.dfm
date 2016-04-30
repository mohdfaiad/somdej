inherited DSHISSetup: TDSHISSetup
  OldCreateOrder = True
  Height = 778
  Width = 1219
  object dsHisStGetCde: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from report43_address limit 1000')
    Left = 118
    Top = 260
  end
  object dspHisStGetCde: TDataSetProvider
    DataSet = dsHisStGetCde
    Left = 198
    Top = 260
  end
  object dsHisGetReport43Person: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInterface
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_person where PID=:PID')
    Left = 110
    Top = 340
  end
  object dspHisGetReport43Person: TDataSetProvider
    DataSet = dsHisGetReport43Person
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 110
    Top = 396
  end
  object dsHisGetReport43Service: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_service where PID=:PID')
    Left = 326
    Top = 324
  end
  object dspHisGetReport43Service: TDataSetProvider
    DataSet = dsHisGetReport43Service
    Left = 326
    Top = 380
  end
  object cdsHisGetReport43Person: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHisGetReport43Person'
    Left = 208
    Top = 544
  end
end
