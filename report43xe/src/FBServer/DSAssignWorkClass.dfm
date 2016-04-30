inherited DSAssignWork: TDSAssignWork
  OldCreateOrder = True
  Height = 760
  object dsTTSchGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM SP_AWTT_SCH_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH)')
    Left = 673
    Top = 16
  end
  object dspTTSchGet: TDataSetProvider
    DataSet = dsTTSchGet
    Left = 764
    Top = 16
  end
  object dsTTSchOptGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_SCH_OPT_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSC' +
        'H)')
    Left = 673
    Top = 96
  end
  object dspTTSchOptGet: TDataSetProvider
    DataSet = dsTTSchOptGet
    Left = 764
    Top = 96
  end
  object dsTTRdwGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'DCDRDW'
        ParamType = ptInput
        Value = '600'
      end
      item
        DataType = ftFloat
        Name = 'RDTRDW'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_RDW_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:D' +
        'CDRDW,:RDTRDW)')
    Left = 673
    Top = 176
  end
  object dspTTRdwGet: TDataSetProvider
    DataSet = dsTTRdwGet
    Left = 764
    Top = 176
  end
  object dsTtPasGetByDate: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DCDPAS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'IDTPAS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FLAG'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_PAS_GET_BY_DAT(:CMPSCH,:BRNSCH,:YARSCH,:PR' +
        'DSCH,:DCDPAS,:IDTPAS,:FLAG)')
    Left = 673
    Top = 248
  end
  object dspTtPasGetByDate: TDataSetProvider
    DataSet = dsTtPasGetByDate
    Left = 764
    Top = 248
  end
  object dsTtPasGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'DNOPAS'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'RDTPAS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IWKPAS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NEW_MOD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_PAS_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:D' +
        'DNOPAS,:RDTPAS,:IWKPAS,:NEW_MOD)')
    Left = 673
    Top = 328
  end
  object dspTtPasGet: TDataSetProvider
    DataSet = dsTtPasGet
    Left = 764
    Top = 328
  end
  object dsTtAsnGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'DNOASN'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'RDTASN'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IWKASN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NEW_MOD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_ASN_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:D' +
        'DNOASN,:RDTASN,:IWKASN,:NEW_MOD)')
    Left = 673
    Top = 392
  end
  object dspTtAsnGet: TDataSetProvider
    DataSet = dsTtAsnGet
    Left = 764
    Top = 392
  end
  object dsTtAswGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'DNOASW'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'RDTASW'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IWKASW'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NEW_MOD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_ASW_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:D' +
        'DNOASW,:RDTASW,:IWKASW,:NEW_MOD)')
    Left = 673
    Top = 464
  end
  object dspTtAswGet: TDataSetProvider
    DataSet = dsTtAswGet
    Left = 764
    Top = 464
  end
  object dsTtColGet: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'DNOCOL'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'RDTCOL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IWKCOL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RDNCOL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NEW_MOD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_COL_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:D' +
        'DNOCOL,:RDTCOL,:IWKCOL,:RDNCOL,:NEW_MOD)')
    Left = 673
    Top = 536
  end
  object dspTtColGet: TDataSetProvider
    DataSet = dsTtColGet
    Left = 764
    Top = 536
  end
  object dsTtAd1Get: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'DNOAD1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'RDTAD1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IWKAD1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RDNAD1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NEW_MOD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_AD1_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:D' +
        'DNOAD1,:RDTAD1,:IWKAD1,:RDNAD1,:NEW_MOD)')
    Left = 673
    Top = 616
  end
  object dspTtAd1Get: TDataSetProvider
    DataSet = dsTtAd1Get
    Left = 764
    Top = 616
  end
  object dsTtAp1Get: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CMPSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'BRNSCH'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftInteger
        Name = 'YARSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'PRDSCH'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'DNOAP1'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftFloat
        Name = 'RDTAP1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'IWKAP1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RDNAP1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NEW_MOD'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_AWTT_AP1_GET(:CMPSCH,:BRNSCH,:YARSCH,:PRDSCH,:D' +
        'DNOAP1,:RDTAP1,:IWKAP1,:RDNAP1,:NEW_MOD)')
    Left = 673
    Top = 688
  end
  object dspTtAp1Get: TDataSetProvider
    DataSet = dsTtAp1Get
    Left = 764
    Top = 688
  end
end
