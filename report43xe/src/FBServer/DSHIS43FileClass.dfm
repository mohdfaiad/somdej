inherited DSHIS43File: TDSHIS43File
  OldCreateOrder = True
  Height = 1234
  Width = 1220
  inherited dsGetCodeDescList: TSQLQuery
    Left = 1051
    Top = 599
  end
  object dsHisStGetCde: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from report43_address limit 1000')
    Left = 46
    Top = 116
  end
  object dspHisStGetCde: TDataSetProvider
    DataSet = dsHisStGetCde
    Left = 150
    Top = 116
  end
  object dsGetReport43Person: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_person where CID=:CID')
    Left = 54
    Top = 220
  end
  object dspGetReport43Person: TDataSetProvider
    DataSet = dsGetReport43Person
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 268
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
    Left = 334
    Top = 132
  end
  object dspHisGetReport43Service: TDataSetProvider
    DataSet = dsHisGetReport43Service
    Left = 334
    Top = 188
  end
  object cdsReport43Person: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 448
  end
  object dsUpdReport43Person: TSQLQuery
    BeforeOpen = DataSetBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'HOSPCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRENAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SEX'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'BIRTH'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MSTATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OCCUPATION_OLD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OCCUPATION_NEW'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RACE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NATION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RELIGION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'EDUCATION'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FSTATUS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FATHER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MOTHER'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COUPLE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VSTATUS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'MOVEIN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DISCHARGE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DDISCHARGE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ABOGROUP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RHGROUP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LABOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PASSPORT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update report43_person set'
      ' HOSPCODE=:HOSPCODE'
      ',PID=:PID'
      ',HID=:HID'
      ',PRENAME=:PRENAME'
      ',NAME=:FNAME'
      ',LNAME=:LNAME'
      ',HN=:HN'
      ',SEX=:SEX'
      ',BIRTH=:BIRTH'
      ',MSTATUS=:MSTATUS'
      ',OCCUPATION_OLD=:OCCUPATION_OLD'
      ',OCCUPATION_NEW=:OCCUPATION_NEW'
      ',RACE=:RACE'
      ',NATION=:NATION'
      ',RELIGION=:RELIGION'
      ',EDUCATION=:EDUCATION'
      ',FSTATUS=:FSTATUS'
      ',FATHER=:FATHER'
      ',MOTHER=:MOTHER'
      ',COUPLE=:COUPLE'
      ',VSTATUS=:VSTATUS'
      ',MOVEIN=:MOVEIN'
      ',DISCHARGE=:DISCHARGE'
      ',DDISCHARGE=:DDISCHARGE'
      ',ABOGROUP=:ABOGROUP'
      ',RHGROUP=:RHGROUP'
      ',LABOR=:LABOR'
      ',PASSPORT=:PASSPORT'
      'where CID=:CID')
    Left = 158
    Top = 492
  end
  object dsGetReport43Service: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_service where PID=:PID and SEQ=:SEQ')
    Left = 54
    Top = 324
  end
  object dspGetReport43Service: TDataSetProvider
    DataSet = dsGetReport43Service
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 380
  end
  object dsGetReport43DiagnosisOpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_diagnosis_opd where PID=:PID and SEQ=:SEQ')
    Left = 334
    Top = 260
  end
  object dspGetReport43DiagnosisOpd: TDataSetProvider
    DataSet = dsGetReport43DiagnosisOpd
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 334
    Top = 316
  end
  object cdsReport43Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 40
    Top = 512
  end
  object dsGetReport43ServiceList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_service where PID=:PID  ')
    Left = 182
    Top = 212
  end
  object dspGetReport43ServiceList: TDataSetProvider
    DataSet = dsGetReport43ServiceList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 182
    Top = 268
  end
  object dsGetReport43DiagnosisOpdList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_diagnosis_opd where PID=:PID and SEQ=:SEQ')
    Left = 222
    Top = 364
  end
  object dspGetReport43DiagnosisOpdList: TDataSetProvider
    DataSet = dsGetReport43DiagnosisOpdList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 222
    Top = 420
  end
  object dsGetReport43ProcedureOpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_procedure_opd where REPORTID=:REPORTID')
    Left = 486
    Top = 164
  end
  object dspGetReport43ProcedureOpd: TDataSetProvider
    DataSet = dsGetReport43ProcedureOpd
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 486
    Top = 164
  end
  object dsGetReport43ProcedureOpdList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_procedure_opd where PID=:PID AND SEQ=:SEQ')
    Left = 734
    Top = 100
  end
  object dspGetReport43ProcedureOpdList: TDataSetProvider
    DataSet = dsGetReport43ProcedureOpdList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 734
    Top = 44
  end
  object dsGetReport43DrugOpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_drug_opd where REPORTID=:REPORTID')
    Left = 670
    Top = 148
  end
  object dspGetReport43DrugOpd: TDataSetProvider
    DataSet = dsGetReport43DrugOpd
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 670
    Top = 148
  end
  object dsGetReport43DrugOpdList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_drug_opd where PID=:PID AND SEQ=:SEQ')
    Left = 670
    Top = 196
  end
  object dspGetReport43DrugOpdList: TDataSetProvider
    DataSet = dsGetReport43DrugOpdList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 566
    Top = 212
  end
  object dsGetReport43Appointment: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_appointment where REPORTID=:REPORTID')
    Left = 830
    Top = 148
  end
  object dspGetReport43Appointment: TDataSetProvider
    DataSet = dsGetReport43Appointment
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 830
    Top = 148
  end
  object dsGetReport43AppointmentList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_appointment where PID=:PID AND SEQ=:SEQ')
    Left = 854
    Top = 108
  end
  object dspGetReport43AppointmentList: TDataSetProvider
    DataSet = dsGetReport43AppointmentList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 886
    Top = 52
  end
  object dsGetReport43Anc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_anc where REPORTID=:REPORTID')
    Left = 486
    Top = 268
  end
  object dspGetReport43Anc: TDataSetProvider
    DataSet = dsGetReport43Anc
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 486
    Top = 268
  end
  object dsGetReport43AncList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GRAVIDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_anc where PID=:PID AND GRAVIDA=:GRAVIDA o' +
        'rder by DATE_SERV DESC'
      ' ')
    Left = 54
    Top = 572
  end
  object dspGetReport43AncList: TDataSetProvider
    DataSet = dsGetReport43AncList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 166
    Top = 548
  end
  object dsGetReport43Prenatal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_prenatal where REPORTID=:REPORTID')
    Left = 638
    Top = 268
  end
  object dspGetReport43Prenatal: TDataSetProvider
    DataSet = dsGetReport43Prenatal
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 638
    Top = 268
  end
  object dsGetReport43PrenatalList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_prenatal where PID=:PID')
    Left = 638
    Top = 316
  end
  object dspGetReport43PrenatalList: TDataSetProvider
    DataSet = dsGetReport43PrenatalList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 638
    Top = 316
  end
  object dsGetReport43Postnatal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_postnatal where REPORTID=:REPORTID')
    Left = 806
    Top = 268
  end
  object dspGetReport43Postnatal: TDataSetProvider
    DataSet = dsGetReport43Postnatal
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 806
    Top = 268
  end
  object dsGetReport43PostnatalList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_postnatal where PID=:PID')
    Left = 270
    Top = 548
  end
  object dspGetReport43PostnatalList: TDataSetProvider
    DataSet = dsGetReport43PostnatalList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 334
    Top = 492
  end
  object dsGetReport43LabOr: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_labor where REPORTID=:REPORTID')
    Left = 638
    Top = 364
  end
  object dscGetReport43LabOr: TDataSetProvider
    DataSet = dsGetReport43LabOr
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 638
    Top = 364
  end
  object dsGetReport43LabOrList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GRAVIDA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_labor where PID=:PID AND GRAVIDA=:GRAVIDA')
    Left = 222
    Top = 1076
  end
  object dspGetReport43LabOrList: TDataSetProvider
    DataSet = dsGetReport43LabOrList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 62
    Top = 1100
  end
  object dsGetReport43Women: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_women where REPORTID=:REPORTID')
    Left = 486
    Top = 364
  end
  object dspGetReport43Women: TDataSetProvider
    DataSet = dsGetReport43Women
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 550
    Top = 364
  end
  object dsGetReport43WomenList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_women where PID=:PID')
    Left = 486
    Top = 420
  end
  object dspGetReport43WomenList: TDataSetProvider
    DataSet = dsGetReport43WomenList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 486
    Top = 420
  end
  object dsGetReport43Fp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_fp where REPORTID=:REPORTID')
    Left = 46
    Top = 636
  end
  object cdsGetReport43Fp: TDataSetProvider
    DataSet = dsGetReport43Fp
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 46
    Top = 636
  end
  object dsGetReport43FpList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_fp where PID=:PID')
    Left = 46
    Top = 700
  end
  object cdsGetReport43FpList: TDataSetProvider
    DataSet = dsGetReport43FpList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 46
    Top = 700
  end
  object dsGetReport43Epi: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_epi where REPORTID=:REPORTID')
    Left = 182
    Top = 628
  end
  object dspGetReport43Epi: TDataSetProvider
    DataSet = dsGetReport43Epi
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 182
    Top = 628
  end
  object dsGetReport43EpiList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_epi where PID=:PID AND SEQ=:SEQ')
    Left = 182
    Top = 692
  end
  object dspGetReport43EpiList: TDataSetProvider
    DataSet = dsGetReport43EpiList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 182
    Top = 692
  end
  object dsGetReport43IcfList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_icf where PID=:PID')
    Left = 318
    Top = 692
  end
  object dspGetReport43IcfList: TDataSetProvider
    DataSet = dsGetReport43IcfList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 318
    Top = 692
  end
  object dsGetReport43Icf: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_icf where REPORTID=:REPORTID')
    Left = 318
    Top = 628
  end
  object dspGetReport43Icf: TDataSetProvider
    DataSet = dsGetReport43Icf
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 318
    Top = 628
  end
  object dsGetReport43SpecialPpList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_specialpp   where PID=:PID AND SEQ=:SEQ')
    Left = 806
    Top = 412
  end
  object dspGetReport43SpecialPpList: TDataSetProvider
    DataSet = dsGetReport43SpecialPpList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 646
    Top = 412
  end
  object dsGetReport43SpecialPp: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_specialpp where PID=:PID')
    Left = 806
    Top = 364
  end
  object dspGetReport43SpecialPp: TDataSetProvider
    DataSet = dsGetReport43SpecialPp
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 806
    Top = 364
  end
  object dsGetReport43ChronicList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_chronic where PID=:PID ')
    Left = 54
    Top = 964
  end
  object dspGetReport43ChronicList: TDataSetProvider
    DataSet = dsGetReport43ChronicList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 964
  end
  object dsGetReport43Chronic: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_chronic where REPORTID=:REPORTID')
    Left = 54
    Top = 916
  end
  object dspGetReport43Chronic: TDataSetProvider
    DataSet = dsGetReport43Chronic
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 916
  end
  object dsGetReport43ChronicFuList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_chronicfu where PID=:PID  AND SEQ=:SEQ')
    Left = 54
    Top = 844
  end
  object dspGetReport43ChronicFuList: TDataSetProvider
    DataSet = dsGetReport43ChronicFuList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 844
  end
  object dsGetReport43ChronicFu: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_chronicfu where REPORTID=:REPORTID')
    Left = 54
    Top = 772
  end
  object dspGetReport43ChronicFu: TDataSetProvider
    DataSet = dsGetReport43ChronicFu
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 772
  end
  object dsGetReport43NutritionList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_nutrition where PID=:PID AND SEQ=:SEQ')
    Left = 182
    Top = 852
  end
  object dspGetReport43NutritionList: TDataSetProvider
    DataSet = dsGetReport43NutritionList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 182
    Top = 852
  end
  object dsGetReport43Nutrition: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_nutrition where REPORTID=:REPORTID')
    Left = 182
    Top = 772
  end
  object dspGetReport43Nutrition: TDataSetProvider
    DataSet = dsGetReport43Nutrition
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 182
    Top = 772
  end
  object dsGetReport43DeathList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_death where PID=:PID')
    Left = 262
    Top = 828
  end
  object dspGetReport43DeathList: TDataSetProvider
    DataSet = dsGetReport43DeathList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 382
    Top = 812
  end
  object dsGetReport43Death: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_death where REPORTID=:REPORTID')
    Left = 310
    Top = 764
  end
  object dspGetReport43Death: TDataSetProvider
    DataSet = dsGetReport43Death
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 310
    Top = 764
  end
  object dsGetReport43CardList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_card where PID=:PID')
    Left = 422
    Top = 844
  end
  object dspGetReport43CardList: TDataSetProvider
    DataSet = dsGetReport43CardList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 422
    Top = 844
  end
  object dsGetReport43Card: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_card where REPORTID=:REPORTID')
    Left = 422
    Top = 764
  end
  object dspGetReport43Card: TDataSetProvider
    DataSet = dsGetReport43Card
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 422
    Top = 764
  end
  object dsGetReport43DrugallergyList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_drugallergy where PID=:PID')
    Left = 534
    Top = 852
  end
  object dspGetReport43DrugallergyList: TDataSetProvider
    DataSet = dsGetReport43DrugallergyList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 534
    Top = 852
  end
  object dsGetReport43Drugallergy: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_drugallergy where REPORTID=:REPORTID')
    Left = 518
    Top = 772
  end
  object dspGetReport43Drugallergy: TDataSetProvider
    DataSet = dsGetReport43Drugallergy
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 518
    Top = 772
  end
  object dsGetReport43AccidentList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_accident where PID=:PID AND SEQ=:SEQ')
    Left = 638
    Top = 852
  end
  object dspGetReport43AccidentList: TDataSetProvider
    DataSet = dsGetReport43AccidentList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 638
    Top = 852
  end
  object dsGetReport43Accident: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_accident where REPORTID=:REPORTID')
    Left = 630
    Top = 764
  end
  object dspGetReport43Accident: TDataSetProvider
    DataSet = dsGetReport43Accident
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 630
    Top = 764
  end
  object dsGetReport43ChargeOpdList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_charge_opd where PID=:PID AND SEQ=:SEQ')
    Left = 358
    Top = 1084
  end
  object dspGetReport43ChargeOpdList: TDataSetProvider
    DataSet = dsGetReport43ChargeOpdList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 1164
  end
  object dsGetReport43ChargeOpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_charge_opd where REPORTID=:REPORTID')
    Left = 694
    Top = 740
  end
  object dspGetReport43ChargeOpd: TDataSetProvider
    DataSet = dsGetReport43ChargeOpd
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 694
    Top = 740
  end
  object dsGetReport43AdmissionList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_admission where PID=:PID AND SEQ=:SEQ')
    Left = 318
    Top = 988
  end
  object dspGetReport43AdmissionList: TDataSetProvider
    DataSet = dsGetReport43AdmissionList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 318
    Top = 988
  end
  object dsGetReport43Admission: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_admission where REPORTID=:REPORTID')
    Left = 318
    Top = 924
  end
  object dspGetReport43Admission: TDataSetProvider
    DataSet = dsGetReport43Admission
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 318
    Top = 924
  end
  object dsGetReport43DiagnosisIpdList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_diagnosis_ipd where PID=:PID')
    Left = 182
    Top = 972
  end
  object dspGetReport43DiagnosisIpdList: TDataSetProvider
    DataSet = dsGetReport43DiagnosisIpdList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 182
    Top = 972
  end
  object dsGetReport43DiagnosisIpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_diagnosis_ipd where REPORTID=:REPORTID')
    Left = 182
    Top = 916
  end
  object dspGetReport43DiagnosisIpd: TDataSetProvider
    DataSet = dsGetReport43DiagnosisIpd
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 182
    Top = 916
  end
  object dsGetReport43ProcedureIpdList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_procedure_ipd where PID=:PID')
    Left = 446
    Top = 988
  end
  object dspGetReport43ProcedureIpdList: TDataSetProvider
    DataSet = dsGetReport43ProcedureIpdList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 446
    Top = 988
  end
  object dsGetReport43ProcedureIpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_procedure_ipd where REPORTID=:REPORTID')
    Left = 438
    Top = 924
  end
  object dspGetReport43ProcedureIpd: TDataSetProvider
    DataSet = dsGetReport43ProcedureIpd
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 438
    Top = 924
  end
  object dsGetReport43DrugIpdList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_drug_ipd where PID=:PID')
    Left = 894
    Top = 852
  end
  object dspGetReport43DrugIpdList: TDataSetProvider
    DataSet = dsGetReport43DrugIpdList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 894
    Top = 908
  end
  object dsGetReport43DrugIpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_drug_ipd where REPORTID=:REPORTID')
    Left = 894
    Top = 716
  end
  object dspGetReport43DrugIpd: TDataSetProvider
    DataSet = dsGetReport43DrugIpd
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 894
    Top = 764
  end
  object dsGetReport43ChargeIpdList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_charge_ipd where PID=:PID')
    Left = 574
    Top = 980
  end
  object dspGetReport43ChargeIpdList: TDataSetProvider
    DataSet = dsGetReport43ChargeIpdList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 574
    Top = 980
  end
  object dsGetReport43ChargeIpd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_charge_ipd where REPORTID=:REPORTID')
    Left = 566
    Top = 916
  end
  object dspGetReport43ChargeIpd: TDataSetProvider
    DataSet = dsGetReport43ChargeIpd
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 566
    Top = 916
  end
  object dsGetReport43SurveillanceList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_surveillance where PID=:PID')
    Left = 670
    Top = 980
  end
  object dspGetReport43SurveillanceList: TDataSetProvider
    DataSet = dsGetReport43SurveillanceList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 670
    Top = 980
  end
  object dsGetReport43Surveillance: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_surveillance where REPORTID=:REPORTID')
    Left = 670
    Top = 916
  end
  object dspGetReport43Surveillance: TDataSetProvider
    DataSet = dsGetReport43Surveillance
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 670
    Top = 916
  end
  object dsGetReport43NewbornList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'GRAVIDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MPID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_newborn where GRAVIDA=:GRAVIDA  AND MPID=' +
        ':MPID')
    Left = 478
    Top = 540
  end
  object dspGetReport43NewbornList: TDataSetProvider
    DataSet = dsGetReport43NewbornList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 478
    Top = 540
  end
  object dsGetReport43Newborn: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_newborn where REPORTID=:REPORTID')
    Left = 478
    Top = 492
  end
  object dspGetReport43Newborn: TDataSetProvider
    DataSet = dsGetReport43Newborn
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 478
    Top = 492
  end
  object dsGetReport43NewBornCareList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_newborncare where PID=:PID AND SEQ=:SEQ')
    Left = 462
    Top = 668
  end
  object dspGetReport43NewBornCareList: TDataSetProvider
    DataSet = dsGetReport43NewBornCareList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 462
    Top = 668
  end
  object dsGetReport43NewBornCare: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_newborncare where REPORTID=:REPORTID')
    Left = 470
    Top = 604
  end
  object dspGetReport43NewBornCare: TDataSetProvider
    DataSet = dsGetReport43NewBornCare
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 470
    Top = 604
  end
  object dsGetReport43DentalList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_dental where PID=:PID AND SEQ=:SEQ')
    Left = 598
    Top = 556
  end
  object dspGetReport43DentalList: TDataSetProvider
    DataSet = dsGetReport43DentalList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 598
    Top = 556
  end
  object dsGetReport43Dental: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_dental where REPORTID=:REPORTID')
    Left = 590
    Top = 492
  end
  object dspGetReport43Dental: TDataSetProvider
    DataSet = dsGetReport43Dental
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 590
    Top = 492
  end
  object dsGetReport43NcdscreenList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_ncdscreen where PID=:PID')
    Left = 606
    Top = 676
  end
  object dspGetReport43NcdscreenList: TDataSetProvider
    DataSet = dsGetReport43NcdscreenList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 606
    Top = 676
  end
  object dsGetReport43Ncdscreen: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_ncdscreen where REPORTID=:REPORTID')
    Left = 606
    Top = 612
  end
  object dspGetReport43Ncdscreen: TDataSetProvider
    DataSet = dsGetReport43Ncdscreen
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 606
    Top = 612
  end
  object dsGetReport43LabFuList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_labfu where PID=:PID AND SEQ=:SEQ')
    Left = 702
    Top = 548
  end
  object dspGetReport43LabFuList: TDataSetProvider
    DataSet = dsGetReport43LabFuList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 702
    Top = 548
  end
  object dsGetReport43LabFu: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_labfu where REPORTID=:REPORTID')
    Left = 702
    Top = 492
  end
  object dspGetReport43LabFu: TDataSetProvider
    DataSet = dsGetReport43LabFu
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 702
    Top = 492
  end
  object dsKeywords: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TBL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ABBR'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from keywords_43file where 43FILE_TABLE =:TBL and 43FIL' +
        'E_FILED=:ABBR order by 43FILE_CODE')
    Left = 1054
    Top = 708
  end
  object dspKeywords: TDataSetProvider
    DataSet = dsKeywords
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 1054
    Top = 756
  end
  object dsGetHospName: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 1062
    Top = 812
  end
  object dspGetHospName: TDataSetProvider
    DataSet = dsGetHospName
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 1062
    Top = 860
  end
  object dsGetIcd10List: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 670
    Top = 1108
  end
  object dspGetIcd10List: TDataSetProvider
    DataSet = dsGetIcd10List
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 622
    Top = 1156
  end
  object dsGetIcd9List: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 534
    Top = 1108
  end
  object dspGetIcd9List: TDataSetProvider
    DataSet = dsGetIcd9List
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 534
    Top = 1108
  end
  object dsGetReport43AddressList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_address where PID=:PID')
    Left = 822
    Top = 628
  end
  object dspGetReport43AddressList: TDataSetProvider
    DataSet = dsGetReport43AddressList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 822
    Top = 684
  end
  object dsGetReport43Address: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_address where REPORTID=:REPORTID')
    Left = 822
    Top = 492
  end
  object dspGetReport43Address: TDataSetProvider
    DataSet = dsGetReport43Address
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 822
    Top = 540
  end
  object dsGetTumbonList: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 174
    Top = 1028
  end
  object dspGetTumbonList: TDataSetProvider
    DataSet = dsGetTumbonList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 174
    Top = 1028
  end
  object dsGetAmp: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 334
    Top = 1036
  end
  object dspGetAmp: TDataSetProvider
    DataSet = dsGetAmp
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 334
    Top = 1036
  end
  object dsGetProvince: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 446
    Top = 1052
  end
  object dspGetProvince: TDataSetProvider
    DataSet = dsGetProvince
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 446
    Top = 1052
  end
  object dsGetTumbon: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 54
    Top = 1036
  end
  object dspGetTumbon: TDataSetProvider
    DataSet = dsGetTumbon
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 54
    Top = 1036
  end
  object dsGetIcd10: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 670
    Top = 1036
  end
  object dspGetIcd10: TDataSetProvider
    DataSet = dsGetIcd10
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 670
    Top = 1036
  end
  object dsGetIcd9: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 534
    Top = 1044
  end
  object dspGetIcd9: TDataSetProvider
    DataSet = dsGetIcd9
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 534
    Top = 1044
  end
  object dsGetReport43HomeList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TAMBON'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AMPUR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHANGWAT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_home where TAMBON=:TAMBON and AMPUR=:AMPU' +
        'R and CHANGWAT=:CHANGWAT limit 1000')
    Left = 1046
    Top = 1084
  end
  object dspGetReport43HomeList: TDataSetProvider
    DataSet = dsGetReport43HomeList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 1046
    Top = 1140
  end
  object dsGetReport43Home: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'REPORTID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from report43_home where REPORTID=:REPORTID')
    Left = 1046
    Top = 948
  end
  object dspGetReport43Home: TDataSetProvider
    DataSet = dsGetReport43Home
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 1046
    Top = 996
  end
  object MYSQLQuery: TSQLQuery
    Params = <>
    Left = 480
    Top = 40
  end
  object dspMYSQL: TDataSetProvider
    DataSet = MYSQLQuery
    Options = [poAllowMultiRecordUpdates, poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    Left = 568
    Top = 40
  end
  object cdsMYSQL: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMYSQL'
    Left = 624
    Top = 64
  end
  object dsGetReport43AddressType1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_address where PID=:PID and ADDRESSTYPE='#39'1' +
        #39)
    Left = 814
    Top = 1028
  end
  object dspGetReport43AddressType1: TDataSetProvider
    DataSet = dsGetReport43AddressType1
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 750
    Top = 1076
  end
  object dsGetReport43AddressType2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_address where PID=:PID and ADDRESSTYPE='#39'2' +
        #39)
    Left = 918
    Top = 1004
  end
  object dspGetReport43AddressType2: TDataSetProvider
    DataSet = dsGetReport43AddressType2
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 918
    Top = 1052
  end
  object dsGetDefaultValue: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'TABLENAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FIELDNAME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_default where TableName=:TABLENAME and Fi' +
        'eldName=:FIELDNAME')
    Left = 1142
    Top = 916
  end
  object dspGetDefaultValue: TDataSetProvider
    DataSet = dsGetDefaultValue
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 1142
    Top = 964
  end
  object dsGetPageList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'DEP'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LOC'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_pages where DepartmentCode=:DEP and Stati' +
        'onCode=:STA and LocationCode=:LOC')
    Left = 1158
    Top = 1044
  end
  object dspGetPageList: TDataSetProvider
    DataSet = dsGetPageList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 1158
    Top = 1092
  end
  object dsGetDoc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 752
    Top = 832
  end
  object dspGetDocrun: TDataSetProvider
    DataSet = dsGetDoc
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 520
    Top = 1168
  end
  object dspGetreport43Community_Servicelist: TDataSetProvider
    DataSet = dsGetReport43Community_servicelist
    Left = 800
    Top = 1152
  end
  object dsGetReport43Community_servicelist: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQ'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select  *  from report43_community_service  where PID=:PID  AND ' +
        ' SEQ=:SEQ')
    Left = 912
    Top = 1120
  end
  object dsGetReport43Community_Activitylist: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'VID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  *  from report43_community_activity  where VID=:VID  ')
    Left = 224
    Top = 1120
  end
  object dspGetreport43Community_Activitylist: TDataSetProvider
    DataSet = dsGetReport43Community_Activitylist
    Left = 456
    Top = 1104
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'VID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select  *  from report43_village   where VID=:VID  ')
    Left = 784
    Top = 952
  end
  object dsGetReport43Village: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'VID'
        ParamType = ptInput
        Size = 8
      end>
    SQL.Strings = (
      'select  *  from report43_village  where VID=:VID  ')
    Left = 240
    Top = 1160
  end
  object dspGetReport43Village: TDataSetProvider
    DataSet = dsGetReport43Village
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 376
    Top = 1160
  end
  object Dataset2Excel1: TDataset2Excel
    HeaderFont.Charset = DEFAULT_CHARSET
    HeaderFont.Color = clNone
    HeaderFont.Height = -13
    HeaderFont.Name = 'Arial'
    HeaderFont.Style = [fsBold]
    DetailFont.Charset = DEFAULT_CHARSET
    DetailFont.Color = clNone
    DetailFont.Height = -13
    DetailFont.Name = 'Arial'
    DetailFont.Style = []
    GroupFont.Charset = DEFAULT_CHARSET
    GroupFont.Color = clNone
    GroupFont.Height = -16
    GroupFont.Name = 'Arial'
    GroupFont.Style = [fsBold]
    HeaderColor = clNone
    DetailColor = clNone
    GroupColor = clNone
    StartRow = 0
    StartCol = 0
    HeaderBorderStyle = BorderStyleNone
    DetailBorderStyle = BorderStyleNone
    GroupBorderStyle = BorderStyleNone
    HeaderBorderColor = clNone
    DetailBorderColor = clNone
    GroupBorderColor = clNone
    RowsPerSheet = 65535
    SetColumnsWidth = True
    ExportHeader = True
    HeaderSource = hsDisplayLabel
    Left = 240
    Top = 120
  end
  object dsSettingGetHospName: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 1158
    Top = 684
  end
  object dspSettingGetHospName: TDataSetProvider
    DataSet = dsSettingGetHospName
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 1158
    Top = 732
  end
  object dsGetBathList: TSQLQuery
    Tag = 99
    MaxBlobSize = -1
    Params = <>
    Left = 878
    Top = 204
  end
  object dspGetBathList: TDataSetProvider
    DataSet = dsGetBathList
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 878
    Top = 252
  end
  object dsGetBatchDetail: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'BATCHCODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_batch where BatchCode=:BATCHCODE order by' +
        ' Id')
    Left = 902
    Top = 316
  end
  object dspGetBatchDetail: TDataSetProvider
    DataSet = dsGetBatchDetail
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 902
    Top = 364
  end
  object dsGetBatchError: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'BATCHCODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_batch_error where BatchCode=:BATCHCODE or' +
        'der by Id')
    Left = 918
    Top = 428
  end
  object dspGetBatchError: TDataSetProvider
    DataSet = dsGetBatchError
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 918
    Top = 476
  end
  object dsGetBatchErrorByFilename: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'BATCHCODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FILENAME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from report43_batch_error where BatchCode=:BATCHCODE an' +
        'd FileName=:FILENAME')
    Left = 926
    Top = 532
  end
  object dspGetBatchErrorByFilename: TDataSetProvider
    DataSet = dsGetBatchErrorByFilename
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 926
    Top = 580
  end
  object dsGetBatchErrorGrpByFilename: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'BATCHCODE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select BatchCode,FileName  from report43_batch_error where Batch' +
        'Code=:BATCHCODE group by BatchCode,FileName')
    Left = 966
    Top = 644
  end
  object dspGetBatchErrorGrpByFilename: TDataSetProvider
    DataSet = dsGetBatchErrorGrpByFilename
    Options = [poAllowMultiRecordUpdates, poAllowCommandText, poUseQuoteChar]
    Left = 966
    Top = 692
  end
end
