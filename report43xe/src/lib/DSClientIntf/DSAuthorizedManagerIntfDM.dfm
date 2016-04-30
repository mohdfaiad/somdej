inherited DSAuthorizedManagerDM: TDSAuthorizedManagerDM
  OldCreateOrder = True
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSAuthorizedManager'
  end
  inherited frxReport: TfrxReport
    Datasets = <
      item
        DataSet = frxRepData
        DataSetName = 'frxRepData'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftTop]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
  end
  inherited frxRepData: TfrxDBDataset
    FieldAliases.Strings = (
      'RECORD_ID=RECORD_ID'
      'STATUS=STATUS'
      'STATUS_DESC=STATUS_DESC'
      'ORG_REC_ID=ORG_REC_ID'
      'ORG_CODE=ORG_CODE'
      'ORG_DESC=ORG_DESC'
      'USER_ID=USER_ID'
      'OFFICER_ID=OFFICER_ID'
      'USER_PWD=USER_PWD'
      'VALID_FROM=VALID_FROM'
      'VALID_THRU=VALID_THRU'
      'LAST_SIGNED_ON_DATE=LAST_SIGNED_ON_DATE'
      'RALEASE_SUSPENDED_DATE=RALEASE_SUSPENDED_DATE'
      'USER_NAME=USER_NAME'
      'USER_POSITION=USER_POSITION'
      'OFFICER_TYPE=OFFICER_TYPE'
      'ROLE_ID=ROLE_ID'
      'ROLE_DESC=ROLE_DESC'
      'DESCRIPTION=DESCRIPTION'
      'CREATED_DATE=CREATED_DATE'
      'CREATED_BY=CREATED_BY'
      'LAST_PWD_CHANGED_ON_DATE=LAST_PWD_CHANGED_ON_DATE'
      'NUMBER_OF_DAYS_FROM_LAST_USED=NUMBER_OF_DAYS_FROM_LAST_USED')
    DataSet = cdsUserList
  end
  object cdsRoleList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRoleList'
    RemoteServer = dspDataConnection
    Left = 224
    Top = 160
    object cdsRoleListROLE_REC_ID: TLargeintField
      FieldName = 'ROLE_REC_ID'
    end
    object cdsRoleListROLE_ID: TStringField
      FieldName = 'ROLE_ID'
      Size = 31
    end
    object cdsRoleListSTATUS_FLAG: TStringField
      FieldName = 'STATUS_FLAG'
      FixedChar = True
      Size = 1
    end
    object cdsRoleListSTATUS_DESC: TStringField
      FieldName = 'STATUS_DESC'
      Size = 120
    end
    object cdsRoleListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
  end
  object cdsUserList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUserList'
    RemoteServer = dspDataConnection
    OnCalcFields = cdsUserListCalcFields
    Left = 304
    Top = 160
    object cdsUserListRECORD_ID: TLargeintField
      FieldName = 'RECORD_ID'
    end
    object cdsUserListSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsUserListSTATUS_DESC: TStringField
      FieldName = 'STATUS_DESC'
      Size = 120
    end
    object cdsUserListORG_REC_ID: TLargeintField
      FieldName = 'ORG_REC_ID'
    end
    object cdsUserListORG_CODE: TLargeintField
      FieldName = 'ORG_CODE'
    end
    object cdsUserListORG_DESC: TStringField
      FieldName = 'ORG_DESC'
      Size = 80
    end
    object cdsUserListUSER_ID: TStringField
      FieldName = 'USER_ID'
      Size = 31
    end
    object cdsUserListOFFICER_ID: TLargeintField
      FieldName = 'OFFICER_ID'
    end
    object cdsUserListUSER_PWD: TStringField
      FieldName = 'USER_PWD'
      Size = 512
    end
    object cdsUserListVALID_FROM: TDateField
      FieldName = 'VALID_FROM'
    end
    object cdsUserListVALID_THRU: TDateField
      FieldName = 'VALID_THRU'
    end
    object cdsUserListLAST_SIGNED_ON_DATE: TSQLTimeStampField
      FieldName = 'LAST_SIGNED_ON_DATE'
    end
    object cdsUserListRALEASE_SUSPENDED_DATE: TDateField
      FieldName = 'RALEASE_SUSPENDED_DATE'
    end
    object cdsUserListUSER_NAME: TStringField
      FieldName = 'USER_NAME'
      Size = 120
    end
    object cdsUserListUSER_POSITION: TStringField
      FieldName = 'USER_POSITION'
      Size = 255
    end
    object cdsUserListOFFICER_TYPE: TIntegerField
      FieldName = 'OFFICER_TYPE'
    end
    object cdsUserListROLE_ID: TLargeintField
      FieldName = 'ROLE_ID'
    end
    object cdsUserListROLE_DESC: TStringField
      FieldName = 'ROLE_DESC'
      Size = 512
    end
    object cdsUserListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
    object cdsUserListCREATED_DATE: TSQLTimeStampField
      FieldName = 'CREATED_DATE'
    end
    object cdsUserListCREATED_BY: TStringField
      FieldName = 'CREATED_BY'
      Size = 31
    end
    object cdsUserListLAST_PWD_CHANGED_ON_DATE: TSQLTimeStampField
      FieldName = 'LAST_PWD_CHANGED_ON_DATE'
    end
    object cdsUserListNUMBER_OF_DAYS_FROM_LAST_USED: TIntegerField
      FieldName = 'NUMBER_OF_DAYS_FROM_LAST_USED'
    end
    object cdsUserListVALID_FROM_EX: TStringField
      FieldKind = fkCalculated
      FieldName = 'VALID_FROM_EX'
      Size = 12
      Calculated = True
    end
    object cdsUserListVALID_THRU_EX: TStringField
      FieldKind = fkCalculated
      FieldName = 'VALID_THRU_EX'
      Size = 12
      Calculated = True
    end
    object cdsUserListLAST_SIGNED_ON_DATE_EX: TStringField
      FieldKind = fkCalculated
      FieldName = 'LAST_SIGNED_ON_DATE_EX'
      Size = 25
      Calculated = True
    end
    object cdsUserListRALEASE_SUSPENDED_DATE_EX: TStringField
      FieldKind = fkCalculated
      FieldName = 'RALEASE_SUSPENDED_DATE_EX'
      Size = 12
      Calculated = True
    end
    object cdsUserListCREATED_DATE_EX: TStringField
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'CREATED_DATE_EX'
      Size = 25
      Calculated = True
    end
    object cdsUserListLAST_PWD_CHANGED_ON_DATE_EX: TStringField
      DisplayWidth = 25
      FieldKind = fkCalculated
      FieldName = 'LAST_PWD_CHANGED_ON_DATE_EX'
      Size = 25
      Calculated = True
    end
  end
  object cdsLookupRoleList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRoleList'
    RemoteServer = dspDataConnection
    Left = 144
    Top = 160
    object cdsLookupRoleListROLE_REC_ID: TLargeintField
      FieldName = 'ROLE_REC_ID'
    end
    object cdsLookupRoleListROLE_ID: TStringField
      FieldName = 'ROLE_ID'
      Size = 31
    end
    object cdsLookupRoleListSTATUS_FLAG: TStringField
      FieldName = 'STATUS_FLAG'
      FixedChar = True
      Size = 1
    end
    object cdsLookupRoleListSTATUS_DESC: TStringField
      FieldName = 'STATUS_DESC'
      Size = 120
    end
    object cdsLookupRoleListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
  end
  object cdsGetFormList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetFormList'
    RemoteServer = dspDataConnection
    OnCalcFields = cdsGetFormListCalcFields
    Left = 224
    Top = 224
    object cdsGetFormListCOMPONENT_ID: TLargeintField
      FieldName = 'COMPONENT_ID'
    end
    object cdsGetFormListPARENT_ID: TLargeintField
      FieldName = 'PARENT_ID'
    end
    object cdsGetFormListCOMPONENT_TYPE: TIntegerField
      FieldName = 'COMPONENT_TYPE'
    end
    object cdsGetFormListCOMPONENT_CLASS: TStringField
      FieldName = 'COMPONENT_CLASS'
      Size = 80
    end
    object cdsGetFormListCOMPONENT_NAME: TStringField
      FieldName = 'COMPONENT_NAME'
      Size = 80
    end
    object cdsGetFormListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
    object cdsGetFormListIS_VISIBLED: TSmallintField
      FieldName = 'IS_VISIBLED'
    end
    object cdsGetFormListIS_ENABLED: TSmallintField
      FieldName = 'IS_ENABLED'
    end
    object cdsGetFormListENABLED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'ENABLED'
    end
    object cdsGetFormListVISIBLED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'VISIBLED'
    end
  end
  object cdsGetControlList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetControlList'
    RemoteServer = dspDataConnection
    AfterOpen = cdsGetControlListAfterOpen
    AfterClose = cdsGetControlListAfterClose
    AfterPost = cdsGetControlListAfterPost
    OnCalcFields = cdsGetControlListCalcFields
    Left = 296
    Top = 224
    object cdsGetControlListCOMPONENT_ID: TLargeintField
      FieldName = 'COMPONENT_ID'
    end
    object cdsGetControlListPARENT_ID: TLargeintField
      FieldName = 'PARENT_ID'
    end
    object cdsGetControlListCOMPONENT_TYPE: TIntegerField
      FieldName = 'COMPONENT_TYPE'
    end
    object cdsGetControlListCOMPONENT_CLASS: TStringField
      FieldName = 'COMPONENT_CLASS'
      Size = 80
    end
    object cdsGetControlListCOMPONENT_NAME: TStringField
      FieldName = 'COMPONENT_NAME'
      Size = 80
    end
    object cdsGetControlListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
    object cdsGetControlListIS_VISIBLED: TSmallintField
      FieldName = 'IS_VISIBLED'
    end
    object cdsGetControlListIS_ENABLED: TSmallintField
      FieldName = 'IS_ENABLED'
    end
    object cdsGetControlListVISIBLED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'VISIBLED'
    end
    object cdsGetControlListENABLED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'ENABLED'
    end
  end
  object cdsAppGetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAppGetList'
    RemoteServer = dspDataConnection
    AfterOpen = cdsAppGetListAfterOpen
    AfterClose = cdsAppGetListAfterClose
    AfterPost = cdsAppGetListAfterPost
    OnCalcFields = cdsAppGetListCalcFields
    Left = 144
    Top = 224
    object cdsAppGetListCOMPONENT_ID: TLargeintField
      FieldName = 'COMPONENT_ID'
    end
    object cdsAppGetListPARENT_ID: TLargeintField
      FieldName = 'PARENT_ID'
    end
    object cdsAppGetListCOMPONENT_TYPE: TIntegerField
      FieldName = 'COMPONENT_TYPE'
    end
    object cdsAppGetListCOMPONENT_CLASS: TStringField
      FieldName = 'COMPONENT_CLASS'
      Size = 80
    end
    object cdsAppGetListCOMPONENT_NAME: TStringField
      FieldName = 'COMPONENT_NAME'
      Size = 80
    end
    object cdsAppGetListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
    object cdsAppGetListIS_VISIBLED: TSmallintField
      FieldName = 'IS_VISIBLED'
    end
    object cdsAppGetListIS_ENABLED: TSmallintField
      FieldName = 'IS_ENABLED'
    end
    object cdsAppGetListVISIBLED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'VISIBLED'
    end
    object cdsAppGetListENABLED: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'ENABLED'
    end
  end
  object CdsGetDataSelect: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSelect'
    RemoteServer = dspDataConnection
    Left = 120
    Top = 384
  end
end
