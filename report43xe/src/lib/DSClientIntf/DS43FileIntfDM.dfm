inherited DS43FileDM: TDS43FileDM
  OldCreateOrder = True
  Height = 875
  Width = 1282
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSHIS43File'
    Left = 32
  end
  inherited cdsDescList: TClientDataSet
    Top = 64
  end
  inherited cdsAccountInternalList: TClientDataSet
    Top = 64
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
    inherited Page1: TfrxReportPage
      inherited PageHeader1: TfrxPageHeader
        inherited Memo30: TfrxMemoView
          Memo.UTF8W = (
            #3610#3619#3636#3625#3633#3607' '#3650#3605#3650#3618#3605#3657#3634' '#3626#3640#3619#3636#3609#3607#3619#3660'(1991) '#3592#3635#3585#3633#3604
            '370-378 '#3606#3609#3609#3611#3633#3607#3617#3634#3609#3609#3607#3660' '#3605#3635#3610#3621': '#3651#3609#3648#3617#3639#3629#3591
            #3629'.'#3648#3617#3639#3629#3591' '#3592'.'#3626#3640#3619#3636#3609#3607#3619#3660' 32000 ')
        end
        inherited Memo1: TfrxMemoView
          Memo.UTF8W = (
            'PURCHASE ORDER')
        end
        inherited Memo34: TfrxMemoView
          Memo.UTF8W = (
            ' '#3616#3633#3607#3619#3634#3614#3619'  '#3648#3614#3621#3634
            '  8/7 '#3606'.'#3619#3634#3625#3598#3619#3660#3610#3641#3619#3603#3632'  '#3605'.'#3617#3634#3610#3605#3634#3614#3640#3605
            '  '#3629'.'#3648#3617#3639#3629#3591' '#3592'.'#3619#3632#3618#3629#3591' ')
        end
        inherited Memo2: TfrxMemoView
          Memo.UTF8W = (
            'No.')
        end
        inherited Memo3: TfrxMemoView
          Memo.UTF8W = (
            'Item Code')
        end
        inherited Memo4: TfrxMemoView
          Memo.UTF8W = (
            'Description Narrarion')
        end
        inherited Memo20: TfrxMemoView
          Memo.UTF8W = (
            'Quantity')
        end
        inherited Memo21: TfrxMemoView
          Memo.UTF8W = (
            'Bath')
        end
        inherited Memo22: TfrxMemoView
          Memo.UTF8W = (
            'Note')
        end
        inherited Memo24: TfrxMemoView
          Memo.UTF8W = (
            'NO : [frxRepData."ordom3"] '
            'Date   [frxRepData."idtom3"] ')
        end
        inherited Memo25: TfrxMemoView
          Memo.UTF8W = (
            'Shipment Date')
        end
        inherited Memo26: TfrxMemoView
          Memo.UTF8W = (
            'Contract Person')
        end
        inherited Memo7: TfrxMemoView
          Memo.UTF8W = (
            'Unit Cost')
        end
        inherited Memo14: TfrxMemoView
          Memo.UTF8W = (
            'Amount')
        end
        inherited Memo5: TfrxMemoView
          Memo.UTF8W = (
            'PR.No.')
        end
        inherited Memo6: TfrxMemoView
          Memo.UTF8W = (
            'Payment Term  [frxRepData."crtom3"]   DAYS')
        end
        inherited Memo15: TfrxMemoView
          Memo.UTF8W = (
            'Vender Code'
            '[frxRepData."vnoom3"] ')
        end
        inherited Memo16: TfrxMemoView
          Memo.UTF8W = (
            'Ship To')
        end
        inherited Memo27: TfrxMemoView
          Memo.UTF8W = (
            'Warehouse'
            
              '[frxRepData."twhom3"] ([frxRepData."cmpom3"]-[frxRepData."brnom3' +
              '"])')
        end
        inherited Memo29: TfrxMemoView
          Memo.UTF8W = (
            #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
            '[frxRepData."tnmcsm"] ')
        end
        inherited Memo37: TfrxMemoView
          Memo.UTF8W = (
            #3648#3621#3586#3607#3637#3656#3588#3635#3586#3629
            '[frxRepData."rdnom3"] ')
        end
        inherited Memo38: TfrxMemoView
          Memo.UTF8W = (
            #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591' '
            '[frxRepData."engom3"] ')
        end
        inherited Memo39: TfrxMemoView
          Memo.UTF8W = (
            #3648#3621#3586#3605#3633#3623#3606#3633#3591
            '[frxRepData."serom3"] ')
        end
        inherited Memo40: TfrxMemoView
          Memo.UTF8W = (
            #3649#3610#3610
            '[frxRepData."prdom3"] ')
        end
      end
      inherited MasterData1: TfrxMasterData
        inherited Memo8: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."seqom3"] ')
        end
        inherited Memo10: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."TNMPM1"]')
        end
        inherited Memo12: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."qr1om3"]')
        end
        inherited Memo13: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."uc1om3"]')
        end
        inherited Memo9: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."fsrom3"] ')
        end
        inherited Memo17: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."amtom3"]')
        end
        inherited Memo19: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."dseom3"]')
        end
      end
      inherited PageFooter1: TfrxPageFooter
        inherited Memo33: TfrxMemoView
          Memo.UTF8W = (
            'Page [Page#]')
        end
        inherited Memo35: TfrxMemoView
          Memo.UTF8W = (
            'po.fr3')
        end
        inherited Memo36: TfrxMemoView
          Memo.UTF8W = (
            ''
            ''
            '_______________'
            'Purchasing Manager')
        end
        inherited Memo41: TfrxMemoView
          Memo.UTF8W = (
            ''
            ''
            '_______________'
            'Controller')
        end
        inherited Memo42: TfrxMemoView
          Memo.UTF8W = (
            ''
            ''
            '_______________'
            'General Manager')
        end
        inherited Memo32: TfrxMemoView
          Memo.UTF8W = (
            '[Date] [Time]')
        end
        inherited Memo23: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."bathtext"]')
        end
        inherited Memo28: TfrxMemoView
          Memo.UTF8W = (
            '[frxRepData."sumamt"]')
        end
        inherited Memo11: TfrxMemoView
          Memo.UTF8W = (
            'Total')
        end
      end
    end
  end
  inherited cdsBranchList: TClientDataSet
    Left = 472
    Top = 8
  end
  inherited cdsTranAccount: TClientDataSet
    Left = 552
    Top = 8
  end
  inherited cdsMiscDataSet: TClientDataSet
    Left = 136
  end
  inherited cdsGetFrmReport: TClientDataSet
    Left = 136
    Top = 304
  end
  object cdsGetReport43Person: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Person'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43PersonAfterScroll
    OnNewRecord = cdsGetReport43PersonNewRecord
    Left = 226
    Top = 190
    object cdsGetReport43PersonHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43PersonPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43PersonCID: TWideStringField
      FieldName = 'CID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 13
    end
    object cdsGetReport43PersonHID: TWideStringField
      FieldName = 'HID'
      Size = 14
    end
    object cdsGetReport43PersonPRENAME: TWideStringField
      FieldName = 'PRENAME'
      Size = 3
    end
    object cdsGetReport43PersonNAME: TWideStringField
      FieldName = 'NAME'
      Size = 50
    end
    object cdsGetReport43PersonLNAME: TWideStringField
      FieldName = 'LNAME'
      Size = 50
    end
    object cdsGetReport43PersonHN: TWideStringField
      FieldName = 'HN'
      Size = 15
    end
    object cdsGetReport43PersonSEX: TWideStringField
      FieldName = 'SEX'
      Size = 1
    end
    object cdsGetReport43PersonBIRTH: TDateField
      FieldName = 'BIRTH'
    end
    object cdsGetReport43PersonMSTATUS: TWideStringField
      FieldName = 'MSTATUS'
      Size = 1
    end
    object cdsGetReport43PersonOCCUPATION_OLD: TWideStringField
      FieldName = 'OCCUPATION_OLD'
      Size = 3
    end
    object cdsGetReport43PersonOCCUPATION_NEW: TWideStringField
      FieldName = 'OCCUPATION_NEW'
      Size = 4
    end
    object cdsGetReport43PersonRACE: TWideStringField
      FieldName = 'RACE'
      Size = 3
    end
    object cdsGetReport43PersonNATION: TWideStringField
      FieldName = 'NATION'
      Size = 3
    end
    object cdsGetReport43PersonRELIGION: TWideStringField
      FieldName = 'RELIGION'
      Size = 2
    end
    object cdsGetReport43PersonEDUCATION: TWideStringField
      FieldName = 'EDUCATION'
      Size = 2
    end
    object cdsGetReport43PersonFSTATUS: TWideStringField
      FieldName = 'FSTATUS'
      Size = 1
    end
    object cdsGetReport43PersonFATHER: TWideStringField
      FieldName = 'FATHER'
      Size = 13
    end
    object cdsGetReport43PersonMOTHER: TWideStringField
      FieldName = 'MOTHER'
      Size = 13
    end
    object cdsGetReport43PersonCOUPLE: TWideStringField
      FieldName = 'COUPLE'
      Size = 13
    end
    object cdsGetReport43PersonVSTATUS: TWideStringField
      FieldName = 'VSTATUS'
      Size = 1
    end
    object cdsGetReport43PersonMOVEIN: TDateField
      FieldName = 'MOVEIN'
    end
    object cdsGetReport43PersonDISCHARGE: TWideStringField
      FieldName = 'DISCHARGE'
      Size = 1
    end
    object cdsGetReport43PersonDDISCHARGE: TDateField
      FieldName = 'DDISCHARGE'
    end
    object cdsGetReport43PersonABOGROUP: TWideStringField
      FieldName = 'ABOGROUP'
      Size = 1
    end
    object cdsGetReport43PersonRHGROUP: TWideStringField
      FieldName = 'RHGROUP'
      Size = 1
    end
    object cdsGetReport43PersonLABOR: TWideStringField
      FieldName = 'LABOR'
      Size = 2
    end
    object cdsGetReport43PersonPASSPORT: TWideStringField
      FieldName = 'PASSPORT'
      Size = 8
    end
    object cdsGetReport43PersonTYPEAREA: TWideStringField
      FieldName = 'TYPEAREA'
      Size = 1
    end
    object cdsGetReport43PersonD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
    object cdsGetReport43PersonEXPORT_DATE: TSQLTimeStampField
      FieldName = 'EXPORT_DATE'
    end
  end
  object cdsGetReport43Service: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Service'
    RemoteServer = dspDataConnection
    Left = 202
    Top = 102
  end
  object cdsGetReport43ServiceList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ServiceList'
    RemoteServer = dspDataConnection
    BeforePost = cdsGetReport43ServiceListBeforePost
    AfterScroll = cdsGetReport43ServiceListAfterScroll
    Left = 226
    Top = 254
  end
  object cdsGetReport43DiagnosisOpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DiagnosisOpd'
    RemoteServer = dspDataConnection
    Left = 674
    Top = 238
    object cdsGetReport43DiagnosisOpdHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DiagnosisOpdPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DiagnosisOpdSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43DiagnosisOpdDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43DiagnosisOpdDIAGTYPE: TWideStringField
      FieldName = 'DIAGTYPE'
      Size = 1
    end
    object cdsGetReport43DiagnosisOpdDIAGCODE: TWideStringField
      FieldName = 'DIAGCODE'
      Size = 6
    end
    object cdsGetReport43DiagnosisOpdCLINIC: TWideStringField
      FieldName = 'CLINIC'
      Size = 5
    end
    object cdsGetReport43DiagnosisOpdPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DiagnosisOpdD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
    object cdsGetReport43DiagnosisOpdEXPORT_DATE: TSQLTimeStampField
      FieldName = 'EXPORT_DATE'
    end
  end
  object cdsGetReport43DiagnosisOpdList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DiagnosisOpdList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43DiagnosisOpdListAfterScroll
    Left = 674
    Top = 270
    object cdsGetReport43DiagnosisOpdListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DiagnosisOpdListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DiagnosisOpdListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43DiagnosisOpdListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43DiagnosisOpdListDIAGTYPE: TWideStringField
      FieldName = 'DIAGTYPE'
      Size = 1
    end
    object cdsGetReport43DiagnosisOpdListDIAGCODE: TWideStringField
      FieldName = 'DIAGCODE'
      Size = 6
    end
    object cdsGetReport43DiagnosisOpdListCLINIC: TWideStringField
      FieldName = 'CLINIC'
      Size = 5
    end
    object cdsGetReport43DiagnosisOpdListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DiagnosisOpdListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
    object cdsGetReport43DiagnosisOpdListEXPORT_DATE: TSQLTimeStampField
      FieldName = 'EXPORT_DATE'
    end
  end
  object cdsGetReport43ProcedureOpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ProcedureOpd'
    RemoteServer = dspDataConnection
    Left = 522
    Top = 286
  end
  object cdsGetReport43ProcedureOpdList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ProcedureOpdList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43ProcedureOpdListAfterScroll
    Left = 514
    Top = 414
  end
  object cdsGetReport43DrugOpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DrugOpd'
    RemoteServer = dspDataConnection
    Left = 826
    Top = 278
  end
  object cdsGetReport43DrugListOpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DrugOpdList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43DrugListOpdAfterScroll
    Left = 826
    Top = 294
  end
  object cdsGetReport43Appointment: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Appointment'
    RemoteServer = dspDataConnection
    Left = 826
    Top = 382
    object cdsGetReport43AppointmentREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43AppointmentHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43AppointmentPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43AppointmentAN: TIntegerField
      FieldName = 'AN'
    end
    object cdsGetReport43AppointmentSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43AppointmentDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43AppointmentCLINIC: TWideStringField
      FieldName = 'CLINIC'
      Size = 5
    end
    object cdsGetReport43AppointmentAPDATE: TDateField
      FieldName = 'APDATE'
    end
    object cdsGetReport43AppointmentAPTYPE: TWideStringField
      FieldName = 'APTYPE'
      Size = 3
    end
    object cdsGetReport43AppointmentAPDIAG: TWideStringField
      FieldName = 'APDIAG'
      Size = 6
    end
    object cdsGetReport43AppointmentPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43AppointmentD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43AppointmentList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43AppointmentList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43AppointmentListAfterScroll
    Left = 826
    Top = 414
    object cdsGetReport43AppointmentListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43AppointmentListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43AppointmentListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43AppointmentListAN: TIntegerField
      FieldName = 'AN'
    end
    object cdsGetReport43AppointmentListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43AppointmentListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43AppointmentListCLINIC: TWideStringField
      FieldName = 'CLINIC'
      Size = 5
    end
    object cdsGetReport43AppointmentListAPDATE: TDateField
      FieldName = 'APDATE'
    end
    object cdsGetReport43AppointmentListAPTYPE: TWideStringField
      FieldName = 'APTYPE'
      Size = 3
    end
    object cdsGetReport43AppointmentListAPDIAG: TWideStringField
      FieldName = 'APDIAG'
      Size = 6
    end
    object cdsGetReport43AppointmentListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43AppointmentListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Anc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Anc'
    RemoteServer = dspDataConnection
    Left = 706
    Top = 374
    object cdsGetReport43AncREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43AncHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43AncPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43AncSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43AncDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43AncGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43AncANCNO: TWideStringField
      FieldName = 'ANCNO'
      Size = 1
    end
    object cdsGetReport43AncGA: TWideStringField
      FieldName = 'GA'
      Size = 2
    end
    object cdsGetReport43AncANCRESULT: TWideStringField
      FieldName = 'ANCRESULT'
      Size = 1
    end
    object cdsGetReport43AncANCPLACE: TWideStringField
      FieldName = 'ANCPLACE'
      Size = 5
    end
    object cdsGetReport43AncPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43AncD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43AncList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43AncList'
    RemoteServer = dspDataConnection
    BeforePost = cdsGetReport43AncListBeforePost
    AfterScroll = cdsGetReport43AncListAfterScroll
    Left = 658
    Top = 438
    object cdsGetReport43AncListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43AncListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43AncListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43AncListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43AncListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43AncListGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43AncListANCNO: TWideStringField
      FieldName = 'ANCNO'
      Size = 1
    end
    object cdsGetReport43AncListGA: TWideStringField
      FieldName = 'GA'
      Size = 2
    end
    object cdsGetReport43AncListANCRESULT: TWideStringField
      FieldName = 'ANCRESULT'
      Size = 1
    end
    object cdsGetReport43AncListANCPLACE: TWideStringField
      FieldName = 'ANCPLACE'
      Size = 5
    end
    object cdsGetReport43AncListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43AncListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Prenatal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Prenatal'
    RemoteServer = dspDataConnection
    Left = 154
    Top = 366
    object cdsGetReport43PrenatalREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43PrenatalHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43PrenatalPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43PrenatalGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43PrenatalLMP: TDateField
      FieldName = 'LMP'
    end
    object cdsGetReport43PrenatalEDC: TDateField
      FieldName = 'EDC'
    end
    object cdsGetReport43PrenatalVDRL_RESULT: TWideStringField
      FieldName = 'VDRL_RESULT'
      Size = 1
    end
    object cdsGetReport43PrenatalHB_RESULT: TWideStringField
      FieldName = 'HB_RESULT'
      Size = 1
    end
    object cdsGetReport43PrenatalHIV_RESULT: TWideStringField
      FieldName = 'HIV_RESULT'
      Size = 1
    end
    object cdsGetReport43PrenatalDATE_HCT: TDateField
      FieldName = 'DATE_HCT'
    end
    object cdsGetReport43PrenatalHCT_RESULT: TIntegerField
      FieldName = 'HCT_RESULT'
    end
    object cdsGetReport43PrenatalTHALASSEMIA: TWideStringField
      FieldName = 'THALASSEMIA'
      Size = 1
    end
    object cdsGetReport43PrenatalD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43PrenatalList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43PrenatalList'
    RemoteServer = dspDataConnection
    BeforePost = cdsGetReport43PrenatalListBeforePost
    AfterScroll = cdsGetReport43PrenatalListAfterScroll
    Left = 66
    Top = 734
    object cdsGetReport43PrenatalListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43PrenatalListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43PrenatalListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43PrenatalListGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43PrenatalListLMP: TDateField
      FieldName = 'LMP'
    end
    object cdsGetReport43PrenatalListEDC: TDateField
      FieldName = 'EDC'
    end
    object cdsGetReport43PrenatalListVDRL_RESULT: TWideStringField
      FieldName = 'VDRL_RESULT'
      Size = 1
    end
    object cdsGetReport43PrenatalListHB_RESULT: TWideStringField
      FieldName = 'HB_RESULT'
      Size = 1
    end
    object cdsGetReport43PrenatalListHIV_RESULT: TWideStringField
      FieldName = 'HIV_RESULT'
      Size = 1
    end
    object cdsGetReport43PrenatalListDATE_HCT: TDateField
      FieldName = 'DATE_HCT'
    end
    object cdsGetReport43PrenatalListHCT_RESULT: TIntegerField
      FieldName = 'HCT_RESULT'
    end
    object cdsGetReport43PrenatalListTHALASSEMIA: TWideStringField
      FieldName = 'THALASSEMIA'
      Size = 1
    end
    object cdsGetReport43PrenatalListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Postnatal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Postnatal'
    RemoteServer = dspDataConnection
    Left = 50
    Top = 670
    object cdsGetReport43PostnatalREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43PostnatalHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43PostnatalPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43PostnatalSEQ: TWideStringField
      FieldName = 'SEQ'
      Size = 16
    end
    object cdsGetReport43PostnatalGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43PostnatalBDATE: TDateField
      FieldName = 'BDATE'
    end
    object cdsGetReport43PostnatalPPCARE: TDateField
      FieldName = 'PPCARE'
    end
    object cdsGetReport43PostnatalPPPLACE: TWideStringField
      FieldName = 'PPPLACE'
      Size = 5
    end
    object cdsGetReport43PostnatalPPRESULT: TWideStringField
      FieldName = 'PPRESULT'
      Size = 1
    end
    object cdsGetReport43PostnatalPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43PostnatalD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43PostnatalList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43PostnatalList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43PostnatalListAfterScroll
    Left = 682
    Top = 734
    object cdsGetReport43PostnatalListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43PostnatalListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43PostnatalListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43PostnatalListSEQ: TWideStringField
      FieldName = 'SEQ'
      Size = 16
    end
    object cdsGetReport43PostnatalListGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43PostnatalListBDATE: TDateField
      FieldName = 'BDATE'
    end
    object cdsGetReport43PostnatalListPPCARE: TDateField
      FieldName = 'PPCARE'
    end
    object cdsGetReport43PostnatalListPPPLACE: TWideStringField
      FieldName = 'PPPLACE'
      Size = 5
    end
    object cdsGetReport43PostnatalListPPRESULT: TWideStringField
      FieldName = 'PPRESULT'
      Size = 1
    end
    object cdsGetReport43PostnatalListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43PostnatalListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43LabOr: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dscGetReport43LabOr'
    RemoteServer = dspDataConnection
    Left = 266
    Top = 462
    object cdsGetReport43LabOrREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43LabOrHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43LabOrPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43LabOrGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43LabOrLMP: TDateField
      FieldName = 'LMP'
    end
    object cdsGetReport43LabOrEDC: TDateField
      FieldName = 'EDC'
    end
    object cdsGetReport43LabOrBDATE: TDateField
      FieldName = 'BDATE'
    end
    object cdsGetReport43LabOrBRESULT: TWideStringField
      FieldName = 'BRESULT'
      Size = 6
    end
    object cdsGetReport43LabOrBPLACE: TWideStringField
      FieldName = 'BPLACE'
      Size = 1
    end
    object cdsGetReport43LabOrBHOSP: TWideStringField
      FieldName = 'BHOSP'
      Size = 5
    end
    object cdsGetReport43LabOrBTYPE: TWideStringField
      FieldName = 'BTYPE'
      Size = 1
    end
    object cdsGetReport43LabOrBDOCTOR: TWideStringField
      FieldName = 'BDOCTOR'
      Size = 1
    end
    object cdsGetReport43LabOrLBORN: TIntegerField
      FieldName = 'LBORN'
    end
    object cdsGetReport43LabOrSBORN: TIntegerField
      FieldName = 'SBORN'
    end
    object cdsGetReport43LabOrD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43LabOrList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43LabOrList'
    RemoteServer = dspDataConnection
    BeforePost = cdsGetReport43LabOrListBeforePost
    AfterScroll = cdsGetReport43LabOrListAfterScroll
    Left = 242
    Top = 782
    object cdsGetReport43LabOrListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43LabOrListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43LabOrListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43LabOrListGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43LabOrListLMP: TDateField
      FieldName = 'LMP'
    end
    object cdsGetReport43LabOrListEDC: TDateField
      FieldName = 'EDC'
    end
    object cdsGetReport43LabOrListBDATE: TDateField
      FieldName = 'BDATE'
    end
    object cdsGetReport43LabOrListBRESULT: TWideStringField
      FieldName = 'BRESULT'
      Size = 6
    end
    object cdsGetReport43LabOrListBPLACE: TWideStringField
      FieldName = 'BPLACE'
      Size = 1
    end
    object cdsGetReport43LabOrListBHOSP: TWideStringField
      FieldName = 'BHOSP'
      Size = 5
    end
    object cdsGetReport43LabOrListBTYPE: TWideStringField
      FieldName = 'BTYPE'
      Size = 1
    end
    object cdsGetReport43LabOrListBDOCTOR: TWideStringField
      FieldName = 'BDOCTOR'
      Size = 1
    end
    object cdsGetReport43LabOrListLBORN: TIntegerField
      FieldName = 'LBORN'
    end
    object cdsGetReport43LabOrListSBORN: TIntegerField
      FieldName = 'SBORN'
    end
    object cdsGetReport43LabOrListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Women: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Women'
    RemoteServer = dspDataConnection
    Left = 258
    Top = 318
    object cdsGetReport43WomenREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43WomenHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43WomenPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43WomenFPTYPE: TWideStringField
      FieldName = 'FPTYPE'
      Size = 1
    end
    object cdsGetReport43WomenNOFPCAUSE: TWideStringField
      FieldName = 'NOFPCAUSE'
      Size = 1
    end
    object cdsGetReport43WomenTOTALSON: TIntegerField
      FieldName = 'TOTALSON'
    end
    object cdsGetReport43WomenNUMBERSON: TIntegerField
      FieldName = 'NUMBERSON'
    end
    object cdsGetReport43WomenABORTION: TIntegerField
      FieldName = 'ABORTION'
    end
    object cdsGetReport43WomenSTILLBIRTH: TIntegerField
      FieldName = 'STILLBIRTH'
    end
    object cdsGetReport43WomenD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43WomenList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43WomenList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43WomenListAfterScroll
    Left = 290
    Top = 390
    object cdsGetReport43WomenListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43WomenListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43WomenListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43WomenListFPTYPE: TWideStringField
      FieldName = 'FPTYPE'
      Size = 1
    end
    object cdsGetReport43WomenListNOFPCAUSE: TWideStringField
      FieldName = 'NOFPCAUSE'
      Size = 1
    end
    object cdsGetReport43WomenListTOTALSON: TIntegerField
      FieldName = 'TOTALSON'
    end
    object cdsGetReport43WomenListNUMBERSON: TIntegerField
      FieldName = 'NUMBERSON'
    end
    object cdsGetReport43WomenListABORTION: TIntegerField
      FieldName = 'ABORTION'
    end
    object cdsGetReport43WomenListSTILLBIRTH: TIntegerField
      FieldName = 'STILLBIRTH'
    end
    object cdsGetReport43WomenListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Fp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsGetReport43Fp'
    RemoteServer = dspDataConnection
    Left = 138
    Top = 222
    object cdsGetReport43FpREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43FpHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43FpPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43FpSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43FpDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43FpFPTYPE: TWideStringField
      FieldName = 'FPTYPE'
      Size = 1
    end
    object cdsGetReport43FpFPPLACE: TWideStringField
      FieldName = 'FPPLACE'
      Size = 5
    end
    object cdsGetReport43FpPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43FpD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43FpList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'cdsGetReport43FpList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43FpListAfterScroll
    Left = 138
    Top = 238
    object cdsGetReport43FpListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43FpListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43FpListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43FpListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43FpListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43FpListFPTYPE: TWideStringField
      FieldName = 'FPTYPE'
      Size = 1
    end
    object cdsGetReport43FpListFPPLACE: TWideStringField
      FieldName = 'FPPLACE'
      Size = 5
    end
    object cdsGetReport43FpListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43FpListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Epi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Epi'
    RemoteServer = dspDataConnection
    Left = 378
    Top = 326
    object cdsGetReport43EpiREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43EpiHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43EpiPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43EpiSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43EpiDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43EpiVACCINETYPE: TWideStringField
      FieldName = 'VACCINETYPE'
      Size = 3
    end
    object cdsGetReport43EpiVACCINEPLACE: TWideStringField
      FieldName = 'VACCINEPLACE'
      Size = 5
    end
    object cdsGetReport43EpiPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43EpiD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43EpiList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43EpiList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43EpiListAfterScroll
    Left = 386
    Top = 406
    object cdsGetReport43EpiListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43EpiListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43EpiListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43EpiListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43EpiListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43EpiListVACCINETYPE: TWideStringField
      FieldName = 'VACCINETYPE'
      Size = 3
    end
    object cdsGetReport43EpiListVACCINEPLACE: TWideStringField
      FieldName = 'VACCINEPLACE'
      Size = 5
    end
    object cdsGetReport43EpiListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43EpiListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Icf: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Icf'
    RemoteServer = dspDataConnection
    Left = 482
    Top = 494
    object cdsGetReport43IcfREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43IcfHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43IcfDISABID: TWideStringField
      FieldName = 'DISABID'
      Size = 13
    end
    object cdsGetReport43IcfPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43IcfSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43IcfDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43IcfICF: TWideStringField
      FieldName = 'ICF'
      Size = 6
    end
    object cdsGetReport43IcfQUALIFIER: TWideStringField
      FieldName = 'QUALIFIER'
      Size = 1
    end
    object cdsGetReport43IcfPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43IcfD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43IcfList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43IcfList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43IcfListAfterScroll
    Left = 370
    Top = 518
    object cdsGetReport43IcfListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43IcfListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43IcfListDISABID: TWideStringField
      FieldName = 'DISABID'
      Size = 13
    end
    object cdsGetReport43IcfListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43IcfListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43IcfListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43IcfListICF: TWideStringField
      FieldName = 'ICF'
      Size = 6
    end
    object cdsGetReport43IcfListQUALIFIER: TWideStringField
      FieldName = 'QUALIFIER'
      Size = 1
    end
    object cdsGetReport43IcfListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43IcfListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43SpecialPp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43SpecialPp'
    RemoteServer = dspDataConnection
    Left = 522
    Top = 550
    object cdsGetReport43SpecialPpREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43SpecialPpHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43SpecialPpPID: TWideStringField
      FieldName = 'PID'
      Size = 15
    end
    object cdsGetReport43SpecialPpSEQ: TWideStringField
      FieldName = 'SEQ'
      Size = 16
    end
    object cdsGetReport43SpecialPpDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43SpecialPpSERVPLACE: TWideStringField
      FieldName = 'SERVPLACE'
      Size = 1
    end
    object cdsGetReport43SpecialPpPPSPECIAL: TWideStringField
      FieldName = 'PPSPECIAL'
      Size = 6
    end
    object cdsGetReport43SpecialPpPPSPLACE: TWideStringField
      FieldName = 'PPSPLACE'
      Size = 5
    end
    object cdsGetReport43SpecialPpPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43SpecialPpD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43SpecialPpList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43SpecialPpList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43SpecialPpListAfterScroll
    Left = 506
    Top = 598
    object cdsGetReport43SpecialPpListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43SpecialPpListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43SpecialPpListPID: TWideStringField
      FieldName = 'PID'
      Size = 15
    end
    object cdsGetReport43SpecialPpListSEQ: TWideStringField
      FieldName = 'SEQ'
      Size = 16
    end
    object cdsGetReport43SpecialPpListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43SpecialPpListSERVPLACE: TWideStringField
      FieldName = 'SERVPLACE'
      Size = 1
    end
    object cdsGetReport43SpecialPpListPPSPECIAL: TWideStringField
      FieldName = 'PPSPECIAL'
      Size = 6
    end
    object cdsGetReport43SpecialPpListPPSPLACE: TWideStringField
      FieldName = 'PPSPLACE'
      Size = 5
    end
    object cdsGetReport43SpecialPpListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43SpecialPpListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Chronic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Chronic'
    RemoteServer = dspDataConnection
    Left = 594
    Top = 494
    object cdsGetReport43ChronicREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43ChronicHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ChronicPID: TWideStringField
      FieldName = 'PID'
      Size = 15
    end
    object cdsGetReport43ChronicDATE_DIAG: TDateField
      FieldName = 'DATE_DIAG'
    end
    object cdsGetReport43ChronicCHRONIC: TWideStringField
      FieldName = 'CHRONIC'
      Size = 6
    end
    object cdsGetReport43ChronicHOSP_DX: TWideStringField
      FieldName = 'HOSP_DX'
      Size = 5
    end
    object cdsGetReport43ChronicHOSP_RX: TWideStringField
      FieldName = 'HOSP_RX'
      Size = 5
    end
    object cdsGetReport43ChronicDATE_DISCH: TDateField
      FieldName = 'DATE_DISCH'
    end
    object cdsGetReport43ChronicTYPEDISCH: TWideStringField
      FieldName = 'TYPEDISCH'
      Size = 2
    end
    object cdsGetReport43ChronicD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43ChronicList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ChronicList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43ChronicListAfterScroll
    Left = 618
    Top = 582
    object cdsGetReport43ChronicListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43ChronicListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ChronicListPID: TWideStringField
      FieldName = 'PID'
      Size = 15
    end
    object cdsGetReport43ChronicListDATE_DIAG: TDateField
      FieldName = 'DATE_DIAG'
    end
    object cdsGetReport43ChronicListCHRONIC: TWideStringField
      FieldName = 'CHRONIC'
      Size = 6
    end
    object cdsGetReport43ChronicListHOSP_DX: TWideStringField
      FieldName = 'HOSP_DX'
      Size = 5
    end
    object cdsGetReport43ChronicListHOSP_RX: TWideStringField
      FieldName = 'HOSP_RX'
      Size = 5
    end
    object cdsGetReport43ChronicListDATE_DISCH: TDateField
      FieldName = 'DATE_DISCH'
    end
    object cdsGetReport43ChronicListTYPEDISCH: TWideStringField
      FieldName = 'TYPEDISCH'
      Size = 2
    end
    object cdsGetReport43ChronicListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43ChronicFu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ChronicFu'
    RemoteServer = dspDataConnection
    Left = 706
    Top = 550
    object cdsGetReport43ChronicFuREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43ChronicFuHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ChronicFuPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43ChronicFuSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43ChronicFuDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43ChronicFuWEIGHT: TIntegerField
      FieldName = 'WEIGHT'
    end
    object cdsGetReport43ChronicFuHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
    end
    object cdsGetReport43ChronicFuWAIST_CM: TIntegerField
      FieldName = 'WAIST_CM'
    end
    object cdsGetReport43ChronicFuSBP: TIntegerField
      FieldName = 'SBP'
    end
    object cdsGetReport43ChronicFuDBP: TIntegerField
      FieldName = 'DBP'
    end
    object cdsGetReport43ChronicFuFOOT: TWideStringField
      FieldName = 'FOOT'
      Size = 1
    end
    object cdsGetReport43ChronicFuRETINA: TWideStringField
      FieldName = 'RETINA'
      Size = 1
    end
    object cdsGetReport43ChronicFuPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43ChronicFuD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43ChronicFuList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ChronicFuList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43ChronicFuListAfterScroll
    Left = 706
    Top = 622
    object cdsGetReport43ChronicFuListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43ChronicFuListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ChronicFuListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43ChronicFuListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43ChronicFuListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43ChronicFuListWEIGHT: TIntegerField
      FieldName = 'WEIGHT'
    end
    object cdsGetReport43ChronicFuListHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
    end
    object cdsGetReport43ChronicFuListWAIST_CM: TIntegerField
      FieldName = 'WAIST_CM'
    end
    object cdsGetReport43ChronicFuListSBP: TIntegerField
      FieldName = 'SBP'
    end
    object cdsGetReport43ChronicFuListDBP: TIntegerField
      FieldName = 'DBP'
    end
    object cdsGetReport43ChronicFuListFOOT: TWideStringField
      FieldName = 'FOOT'
      Size = 1
    end
    object cdsGetReport43ChronicFuListRETINA: TWideStringField
      FieldName = 'RETINA'
      Size = 1
    end
    object cdsGetReport43ChronicFuListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43ChronicFuListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Nutrition: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Nutrition'
    RemoteServer = dspDataConnection
    Left = 898
    Top = 526
    object cdsGetReport43NutritionREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43NutritionHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43NutritionPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43NutritionSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43NutritionDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43NutritionNUTRITIONPLACE: TWideStringField
      FieldName = 'NUTRITIONPLACE'
      Size = 5
    end
    object cdsGetReport43NutritionWEIGHT: TIntegerField
      FieldName = 'WEIGHT'
    end
    object cdsGetReport43NutritionHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
    end
    object cdsGetReport43NutritionHEADCIRCUM: TIntegerField
      FieldName = 'HEADCIRCUM'
    end
    object cdsGetReport43NutritionCHILDDEVELOP: TWideStringField
      FieldName = 'CHILDDEVELOP'
      Size = 1
    end
    object cdsGetReport43NutritionFOOD: TWideStringField
      FieldName = 'FOOD'
      Size = 1
    end
    object cdsGetReport43NutritionBOTTLE: TWideStringField
      FieldName = 'BOTTLE'
      Size = 1
    end
    object cdsGetReport43NutritionPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43NutritionD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43NutritionList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43NutritionList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43NutritionListAfterScroll
    Left = 890
    Top = 566
    object cdsGetReport43NutritionListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43NutritionListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43NutritionListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43NutritionListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43NutritionListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43NutritionListNUTRITIONPLACE: TWideStringField
      FieldName = 'NUTRITIONPLACE'
      Size = 5
    end
    object cdsGetReport43NutritionListWEIGHT: TIntegerField
      FieldName = 'WEIGHT'
    end
    object cdsGetReport43NutritionListHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
    end
    object cdsGetReport43NutritionListHEADCIRCUM: TIntegerField
      FieldName = 'HEADCIRCUM'
    end
    object cdsGetReport43NutritionListCHILDDEVELOP: TWideStringField
      FieldName = 'CHILDDEVELOP'
      Size = 1
    end
    object cdsGetReport43NutritionListFOOD: TWideStringField
      FieldName = 'FOOD'
      Size = 1
    end
    object cdsGetReport43NutritionListBOTTLE: TWideStringField
      FieldName = 'BOTTLE'
      Size = 1
    end
    object cdsGetReport43NutritionListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43NutritionListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Death: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Death'
    RemoteServer = dspDataConnection
    Left = 978
    Top = 366
    object cdsGetReport43DeathREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DeathHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DeathPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DeathHOSPDEATH: TWideStringField
      FieldName = 'HOSPDEATH'
      Size = 5
    end
    object cdsGetReport43DeathAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43DeathSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43DeathDDEATH: TDateField
      FieldName = 'DDEATH'
    end
    object cdsGetReport43DeathCDEATH_A: TWideStringField
      FieldName = 'CDEATH_A'
      Size = 6
    end
    object cdsGetReport43DeathCDEATH_B: TWideStringField
      FieldName = 'CDEATH_B'
      Size = 6
    end
    object cdsGetReport43DeathCDEATH_C: TWideStringField
      FieldName = 'CDEATH_C'
      Size = 6
    end
    object cdsGetReport43DeathCDEATH_D: TWideStringField
      FieldName = 'CDEATH_D'
      Size = 6
    end
    object cdsGetReport43DeathODISEASE: TWideStringField
      FieldName = 'ODISEASE'
      Size = 6
    end
    object cdsGetReport43DeathCDEATH: TWideStringField
      FieldName = 'CDEATH'
      Size = 6
    end
    object cdsGetReport43DeathPREGDEATH: TWideStringField
      FieldName = 'PREGDEATH'
      Size = 1
    end
    object cdsGetReport43DeathPDEATH: TWideStringField
      FieldName = 'PDEATH'
      Size = 1
    end
    object cdsGetReport43DeathPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DeathD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43DeathList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DeathList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43DeathListAfterScroll
    Left = 978
    Top = 398
    object cdsGetReport43DeathListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DeathListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DeathListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DeathListHOSPDEATH: TWideStringField
      FieldName = 'HOSPDEATH'
      Size = 5
    end
    object cdsGetReport43DeathListAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43DeathListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43DeathListDDEATH: TDateField
      FieldName = 'DDEATH'
    end
    object cdsGetReport43DeathListCDEATH_A: TWideStringField
      FieldName = 'CDEATH_A'
      Size = 6
    end
    object cdsGetReport43DeathListCDEATH_B: TWideStringField
      FieldName = 'CDEATH_B'
      Size = 6
    end
    object cdsGetReport43DeathListCDEATH_C: TWideStringField
      FieldName = 'CDEATH_C'
      Size = 6
    end
    object cdsGetReport43DeathListCDEATH_D: TWideStringField
      FieldName = 'CDEATH_D'
      Size = 6
    end
    object cdsGetReport43DeathListODISEASE: TWideStringField
      FieldName = 'ODISEASE'
      Size = 6
    end
    object cdsGetReport43DeathListCDEATH: TWideStringField
      FieldName = 'CDEATH'
      Size = 6
    end
    object cdsGetReport43DeathListPREGDEATH: TWideStringField
      FieldName = 'PREGDEATH'
      Size = 1
    end
    object cdsGetReport43DeathListPDEATH: TWideStringField
      FieldName = 'PDEATH'
      Size = 1
    end
    object cdsGetReport43DeathListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DeathListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Card: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Card'
    RemoteServer = dspDataConnection
    Left = 1002
    Top = 510
    object cdsGetReport43CardREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43CardHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43CardPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43CardINSTYPE_OLD: TWideStringField
      FieldName = 'INSTYPE_OLD'
      Size = 2
    end
    object cdsGetReport43CardINSTYPE_NEW: TWideStringField
      FieldName = 'INSTYPE_NEW'
      Size = 4
    end
    object cdsGetReport43CardINSID: TWideStringField
      FieldName = 'INSID'
      Size = 18
    end
    object cdsGetReport43CardSTARTDATE: TDateField
      FieldName = 'STARTDATE'
    end
    object cdsGetReport43CardEXPIREDATE: TDateField
      FieldName = 'EXPIREDATE'
    end
    object cdsGetReport43CardMAIN: TWideStringField
      FieldName = 'MAIN'
      Size = 5
    end
    object cdsGetReport43CardSUB: TWideStringField
      FieldName = 'SUB'
      Size = 5
    end
    object cdsGetReport43CardD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43CardList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43CardList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43CardListAfterScroll
    OnNewRecord = cdsGetReport43CardListNewRecord
    Left = 1002
    Top = 542
    object cdsGetReport43CardListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43CardListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43CardListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43CardListINSTYPE_OLD: TWideStringField
      FieldName = 'INSTYPE_OLD'
      Size = 2
    end
    object cdsGetReport43CardListINSTYPE_NEW: TWideStringField
      FieldName = 'INSTYPE_NEW'
      Size = 4
    end
    object cdsGetReport43CardListINSID: TWideStringField
      FieldName = 'INSID'
      Size = 18
    end
    object cdsGetReport43CardListSTARTDATE: TDateField
      FieldName = 'STARTDATE'
    end
    object cdsGetReport43CardListEXPIREDATE: TDateField
      FieldName = 'EXPIREDATE'
    end
    object cdsGetReport43CardListMAIN: TWideStringField
      FieldName = 'MAIN'
      Size = 5
    end
    object cdsGetReport43CardListSUB: TWideStringField
      FieldName = 'SUB'
      Size = 5
    end
    object cdsGetReport43CardListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Drugallergy: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Drugallergy'
    RemoteServer = dspDataConnection
    Left = 330
    Top = 158
    object cdsGetReport43DrugallergyREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DrugallergyHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DrugallergyPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DrugallergyDATERECORD: TDateField
      FieldName = 'DATERECORD'
    end
    object cdsGetReport43DrugallergyDRUGALLERGY: TWideStringField
      FieldName = 'DRUGALLERGY'
      Size = 24
    end
    object cdsGetReport43DrugallergyDNAME: TWideStringField
      FieldName = 'DNAME'
      Size = 255
    end
    object cdsGetReport43DrugallergyTYPEDX: TWideStringField
      FieldName = 'TYPEDX'
      Size = 1
    end
    object cdsGetReport43DrugallergyALEVEL: TWideStringField
      FieldName = 'ALEVEL'
      Size = 1
    end
    object cdsGetReport43DrugallergySYMPTOM: TWideStringField
      FieldName = 'SYMPTOM'
      Size = 2
    end
    object cdsGetReport43DrugallergyINFORMANT: TWideStringField
      FieldName = 'INFORMANT'
      Size = 1
    end
    object cdsGetReport43DrugallergyINFORMHOSP: TWideStringField
      FieldName = 'INFORMHOSP'
      Size = 5
    end
    object cdsGetReport43DrugallergyD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43DrugallergyList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DrugallergyList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43DrugallergyListAfterScroll
    Left = 330
    Top = 206
    object cdsGetReport43DrugallergyListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DrugallergyListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DrugallergyListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DrugallergyListDATERECORD: TDateField
      FieldName = 'DATERECORD'
    end
    object cdsGetReport43DrugallergyListDRUGALLERGY: TWideStringField
      FieldName = 'DRUGALLERGY'
      Size = 24
    end
    object cdsGetReport43DrugallergyListDNAME: TWideStringField
      FieldName = 'DNAME'
      Size = 255
    end
    object cdsGetReport43DrugallergyListTYPEDX: TWideStringField
      FieldName = 'TYPEDX'
      Size = 1
    end
    object cdsGetReport43DrugallergyListALEVEL: TWideStringField
      FieldName = 'ALEVEL'
      Size = 1
    end
    object cdsGetReport43DrugallergyListSYMPTOM: TWideStringField
      FieldName = 'SYMPTOM'
      Size = 2
    end
    object cdsGetReport43DrugallergyListINFORMANT: TWideStringField
      FieldName = 'INFORMANT'
      Size = 1
    end
    object cdsGetReport43DrugallergyListINFORMHOSP: TWideStringField
      FieldName = 'INFORMHOSP'
      Size = 5
    end
    object cdsGetReport43DrugallergyListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Accident: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Accident'
    RemoteServer = dspDataConnection
    Left = 1130
    Top = 518
    object cdsGetReport43AccidentREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43AccidentHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43AccidentPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43AccidentSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43AccidentDATETIME_SERV: TSQLTimeStampField
      FieldName = 'DATETIME_SERV'
    end
    object cdsGetReport43AccidentDATETIME_AE: TSQLTimeStampField
      FieldName = 'DATETIME_AE'
    end
    object cdsGetReport43AccidentAETYPE: TWideStringField
      FieldName = 'AETYPE'
      Size = 2
    end
    object cdsGetReport43AccidentAEPLACE: TWideStringField
      FieldName = 'AEPLACE'
      Size = 2
    end
    object cdsGetReport43AccidentTYPEIN_AE: TWideStringField
      FieldName = 'TYPEIN_AE'
      Size = 1
    end
    object cdsGetReport43AccidentTRAFFIC: TWideStringField
      FieldName = 'TRAFFIC'
      Size = 1
    end
    object cdsGetReport43AccidentVEHICLE: TWideStringField
      FieldName = 'VEHICLE'
      Size = 2
    end
    object cdsGetReport43AccidentALCOHOL: TWideStringField
      FieldName = 'ALCOHOL'
      Size = 1
    end
    object cdsGetReport43AccidentNACROTIC_DRUG: TWideStringField
      FieldName = 'NACROTIC_DRUG'
      Size = 1
    end
    object cdsGetReport43AccidentBELT: TWideStringField
      FieldName = 'BELT'
      Size = 1
    end
    object cdsGetReport43AccidentHELMET: TWideStringField
      FieldName = 'HELMET'
      Size = 1
    end
    object cdsGetReport43AccidentAIRWAY: TWideStringField
      FieldName = 'AIRWAY'
      Size = 1
    end
    object cdsGetReport43AccidentSTOPBLEED: TWideStringField
      FieldName = 'STOPBLEED'
      Size = 1
    end
    object cdsGetReport43AccidentSPLINT: TWideStringField
      FieldName = 'SPLINT'
      Size = 1
    end
    object cdsGetReport43AccidentFLUID: TWideStringField
      FieldName = 'FLUID'
      Size = 1
    end
    object cdsGetReport43AccidentURGENCY: TWideStringField
      FieldName = 'URGENCY'
      Size = 1
    end
    object cdsGetReport43AccidentCOMA_EYE: TWideStringField
      FieldName = 'COMA_EYE'
      Size = 1
    end
    object cdsGetReport43AccidentCOMA_SPEAK: TWideStringField
      FieldName = 'COMA_SPEAK'
      Size = 1
    end
    object cdsGetReport43AccidentCOMA_MOVEMENT: TWideStringField
      FieldName = 'COMA_MOVEMENT'
      Size = 1
    end
    object cdsGetReport43AccidentD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43AccidentList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43AccidentList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43AccidentListAfterScroll
    Left = 1130
    Top = 566
    object cdsGetReport43AccidentListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43AccidentListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43AccidentListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43AccidentListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43AccidentListDATETIME_SERV: TSQLTimeStampField
      FieldName = 'DATETIME_SERV'
    end
    object cdsGetReport43AccidentListDATETIME_AE: TSQLTimeStampField
      FieldName = 'DATETIME_AE'
    end
    object cdsGetReport43AccidentListAETYPE: TWideStringField
      FieldName = 'AETYPE'
      Size = 2
    end
    object cdsGetReport43AccidentListAEPLACE: TWideStringField
      FieldName = 'AEPLACE'
      Size = 2
    end
    object cdsGetReport43AccidentListTYPEIN_AE: TWideStringField
      FieldName = 'TYPEIN_AE'
      Size = 1
    end
    object cdsGetReport43AccidentListTRAFFIC: TWideStringField
      FieldName = 'TRAFFIC'
      Size = 1
    end
    object cdsGetReport43AccidentListVEHICLE: TWideStringField
      FieldName = 'VEHICLE'
      Size = 2
    end
    object cdsGetReport43AccidentListALCOHOL: TWideStringField
      FieldName = 'ALCOHOL'
      Size = 1
    end
    object cdsGetReport43AccidentListNACROTIC_DRUG: TWideStringField
      FieldName = 'NACROTIC_DRUG'
      Size = 1
    end
    object cdsGetReport43AccidentListBELT: TWideStringField
      FieldName = 'BELT'
      Size = 1
    end
    object cdsGetReport43AccidentListHELMET: TWideStringField
      FieldName = 'HELMET'
      Size = 1
    end
    object cdsGetReport43AccidentListAIRWAY: TWideStringField
      FieldName = 'AIRWAY'
      Size = 1
    end
    object cdsGetReport43AccidentListSTOPBLEED: TWideStringField
      FieldName = 'STOPBLEED'
      Size = 1
    end
    object cdsGetReport43AccidentListSPLINT: TWideStringField
      FieldName = 'SPLINT'
      Size = 1
    end
    object cdsGetReport43AccidentListFLUID: TWideStringField
      FieldName = 'FLUID'
      Size = 1
    end
    object cdsGetReport43AccidentListURGENCY: TWideStringField
      FieldName = 'URGENCY'
      Size = 1
    end
    object cdsGetReport43AccidentListCOMA_EYE: TWideStringField
      FieldName = 'COMA_EYE'
      Size = 1
    end
    object cdsGetReport43AccidentListCOMA_SPEAK: TWideStringField
      FieldName = 'COMA_SPEAK'
      Size = 1
    end
    object cdsGetReport43AccidentListCOMA_MOVEMENT: TWideStringField
      FieldName = 'COMA_MOVEMENT'
      Size = 1
    end
    object cdsGetReport43AccidentListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43ChargeOrd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ChargeOpd'
    RemoteServer = dspDataConnection
    Left = 1122
    Top = 294
  end
  object cdsGetReport43ChargeOrdList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ChargeOpdList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43ChargeOrdListAfterScroll
    Left = 1122
    Top = 342
  end
  object cdsGetReport43Admission: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Admission'
    RemoteServer = dspDataConnection
    Left = 1114
    Top = 406
  end
  object cdsGetReport43AdmissionList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43AdmissionList'
    RemoteServer = dspDataConnection
    Left = 1114
    Top = 454
  end
  object cdsGetReport43DiagnosisIpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DiagnosisIpd'
    RemoteServer = dspDataConnection
    Left = 978
    Top = 286
    object cdsGetReport43DiagnosisIpdREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DiagnosisIpdHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DiagnosisIpdPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DiagnosisIpdAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43DiagnosisIpdDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43DiagnosisIpdWARDDIAG: TWideStringField
      FieldName = 'WARDDIAG'
      Size = 5
    end
    object cdsGetReport43DiagnosisIpdDIAGTYPE: TWideStringField
      FieldName = 'DIAGTYPE'
      Size = 1
    end
    object cdsGetReport43DiagnosisIpdDIAGCODE: TWideStringField
      FieldName = 'DIAGCODE'
      Size = 6
    end
    object cdsGetReport43DiagnosisIpdPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DiagnosisIpdD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43DiagnosisIpdList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DiagnosisIpdList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43DiagnosisIpdListAfterScroll
    Left = 978
    Top = 310
    object cdsGetReport43DiagnosisIpdListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DiagnosisIpdListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DiagnosisIpdListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DiagnosisIpdListAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43DiagnosisIpdListDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43DiagnosisIpdListWARDDIAG: TWideStringField
      FieldName = 'WARDDIAG'
      Size = 5
    end
    object cdsGetReport43DiagnosisIpdListDIAGTYPE: TWideStringField
      FieldName = 'DIAGTYPE'
      Size = 1
    end
    object cdsGetReport43DiagnosisIpdListDIAGCODE: TWideStringField
      FieldName = 'DIAGCODE'
      Size = 6
    end
    object cdsGetReport43DiagnosisIpdListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DiagnosisIpdListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43ProcedureIpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ProcedureIpd'
    RemoteServer = dspDataConnection
    Left = 778
    Top = 478
    object cdsGetReport43ProcedureIpdREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43ProcedureIpdHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ProcedureIpdPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43ProcedureIpdAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43ProcedureIpdDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43ProcedureIpdWARDSTAY: TWideStringField
      FieldName = 'WARDSTAY'
      Size = 5
    end
    object cdsGetReport43ProcedureIpdPROCEDCODE: TWideStringField
      FieldName = 'PROCEDCODE'
      Size = 7
    end
    object cdsGetReport43ProcedureIpdTIMESTART: TSQLTimeStampField
      FieldName = 'TIMESTART'
    end
    object cdsGetReport43ProcedureIpdTIMEFINISH: TSQLTimeStampField
      FieldName = 'TIMEFINISH'
    end
    object cdsGetReport43ProcedureIpdSERVICEPRICE: TIntegerField
      FieldName = 'SERVICEPRICE'
    end
    object cdsGetReport43ProcedureIpdPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43ProcedureIpdD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43ProcedureIpdList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ProcedureIpdList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43ProcedureIpdListAfterScroll
    Left = 778
    Top = 510
    object cdsGetReport43ProcedureIpdListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43ProcedureIpdListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ProcedureIpdListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43ProcedureIpdListAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43ProcedureIpdListDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43ProcedureIpdListWARDSTAY: TWideStringField
      FieldName = 'WARDSTAY'
      Size = 5
    end
    object cdsGetReport43ProcedureIpdListPROCEDCODE: TWideStringField
      FieldName = 'PROCEDCODE'
      Size = 7
    end
    object cdsGetReport43ProcedureIpdListTIMESTART: TSQLTimeStampField
      FieldName = 'TIMESTART'
    end
    object cdsGetReport43ProcedureIpdListTIMEFINISH: TSQLTimeStampField
      FieldName = 'TIMEFINISH'
    end
    object cdsGetReport43ProcedureIpdListSERVICEPRICE: TIntegerField
      FieldName = 'SERVICEPRICE'
    end
    object cdsGetReport43ProcedureIpdListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43ProcedureIpdListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43DrugIpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DrugIpd'
    RemoteServer = dspDataConnection
    Left = 50
    Top = 590
    object cdsGetReport43DrugIpdREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DrugIpdORDER_NO: TWideStringField
      FieldName = 'ORDER_NO'
      Size = 10
    end
    object cdsGetReport43DrugIpdHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DrugIpdPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DrugIpdAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43DrugIpdDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43DrugIpdWARDSTAY: TWideStringField
      FieldName = 'WARDSTAY'
      Size = 5
    end
    object cdsGetReport43DrugIpdTYPEDRUG: TWideStringField
      FieldName = 'TYPEDRUG'
      Size = 1
    end
    object cdsGetReport43DrugIpdDIDSTD: TWideStringField
      FieldName = 'DIDSTD'
      Size = 24
    end
    object cdsGetReport43DrugIpdDNAME: TWideStringField
      FieldName = 'DNAME'
      Size = 255
    end
    object cdsGetReport43DrugIpdDATESTART: TDateField
      FieldName = 'DATESTART'
    end
    object cdsGetReport43DrugIpdDATEFINISH: TDateField
      FieldName = 'DATEFINISH'
    end
    object cdsGetReport43DrugIpdAMOUNT: TIntegerField
      FieldName = 'AMOUNT'
    end
    object cdsGetReport43DrugIpdUNIT: TWideStringField
      FieldName = 'UNIT'
      Size = 3
    end
    object cdsGetReport43DrugIpdUNIT_PACKING: TWideStringField
      FieldName = 'UNIT_PACKING'
    end
    object cdsGetReport43DrugIpdDRUGPRICE: TIntegerField
      FieldName = 'DRUGPRICE'
    end
    object cdsGetReport43DrugIpdDRUGCOST: TIntegerField
      FieldName = 'DRUGCOST'
    end
    object cdsGetReport43DrugIpdPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DrugIpdD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43DrugIpdList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DrugIpdList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43DrugIpdListAfterScroll
    Left = 186
    Top = 622
    object cdsGetReport43DrugIpdListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DrugIpdListORDER_NO: TWideStringField
      FieldName = 'ORDER_NO'
      Size = 10
    end
    object cdsGetReport43DrugIpdListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DrugIpdListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DrugIpdListAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43DrugIpdListDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43DrugIpdListWARDSTAY: TWideStringField
      FieldName = 'WARDSTAY'
      Size = 5
    end
    object cdsGetReport43DrugIpdListTYPEDRUG: TWideStringField
      FieldName = 'TYPEDRUG'
      Size = 1
    end
    object cdsGetReport43DrugIpdListDIDSTD: TWideStringField
      FieldName = 'DIDSTD'
      Size = 24
    end
    object cdsGetReport43DrugIpdListDNAME: TWideStringField
      FieldName = 'DNAME'
      Size = 255
    end
    object cdsGetReport43DrugIpdListDATESTART: TDateField
      FieldName = 'DATESTART'
    end
    object cdsGetReport43DrugIpdListDATEFINISH: TDateField
      FieldName = 'DATEFINISH'
    end
    object cdsGetReport43DrugIpdListAMOUNT: TIntegerField
      FieldName = 'AMOUNT'
    end
    object cdsGetReport43DrugIpdListUNIT: TWideStringField
      FieldName = 'UNIT'
      Size = 3
    end
    object cdsGetReport43DrugIpdListUNIT_PACKING: TWideStringField
      FieldName = 'UNIT_PACKING'
    end
    object cdsGetReport43DrugIpdListDRUGPRICE: TIntegerField
      FieldName = 'DRUGPRICE'
    end
    object cdsGetReport43DrugIpdListDRUGCOST: TIntegerField
      FieldName = 'DRUGCOST'
    end
    object cdsGetReport43DrugIpdListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DrugIpdListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43ChargeIpd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ChargeIpd'
    RemoteServer = dspDataConnection
    Left = 266
    Top = 550
    object cdsGetReport43ChargeIpdREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43ChargeIpdHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ChargeIpdPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43ChargeIpdAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43ChargeIpdDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43ChargeIpdWARDSTAY: TWideStringField
      FieldName = 'WARDSTAY'
      Size = 5
    end
    object cdsGetReport43ChargeIpdCHARGEITEM: TWideStringField
      FieldName = 'CHARGEITEM'
      Size = 2
    end
    object cdsGetReport43ChargeIpdCHARGELIST: TWideStringField
      FieldName = 'CHARGELIST'
      Size = 6
    end
    object cdsGetReport43ChargeIpdQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object cdsGetReport43ChargeIpdINSTYPE: TWideStringField
      FieldName = 'INSTYPE'
      Size = 4
    end
    object cdsGetReport43ChargeIpdCOST: TIntegerField
      FieldName = 'COST'
    end
    object cdsGetReport43ChargeIpdPRICE: TIntegerField
      FieldName = 'PRICE'
    end
    object cdsGetReport43ChargeIpdPAYPRICE: TIntegerField
      FieldName = 'PAYPRICE'
    end
    object cdsGetReport43ChargeIpdD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43ChargeIpdList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43ChargeIpdList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43ChargeIpdListAfterScroll
    Left = 290
    Top = 670
    object cdsGetReport43ChargeIpdListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43ChargeIpdListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ChargeIpdListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43ChargeIpdListAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43ChargeIpdListDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43ChargeIpdListWARDSTAY: TWideStringField
      FieldName = 'WARDSTAY'
      Size = 5
    end
    object cdsGetReport43ChargeIpdListCHARGEITEM: TWideStringField
      FieldName = 'CHARGEITEM'
      Size = 2
    end
    object cdsGetReport43ChargeIpdListCHARGELIST: TWideStringField
      FieldName = 'CHARGELIST'
      Size = 6
    end
    object cdsGetReport43ChargeIpdListQUANTITY: TIntegerField
      FieldName = 'QUANTITY'
    end
    object cdsGetReport43ChargeIpdListINSTYPE: TWideStringField
      FieldName = 'INSTYPE'
      Size = 4
    end
    object cdsGetReport43ChargeIpdListCOST: TIntegerField
      FieldName = 'COST'
    end
    object cdsGetReport43ChargeIpdListPRICE: TIntegerField
      FieldName = 'PRICE'
    end
    object cdsGetReport43ChargeIpdListPAYPRICE: TIntegerField
      FieldName = 'PAYPRICE'
    end
    object cdsGetReport43ChargeIpdListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Surveillance: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Surveillance'
    RemoteServer = dspDataConnection
    Left = 370
    Top = 590
    object cdsGetReport43SurveillanceREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43SurveillanceHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43SurveillancePID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43SurveillanceSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43SurveillanceDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43SurveillanceAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43SurveillanceDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43SurveillanceSYNDROME: TWideStringField
      FieldName = 'SYNDROME'
      Size = 4
    end
    object cdsGetReport43SurveillanceDIAGCODE: TWideStringField
      FieldName = 'DIAGCODE'
      Size = 6
    end
    object cdsGetReport43SurveillanceCODE506: TWideStringField
      FieldName = 'CODE506'
      Size = 2
    end
    object cdsGetReport43SurveillanceDIAGCODELAST: TWideStringField
      FieldName = 'DIAGCODELAST'
      Size = 6
    end
    object cdsGetReport43SurveillanceCODE506LAST: TWideStringField
      FieldName = 'CODE506LAST'
      Size = 2
    end
    object cdsGetReport43SurveillanceILLDATE: TDateField
      FieldName = 'ILLDATE'
    end
    object cdsGetReport43SurveillanceILLHOUSE: TWideStringField
      FieldName = 'ILLHOUSE'
      Size = 75
    end
    object cdsGetReport43SurveillanceILLVILLAGE: TWideStringField
      FieldName = 'ILLVILLAGE'
      Size = 2
    end
    object cdsGetReport43SurveillanceILLTAMBON: TWideStringField
      FieldName = 'ILLTAMBON'
      Size = 2
    end
    object cdsGetReport43SurveillanceILLAMPUR: TWideStringField
      FieldName = 'ILLAMPUR'
      Size = 2
    end
    object cdsGetReport43SurveillanceILLCHANGWAT: TWideStringField
      FieldName = 'ILLCHANGWAT'
      Size = 2
    end
    object cdsGetReport43SurveillanceLATITUDE: TIntegerField
      FieldName = 'LATITUDE'
    end
    object cdsGetReport43SurveillanceLONGITUDE: TIntegerField
      FieldName = 'LONGITUDE'
    end
    object cdsGetReport43SurveillancePTSTATUS: TWideStringField
      FieldName = 'PTSTATUS'
      Size = 1
    end
    object cdsGetReport43SurveillanceDATE_DEATH: TDateField
      FieldName = 'DATE_DEATH'
    end
    object cdsGetReport43SurveillanceCOMPLICATION: TWideStringField
      FieldName = 'COMPLICATION'
      Size = 3
    end
    object cdsGetReport43SurveillanceORGANISM: TWideStringField
      FieldName = 'ORGANISM'
      Size = 4
    end
    object cdsGetReport43SurveillancePROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43SurveillanceD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43SurveillanceList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43SurveillanceList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43SurveillanceListAfterScroll
    Left = 450
    Top = 670
    object cdsGetReport43SurveillanceListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43SurveillanceListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43SurveillanceListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43SurveillanceListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43SurveillanceListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43SurveillanceListAN: TWideStringField
      FieldName = 'AN'
      Size = 9
    end
    object cdsGetReport43SurveillanceListDATETIME_ADMIT: TSQLTimeStampField
      FieldName = 'DATETIME_ADMIT'
    end
    object cdsGetReport43SurveillanceListSYNDROME: TWideStringField
      FieldName = 'SYNDROME'
      Size = 4
    end
    object cdsGetReport43SurveillanceListDIAGCODE: TWideStringField
      FieldName = 'DIAGCODE'
      Size = 6
    end
    object cdsGetReport43SurveillanceListCODE506: TWideStringField
      FieldName = 'CODE506'
      Size = 2
    end
    object cdsGetReport43SurveillanceListDIAGCODELAST: TWideStringField
      FieldName = 'DIAGCODELAST'
      Size = 6
    end
    object cdsGetReport43SurveillanceListCODE506LAST: TWideStringField
      FieldName = 'CODE506LAST'
      Size = 2
    end
    object cdsGetReport43SurveillanceListILLDATE: TDateField
      FieldName = 'ILLDATE'
    end
    object cdsGetReport43SurveillanceListILLHOUSE: TWideStringField
      FieldName = 'ILLHOUSE'
      Size = 75
    end
    object cdsGetReport43SurveillanceListILLVILLAGE: TWideStringField
      FieldName = 'ILLVILLAGE'
      Size = 2
    end
    object cdsGetReport43SurveillanceListILLTAMBON: TWideStringField
      FieldName = 'ILLTAMBON'
      Size = 2
    end
    object cdsGetReport43SurveillanceListILLAMPUR: TWideStringField
      FieldName = 'ILLAMPUR'
      Size = 2
    end
    object cdsGetReport43SurveillanceListILLCHANGWAT: TWideStringField
      FieldName = 'ILLCHANGWAT'
      Size = 2
    end
    object cdsGetReport43SurveillanceListLATITUDE: TIntegerField
      FieldName = 'LATITUDE'
    end
    object cdsGetReport43SurveillanceListLONGITUDE: TIntegerField
      FieldName = 'LONGITUDE'
    end
    object cdsGetReport43SurveillanceListPTSTATUS: TWideStringField
      FieldName = 'PTSTATUS'
      Size = 1
    end
    object cdsGetReport43SurveillanceListDATE_DEATH: TDateField
      FieldName = 'DATE_DEATH'
    end
    object cdsGetReport43SurveillanceListCOMPLICATION: TWideStringField
      FieldName = 'COMPLICATION'
      Size = 3
    end
    object cdsGetReport43SurveillanceListORGANISM: TWideStringField
      FieldName = 'ORGANISM'
      Size = 4
    end
    object cdsGetReport43SurveillanceListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43SurveillanceListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Newborn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Newborn'
    RemoteServer = dspDataConnection
    Left = 442
    Top = 134
    object cdsGetReport43NewbornREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43NewbornHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43NewbornPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43NewbornMPID: TWideStringField
      FieldName = 'MPID'
      Size = 15
    end
    object cdsGetReport43NewbornGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43NewbornGA: TWideStringField
      FieldName = 'GA'
      Size = 2
    end
    object cdsGetReport43NewbornBDATE: TDateField
      FieldName = 'BDATE'
    end
    object cdsGetReport43NewbornBTIME: TTimeField
      FieldName = 'BTIME'
    end
    object cdsGetReport43NewbornBPLACE: TWideStringField
      FieldName = 'BPLACE'
      Size = 1
    end
    object cdsGetReport43NewbornBHOSP: TWideStringField
      FieldName = 'BHOSP'
      Size = 5
    end
    object cdsGetReport43NewbornBIRTHNO: TWideStringField
      FieldName = 'BIRTHNO'
      Size = 1
    end
    object cdsGetReport43NewbornBTYPE: TWideStringField
      FieldName = 'BTYPE'
      Size = 1
    end
    object cdsGetReport43NewbornBDOCTOR: TWideStringField
      FieldName = 'BDOCTOR'
      Size = 1
    end
    object cdsGetReport43NewbornBWEIGHT: TIntegerField
      FieldName = 'BWEIGHT'
    end
    object cdsGetReport43NewbornASPHYXIA: TWideStringField
      FieldName = 'ASPHYXIA'
      Size = 1
    end
    object cdsGetReport43NewbornVITK: TWideStringField
      FieldName = 'VITK'
      Size = 1
    end
    object cdsGetReport43NewbornTSH: TWideStringField
      FieldName = 'TSH'
      Size = 1
    end
    object cdsGetReport43NewbornTSHRESULT: TIntegerField
      FieldName = 'TSHRESULT'
    end
    object cdsGetReport43NewbornD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43NewbornList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43NewbornList'
    RemoteServer = dspDataConnection
    BeforePost = cdsGetReport43NewbornListBeforePost
    AfterScroll = cdsGetReport43NewbornListAfterScroll
    Left = 530
    Top = 118
    object cdsGetReport43NewbornListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43NewbornListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43NewbornListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43NewbornListMPID: TWideStringField
      FieldName = 'MPID'
      Size = 15
    end
    object cdsGetReport43NewbornListGRAVIDA: TWideStringField
      FieldName = 'GRAVIDA'
      Size = 2
    end
    object cdsGetReport43NewbornListGA: TWideStringField
      FieldName = 'GA'
      Size = 2
    end
    object cdsGetReport43NewbornListBDATE: TDateField
      FieldName = 'BDATE'
    end
    object cdsGetReport43NewbornListBTIME: TTimeField
      FieldName = 'BTIME'
    end
    object cdsGetReport43NewbornListBPLACE: TWideStringField
      FieldName = 'BPLACE'
      Size = 1
    end
    object cdsGetReport43NewbornListBHOSP: TWideStringField
      FieldName = 'BHOSP'
      Size = 5
    end
    object cdsGetReport43NewbornListBIRTHNO: TWideStringField
      FieldName = 'BIRTHNO'
      Size = 1
    end
    object cdsGetReport43NewbornListBTYPE: TWideStringField
      FieldName = 'BTYPE'
      Size = 1
    end
    object cdsGetReport43NewbornListBDOCTOR: TWideStringField
      FieldName = 'BDOCTOR'
      Size = 1
    end
    object cdsGetReport43NewbornListBWEIGHT: TIntegerField
      FieldName = 'BWEIGHT'
    end
    object cdsGetReport43NewbornListASPHYXIA: TWideStringField
      FieldName = 'ASPHYXIA'
      Size = 1
    end
    object cdsGetReport43NewbornListVITK: TWideStringField
      FieldName = 'VITK'
      Size = 1
    end
    object cdsGetReport43NewbornListTSH: TWideStringField
      FieldName = 'TSH'
      Size = 1
    end
    object cdsGetReport43NewbornListTSHRESULT: TIntegerField
      FieldName = 'TSHRESULT'
    end
    object cdsGetReport43NewbornListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43NewbornCare: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43NewBornCare'
    RemoteServer = dspDataConnection
    Left = 386
    Top = 222
    object cdsGetReport43NewbornCareREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43NewbornCareHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43NewbornCarePID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43NewbornCareSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43NewbornCareBDATE: TDateField
      FieldName = 'BDATE'
    end
    object cdsGetReport43NewbornCareBCARE: TDateField
      FieldName = 'BCARE'
    end
    object cdsGetReport43NewbornCareBCPLACE: TWideStringField
      FieldName = 'BCPLACE'
      Size = 5
    end
    object cdsGetReport43NewbornCareBCARERESULT: TWideStringField
      FieldName = 'BCARERESULT'
      Size = 1
    end
    object cdsGetReport43NewbornCareFOOD: TWideStringField
      FieldName = 'FOOD'
      Size = 1
    end
    object cdsGetReport43NewbornCarePROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43NewbornCareD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43NewbornCareList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43NewBornCareList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43NewbornCareListAfterScroll
    Left = 386
    Top = 254
    object cdsGetReport43NewbornCareListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43NewbornCareListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43NewbornCareListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43NewbornCareListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43NewbornCareListBDATE: TDateField
      FieldName = 'BDATE'
    end
    object cdsGetReport43NewbornCareListBCARE: TDateField
      FieldName = 'BCARE'
    end
    object cdsGetReport43NewbornCareListBCPLACE: TWideStringField
      FieldName = 'BCPLACE'
      Size = 5
    end
    object cdsGetReport43NewbornCareListBCARERESULT: TWideStringField
      FieldName = 'BCARERESULT'
      Size = 1
    end
    object cdsGetReport43NewbornCareListFOOD: TWideStringField
      FieldName = 'FOOD'
      Size = 1
    end
    object cdsGetReport43NewbornCareListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43NewbornCareListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Dental: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Dental'
    RemoteServer = dspDataConnection
    Left = 530
    Top = 190
    object cdsGetReport43DentalREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DentalHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DentalPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DentalSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43DentalDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43DentalDENTTYPE: TWideStringField
      FieldName = 'DENTTYPE'
      Size = 1
    end
    object cdsGetReport43DentalSERVPLACE: TWideStringField
      FieldName = 'SERVPLACE'
      Size = 1
    end
    object cdsGetReport43DentalPTEETH: TIntegerField
      FieldName = 'PTEETH'
    end
    object cdsGetReport43DentalPCARIES: TIntegerField
      FieldName = 'PCARIES'
    end
    object cdsGetReport43DentalPFILLING: TIntegerField
      FieldName = 'PFILLING'
    end
    object cdsGetReport43DentalPEXTRACT: TIntegerField
      FieldName = 'PEXTRACT'
    end
    object cdsGetReport43DentalDTEETH: TIntegerField
      FieldName = 'DTEETH'
    end
    object cdsGetReport43DentalDCARIES: TIntegerField
      FieldName = 'DCARIES'
    end
    object cdsGetReport43DentalDFILLING: TIntegerField
      FieldName = 'DFILLING'
    end
    object cdsGetReport43DentalDEXTRACT: TIntegerField
      FieldName = 'DEXTRACT'
    end
    object cdsGetReport43DentalNEED_FLUORIDE: TWideStringField
      FieldName = 'NEED_FLUORIDE'
      Size = 1
    end
    object cdsGetReport43DentalNEED_SCALING: TWideStringField
      FieldName = 'NEED_SCALING'
      Size = 1
    end
    object cdsGetReport43DentalNEED_SEALANT: TIntegerField
      FieldName = 'NEED_SEALANT'
    end
    object cdsGetReport43DentalNEED_PFILLING: TIntegerField
      FieldName = 'NEED_PFILLING'
    end
    object cdsGetReport43DentalNEED_DFILLING: TIntegerField
      FieldName = 'NEED_DFILLING'
    end
    object cdsGetReport43DentalNEED_PEXTRACT: TIntegerField
      FieldName = 'NEED_PEXTRACT'
    end
    object cdsGetReport43DentalNEED_DEXTRACT: TIntegerField
      FieldName = 'NEED_DEXTRACT'
    end
    object cdsGetReport43DentalNPROSTHESIS: TWideStringField
      FieldName = 'NPROSTHESIS'
      Size = 1
    end
    object cdsGetReport43DentalPERMANENT_PERMANENT: TIntegerField
      FieldName = 'PERMANENT_PERMANENT'
    end
    object cdsGetReport43DentalPERMANENT_PROSTHESIS: TIntegerField
      FieldName = 'PERMANENT_PROSTHESIS'
    end
    object cdsGetReport43DentalPROSTHESIS_PROSTHESIS: TIntegerField
      FieldName = 'PROSTHESIS_PROSTHESIS'
    end
    object cdsGetReport43DentalGUM: TWideStringField
      FieldName = 'GUM'
      Size = 6
    end
    object cdsGetReport43DentalSCHOOLTYPE: TWideStringField
      FieldName = 'SCHOOLTYPE'
      Size = 1
    end
    object cdsGetReport43DentalCLASS: TWideStringField
      FieldName = 'CLASS'
      Size = 1
    end
    object cdsGetReport43DentalPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DentalD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43DentalList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43DentalList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43DentalListAfterScroll
    Left = 530
    Top = 222
    object cdsGetReport43DentalListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43DentalListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43DentalListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43DentalListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43DentalListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43DentalListDENTTYPE: TWideStringField
      FieldName = 'DENTTYPE'
      Size = 1
    end
    object cdsGetReport43DentalListSERVPLACE: TWideStringField
      FieldName = 'SERVPLACE'
      Size = 1
    end
    object cdsGetReport43DentalListPTEETH: TIntegerField
      FieldName = 'PTEETH'
    end
    object cdsGetReport43DentalListPCARIES: TIntegerField
      FieldName = 'PCARIES'
    end
    object cdsGetReport43DentalListPFILLING: TIntegerField
      FieldName = 'PFILLING'
    end
    object cdsGetReport43DentalListPEXTRACT: TIntegerField
      FieldName = 'PEXTRACT'
    end
    object cdsGetReport43DentalListDTEETH: TIntegerField
      FieldName = 'DTEETH'
    end
    object cdsGetReport43DentalListDCARIES: TIntegerField
      FieldName = 'DCARIES'
    end
    object cdsGetReport43DentalListDFILLING: TIntegerField
      FieldName = 'DFILLING'
    end
    object cdsGetReport43DentalListDEXTRACT: TIntegerField
      FieldName = 'DEXTRACT'
    end
    object cdsGetReport43DentalListNEED_FLUORIDE: TWideStringField
      FieldName = 'NEED_FLUORIDE'
      Size = 1
    end
    object cdsGetReport43DentalListNEED_SCALING: TWideStringField
      FieldName = 'NEED_SCALING'
      Size = 1
    end
    object cdsGetReport43DentalListNEED_SEALANT: TIntegerField
      FieldName = 'NEED_SEALANT'
    end
    object cdsGetReport43DentalListNEED_PFILLING: TIntegerField
      FieldName = 'NEED_PFILLING'
    end
    object cdsGetReport43DentalListNEED_DFILLING: TIntegerField
      FieldName = 'NEED_DFILLING'
    end
    object cdsGetReport43DentalListNEED_PEXTRACT: TIntegerField
      FieldName = 'NEED_PEXTRACT'
    end
    object cdsGetReport43DentalListNEED_DEXTRACT: TIntegerField
      FieldName = 'NEED_DEXTRACT'
    end
    object cdsGetReport43DentalListNPROSTHESIS: TWideStringField
      FieldName = 'NPROSTHESIS'
      Size = 1
    end
    object cdsGetReport43DentalListPERMANENT_PERMANENT: TIntegerField
      FieldName = 'PERMANENT_PERMANENT'
    end
    object cdsGetReport43DentalListPERMANENT_PROSTHESIS: TIntegerField
      FieldName = 'PERMANENT_PROSTHESIS'
    end
    object cdsGetReport43DentalListPROSTHESIS_PROSTHESIS: TIntegerField
      FieldName = 'PROSTHESIS_PROSTHESIS'
    end
    object cdsGetReport43DentalListGUM: TWideStringField
      FieldName = 'GUM'
      Size = 6
    end
    object cdsGetReport43DentalListSCHOOLTYPE: TWideStringField
      FieldName = 'SCHOOLTYPE'
      Size = 1
    end
    object cdsGetReport43DentalListCLASS: TWideStringField
      FieldName = 'CLASS'
      Size = 1
    end
    object cdsGetReport43DentalListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43DentalListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43Ncdscreen: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Ncdscreen'
    RemoteServer = dspDataConnection
    Left = 594
    Top = 358
    object cdsGetReport43NcdscreenREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43NcdscreenHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43NcdscreenPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43NcdscreenSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43NcdscreenDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43NcdscreenSERVPLACE: TWideStringField
      FieldName = 'SERVPLACE'
      Size = 1
    end
    object cdsGetReport43NcdscreenSMOKE: TWideStringField
      FieldName = 'SMOKE'
      Size = 1
    end
    object cdsGetReport43NcdscreenALCOHOL: TWideStringField
      FieldName = 'ALCOHOL'
      Size = 1
    end
    object cdsGetReport43NcdscreenDMFAMILY: TWideStringField
      FieldName = 'DMFAMILY'
      Size = 1
    end
    object cdsGetReport43NcdscreenHTFAMILY: TWideStringField
      FieldName = 'HTFAMILY'
      Size = 1
    end
    object cdsGetReport43NcdscreenWEIGHT: TIntegerField
      FieldName = 'WEIGHT'
    end
    object cdsGetReport43NcdscreenHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
    end
    object cdsGetReport43NcdscreenWAIST_CM: TIntegerField
      FieldName = 'WAIST_CM'
    end
    object cdsGetReport43NcdscreenSBP_1: TIntegerField
      FieldName = 'SBP_1'
    end
    object cdsGetReport43NcdscreenDBP_1: TIntegerField
      FieldName = 'DBP_1'
    end
    object cdsGetReport43NcdscreenSBP_2: TIntegerField
      FieldName = 'SBP_2'
    end
    object cdsGetReport43NcdscreenDBP_2: TIntegerField
      FieldName = 'DBP_2'
    end
    object cdsGetReport43NcdscreenBSLEVEL: TIntegerField
      FieldName = 'BSLEVEL'
    end
    object cdsGetReport43NcdscreenBSTEST: TWideStringField
      FieldName = 'BSTEST'
      Size = 1
    end
    object cdsGetReport43NcdscreenSCREENPLACE: TWideStringField
      FieldName = 'SCREENPLACE'
      Size = 5
    end
    object cdsGetReport43NcdscreenPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43NcdscreenD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43NcdscreenList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43NcdscreenList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43NcdscreenListAfterScroll
    Left = 474
    Top = 342
    object cdsGetReport43NcdscreenListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43NcdscreenListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43NcdscreenListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43NcdscreenListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43NcdscreenListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43NcdscreenListSERVPLACE: TWideStringField
      FieldName = 'SERVPLACE'
      Size = 1
    end
    object cdsGetReport43NcdscreenListSMOKE: TWideStringField
      FieldName = 'SMOKE'
      Size = 1
    end
    object cdsGetReport43NcdscreenListALCOHOL: TWideStringField
      FieldName = 'ALCOHOL'
      Size = 1
    end
    object cdsGetReport43NcdscreenListDMFAMILY: TWideStringField
      FieldName = 'DMFAMILY'
      Size = 1
    end
    object cdsGetReport43NcdscreenListHTFAMILY: TWideStringField
      FieldName = 'HTFAMILY'
      Size = 1
    end
    object cdsGetReport43NcdscreenListWEIGHT: TIntegerField
      FieldName = 'WEIGHT'
    end
    object cdsGetReport43NcdscreenListHEIGHT: TIntegerField
      FieldName = 'HEIGHT'
    end
    object cdsGetReport43NcdscreenListWAIST_CM: TIntegerField
      FieldName = 'WAIST_CM'
    end
    object cdsGetReport43NcdscreenListSBP_1: TIntegerField
      FieldName = 'SBP_1'
    end
    object cdsGetReport43NcdscreenListDBP_1: TIntegerField
      FieldName = 'DBP_1'
    end
    object cdsGetReport43NcdscreenListSBP_2: TIntegerField
      FieldName = 'SBP_2'
    end
    object cdsGetReport43NcdscreenListDBP_2: TIntegerField
      FieldName = 'DBP_2'
    end
    object cdsGetReport43NcdscreenListBSLEVEL: TIntegerField
      FieldName = 'BSLEVEL'
    end
    object cdsGetReport43NcdscreenListBSTEST: TWideStringField
      FieldName = 'BSTEST'
      Size = 1
    end
    object cdsGetReport43NcdscreenListSCREENPLACE: TWideStringField
      FieldName = 'SCREENPLACE'
      Size = 5
    end
    object cdsGetReport43NcdscreenListPROVIDER: TWideStringField
      FieldName = 'PROVIDER'
      Size = 15
    end
    object cdsGetReport43NcdscreenListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43LabFu: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43LabFu'
    RemoteServer = dspDataConnection
    Left = 810
    Top = 62
    object cdsGetReport43LabFuREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43LabFuHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43LabFuPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43LabFuSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43LabFuDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43LabFuLABTEST: TWideStringField
      FieldName = 'LABTEST'
      Size = 7
    end
    object cdsGetReport43LabFuLABRESULT: TIntegerField
      FieldName = 'LABRESULT'
    end
    object cdsGetReport43LabFuD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43LabFuList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43LabFuList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43LabFuListAfterScroll
    Left = 810
    Top = 94
    object cdsGetReport43LabFuListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43LabFuListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43LabFuListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43LabFuListSEQ: TIntegerField
      FieldName = 'SEQ'
    end
    object cdsGetReport43LabFuListDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43LabFuListLABTEST: TWideStringField
      FieldName = 'LABTEST'
      Size = 7
    end
    object cdsGetReport43LabFuListLABRESULT: TIntegerField
      FieldName = 'LABRESULT'
    end
    object cdsGetReport43LabFuListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsKeywords: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspKeywords'
    RemoteServer = dspDataConnection
    Left = 1146
    Top = 630
    object cdsKeywordsID: TIntegerField
      FieldName = 'ID'
    end
    object cdsKeywordsWideStringField43FILE_TABLE: TWideStringField
      FieldName = '43FILE_TABLE'
      Size = 50
    end
    object cdsKeywordsWideStringField43FILE_FILED: TWideStringField
      FieldName = '43FILE_FILED'
      Size = 50
    end
    object cdsKeywordsWideStringField43FILE_CODE: TWideStringField
      FieldName = '43FILE_CODE'
      Size = 50
    end
    object cdsKeywordsNAME1: TWideStringField
      FieldName = 'NAME1'
      Size = 1000
    end
    object cdsKeywordsNAME2: TWideStringField
      FieldName = 'NAME2'
      Size = 1000
    end
    object cdsKeywordsNAME3: TWideStringField
      FieldName = 'NAME3'
      Size = 1000
    end
    object cdsKeywordsNAME4: TWideStringField
      FieldName = 'NAME4'
      Size = 1000
    end
    object cdsKeywordsNAME5: TWideStringField
      FieldName = 'NAME5'
      Size = 1000
    end
    object cdsKeywordsDETAIL1: TWideStringField
      FieldName = 'DETAIL1'
      Size = 1000
    end
    object cdsKeywordsDETAIL2: TWideStringField
      FieldName = 'DETAIL2'
      Size = 1000
    end
    object cdsKeywordsTYPE: TWideStringField
      FieldName = 'TYPE'
      Size = 5
    end
    object cdsKeywordsENTRYDATE: TSQLTimeStampField
      FieldName = 'ENTRYDATE'
    end
    object cdsKeywordsUSER_ENTRY: TWideStringField
      FieldName = 'USER_ENTRY'
      Size = 10
    end
    object cdsKeywordsCONTROL: TIntegerField
      FieldName = 'CONTROL'
    end
    object cdsKeywordsUSER_CANCEL: TWideStringField
      FieldName = 'USER_CANCEL'
      Size = 10
    end
    object cdsKeywordsCANCELDATE: TSQLTimeStampField
      FieldName = 'CANCELDATE'
    end
  end
  object cdsGetHospName: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetHospName'
    RemoteServer = dspDataConnection
    Left = 594
    Top = 704
    object cdsGetHospNameID: TIntegerField
      FieldName = 'ID'
    end
    object cdsGetHospNameCODE1: TWideStringField
      FieldName = 'CODE1'
      Size = 50
    end
    object cdsGetHospNameCODE2: TWideStringField
      FieldName = 'CODE2'
      Size = 50
    end
    object cdsGetHospNameCODE3: TWideStringField
      FieldName = 'CODE3'
      Size = 50
    end
    object cdsGetHospNameNAME1: TWideStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object cdsGetHospNameNAME2: TWideStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object cdsGetHospNameADDRESS: TWideStringField
      FieldName = 'ADDRESS'
      Size = 50
    end
    object cdsGetHospNameMOO: TIntegerField
      FieldName = 'MOO'
    end
    object cdsGetHospNameVILLAGE: TWideStringField
      FieldName = 'VILLAGE'
      Size = 50
    end
    object cdsGetHospNameROAD: TWideStringField
      FieldName = 'ROAD'
      Size = 50
    end
    object cdsGetHospNameSOI: TWideStringField
      FieldName = 'SOI'
      Size = 50
    end
    object cdsGetHospNamePRV: TWideStringField
      FieldName = 'PRV'
      Size = 50
    end
    object cdsGetHospNameAMP: TWideStringField
      FieldName = 'AMP'
      Size = 50
    end
    object cdsGetHospNameTUMBON: TWideStringField
      FieldName = 'TUMBON'
      Size = 50
    end
    object cdsGetHospNamePOSTCODE: TIntegerField
      FieldName = 'POSTCODE'
    end
    object cdsGetHospNameTEL: TWideStringField
      FieldName = 'TEL'
      Size = 50
    end
    object cdsGetHospNameFAX: TWideStringField
      FieldName = 'FAX'
      Size = 50
    end
    object cdsGetHospNameBED_NUM: TIntegerField
      FieldName = 'BED_NUM'
    end
    object cdsGetHospNameUNDER: TWideStringField
      FieldName = 'UNDER'
      Size = 10
    end
    object cdsGetHospNameTYPE: TWideStringField
      FieldName = 'TYPE'
      Size = 10
    end
    object cdsGetHospNameTYPE_S: TWideStringField
      FieldName = 'TYPE_S'
      Size = 2
    end
    object cdsGetHospNameDEGREE: TIntegerField
      FieldName = 'DEGREE'
    end
    object cdsGetHospNameSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object cdsGetHospNameENTRYDATE: TSQLTimeStampField
      FieldName = 'ENTRYDATE'
    end
    object cdsGetHospNameUSER_ENTRY: TWideStringField
      FieldName = 'USER_ENTRY'
      Size = 10
    end
    object cdsGetHospNameCONTROL: TIntegerField
      FieldName = 'CONTROL'
    end
    object cdsGetHospNameCANCELDATE: TSQLTimeStampField
      FieldName = 'CANCELDATE'
    end
    object cdsGetHospNameUSER_CANCEL: TWideStringField
      FieldName = 'USER_CANCEL'
      Size = 10
    end
  end
  object cdsGetIcd10List: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetIcd10List'
    RemoteServer = dspDataConnection
    Left = 738
    Top = 680
    object cdsGetIcd10ListID: TIntegerField
      FieldName = 'ID'
    end
    object cdsGetIcd10ListCODE1: TWideStringField
      FieldName = 'CODE1'
      Size = 10
    end
    object cdsGetIcd10ListCODE2: TWideStringField
      FieldName = 'CODE2'
      Size = 10
    end
    object cdsGetIcd10ListNAME1: TWideStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object cdsGetIcd10ListNAME2: TWideStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object cdsGetIcd10ListBRANCH: TWideStringField
      FieldName = 'BRANCH'
      Size = 10
    end
    object cdsGetIcd10ListGROUP: TWideStringField
      FieldName = 'GROUP'
      Size = 10
    end
    object cdsGetIcd10ListENTRYDATE: TSQLTimeStampField
      FieldName = 'ENTRYDATE'
    end
    object cdsGetIcd10ListUSER_ENTRY: TWideStringField
      FieldName = 'USER_ENTRY'
      Size = 10
    end
    object cdsGetIcd10ListCONTROL: TIntegerField
      FieldName = 'CONTROL'
    end
    object cdsGetIcd10ListCANCELDATE: TSQLTimeStampField
      FieldName = 'CANCELDATE'
    end
    object cdsGetIcd10ListUSER_CANCEL: TWideStringField
      FieldName = 'USER_CANCEL'
      Size = 10
    end
  end
  object cdsGetIcd9List: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetIcd9List'
    RemoteServer = dspDataConnection
    Left = 1018
    Top = 670
    object cdsGetIcd9ListID: TIntegerField
      FieldName = 'ID'
    end
    object cdsGetIcd9ListCODE1: TWideStringField
      FieldName = 'CODE1'
      Size = 10
    end
    object cdsGetIcd9ListCODE2: TWideStringField
      FieldName = 'CODE2'
      Size = 10
    end
    object cdsGetIcd9ListNAME1: TWideStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object cdsGetIcd9ListNAME2: TWideStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object cdsGetIcd9ListSECTION: TWideStringField
      FieldName = 'SECTION'
      Size = 10
    end
    object cdsGetIcd9ListS_SECTION: TWideStringField
      FieldName = 'S_SECTION'
      Size = 10
    end
    object cdsGetIcd9ListENTRYDATE: TSQLTimeStampField
      FieldName = 'ENTRYDATE'
    end
    object cdsGetIcd9ListUSER_ENTRY: TWideStringField
      FieldName = 'USER_ENTRY'
      Size = 10
    end
    object cdsGetIcd9ListCONTROL: TIntegerField
      FieldName = 'CONTROL'
    end
    object cdsGetIcd9ListCANCELDATE: TSQLTimeStampField
      FieldName = 'CANCELDATE'
    end
    object cdsGetIcd9ListUSER_CANCEL: TWideStringField
      FieldName = 'USER_CANCEL'
      Size = 10
    end
  end
  object cdsGetReport43Address: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Address'
    RemoteServer = dspDataConnection
    Left = 674
    Top = 110
    object cdsGetReport43AddressREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43AddressHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43AddressPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43AddressADDRESSTYPE: TWideStringField
      FieldName = 'ADDRESSTYPE'
      Size = 1
    end
    object cdsGetReport43AddressHOUSE_ID: TWideStringField
      FieldName = 'HOUSE_ID'
      Size = 11
    end
    object cdsGetReport43AddressHOUSETYPE: TWideStringField
      FieldName = 'HOUSETYPE'
      Size = 1
    end
    object cdsGetReport43AddressROOMNO: TWideStringField
      FieldName = 'ROOMNO'
      Size = 10
    end
    object cdsGetReport43AddressCONDO: TWideStringField
      FieldName = 'CONDO'
      Size = 75
    end
    object cdsGetReport43AddressHOUSENO: TWideStringField
      FieldName = 'HOUSENO'
      Size = 75
    end
    object cdsGetReport43AddressSOISUB: TWideStringField
      FieldName = 'SOISUB'
      Size = 255
    end
    object cdsGetReport43AddressSOIMAIN: TWideStringField
      FieldName = 'SOIMAIN'
      Size = 255
    end
    object cdsGetReport43AddressROAD: TWideStringField
      FieldName = 'ROAD'
      Size = 255
    end
    object cdsGetReport43AddressVILLANAME: TWideStringField
      FieldName = 'VILLANAME'
      Size = 255
    end
    object cdsGetReport43AddressVILLAGE: TWideStringField
      FieldName = 'VILLAGE'
      Size = 2
    end
    object cdsGetReport43AddressTAMBON: TWideStringField
      FieldName = 'TAMBON'
      Size = 2
    end
    object cdsGetReport43AddressAMPUR: TWideStringField
      FieldName = 'AMPUR'
      Size = 2
    end
    object cdsGetReport43AddressCHANGWAT: TWideStringField
      FieldName = 'CHANGWAT'
      Size = 2
    end
    object cdsGetReport43AddressTELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Size = 15
    end
    object cdsGetReport43AddressMOBILE: TWideStringField
      FieldName = 'MOBILE'
      Size = 15
    end
    object cdsGetReport43AddressD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43AddressList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43AddressList'
    RemoteServer = dspDataConnection
    AfterScroll = cdsGetReport43AddressListAfterScroll
    Left = 674
    Top = 142
    object cdsGetReport43AddressListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43AddressListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43AddressListPID: TIntegerField
      FieldName = 'PID'
    end
    object cdsGetReport43AddressListADDRESSTYPE: TWideStringField
      FieldName = 'ADDRESSTYPE'
      Size = 1
    end
    object cdsGetReport43AddressListHOUSE_ID: TWideStringField
      FieldName = 'HOUSE_ID'
      Size = 11
    end
    object cdsGetReport43AddressListHOUSETYPE: TWideStringField
      FieldName = 'HOUSETYPE'
      Size = 1
    end
    object cdsGetReport43AddressListROOMNO: TWideStringField
      FieldName = 'ROOMNO'
      Size = 10
    end
    object cdsGetReport43AddressListCONDO: TWideStringField
      FieldName = 'CONDO'
      Size = 75
    end
    object cdsGetReport43AddressListHOUSENO: TWideStringField
      FieldName = 'HOUSENO'
      Size = 75
    end
    object cdsGetReport43AddressListSOISUB: TWideStringField
      FieldName = 'SOISUB'
      Size = 255
    end
    object cdsGetReport43AddressListSOIMAIN: TWideStringField
      FieldName = 'SOIMAIN'
      Size = 255
    end
    object cdsGetReport43AddressListROAD: TWideStringField
      FieldName = 'ROAD'
      Size = 255
    end
    object cdsGetReport43AddressListVILLANAME: TWideStringField
      FieldName = 'VILLANAME'
      Size = 255
    end
    object cdsGetReport43AddressListVILLAGE: TWideStringField
      FieldName = 'VILLAGE'
      Size = 2
    end
    object cdsGetReport43AddressListTAMBON: TWideStringField
      FieldName = 'TAMBON'
      Size = 2
    end
    object cdsGetReport43AddressListAMPUR: TWideStringField
      FieldName = 'AMPUR'
      Size = 2
    end
    object cdsGetReport43AddressListCHANGWAT: TWideStringField
      FieldName = 'CHANGWAT'
      Size = 2
    end
    object cdsGetReport43AddressListTELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Size = 15
    end
    object cdsGetReport43AddressListMOBILE: TWideStringField
      FieldName = 'MOBILE'
      Size = 15
    end
    object cdsGetReport43AddressListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetTumbonList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetTumbonList'
    RemoteServer = dspDataConnection
    Left = 850
    Top = 632
  end
  object cdsGetAmp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetAmp'
    RemoteServer = dspDataConnection
    Left = 922
    Top = 619
  end
  object cdsGetProvince: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetProvince'
    RemoteServer = dspDataConnection
    Left = 922
    Top = 672
  end
  object cdsGetTumbon: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetTumbon'
    RemoteServer = dspDataConnection
    Left = 1074
    Top = 630
  end
  object cdsGetIcd10: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetIcd10'
    RemoteServer = dspDataConnection
    Left = 938
    Top = 622
    object IntegerField1: TIntegerField
      FieldName = 'ID'
    end
    object WideStringField1: TWideStringField
      FieldName = 'CODE1'
      Size = 10
    end
    object WideStringField2: TWideStringField
      FieldName = 'CODE2'
      Size = 10
    end
    object WideStringField3: TWideStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object WideStringField4: TWideStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object WideStringField5: TWideStringField
      FieldName = 'BRANCH'
      Size = 10
    end
    object WideStringField6: TWideStringField
      FieldName = 'GROUP'
      Size = 10
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'ENTRYDATE'
    end
    object WideStringField7: TWideStringField
      FieldName = 'USER_ENTRY'
      Size = 10
    end
    object IntegerField2: TIntegerField
      FieldName = 'CONTROL'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'CANCELDATE'
    end
    object WideStringField8: TWideStringField
      FieldName = 'USER_CANCEL'
      Size = 10
    end
  end
  object cdsGetIcd9: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetIcd9'
    RemoteServer = dspDataConnection
    Left = 1010
    Top = 614
    object IntegerField3: TIntegerField
      FieldName = 'ID'
    end
    object WideStringField9: TWideStringField
      FieldName = 'CODE1'
      Size = 10
    end
    object WideStringField10: TWideStringField
      FieldName = 'CODE2'
      Size = 10
    end
    object WideStringField11: TWideStringField
      FieldName = 'NAME1'
      Size = 50
    end
    object WideStringField12: TWideStringField
      FieldName = 'NAME2'
      Size = 50
    end
    object WideStringField13: TWideStringField
      FieldName = 'SECTION'
      Size = 10
    end
    object WideStringField14: TWideStringField
      FieldName = 'S_SECTION'
      Size = 10
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'ENTRYDATE'
    end
    object WideStringField15: TWideStringField
      FieldName = 'USER_ENTRY'
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldName = 'CONTROL'
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'CANCELDATE'
    end
    object WideStringField16: TWideStringField
      FieldName = 'USER_CANCEL'
      Size = 10
    end
  end
  object cdsGetReport43Home: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Home'
    RemoteServer = dspDataConnection
    Left = 898
    Top = 166
    object cdsGetReport43HomeREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43HomeHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43HomeHID: TWideStringField
      FieldName = 'HID'
      Size = 14
    end
    object cdsGetReport43HomeHOUSE_ID: TWideStringField
      FieldName = 'HOUSE_ID'
      Size = 11
    end
    object cdsGetReport43HomeHOUSETYPE: TWideStringField
      FieldName = 'HOUSETYPE'
      Size = 1
    end
    object cdsGetReport43HomeROOMNO: TWideStringField
      FieldName = 'ROOMNO'
      Size = 10
    end
    object cdsGetReport43HomeCONDO: TWideStringField
      FieldName = 'CONDO'
      Size = 75
    end
    object cdsGetReport43HomeHOUSE: TWideStringField
      FieldName = 'HOUSE'
      Size = 75
    end
    object cdsGetReport43HomeSOISUB: TWideStringField
      FieldName = 'SOISUB'
      Size = 255
    end
    object cdsGetReport43HomeSOIMAIN: TWideStringField
      FieldName = 'SOIMAIN'
      Size = 255
    end
    object cdsGetReport43HomeROAD: TWideStringField
      FieldName = 'ROAD'
      Size = 255
    end
    object cdsGetReport43HomeVILLANAME: TWideStringField
      FieldName = 'VILLANAME'
      Size = 255
    end
    object cdsGetReport43HomeVILLAGE: TWideStringField
      FieldName = 'VILLAGE'
      Size = 2
    end
    object cdsGetReport43HomeTAMBON: TWideStringField
      FieldName = 'TAMBON'
      Size = 2
    end
    object cdsGetReport43HomeAMPUR: TWideStringField
      FieldName = 'AMPUR'
      Size = 2
    end
    object cdsGetReport43HomeCHANGWAT: TWideStringField
      FieldName = 'CHANGWAT'
      Size = 2
    end
    object cdsGetReport43HomeTELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Size = 15
    end
    object cdsGetReport43HomeLATITUDE: TIntegerField
      FieldName = 'LATITUDE'
    end
    object cdsGetReport43HomeLONGITUDE: TIntegerField
      FieldName = 'LONGITUDE'
    end
    object cdsGetReport43HomeNFAMILY: TWideStringField
      FieldName = 'NFAMILY'
      Size = 2
    end
    object cdsGetReport43HomeLOCATYPE: TWideStringField
      FieldName = 'LOCATYPE'
      Size = 1
    end
    object cdsGetReport43HomeVHVID: TWideStringField
      FieldName = 'VHVID'
      Size = 15
    end
    object cdsGetReport43HomeHEADID: TWideStringField
      FieldName = 'HEADID'
      Size = 15
    end
    object cdsGetReport43HomeTOILET: TWideStringField
      FieldName = 'TOILET'
      Size = 1
    end
    object cdsGetReport43HomeWATER: TWideStringField
      FieldName = 'WATER'
      Size = 1
    end
    object cdsGetReport43HomeWATERTYPE: TWideStringField
      FieldName = 'WATERTYPE'
      Size = 1
    end
    object cdsGetReport43HomeGARBAGE: TWideStringField
      FieldName = 'GARBAGE'
      Size = 1
    end
    object cdsGetReport43HomeHOUSING: TWideStringField
      FieldName = 'HOUSING'
      Size = 1
    end
    object cdsGetReport43HomeDURABILITY: TWideStringField
      FieldName = 'DURABILITY'
      Size = 1
    end
    object cdsGetReport43HomeCLEANLINESS: TWideStringField
      FieldName = 'CLEANLINESS'
      Size = 1
    end
    object cdsGetReport43HomeVENTILATION: TWideStringField
      FieldName = 'VENTILATION'
      Size = 1
    end
    object cdsGetReport43HomeLIGHT: TWideStringField
      FieldName = 'LIGHT'
      Size = 1
    end
    object cdsGetReport43HomeWATERTM: TWideStringField
      FieldName = 'WATERTM'
      Size = 1
    end
    object cdsGetReport43HomeMFOOD: TWideStringField
      FieldName = 'MFOOD'
      Size = 1
    end
    object cdsGetReport43HomeBCONTROL: TWideStringField
      FieldName = 'BCONTROL'
      Size = 1
    end
    object cdsGetReport43HomeACONTROL: TWideStringField
      FieldName = 'ACONTROL'
      Size = 1
    end
    object cdsGetReport43HomeCHEMICAL: TWideStringField
      FieldName = 'CHEMICAL'
      Size = 1
    end
    object cdsGetReport43HomeOUTDATE: TDateField
      FieldName = 'OUTDATE'
    end
    object cdsGetReport43HomeD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43HomeList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43HomeList'
    RemoteServer = dspDataConnection
    Left = 898
    Top = 198
    object cdsGetReport43HomeListREPORTID: TIntegerField
      FieldName = 'REPORTID'
    end
    object cdsGetReport43HomeListHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43HomeListHID: TWideStringField
      FieldName = 'HID'
      Size = 14
    end
    object cdsGetReport43HomeListHOUSE_ID: TWideStringField
      FieldName = 'HOUSE_ID'
      Size = 11
    end
    object cdsGetReport43HomeListHOUSETYPE: TWideStringField
      FieldName = 'HOUSETYPE'
      Size = 1
    end
    object cdsGetReport43HomeListROOMNO: TWideStringField
      FieldName = 'ROOMNO'
      Size = 10
    end
    object cdsGetReport43HomeListCONDO: TWideStringField
      FieldName = 'CONDO'
      Size = 75
    end
    object cdsGetReport43HomeListHOUSE: TWideStringField
      FieldName = 'HOUSE'
      Size = 75
    end
    object cdsGetReport43HomeListSOISUB: TWideStringField
      FieldName = 'SOISUB'
      Size = 255
    end
    object cdsGetReport43HomeListSOIMAIN: TWideStringField
      FieldName = 'SOIMAIN'
      Size = 255
    end
    object cdsGetReport43HomeListROAD: TWideStringField
      FieldName = 'ROAD'
      Size = 255
    end
    object cdsGetReport43HomeListVILLANAME: TWideStringField
      FieldName = 'VILLANAME'
      Size = 255
    end
    object cdsGetReport43HomeListVILLAGE: TWideStringField
      FieldName = 'VILLAGE'
      Size = 2
    end
    object cdsGetReport43HomeListTAMBON: TWideStringField
      FieldName = 'TAMBON'
      Size = 2
    end
    object cdsGetReport43HomeListAMPUR: TWideStringField
      FieldName = 'AMPUR'
      Size = 2
    end
    object cdsGetReport43HomeListCHANGWAT: TWideStringField
      FieldName = 'CHANGWAT'
      Size = 2
    end
    object cdsGetReport43HomeListTELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Size = 15
    end
    object cdsGetReport43HomeListLATITUDE: TIntegerField
      FieldName = 'LATITUDE'
    end
    object cdsGetReport43HomeListLONGITUDE: TIntegerField
      FieldName = 'LONGITUDE'
    end
    object cdsGetReport43HomeListNFAMILY: TWideStringField
      FieldName = 'NFAMILY'
      Size = 2
    end
    object cdsGetReport43HomeListLOCATYPE: TWideStringField
      FieldName = 'LOCATYPE'
      Size = 1
    end
    object cdsGetReport43HomeListVHVID: TWideStringField
      FieldName = 'VHVID'
      Size = 15
    end
    object cdsGetReport43HomeListHEADID: TWideStringField
      FieldName = 'HEADID'
      Size = 15
    end
    object cdsGetReport43HomeListTOILET: TWideStringField
      FieldName = 'TOILET'
      Size = 1
    end
    object cdsGetReport43HomeListWATER: TWideStringField
      FieldName = 'WATER'
      Size = 1
    end
    object cdsGetReport43HomeListWATERTYPE: TWideStringField
      FieldName = 'WATERTYPE'
      Size = 1
    end
    object cdsGetReport43HomeListGARBAGE: TWideStringField
      FieldName = 'GARBAGE'
      Size = 1
    end
    object cdsGetReport43HomeListHOUSING: TWideStringField
      FieldName = 'HOUSING'
      Size = 1
    end
    object cdsGetReport43HomeListDURABILITY: TWideStringField
      FieldName = 'DURABILITY'
      Size = 1
    end
    object cdsGetReport43HomeListCLEANLINESS: TWideStringField
      FieldName = 'CLEANLINESS'
      Size = 1
    end
    object cdsGetReport43HomeListVENTILATION: TWideStringField
      FieldName = 'VENTILATION'
      Size = 1
    end
    object cdsGetReport43HomeListLIGHT: TWideStringField
      FieldName = 'LIGHT'
      Size = 1
    end
    object cdsGetReport43HomeListWATERTM: TWideStringField
      FieldName = 'WATERTM'
      Size = 1
    end
    object cdsGetReport43HomeListMFOOD: TWideStringField
      FieldName = 'MFOOD'
      Size = 1
    end
    object cdsGetReport43HomeListBCONTROL: TWideStringField
      FieldName = 'BCONTROL'
      Size = 1
    end
    object cdsGetReport43HomeListACONTROL: TWideStringField
      FieldName = 'ACONTROL'
      Size = 1
    end
    object cdsGetReport43HomeListCHEMICAL: TWideStringField
      FieldName = 'CHEMICAL'
      Size = 1
    end
    object cdsGetReport43HomeListOUTDATE: TDateField
      FieldName = 'OUTDATE'
    end
    object cdsGetReport43HomeListD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object cdsGetReport43AddressType1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43AddressType1'
    RemoteServer = dspDataConnection
    OnNewRecord = cdsGetReport43AddressType1NewRecord
    Left = 602
    Top = 46
  end
  object cdsGetReport43AddressType2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43AddressType2'
    RemoteServer = dspDataConnection
    OnNewRecord = cdsGetReport43AddressType2NewRecord
    Left = 706
    Top = 70
  end
  object cdsGetDefaultValue: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetDefaultValue'
    RemoteServer = dspDataConnection
    Left = 1018
    Top = 161
  end
  object cdsGetPageList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetPageList'
    RemoteServer = dspDataConnection
    Left = 1008
    Top = 80
  end
  object cdsDocrun: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from run_doc'
    Params = <>
    ProviderName = 'dspGetDocrun'
    RemoteServer = dspDataConnection
    Left = 584
    Top = 808
  end
  object cdsDoc_Pid: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 448
    Top = 808
  end
  object cdsGetReport43Community_ServiceList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetreport43Community_Servicelist'
    RemoteServer = dspDataConnection
    Left = 848
    Top = 776
  end
  object cdsGetreport43Community_ActivityList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetreport43Community_Activitylist'
    RemoteServer = dspDataConnection
    Left = 696
    Top = 792
  end
  object cdsGetReport43Village: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetReport43Village'
    RemoteServer = dspDataConnection
    Left = 360
    Top = 776
  end
  object cdsSettingGetHospName: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSettingGetHospName'
    RemoteServer = dspDataConnection
    Left = 912
    Top = 16
  end
  object cdsGetBathList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetBathList'
    RemoteServer = dspDataConnection
    Left = 1088
    Top = 32
  end
  object cdsGetBatchDetail: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetBatchDetail'
    RemoteServer = dspDataConnection
    Left = 1136
    Top = 96
  end
  object cdsGetBatchError: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetBatchError'
    RemoteServer = dspDataConnection
    Left = 1168
    Top = 160
  end
  object cdsGetBatchErrorByFilename: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetBatchErrorByFilename'
    RemoteServer = dspDataConnection
    Left = 1168
    Top = 216
  end
  object cdsGetBatchErrorGrpByFilename: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetBatchErrorGrpByFilename'
    RemoteServer = dspDataConnection
    Left = 1184
    Top = 264
  end
end
