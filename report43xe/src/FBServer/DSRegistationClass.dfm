inherited DSRegistation: TDSRegistation
  OldCreateOrder = True
  Height = 796
  object dsTtAm6GetList: TSQLQuery
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
        Name = 'ICMPAM6'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNAM6'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDEPAM6'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IDCDAM6'
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
      
        'SELECT * FROM SP_RRTT_AM6_GET_LIST(:CRITERIA,:ORDERFIELD,:ICMPAM' +
        '6,:IBRNAM6,:IDEPAM6,:IDCDAM6,:IFRMDATE,:ITODATE,:FG)')
    Left = 657
    Top = 16
  end
  object dspTtAm6GetList: TDataSetProvider
    DataSet = dsTtAm6GetList
    Left = 756
    Top = 16
  end
  object dsTtAm6GetYm4: TSQLQuery
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
        Name = 'ICMPAM6'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'IYARAM4'
        ParamType = ptInput
        Value = 1000
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_RRTT_AM6_GET_YM4(:CRITERIA,:ORDERFIELD,:ICMPAM6' +
        ',:IYARAM6)')
    Left = 657
    Top = 72
  end
  object dspTtAm6GetYm4: TDataSetProvider
    DataSet = dsTtAm6GetYm4
    Left = 756
    Top = 72
  end
  object dsTtAm6GetByNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYARAM6'
        ParamType = ptInput
        Value = 1000
      end
      item
        DataType = ftInteger
        Name = 'IPRDAM6'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'ICMPAM6'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNAM6'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDCDAM6'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNOAM6'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'PRC'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_RRTT_AM6_GET_BY_NO(:IYARAM6,:IPRDAM6,:ICMPAM6,:' +
        'IBRNAM6,:IDCDAM6,:IDNOAM6,:PRC)')
    Left = 657
    Top = 128
  end
  object dspTtAm6GetByNo: TDataSetProvider
    DataSet = dsTtAm6GetByNo
    Left = 756
    Top = 128
  end
  object dsTtAm7GetList: TSQLQuery
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
        Name = 'ICMPAM7'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNAM7'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDEPAM7'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IDCDAM7'
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
      
        'SELECT * FROM SP_RRTT_AM7_GET_LIST(:CRITERIA,:ORDERFIELD,:ICMPAM' +
        '7,:IBRNAM7,:IDEPAM7,:IDCDAM7,:IFRMDATE,:ITODATE,:FG)')
    Left = 657
    Top = 200
  end
  object dspTtAm7GetList: TDataSetProvider
    DataSet = dsTtAm7GetList
    Left = 756
    Top = 200
  end
  object dsTtAm7GetByNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYARAM7'
        ParamType = ptInput
        Value = 1000
      end
      item
        DataType = ftInteger
        Name = 'IPRDAM7'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'ICMPAM7'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNAM7'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDCDAM7'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNOAM7'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'PRC'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_RRTT_AM7_GET_BY_NO(:IYARAM7,:IPRDAM7,:ICMPAM7,:' +
        'IBRNAM7,:IDCDAM7,:IDNOAM7,:PRC)')
    Left = 657
    Top = 256
  end
  object dspTtAm7GetByNo: TDataSetProvider
    DataSet = dsTtAm7GetByNo
    Left = 756
    Top = 256
  end
  object dsTtRg1GetList: TSQLQuery
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
        Name = 'ICMPRG1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IBRNRG1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDEPRG1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDCDRG1'
        ParamType = ptInput
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
      
        'SELECT * FROM SP_RGTT_RG1_GET_LIST(:CRITERIA,:ORDERFIELD,:ICMPRG' +
        '1,:IBRNRG1,:IDEPRG1,:IDCDRG1,:IFRMDATE,:ITODATE,:FG)')
    Left = 657
    Top = 328
  end
  object dspTtRg1GetList: TDataSetProvider
    DataSet = dsTtRg1GetList
    Left = 756
    Top = 328
  end
  object dsTtRg1GetOm5: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ICMPRG1'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNRG1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'TYP'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * FROM SP_RGTT_RG1_GET_OM5(:ICMPRG1,:IBRNRG1,:TYP)')
    Left = 649
    Top = 392
  end
  object dspTtRg1GetOm5: TDataSetProvider
    DataSet = dsTtRg1GetOm5
    Left = 748
    Top = 392
  end
  object dsTtRg1GetByNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYARRG1'
        ParamType = ptInput
        Value = 1000
      end
      item
        DataType = ftInteger
        Name = 'IPRDRG1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'ICMPRG1'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNRG1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDCDRG1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNORG1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'PRC'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_RGTT_RG1_GET_BY_NO(:IYARRG1,:IPRDRG1,:ICMPRG1,:' +
        'IBRNRG1,:IDCDRG1,:IDNORG1,:PRC)')
    Left = 649
    Top = 456
  end
  object dspTtRg1GetByNo: TDataSetProvider
    DataSet = dsTtRg1GetByNo
    Left = 748
    Top = 456
  end
  object dsTtRg2GetList: TSQLQuery
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
        Name = 'ICMPRG2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IBRNRG2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDEPRG2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDCDRG2'
        ParamType = ptInput
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
      
        'SELECT * FROM SP_RGTT_RG2_GET_LIST(:CRITERIA,:ORDERFIELD,:ICMPRG' +
        '2,:IBRNRG2,:IDEPRG2,:IDCDRG2,:IFRMDATE,:ITODATE,:FG)')
    Left = 649
    Top = 544
  end
  object dspTtRg2GetList: TDataSetProvider
    DataSet = dsTtRg2GetList
    Left = 748
    Top = 544
  end
  object dsTtRg2GetByNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYARRG2'
        ParamType = ptInput
        Value = 1000
      end
      item
        DataType = ftInteger
        Name = 'IPRDRG2'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'ICMPRG2'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNRG2'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDCDRG2'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNORG2'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'PRC'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_RGTT_RG2_GET_BY_NO(:IYARRG2,:IPRDRG2,:ICMPRG2,:' +
        'IBRNRG2,:IDCDRG2,:IDNORG2,:PRC)')
    Left = 649
    Top = 616
  end
  object dspTtRg2GetByNo: TDataSetProvider
    DataSet = dsTtRg2GetByNo
    Left = 748
    Top = 616
  end
  object dsTtRg2BookGetList: TSQLQuery
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
        Name = 'ICMPRG2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IBRNRG2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDEPRG2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'IDCDRG2'
        ParamType = ptInput
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
      
        'SELECT * FROM SP_RGTT_RG2_BOOK_GET_LIST(:CRITERIA,:ORDERFIELD,:I' +
        'CMPRG2,:IBRNRG2,:IDEPRG2,:IDCDRG2,:IFRMDATE,:ITODATE,:FG)')
    Left = 649
    Top = 680
  end
  object dspTtRg2BookGetList: TDataSetProvider
    DataSet = dsTtRg2BookGetList
    Left = 748
    Top = 680
  end
end
