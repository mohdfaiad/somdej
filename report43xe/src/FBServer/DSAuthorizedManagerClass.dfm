inherited DSAuthorizedManager: TDSAuthorizedManager
  OldCreateOrder = True
  object dsUserList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'FT_CRITERIA'
        ParamType = ptInput
        Value = ' '
      end
      item
        DataType = ftInteger
        Name = 'FT_SEARCH_MODE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftWideString
        Name = 'ORDER_FIELD'
        ParamType = ptInput
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  SP_SEC_USER_LIST_EX ('
      '    :FT_CRITERIA,'
      '    :FT_SEARCH_MODE,'
      '    :ORDER_FIELD)')
    Left = 30
    Top = 84
  end
  object dspUserList: TDataSetProvider
    DataSet = dsUserList
    Left = 142
    Top = 84
  end
  object dsRoleList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideString
        Name = 'FT_CRITERIA'
        ParamType = ptInput
        Value = ' '
      end
      item
        DataType = ftInteger
        Name = 'FT_SEARCH_MODE'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftWideString
        Name = 'ORDER_FIELD'
        ParamType = ptInput
        Value = ' '
      end>
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  SP_SEC_ROLE_LIST_EX ('
      '    :FT_CRITERIA,'
      '    :FT_SEARCH_MODE,'
      '    :ORDER_FIELD)')
    Left = 30
    Top = 22
  end
  object dspRoleList: TDataSetProvider
    DataSet = dsRoleList
    Left = 142
    Top = 22
  end
  object spRoleInsUpd: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'ROLE_REC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'STATUS_FLAG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 31
        Name = 'ROLE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 255
        Name = 'DESCRIPTION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_ROLE_INS_UPD'
    Left = 240
    Top = 22
  end
  object spUserInsUpd: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'USER_REC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'ORG_CODE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 31
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'OFFICER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'USER_PWD'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 120
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 120
        Name = 'USER_POSITION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'OFFICER_TYPE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'VALID_FROM'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'VALID_THRU'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'RALEASE_SUSPENDED_DATE'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'ROLE_REC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 255
        Name = 'DESCRIPTION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_USER_INS_UPD'
    Left = 240
    Top = 84
  end
  object spUserPasswordChange: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 31
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 512
        Name = 'USER_PWD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_USER_PWD_CHANGE'
    Left = 328
    Top = 22
  end
  object spUserPasswordReset: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 31
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_USER_PWD_RESET'
    Left = 328
    Top = 84
  end
  object spUserLockUnlock: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 31
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Precision = 2
        Name = 'IS_LOGGED'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_USER_LOCK_UNLOCK'
    Left = 408
    Top = 22
  end
  object spUserReleaseLoggedIn: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 31
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_USER_RELEASE_LOGGED_IN'
    Left = 408
    Top = 84
  end
  object spRoleDelete: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'ROLE_REC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_ROLE_DELETE'
    Left = 504
    Top = 22
  end
  object spUserDelete: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'USER_REC_ID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_USER_DELETE'
    Left = 504
    Top = 84
  end
  object dspAppGetList: TDataSetProvider
    DataSet = dsAppGetList
    Left = 144
    Top = 384
  end
  object dsAppGetList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ROLE_ID'
        ParamType = ptInput
        Size = 30
        Value = 'ADMIN'
      end>
    SQL.Strings = (
      'SELECT * FROM SP_SEC_GET_APP_LIST(:ROLE_IDD)')
    Left = 32
    Top = 384
  end
  object dspGetFormList: TDataSetProvider
    DataSet = dsGetFormList
    Left = 144
    Top = 456
  end
  object dsGetFormList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'PARENT_APP_ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM SP_SEC_GET_FORM_LIST(:PARENT_APP_ID)')
    Left = 32
    Top = 456
  end
  object dspGetControlList: TDataSetProvider
    DataSet = dsGetControlList
    Left = 144
    Top = 520
  end
  object dsGetControlList: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Name = 'PARENT_FORM_ID'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftLargeint
        Name = 'ROLE_ID'
        ParamType = ptInput
        Value = 0
      end>
    SQL.Strings = (
      'SELECT * FROM SP_SEC_GET_CONTROL_LIST(:FORM_ID, :ROLE_ID)'
      'ORDER BY COMPONENT_NAME')
    Left = 32
    Top = 520
  end
  object spUpdatePermission: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 8
        Name = 'ROLE_ID'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'COMPONENT_ID'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Precision = 2
        Name = 'IS_VISIBLED'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Precision = 2
        Name = 'IS_ENABLED'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'IS_APPLICATION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_UPD_PERMISSION'
    Left = 248
    Top = 382
  end
  object spUpdComponentDesc: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftLargeint
        Precision = 8
        Name = 'COMPONENT_ID'
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
    StoredProcName = 'SP_SEC_UPD_COMPONENT_DESC'
    Left = 240
    Top = 454
  end
  object spUserLogInEx: TSQLStoredProc
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
        Precision = 31
        Name = 'USER_ID'
        ParamType = ptOutput
        Size = 31
      end
      item
        DataType = ftString
        Precision = 120
        Name = 'USER_NAME'
        ParamType = ptOutput
        Size = 120
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'NUMBER_OF_DAYS_BEFORE_EXPIRED'
        ParamType = ptOutput
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'LAST_SIGNED_ON_DATE'
        ParamType = ptOutput
      end>
    StoredProcName = 'SP_LOGIN_EX'
    Left = 35
    Top = 320
  end
  object spVerifyPassHistory: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Precision = 31
        Name = 'USER_ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 31
        Name = 'USER_PWD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'RESULT'
        ParamType = ptOutput
        Size = 4
      end>
    StoredProcName = 'SP_SEC_VERFY_PWD_HISTORY'
    Left = 232
    Top = 152
  end
  object dspSelect: TDataSetProvider
    DataSet = dsSelect
    Left = 144
    Top = 600
  end
  object dsSelect: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    Left = 32
    Top = 600
  end
end
