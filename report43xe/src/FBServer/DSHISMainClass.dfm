object DSHISMain: TDSHISMain
  OldCreateOrder = False
  Height = 680
  Width = 1310
  object dsDescList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'IPARAM_ABBR_CODE'
        ParamType = ptInput
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
    SQL.Strings = (
      
        'SELECT * FROM SP_DESC_GET_LIST(:IPARAM_ABBR_CODE,:IPARAM_PREFIX_' +
        'CODE, :IPARAM_ORDER_BY);')
    Left = 30
    Top = 36
  end
  object dspDescList: TDataSetProvider
    DataSet = dsDescList
    Left = 110
    Top = 36
  end
  object dsAccountInternalList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'iparam_account_type'
        ParamType = ptInput
        Size = 4
        Value = '201'
      end
      item
        DataType = ftInteger
        Name = 'iparam_branch_code'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'iparam_loan_type'
        ParamType = ptInput
        Size = 4
        Value = '000'
      end>
    SQL.Strings = (
      'SELECT * FROM SP_ACCOUNT_INTERNAL_LIST('
      '    :iparam_account_type, '
      '    :iparam_branch_code ,'
      '    :iparam_loan_type); ')
    Left = 990
    Top = 416
  end
  object dspAccountInternalList: TDataSetProvider
    DataSet = dsAccountInternalList
    Left = 1078
    Top = 408
  end
  object dsBranchList: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SP_ORG_GET_BRANCH_LIST')
    Left = 982
    Top = 352
  end
  object dspBranchList: TDataSetProvider
    DataSet = dsBranchList
    Left = 1070
    Top = 344
  end
  object dsTranAccount: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SP_TRNACCOUNT_LIST ;')
    Left = 990
    Top = 468
  end
  object dspTranAccount: TDataSetProvider
    DataSet = dsTranAccount
    Left = 1078
    Top = 460
  end
  object dsReportInfo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'IPARAM_REPORT_CODE'
        ParamType = ptInput
        Size = 20
        Value = '0'
      end>
    SQL.Strings = (
      'SELECT * FROM  SP_PRINT_FROMS_LIST ( :IPARAM_REPORT_CODE )')
    Left = 982
    Top = 300
  end
  object dspReportInfo: TDataSetProvider
    DataSet = dsReportInfo
    Left = 1070
    Top = 292
  end
  object spUserLogIn: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 31
        Name = 'UID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'PWD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'COMPANY_CODE'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftString
        Precision = 6
        Name = 'COMPANY_ORG_CODE'
        ParamType = ptOutput
        Size = 6
      end
      item
        DataType = ftString
        Precision = 80
        Name = 'COMPANY_NAME'
        ParamType = ptOutput
        Size = 80
      end
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'BRANCH_CODE'
        ParamType = ptOutput
        Size = 8
      end
      item
        DataType = ftString
        Precision = 6
        Name = 'BRANCH_ORG_CODE'
        ParamType = ptOutput
        Size = 6
      end
      item
        DataType = ftString
        Precision = 80
        Name = 'BRANCH_NAME'
        ParamType = ptOutput
        Size = 80
      end
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'ROLE_REC_ID'
        ParamType = ptOutput
        Size = 8
      end
      item
        DataType = ftString
        Precision = 31
        Name = 'ROLE_ID'
        ParamType = ptOutput
        Size = 31
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'USER_TYPE'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'USER_REC_ID'
        ParamType = ptOutput
        Size = 8
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'USER_ID'
        ParamType = ptOutput
        Size = 20
      end
      item
        DataType = ftString
        Precision = 120
        Name = 'USER_NAME'
        ParamType = ptOutput
        Size = 120
      end>
    StoredProcName = 'SP_LOGIN'
    Left = 990
    Top = 520
  end
  object spComponentInsUpd: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 80
        Name = 'APP_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FORM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 80
        Name = 'PARENT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 80
        Name = 'COMPONENT_CLASS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 80
        Name = 'COMPONENT_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 255
        Name = 'COMPONENT_DESC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_INS_UPD_COMPONENT'
    Left = 1208
    Top = 64
  end
  object dspGetComponentList: TDataSetProvider
    DataSet = dsGetComponentList
    Left = 1072
    Top = 240
  end
  object dsGetComponentList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ROLE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'APP_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FORM_NAME'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  SP_SEC_GET_COMPONENT_LIST('
      '    :ROLE_ID,'
      '    :APP_NAME,'
      '    :FORM_NAME)')
    Left = 980
    Top = 248
  end
  object dspMenusList: TDataSetProvider
    DataSet = dsMenusList
    Left = 1068
    Top = 192
  end
  object dsMenusList: TSQLQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_ID'
        ParamType = ptInput
        Value = 'ADMIN'
      end>
    SQL.Strings = (
      'SELECT * FROM SP_MENUS_GET_LIST(:USER_ID)')
    Left = 980
    Top = 200
  end
  object spComponentDelAll: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 80
        Name = 'APP_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 80
        Name = 'FORM_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_DEL_ALL_COMPONENT'
    Left = 1160
    Top = 64
  end
  object spUserLogOut: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 31
        Name = 'UID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_LOGOUT'
    Left = 1078
    Top = 512
  end
  object dsReportList: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM  SP_REPORT_LIST')
    Left = 980
    Top = 148
  end
  object dspReportList: TDataSetProvider
    DataSet = dsReportList
    Left = 1068
    Top = 140
  end
  object dsGetFrmReport: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'IAPP_DATE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_REP_DEBT_OVD(:IAPP_DATE)')
    Left = 980
    Top = 93
  end
  object dspGetFrmReport: TDataSetProvider
    DataSet = dsGetFrmReport
    Left = 1068
    Top = 96
  end
  object dsSetImageRef: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM TTHP_IMAGE_REL')
    Left = 980
    Top = 45
  end
  object dspSetImageRef: TDataSetProvider
    DataSet = dsSetImageRef
    Options = [poAllowMultiRecordUpdates, poUseQuoteChar]
    Left = 1068
    Top = 40
  end
  object dspDescData: TDataSetProvider
    DataSet = dsDescData
    Left = 1238
    Top = 204
  end
  object dsDescData: TSQLQuery
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  CAST(0 AS BIGINT) AS CODE,'
      '  CAST('#39#39' AS VARCHAR(80)) AS DESCRIPTION,'
      '  CAST('#39#39' AS VARCHAR(2)) AS ABBR,'
      '  CAST('#39#39' AS VARCHAR(2)) AS FLAG'
      'FROM'
      '  RDB$DATABASE')
    Left = 1158
    Top = 204
  end
  object dspProvince: TDataSetProvider
    DataSet = dsProvince
    Left = 1238
    Top = 265
  end
  object dsProvince: TSQLQuery
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  SP_ADDR_PROVINCE_LIST')
    Left = 1158
    Top = 265
  end
  object dspAmphur: TDataSetProvider
    DataSet = dsAmphur
    Left = 1238
    Top = 326
  end
  object dsAmphur: TSQLQuery
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  SP_ADDR_AMPHUR_LIST(:PROVINCE_CODE)')
    Left = 1158
    Top = 326
  end
  object fbSyncDataList: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  SYNC_ID, UPDATE_MODE'
      'FROM'
      '  TTSYNC_LOG'
      'ORDER BY'
      '  SYNC_ID')
    Left = 1158
    Top = 143
    object fbSyncDataListSYNC_ID: TLargeintField
      FieldName = 'SYNC_ID'
      Required = True
    end
    object fbSyncDataListUPDATE_MODE: TIntegerField
      FieldName = 'UPDATE_MODE'
    end
  end
  object fbSyncItem: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '  SYNC_ID, UPDATE_MODE'
      'FROM'
      '  TTSYNC_LOG'
      'ORDER BY'
      '  SYNC_ID')
    Left = 1238
    Top = 143
  end
  object dsBank: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SP_BANK_LIST')
    Left = 1155
    Top = 399
  end
  object dspBank: TDataSetProvider
    DataSet = dsBank
    Left = 1243
    Top = 399
  end
  object dspBankBranch: TDataSetProvider
    DataSet = dsBankBranch
    Left = 1243
    Top = 463
  end
  object dsBankBranch: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'BANK_CODE'
        ParamType = ptInput
        Size = 4
        Value = '006'
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  SP_BANK_BRANCH_LIST(:BANK_CODE)')
    Left = 1155
    Top = 463
  end
  object dsGetLoanType: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select loan_type, '
      'loan_type_desc, '
      'loan_type || '#39'-'#39' ||loan_type_desc AS loan_type_code_desc'
      'from btct_loan_type'
      'order by loan_type')
    Left = 1155
    Top = 551
  end
  object dspGetLoanType: TDataSetProvider
    DataSet = dsGetLoanType
    Left = 1243
    Top = 551
  end
  object dsGetCodeDescList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'REF_TYPE'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'LANG_ID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'FLAG'
        ParamType = ptInput
        Value = ''
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  SP_DESC_GET_LIST_EX(:REF_TYPE, :LANG_ID, :FLAG)')
    Left = 971
    Top = 623
  end
  object dspGetCodeDescList: TDataSetProvider
    DataSet = dsGetCodeDescList
    Left = 1083
    Top = 623
  end
  object dsMiscDataSet: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 1155
    Top = 615
  end
  object dspMiscDataSet: TDataSetProvider
    DataSet = dsMiscDataSet
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 1251
    Top = 615
  end
  object dsTtGetGt1ByNo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'IYARGT1'
        ParamType = ptInput
        Value = 1000
      end
      item
        DataType = ftInteger
        Name = 'IPRDGT1'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftString
        Name = 'ICMPGT1'
        ParamType = ptInput
        Value = '00'
      end
      item
        DataType = ftString
        Name = 'IBRNGT1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftString
        Name = 'IDCDGT1'
        ParamType = ptInput
        Value = '000'
      end
      item
        DataType = ftInteger
        Name = 'IDNOGT1'
        ParamType = ptInput
        Value = 1
      end>
    SQL.Strings = (
      
        'SELECT * FROM SP_STCT_GT1_GET(:IYARGT1,:IPRDGT1,:ICMPGT1,:IBRNGT' +
        '1,:IDCDGT1,:IDNOGT1)')
    Left = 209
    Top = 40
  end
  object dspTtGetGt1ByNo: TDataSetProvider
    DataSet = dsTtGetGt1ByNo
    Left = 300
    Top = 40
  end
end
