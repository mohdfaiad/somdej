inherited DSCarsaleDM: TDSCarsaleDM
  OldCreateOrder = True
  Height = 603
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSCarsale'
  end
  inherited cdsDescData: TClientDataSet
    Left = 136
  end
  inherited frxReport: TfrxReport
    ReportOptions.CreateDate = 41344.880895358800000000
    ReportOptions.LastChange = 41344.881582025460000000
    ScriptText.Strings = (
      'procedure Memo28OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure Memo41OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'begin    '
      'end.    '
      '    ')
    OnReportPrint = 'frxReport1OnReportPrint'
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
          Top = 25.055040000000000000
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
          Left = 396.850393700000000000
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
          Font.Height = -11
          Memo.UTF8W = (
            #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
            '[frxRepData."tnmcsm"] ')
        end
        inherited Memo37: TfrxMemoView
          Font.Height = -11
          Memo.UTF8W = (
            #3648#3621#3586#3607#3637#3656#3588#3635#3586#3629
            '[frxRepData."rdnom3"] ')
        end
        inherited Memo38: TfrxMemoView
          Font.Height = -11
          Memo.UTF8W = (
            #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591' '
            '[frxRepData."engom3"] ')
        end
        inherited Memo39: TfrxMemoView
          Left = 396.850393700000000000
          Font.Height = -11
          Memo.UTF8W = (
            #3648#3621#3586#3605#3633#3623#3606#3633#3591
            '[frxRepData."serom3"] ')
        end
        inherited Memo40: TfrxMemoView
          Font.Height = -11
          Memo.UTF8W = (
            #3649#3610#3610
            '[frxRepData."prdom3"] ')
        end
      end
      inherited MasterData1: TfrxMasterData
        inherited Memo8: TfrxMemoView
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
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
        Top = 461.102660000000000000
        inherited Memo33: TfrxMemoView
          Memo.UTF8W = (
            'Page [Page#]')
        end
        inherited Memo35: TfrxMemoView
          Memo.UTF8W = (
            'CS_AccessoryPo.fr3')
        end
        inherited Memo36: TfrxMemoView
          Top = 26.472480000000020000
          Memo.UTF8W = (
            ''
            ''
            '_______________'
            'Purchasing Manager')
        end
        inherited Memo41: TfrxMemoView
          Top = 25.692949999999320000
          Memo.UTF8W = (
            ''
            ''
            '_______________'
            'Controller')
        end
        inherited Memo42: TfrxMemoView
          Top = 25.692949999999830000
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
      inherited Footer1: TfrxFooter
        Height = 0.102337800000000000
        inherited Memo31: TfrxMemoView
          Width = 718.110236220000000000
        end
      end
    end
    object TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
  end
  inherited cdsMenusList: TClientDataSet
    Left = 136
  end
  inherited cdsGetComponentList: TClientDataSet
    Left = 128
  end
  object CdsMtCsmGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtCsmGet'
    RemoteServer = dspDataConnection
    Left = 281
    Top = 192
    object CdsMtCsmGetSTSCSM: TStringField
      FieldName = 'STSCSM'
      Size = 1
    end
    object CdsMtCsmGetCMPCSM: TStringField
      FieldName = 'CMPCSM'
      Size = 2
    end
    object CdsMtCsmGetBRNCSM: TStringField
      FieldName = 'BRNCSM'
      Size = 3
    end
    object CdsMtCsmGetCTYCSM: TStringField
      FieldName = 'CTYCSM'
      FixedChar = True
      Size = 1
    end
    object CdsMtCsmGetCFGCSM: TStringField
      FieldName = 'CFGCSM'
      Size = 6
    end
    object CdsMtCsmGetCCNCSM: TLargeintField
      FieldName = 'CCNCSM'
    end
    object CdsMtCsmGetPRECSM: TStringField
      FieldName = 'PRECSM'
      Size = 6
    end
    object CdsMtCsmGetFNMCSM: TStringField
      FieldName = 'FNMCSM'
      Size = 80
    end
    object CdsMtCsmGetLNMCSM: TStringField
      FieldName = 'LNMCSM'
      Size = 80
    end
    object CdsMtCsmGetSEXCSM: TStringField
      FieldName = 'SEXCSM'
      FixedChar = True
      Size = 1
    end
    object CdsMtCsmGetSSMCSM: TStringField
      FieldName = 'SSMCSM'
      FixedChar = True
      Size = 1
    end
    object CdsMtCsmGetBDTCSM: TDateField
      FieldName = 'BDTCSM'
    end
    object CdsMtCsmGetNTNCSM: TStringField
      FieldName = 'NTNCSM'
      Size = 6
    end
    object CdsMtCsmGetNTVCSM: TStringField
      FieldName = 'NTVCSM'
      Size = 6
    end
    object CdsMtCsmGetRELCSM: TStringField
      FieldName = 'RELCSM'
      Size = 6
    end
    object CdsMtCsmGetSTACSM: TStringField
      FieldName = 'STACSM'
      Size = 6
    end
    object CdsMtCsmGetCPNCSM: TStringField
      FieldName = 'CPNCSM'
      Size = 80
    end
    object CdsMtCsmGetCPSCSM: TStringField
      FieldName = 'CPSCSM'
      Size = 80
    end
    object CdsMtCsmGetCBNCSM: TDateField
      FieldName = 'CBNCSM'
    end
    object CdsMtCsmGetCPWCSM: TStringField
      FieldName = 'CPWCSM'
      FixedChar = True
      Size = 1
    end
    object CdsMtCsmGetCINCSM: TFMTBCDField
      FieldName = 'CINCSM'
      Precision = 18
      Size = 2
    end
    object CdsMtCsmGetCCHCSM: TIntegerField
      FieldName = 'CCHCSM'
    end
    object CdsMtCsmGetHTPCSM: TStringField
      FieldName = 'HTPCSM'
      Size = 6
    end
    object CdsMtCsmGetPBTCSM: TStringField
      FieldName = 'PBTCSM'
      Size = 6
    end
    object CdsMtCsmGetPSTCSM: TStringField
      FieldName = 'PSTCSM'
      Size = 6
    end
    object CdsMtCsmGetBUSCSM: TStringField
      FieldName = 'BUSCSM'
      Size = 6
    end
    object CdsMtCsmGetSALCSM: TFMTBCDField
      FieldName = 'SALCSM'
      Precision = 18
      Size = 2
    end
    object CdsMtCsmGetBONCSM: TFMTBCDField
      FieldName = 'BONCSM'
      Precision = 18
      Size = 2
    end
    object CdsMtCsmGetOTHCSM: TFMTBCDField
      FieldName = 'OTHCSM'
      Precision = 18
      Size = 2
    end
    object CdsMtCsmGetEXPCSM: TFMTBCDField
      FieldName = 'EXPCSM'
      Precision = 18
      Size = 2
    end
    object CdsMtCsmGetPCMCSM: TStringField
      FieldName = 'PCMCSM'
      Size = 80
    end
    object CdsMtCsmGetHDTCSM: TDateField
      FieldName = 'HDTCSM'
    end
    object CdsMtCsmGetPDPCSM: TStringField
      FieldName = 'PDPCSM'
      Size = 6
    end
    object CdsMtCsmGetDOPCSM: TStringField
      FieldName = 'DOPCSM'
      Size = 6
    end
    object CdsMtCsmGetMEMCSM: TStringField
      FieldName = 'MEMCSM'
      Size = 1000
    end
    object CdsMtCsmGetENTUSR: TStringField
      FieldName = 'ENTUSR'
      Size = 31
    end
    object CdsMtCsmGetENTDTE: TSQLTimeStampField
      FieldName = 'ENTDTE'
    end
    object CdsMtCsmGetEDTUSR: TStringField
      FieldName = 'EDTUSR'
      Size = 31
    end
    object CdsMtCsmGetEDTDTE: TSQLTimeStampField
      FieldName = 'EDTDTE'
    end
    object CdsMtCsmGetCDNCSI: TStringField
      FieldName = 'CDNCSI'
    end
    object CdsMtCsmGetFULLNAME: TStringField
      FieldName = 'FULLNAME'
      Size = 255
    end
    object CdsMtCsmGetTNMSTA: TStringField
      FieldName = 'TNMSTA'
      Size = 80
    end
    object CdsMtCsmGetTNMCTY: TStringField
      FieldName = 'TNMCTY'
      Size = 80
    end
  end
  object CdsMtCsmGetAddr01: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtCsmGetAddr'
    RemoteServer = dspDataConnection
    Left = 280
    Top = 256
    object CdsMtCsmGetAddr01TA1CSM: TStringField
      FieldName = 'TA1CSM'
      Size = 50
    end
    object CdsMtCsmGetAddr01TA2CSM: TStringField
      FieldName = 'TA2CSM'
      Size = 50
    end
    object CdsMtCsmGetAddr01CHGCSM: TStringField
      FieldName = 'CHGCSM'
      Size = 6
    end
    object CdsMtCsmGetAddr01CTYCSM: TStringField
      FieldName = 'CTYCSM'
      Size = 6
    end
    object CdsMtCsmGetAddr01ZIPCSM: TStringField
      FieldName = 'ZIPCSM'
      Size = 5
    end
    object CdsMtCsmGetAddr01TELCSM: TStringField
      FieldName = 'TELCSM'
    end
    object CdsMtCsmGetAddr01MOBCSM: TStringField
      FieldName = 'MOBCSM'
    end
    object CdsMtCsmGetAddr01FAXCSM: TStringField
      FieldName = 'FAXCSM'
    end
    object CdsMtCsmGetAddr01EMACSM: TStringField
      FieldName = 'EMACSM'
    end
    object CdsMtCsmGetAddr01WEBCSM: TStringField
      FieldName = 'WEBCSM'
    end
  end
  object CdsMtCsmGetCard: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtCsmGetCard'
    RemoteServer = dspDataConnection
    Left = 280
    Top = 328
    object CdsMtCsmGetCardCCNCSI: TLargeintField
      FieldName = 'CCNCSI'
    end
    object CdsMtCsmGetCardCDCCSI: TStringField
      FieldName = 'CDCCSI'
      Size = 6
    end
    object CdsMtCsmGetCardTNMCDC: TStringField
      FieldName = 'TNMCDC'
      Size = 80
    end
    object CdsMtCsmGetCardCDNCSI: TStringField
      FieldName = 'CDNCSI'
    end
    object CdsMtCsmGetCardISDCSI: TDateField
      FieldName = 'ISDCSI'
      OnGetText = GetFmtDate
    end
    object CdsMtCsmGetCardEPDCSI: TDateField
      FieldName = 'EPDCSI'
      OnGetText = GetFmtDate
    end
    object CdsMtCsmGetCardISWCSI: TStringField
      FieldName = 'ISWCSI'
      Size = 80
    end
  end
  object CdsMtCsmGetAddr02: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtCsmGetAddr'
    RemoteServer = dspDataConnection
    Left = 392
    Top = 256
    object CdsMtCsmGetAddr02TA1CSM: TStringField
      FieldName = 'TA1CSM'
      Size = 50
    end
    object CdsMtCsmGetAddr02TA2CSM: TStringField
      FieldName = 'TA2CSM'
      Size = 50
    end
    object CdsMtCsmGetAddr02CHGCSM: TStringField
      FieldName = 'CHGCSM'
      Size = 6
    end
    object CdsMtCsmGetAddr02CTYCSM: TStringField
      FieldName = 'CTYCSM'
      Size = 6
    end
    object CdsMtCsmGetAddr02ZIPCSM: TStringField
      FieldName = 'ZIPCSM'
      Size = 5
    end
    object CdsMtCsmGetAddr02TELCSM: TStringField
      FieldName = 'TELCSM'
    end
    object CdsMtCsmGetAddr02MOBCSM: TStringField
      FieldName = 'MOBCSM'
    end
    object CdsMtCsmGetAddr02FAXCSM: TStringField
      FieldName = 'FAXCSM'
    end
    object CdsMtCsmGetAddr02EMACSM: TStringField
      FieldName = 'EMACSM'
    end
    object CdsMtCsmGetAddr02WEBCSM: TStringField
      FieldName = 'WEBCSM'
    end
  end
  object CdsMtCsmGetAddr03: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtCsmGetAddr'
    RemoteServer = dspDataConnection
    Left = 504
    Top = 256
    object CdsMtCsmGetAddr03TA1CSM: TStringField
      FieldName = 'TA1CSM'
      Size = 50
    end
    object CdsMtCsmGetAddr03TA2CSM: TStringField
      FieldName = 'TA2CSM'
      Size = 50
    end
    object CdsMtCsmGetAddr03CHGCSM: TStringField
      FieldName = 'CHGCSM'
      Size = 6
    end
    object CdsMtCsmGetAddr03CTYCSM: TStringField
      FieldName = 'CTYCSM'
      Size = 6
    end
    object CdsMtCsmGetAddr03ZIPCSM: TStringField
      FieldName = 'ZIPCSM'
      Size = 5
    end
    object CdsMtCsmGetAddr03TELCSM: TStringField
      FieldName = 'TELCSM'
    end
    object CdsMtCsmGetAddr03MOBCSM: TStringField
      FieldName = 'MOBCSM'
    end
    object CdsMtCsmGetAddr03FAXCSM: TStringField
      FieldName = 'FAXCSM'
    end
    object CdsMtCsmGetAddr03EMACSM: TStringField
      FieldName = 'EMACSM'
    end
    object CdsMtCsmGetAddr03WEBCSM: TStringField
      FieldName = 'WEBCSM'
    end
  end
  object CdsMtCsmGetAddr04: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtCsmGetAddr'
    RemoteServer = dspDataConnection
    Left = 616
    Top = 256
    object CdsMtCsmGetAddr04TA1CSM: TStringField
      FieldName = 'TA1CSM'
      Size = 50
    end
    object CdsMtCsmGetAddr04TA2CSM: TStringField
      FieldName = 'TA2CSM'
      Size = 50
    end
    object CdsMtCsmGetAddr04CHGCSM: TStringField
      FieldName = 'CHGCSM'
      Size = 6
    end
    object CdsMtCsmGetAddr04CTYCSM: TStringField
      FieldName = 'CTYCSM'
      Size = 6
    end
    object CdsMtCsmGetAddr04ZIPCSM: TStringField
      FieldName = 'ZIPCSM'
      Size = 5
    end
    object CdsMtCsmGetAddr04TELCSM: TStringField
      FieldName = 'TELCSM'
    end
    object CdsMtCsmGetAddr04MOBCSM: TStringField
      FieldName = 'MOBCSM'
    end
    object CdsMtCsmGetAddr04FAXCSM: TStringField
      FieldName = 'FAXCSM'
    end
    object CdsMtCsmGetAddr04EMACSM: TStringField
      FieldName = 'EMACSM'
    end
    object CdsMtCsmGetAddr04WEBCSM: TStringField
      FieldName = 'WEBCSM'
    end
  end
  object CdsMtAppGetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtAppGetList'
    RemoteServer = dspDataConnection
    Left = 281
    Top = 416
    object CdsMtAppGetListSTSOT5: TStringField
      FieldName = 'STSOT5'
      Size = 1
    end
    object CdsMtAppGetListYAROT5: TIntegerField
      FieldName = 'YAROT5'
    end
    object CdsMtAppGetListCMPOT5: TStringField
      FieldName = 'CMPOT5'
      Size = 2
    end
    object CdsMtAppGetListBRNOT5: TStringField
      FieldName = 'BRNOT5'
      Size = 3
    end
    object CdsMtAppGetListDEPOT5: TStringField
      FieldName = 'DEPOT5'
      Size = 6
    end
    object CdsMtAppGetListDCDOT5: TStringField
      FieldName = 'DCDOT5'
      Size = 6
    end
    object CdsMtAppGetListDNOOT5: TIntegerField
      FieldName = 'DNOOT5'
    end
    object CdsMtAppGetListSEQOT5: TSmallintField
      FieldName = 'SEQOT5'
    end
    object CdsMtAppGetListIDTOT5: TDateField
      FieldName = 'IDTOT5'
      OnGetText = GetFmtDate
    end
    object CdsMtAppGetListSMNOT5: TStringField
      FieldName = 'SMNOT5'
      Size = 6
    end
    object CdsMtAppGetListCNOOT5: TLargeintField
      FieldName = 'CNOOT5'
    end
    object CdsMtAppGetListFULLNAME: TStringField
      FieldName = 'FULLNAME'
      Size = 255
    end
    object CdsMtAppGetListITNPM1: TStringField
      FieldName = 'ITNPM1'
    end
    object CdsMtAppGetListTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsMtAppGetListTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsMtAppGetListSEROT5: TStringField
      FieldName = 'SEROT5'
      Size = 30
    end
    object CdsMtAppGetListSTPOT5: TStringField
      FieldName = 'STPOT5'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetListEPDOT5: TDateField
      FieldName = 'EPDOT5'
      OnGetText = GetFmtDate
    end
    object CdsMtAppGetListASDOT5: TDateField
      FieldName = 'ASDOT5'
      OnGetText = GetFmtDate
    end
    object CdsMtAppGetListTNMSTP: TStringField
      FieldName = 'TNMSTP'
      Size = 255
    end
    object CdsMtAppGetListPSTOT5: TStringField
      FieldName = 'PSTOT5'
      Size = 6
    end
    object CdsMtAppGetListAPP_STS: TIntegerField
      FieldName = 'APP_STS'
    end
    object CdsMtAppGetListAPPR_TEXT: TStringField
      FieldName = 'APPR_TEXT'
      Size = 255
    end
  end
  object CdsMtAppGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtAppGet'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsMtAppGetCalcFields
    Left = 385
    Top = 416
    object CdsMtAppGetSTSOT5: TStringField
      FieldName = 'STSOT5'
      Size = 1
    end
    object CdsMtAppGetYAROT5: TIntegerField
      FieldName = 'YAROT5'
    end
    object CdsMtAppGetCMPOT5: TStringField
      FieldName = 'CMPOT5'
      Size = 2
    end
    object CdsMtAppGetBRNOT5: TStringField
      FieldName = 'BRNOT5'
      Size = 3
    end
    object CdsMtAppGetDCDOT5: TStringField
      FieldName = 'DCDOT5'
      Size = 6
    end
    object CdsMtAppGetDNOOT5: TIntegerField
      FieldName = 'DNOOT5'
    end
    object CdsMtAppGetSEQOT5: TSmallintField
      FieldName = 'SEQOT5'
    end
    object CdsMtAppGetIDTOT5: TDateField
      FieldName = 'IDTOT5'
    end
    object CdsMtAppGetDEPOT5: TStringField
      FieldName = 'DEPOT5'
      Size = 6
    end
    object CdsMtAppGetCNOOT5: TLargeintField
      FieldName = 'CNOOT5'
    end
    object CdsMtAppGetCTYOT5: TSmallintField
      FieldName = 'CTYOT5'
    end
    object CdsMtAppGetCRTOT5: TIntegerField
      FieldName = 'CRTOT5'
    end
    object CdsMtAppGetSMNOT5: TStringField
      FieldName = 'SMNOT5'
      Size = 6
    end
    object CdsMtAppGetPNOOT5: TStringField
      FieldName = 'PNOOT5'
    end
    object CdsMtAppGetRPDOT5: TDateField
      FieldName = 'RPDOT5'
    end
    object CdsMtAppGetRSNOT5: TStringField
      FieldName = 'RSNOT5'
    end
    object CdsMtAppGetRSDOT5: TDateField
      FieldName = 'RSDOT5'
    end
    object CdsMtAppGetPSTOT5: TStringField
      FieldName = 'PSTOT5'
      Size = 6
    end
    object CdsMtAppGetBRKOT5: TStringField
      FieldName = 'BRKOT5'
      Size = 6
    end
    object CdsMtAppGetGNOOT5: TStringField
      FieldName = 'GNOOT5'
      Size = 6
    end
    object CdsMtAppGetCYTOT5: TStringField
      FieldName = 'CYTOT5'
      Size = 6
    end
    object CdsMtAppGetCYROT5: TFMTBCDField
      FieldName = 'CYROT5'
      Precision = 18
      Size = 4
    end
    object CdsMtAppGetWHSOT5: TStringField
      FieldName = 'WHSOT5'
      Size = 6
    end
    object CdsMtAppGetRDYOT5: TStringField
      FieldName = 'RDYOT5'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetPRCOT5: TStringField
      FieldName = 'PRCOT5'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetPTYOT5: TStringField
      FieldName = 'PTYOT5'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetPRDOT5: TStringField
      FieldName = 'PRDOT5'
    end
    object CdsMtAppGetCOLOT5: TStringField
      FieldName = 'COLOT5'
      Size = 6
    end
    object CdsMtAppGetSEROT5: TStringField
      FieldName = 'SEROT5'
      Size = 30
    end
    object CdsMtAppGetENGOT5: TStringField
      FieldName = 'ENGOT5'
      Size = 30
    end
    object CdsMtAppGetUSEOT5: TStringField
      FieldName = 'USEOT5'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetBNOOT5: TStringField
      FieldName = 'BNOOT5'
    end
    object CdsMtAppGetKEYOT5: TStringField
      FieldName = 'KEYOT5'
    end
    object CdsMtAppGetQO1OT5: TIntegerField
      FieldName = 'QO1OT5'
    end
    object CdsMtAppGetQO2OT5: TIntegerField
      FieldName = 'QO2OT5'
    end
    object CdsMtAppGetPDCOT5: TFMTBCDField
      FieldName = 'PDCOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetPDAOT5: TFMTBCDField
      FieldName = 'PDAOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetUP1OT5: TFMTBCDField
      FieldName = 'UP1OT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetUP2OT5: TFMTBCDField
      FieldName = 'UP2OT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetNETOT5: TFMTBCDField
      FieldName = 'NETOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetPPYOT5: TFMTBCDField
      FieldName = 'PPYOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetTAXOT5: TFMTBCDField
      FieldName = 'TAXOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetSTPOT5: TStringField
      FieldName = 'STPOT5'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetFCDOT5: TStringField
      FieldName = 'FCDOT5'
      Size = 10
    end
    object CdsMtAppGetDWTOT5: TFMTBCDField
      FieldName = 'DWTOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetNLEOT5: TIntegerField
      FieldName = 'NLEOT5'
    end
    object CdsMtAppGetRATOT5: TFMTBCDField
      FieldName = 'RATOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetPMMOT5: TFMTBCDField
      FieldName = 'PMMOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetCM1OT5: TFMTBCDField
      FieldName = 'CM1OT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetCM2OT5: TFMTBCDField
      FieldName = 'CM2OT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAPCOT5: TFMTBCDField
      FieldName = 'APCOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAFEOT5: TFMTBCDField
      FieldName = 'AFEOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetDDTOT5: TDateField
      FieldName = 'DDTOT5'
    end
    object CdsMtAppGetAPPOT5: TStringField
      FieldName = 'APPOT5'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAPNOT5: TIntegerField
      FieldName = 'APNOT5'
    end
    object CdsMtAppGetAPDOT5: TDateField
      FieldName = 'APDOT5'
    end
    object CdsMtAppGetREJOT5: TStringField
      FieldName = 'REJOT5'
      Size = 6
    end
    object CdsMtAppGetICDOT5: TStringField
      FieldName = 'ICDOT5'
      Size = 10
    end
    object CdsMtAppGetCN1OT5: TStringField
      FieldName = 'CN1OT5'
    end
    object CdsMtAppGetITSOT5: TFMTBCDField
      FieldName = 'ITSOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetSDTOT5: TDateField
      FieldName = 'SDTOT5'
    end
    object CdsMtAppGetEDTOT5: TDateField
      FieldName = 'EDTOT5'
    end
    object CdsMtAppGetISDOT5: TStringField
      FieldName = 'ISDOT5'
      Size = 10
    end
    object CdsMtAppGetIVSOT5: TFMTBCDField
      FieldName = 'IVSOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetINTOT5: TFMTBCDField
      FieldName = 'INTOT5'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetBDTOT5: TDateField
      FieldName = 'BDTOT5'
    end
    object CdsMtAppGetTNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsMtAppGetTNMBRK: TStringField
      FieldName = 'TNMBRK'
      Size = 80
    end
    object CdsMtAppGetTELBRK: TStringField
      FieldName = 'TELBRK'
    end
    object CdsMtAppGetTNMGNO: TStringField
      FieldName = 'TNMGNO'
      Size = 255
    end
    object CdsMtAppGetTELGNO: TStringField
      FieldName = 'TELGNO'
    end
    object CdsMtAppGetTNMWHS: TStringField
      FieldName = 'TNMWHS'
      Size = 80
    end
    object CdsMtAppGetSRSPM1: TStringField
      FieldName = 'SRSPM1'
      Size = 6
    end
    object CdsMtAppGetMNMPM1: TStringField
      FieldName = 'MNMPM1'
    end
    object CdsMtAppGetFAMPM1: TFMTBCDField
      FieldName = 'FAMPM1'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsMtAppGetDNOYM1: TStringField
      FieldName = 'DNOYM1'
      Size = 30
    end
    object CdsMtAppGetIDTYM1: TDateField
      FieldName = 'IDTYM1'
    end
    object CdsMtAppGetTNMFCD: TStringField
      FieldName = 'TNMFCD'
      Size = 80
    end
    object CdsMtAppGetESDOT5: TStringField
      FieldName = 'ESDOT5'
      Size = 6
    end
    object CdsMtAppGetTNMICD: TStringField
      FieldName = 'TNMICD'
      Size = 80
    end
    object CdsMtAppGetTNMISD: TStringField
      FieldName = 'TNMISD'
      Size = 80
    end
    object CdsMtAppGetFDTOT5: TDateField
      FieldName = 'FDTOT5'
    end
    object CdsMtAppGetRDTOT5: TDateField
      FieldName = 'RDTOT5'
    end
    object CdsMtAppGetINOOT5: TStringField
      FieldName = 'INOOT5'
    end
    object CdsMtAppGetPSROT5: TStringField
      FieldName = 'PSROT5'
      Size = 80
    end
    object CdsMtAppGetPAYOT5: TStringField
      FieldName = 'PAYOT5'
      Size = 80
    end
    object CdsMtAppGetEXDOT5: TDateField
      FieldName = 'EXDOT5'
    end
    object CdsMtAppGetPLCOT5: TStringField
      FieldName = 'PLCOT5'
      Size = 80
    end
    object CdsMtAppGetTMDOT5: TStringField
      FieldName = 'TMDOT5'
    end
    object CdsMtAppGetEPDOT5: TDateField
      FieldName = 'EPDOT5'
    end
    object CdsMtAppGetEPTOT5: TStringField
      FieldName = 'EPTOT5'
    end
    object CdsMtAppGetEPSOT5: TStringField
      FieldName = 'EPSOT5'
      Size = 6
    end
    object CdsMtAppGetMEMOT5: TStringField
      FieldName = 'MEMOT5'
      Size = 1000
    end
    object CdsMtAppGetENTUSR: TStringField
      FieldName = 'ENTUSR'
      Size = 31
    end
    object CdsMtAppGetENTDTE: TSQLTimeStampField
      FieldName = 'ENTDTE'
    end
    object CdsMtAppGetEDTUSR: TStringField
      FieldName = 'EDTUSR'
      Size = 31
    end
    object CdsMtAppGetEDTDTE: TSQLTimeStampField
      FieldName = 'EDTDTE'
    end
    object CdsMtAppGetSUMOT5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUMOT5'
      Calculated = True
    end
    object CdsMtAppGetHPOT5: TFloatField
      FieldKind = fkCalculated
      FieldName = 'HPOT5'
      Calculated = True
    end
  end
  object CdsMtAppGetAccessory: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtAppGetAccessory'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsMtAppGetAccessoryCalcFields
    Left = 521
    Top = 344
    object CdsMtAppGetAccessorySTSOT6: TStringField
      FieldName = 'STSOT6'
      Size = 1
    end
    object CdsMtAppGetAccessoryYAROT6: TIntegerField
      FieldName = 'YAROT6'
    end
    object CdsMtAppGetAccessoryCMPOT6: TStringField
      FieldName = 'CMPOT6'
      Size = 2
    end
    object CdsMtAppGetAccessoryBRNOT6: TStringField
      FieldName = 'BRNOT6'
      Size = 3
    end
    object CdsMtAppGetAccessoryDCDOT6: TStringField
      FieldName = 'DCDOT6'
      Size = 6
    end
    object CdsMtAppGetAccessoryDNOOT6: TIntegerField
      FieldName = 'DNOOT6'
    end
    object CdsMtAppGetAccessorySEQOT6: TSmallintField
      FieldName = 'SEQOT6'
    end
    object CdsMtAppGetAccessoryFGDOT6: TStringField
      FieldName = 'FGDOT6'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryFRDOT6: TStringField
      FieldName = 'FRDOT6'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryFSROT6: TStringField
      FieldName = 'FSROT6'
    end
    object CdsMtAppGetAccessoryTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsMtAppGetAccessoryFWHOT6: TStringField
      FieldName = 'FWHOT6'
      Size = 6
    end
    object CdsMtAppGetAccessoryFPDOT6: TStringField
      FieldName = 'FPDOT6'
    end
    object CdsMtAppGetAccessoryFCLOT6: TStringField
      FieldName = 'FCLOT6'
      Size = 6
    end
    object CdsMtAppGetAccessoryFQ1OT6: TIntegerField
      FieldName = 'FQ1OT6'
    end
    object CdsMtAppGetAccessoryFQ2OT6: TIntegerField
      FieldName = 'FQ2OT6'
    end
    object CdsMtAppGetAccessoryTDSOT6: TStringField
      FieldName = 'TDSOT6'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryFPAOT6: TFMTBCDField
      FieldName = 'FPAOT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryFDSOT6: TFMTBCDField
      FieldName = 'FDSOT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryFU1OT6: TFMTBCDField
      FieldName = 'FU1OT6'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryFU2OT6: TFMTBCDField
      FieldName = 'FU2OT6'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryPRTOT6: TStringField
      FieldName = 'PRTOT6'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryABBOT6: TStringField
      FieldName = 'ABBOT6'
      Size = 3
    end
    object CdsMtAppGetAccessoryAM1OT6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AM1OT6'
      OnGetText = CdsMtAppGetAccessoryAM1OT6GetText
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object CdsMtAppGetAccessoryAM2OT6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AM2OT6'
      OnGetText = CdsMtAppGetAccessoryAM1OT6GetText
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object CdsMtAppGetAccessoryAMTOT6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMTOT6'
      OnGetText = CdsMtAppGetAccessoryAM1OT6GetText
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object CdsMtAppGetAccessoryNETOT6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NETOT6'
      OnGetText = CdsMtAppGetAccessoryAM1OT6GetText
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object CdsMtAppGetAccessoryFP1OT6: TFMTBCDField
      FieldName = 'FP1OT6'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryFP2OT6: TFMTBCDField
      FieldName = 'FP2OT6'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryFP3OT6: TFMTBCDField
      FieldName = 'FP3OT6'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryFP4OT6: TFMTBCDField
      FieldName = 'FP4OT6'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryFLAG: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FLAG'
    end
    object CdsMtAppGetAccessoryFLAG_SELECT: TStringField
      FieldName = 'FLAG_SELECT'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryBRDPM1: TStringField
      FieldName = 'BRDPM1'
      Size = 6
    end
  end
  object CdsMtAppGetCard: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtAppGetCard'
    RemoteServer = dspDataConnection
    Left = 657
    Top = 424
    object CdsMtAppGetCardSTSOMI: TStringField
      FieldName = 'STSOMI'
      Size = 1
    end
    object CdsMtAppGetCardYAROMI: TIntegerField
      FieldName = 'YAROMI'
    end
    object CdsMtAppGetCardCMPOMI: TStringField
      FieldName = 'CMPOMI'
      Size = 2
    end
    object CdsMtAppGetCardBRNOMI: TStringField
      FieldName = 'BRNOMI'
      Size = 3
    end
    object CdsMtAppGetCardDCDOMI: TStringField
      FieldName = 'DCDOMI'
      Size = 6
    end
    object CdsMtAppGetCardDNOOMI: TIntegerField
      FieldName = 'DNOOMI'
    end
    object CdsMtAppGetCardCNOOMI: TLargeintField
      FieldName = 'CNOOMI'
    end
    object CdsMtAppGetCardCDCOMI: TStringField
      FieldName = 'CDCOMI'
      Size = 6
    end
    object CdsMtAppGetCardTNMCDC: TStringField
      FieldName = 'TNMCDC'
      Size = 80
    end
    object CdsMtAppGetCardRDTOMI: TDateField
      FieldName = 'RDTOMI'
    end
    object CdsMtAppGetCardRTMOMI: TStringField
      FieldName = 'RTMOMI'
    end
    object CdsMtAppGetCardPSNOMI: TStringField
      FieldName = 'PSNOMI'
      Size = 6
    end
    object CdsMtAppGetCardFLGOMI: TStringField
      FieldName = 'FLGOMI'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetCardTNMPSN: TStringField
      FieldName = 'TNMPSN'
      Size = 80
    end
  end
  object CdsMtAppGetEXP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtAppGetExp'
    RemoteServer = dspDataConnection
    Left = 761
    Top = 424
    object CdsMtAppGetEXPSTSEXP: TStringField
      FieldName = 'STSEXP'
      Size = 1
    end
    object CdsMtAppGetEXPYAREXP: TIntegerField
      FieldName = 'YAREXP'
    end
    object CdsMtAppGetEXPCMPEXP: TStringField
      FieldName = 'CMPEXP'
      Size = 2
    end
    object CdsMtAppGetEXPBRNEXP: TStringField
      FieldName = 'BRNEXP'
      Size = 3
    end
    object CdsMtAppGetEXPDCDEXP: TStringField
      FieldName = 'DCDEXP'
      Size = 6
    end
    object CdsMtAppGetEXPDNOEXP: TIntegerField
      FieldName = 'DNOEXP'
    end
    object CdsMtAppGetEXPSEQEXP: TSmallintField
      FieldName = 'SEQEXP'
    end
    object CdsMtAppGetEXPCDCEXP: TStringField
      FieldName = 'CDCEXP'
      Size = 6
    end
    object CdsMtAppGetEXPTNMCDC: TStringField
      FieldName = 'TNMCDC'
      Size = 80
    end
    object CdsMtAppGetEXPAMTEXP: TFMTBCDField
      FieldName = 'AMTEXP'
      OnGetText = CdsMtAppGetEXPAMTEXPGetText
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetEXPTP1EXP: TStringField
      FieldName = 'TP1EXP'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetEXPTP2EXP: TStringField
      FieldName = 'TP2EXP'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetEXPDCREXP: TStringField
      FieldName = 'DCREXP'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetEXPTNMTP1: TStringField
      FieldName = 'TNMTP1'
      Size = 80
    end
    object CdsMtAppGetEXPTNMTP2: TStringField
      FieldName = 'TNMTP2'
      Size = 80
    end
  end
  object CdsMtAppGetDown: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtAppGetDown'
    RemoteServer = dspDataConnection
    Left = 857
    Top = 424
    object CdsMtAppGetDownSTSOM7: TStringField
      FieldName = 'STSOM7'
      Size = 1
    end
    object CdsMtAppGetDownYAROM7: TIntegerField
      FieldName = 'YAROM7'
    end
    object CdsMtAppGetDownCMPOM7: TStringField
      FieldName = 'CMPOM7'
      Size = 2
    end
    object CdsMtAppGetDownBRNOM7: TStringField
      FieldName = 'BRNOM7'
      Size = 3
    end
    object CdsMtAppGetDownDCDOM7: TStringField
      FieldName = 'DCDOM7'
      Size = 6
    end
    object CdsMtAppGetDownDNOOM7: TIntegerField
      FieldName = 'DNOOM7'
    end
    object CdsMtAppGetDownSEQOM7: TSmallintField
      FieldName = 'SEQOM7'
    end
    object CdsMtAppGetDownPPDOM7: TStringField
      FieldName = 'PPDOM7'
      Size = 6
    end
    object CdsMtAppGetDownPDTOM7: TDateField
      FieldName = 'PDTOM7'
    end
    object CdsMtAppGetDownPATOM7: TFMTBCDField
      FieldName = 'PATOM7'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetDownPTPOM7: TStringField
      FieldName = 'PTPOM7'
      Size = 6
    end
    object CdsMtAppGetDownTNMPTP: TStringField
      FieldName = 'TNMPTP'
      Size = 80
    end
    object CdsMtAppGetDownNOTOM7: TStringField
      FieldName = 'NOTOM7'
    end
    object CdsMtAppGetDownNAROM7: TStringField
      FieldName = 'NAROM7'
      Size = 80
    end
    object CdsMtAppGetDownPRTOM7: TStringField
      FieldName = 'PRTOM7'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetDownRDTOM7: TDateField
      FieldName = 'RDTOM7'
    end
    object CdsMtAppGetDownRDCOM7: TStringField
      FieldName = 'RDCOM7'
      Size = 6
    end
    object CdsMtAppGetDownRDNOM7: TIntegerField
      FieldName = 'RDNOM7'
    end
    object CdsMtAppGetDownRSQOM7: TIntegerField
      FieldName = 'RSQOM7'
    end
    object CdsMtAppGetDownABBOM7: TStringField
      FieldName = 'ABBOM7'
      Size = 3
    end
  end
  object CdsMtAppGetFollowup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtAppGetFollowup'
    RemoteServer = dspDataConnection
    Left = 953
    Top = 424
    object CdsMtAppGetFollowupSTSOM8: TStringField
      FieldName = 'STSOM8'
      Size = 1
    end
    object CdsMtAppGetFollowupYAROM8: TIntegerField
      FieldName = 'YAROM8'
    end
    object CdsMtAppGetFollowupCMPOM8: TStringField
      FieldName = 'CMPOM8'
      Size = 2
    end
    object CdsMtAppGetFollowupBRNOM8: TStringField
      FieldName = 'BRNOM8'
      Size = 3
    end
    object CdsMtAppGetFollowupDCDOM8: TStringField
      FieldName = 'DCDOM8'
      Size = 6
    end
    object CdsMtAppGetFollowupDNOOM8: TIntegerField
      FieldName = 'DNOOM8'
    end
    object CdsMtAppGetFollowupSEQOM8: TSmallintField
      FieldName = 'SEQOM8'
    end
    object CdsMtAppGetFollowupOCDOM8: TStringField
      FieldName = 'OCDOM8'
      Size = 6
    end
    object CdsMtAppGetFollowupODTOM8: TDateField
      FieldName = 'ODTOM8'
    end
    object CdsMtAppGetFollowupPSNOM8: TFMTBCDField
      FieldName = 'PSNOM8'
      Precision = 18
      Size = 2
    end
  end
  object CdsSetupAccessoryGetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdsMtSetupAccessoryGetList'
    RemoteServer = dspDataConnection
    Left = 417
    Top = 504
    object CdsSetupAccessoryGetListORDOM3: TIntegerField
      FieldName = 'ORDOM3'
    end
    object CdsSetupAccessoryGetListIDTOM3: TDateField
      FieldName = 'IDTOM3'
    end
    object CdsSetupAccessoryGetListSTSOT5: TStringField
      FieldName = 'STSOT5'
      Size = 1
    end
    object CdsSetupAccessoryGetListYAROM3: TIntegerField
      FieldName = 'YAROM3'
    end
    object CdsSetupAccessoryGetListCMPOM3: TStringField
      FieldName = 'CMPOM3'
      Size = 2
    end
    object CdsSetupAccessoryGetListBRNOM3: TStringField
      FieldName = 'BRNOM3'
      Size = 3
    end
    object CdsSetupAccessoryGetListDEPOM3: TStringField
      FieldName = 'DEPOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetListDCDOM3: TStringField
      FieldName = 'DCDOM3'
      Size = 30
    end
    object CdsSetupAccessoryGetListDNOOT5: TIntegerField
      FieldName = 'DNOOT5'
    end
    object CdsSetupAccessoryGetListDCDOT5: TStringField
      FieldName = 'DCDOT5'
      Size = 6
    end
    object CdsSetupAccessoryGetListSEQOT5: TSmallintField
      FieldName = 'SEQOT5'
    end
    object CdsSetupAccessoryGetListIDTOT5: TDateField
      FieldName = 'IDTOT5'
    end
    object CdsSetupAccessoryGetListSMNOT5: TStringField
      FieldName = 'SMNOT5'
      Size = 6
    end
    object CdsSetupAccessoryGetListCNOOT5: TLargeintField
      FieldName = 'CNOOT5'
    end
    object CdsSetupAccessoryGetListFULLNAME: TStringField
      FieldName = 'FULLNAME'
      Size = 255
    end
    object CdsSetupAccessoryGetListITNPM1: TStringField
      FieldName = 'ITNPM1'
    end
    object CdsSetupAccessoryGetListTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsSetupAccessoryGetListTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsSetupAccessoryGetListSEROT5: TStringField
      FieldName = 'SEROT5'
      Size = 30
    end
    object CdsSetupAccessoryGetListSTPOT5: TStringField
      FieldName = 'STPOT5'
      FixedChar = True
      Size = 1
    end
    object CdsSetupAccessoryGetListEPDOT5: TDateField
      FieldName = 'EPDOT5'
    end
    object CdsSetupAccessoryGetListASDOT5: TDateField
      FieldName = 'ASDOT5'
    end
    object CdsSetupAccessoryGetListBRDPM1: TStringField
      FieldName = 'BRDPM1'
      Size = 6
    end
    object CdsSetupAccessoryGetListTWHOM3: TStringField
      FieldName = 'TWHOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetListDSEOM3: TStringField
      FieldName = 'DSEOM3'
      Size = 1000
    end
    object CdsSetupAccessoryGetListVNOOM3: TStringField
      FieldName = 'VNOOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetListTNMVNO: TStringField
      FieldName = 'TNMVNO'
      Size = 255
    end
    object CdsSetupAccessoryGetListTA1VNO: TStringField
      FieldName = 'TA1VNO'
      Size = 255
    end
    object CdsSetupAccessoryGetListVTPOM3: TStringField
      FieldName = 'VTPOM3'
      FixedChar = True
      Size = 1
    end
    object CdsSetupAccessoryGetListCPSOM3: TStringField
      FieldName = 'CPSOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetListCRTOM3: TIntegerField
      FieldName = 'CRTOM3'
    end
    object CdsSetupAccessoryGetListTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 512
    end
  end
  object CdsSetupAccessoryGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdsSetupAccessoryGet'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsSetupAccessoryGetCalcFields
    Left = 545
    Top = 504
    object CdsSetupAccessoryGetYAROM3: TIntegerField
      FieldName = 'YAROM3'
    end
    object CdsSetupAccessoryGetCMPOM3: TStringField
      FieldName = 'CMPOM3'
      Size = 2
    end
    object CdsSetupAccessoryGetBRNOM3: TStringField
      FieldName = 'BRNOM3'
      Size = 3
    end
    object CdsSetupAccessoryGetDCDOM3: TStringField
      FieldName = 'DCDOM3'
      Size = 30
    end
    object CdsSetupAccessoryGetORDOM3: TIntegerField
      FieldName = 'ORDOM3'
    end
    object CdsSetupAccessoryGetSEQOM3: TIntegerField
      FieldName = 'SEQOM3'
    end
    object CdsSetupAccessoryGetFSROM3: TStringField
      FieldName = 'FSROM3'
    end
    object CdsSetupAccessoryGetIDTOM3: TDateField
      FieldName = 'IDTOM3'
    end
    object CdsSetupAccessoryGetDEPOM3: TStringField
      FieldName = 'DEPOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetVNOOM3: TStringField
      FieldName = 'VNOOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetVTPOM3: TStringField
      FieldName = 'VTPOM3'
      FixedChar = True
      Size = 1
    end
    object CdsSetupAccessoryGetCPSOM3: TStringField
      FieldName = 'CPSOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetCRTOM3: TIntegerField
      FieldName = 'CRTOM3'
    end
    object CdsSetupAccessoryGetRDCOM3: TStringField
      FieldName = 'RDCOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetRDNOM3: TStringField
      FieldName = 'RDNOM3'
      Size = 30
    end
    object CdsSetupAccessoryGetRSQOM3: TIntegerField
      FieldName = 'RSQOM3'
    end
    object CdsSetupAccessoryGetRDTOM3: TDateField
      FieldName = 'RDTOM3'
    end
    object CdsSetupAccessoryGetPRDOM3: TStringField
      FieldName = 'PRDOM3'
    end
    object CdsSetupAccessoryGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsSetupAccessoryGetCOLOM3: TStringField
      FieldName = 'COLOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetSEROM3: TStringField
      FieldName = 'SEROM3'
      Size = 30
    end
    object CdsSetupAccessoryGetENGOM3: TStringField
      FieldName = 'ENGOM3'
      Size = 30
    end
    object CdsSetupAccessoryGetQO1OM3: TIntegerField
      FieldName = 'QO1OM3'
    end
    object CdsSetupAccessoryGetQO2OM3: TIntegerField
      FieldName = 'QO2OM3'
    end
    object CdsSetupAccessoryGetQR1OM3: TIntegerField
      FieldName = 'QR1OM3'
    end
    object CdsSetupAccessoryGetQR2OM3: TIntegerField
      FieldName = 'QR2OM3'
    end
    object CdsSetupAccessoryGetUC1OM3: TFMTBCDField
      FieldName = 'UC1OM3'
      OnGetText = CdsSetupAccessoryGetUC1OM3GetText
      Precision = 18
      Size = 2
    end
    object CdsSetupAccessoryGetUC2OM3: TFMTBCDField
      FieldName = 'UC2OM3'
      Precision = 18
      Size = 2
    end
    object CdsSetupAccessoryGetAMTOM3: TFMTBCDField
      FieldName = 'AMTOM3'
      Precision = 18
      Size = 2
    end
    object CdsSetupAccessoryGetTWHOM3: TStringField
      FieldName = 'TWHOM3'
      Size = 6
    end
    object CdsSetupAccessoryGetNTEOM3: TStringField
      FieldName = 'NTEOM3'
      Size = 1000
    end
    object CdsSetupAccessoryGetDSEOM3: TStringField
      FieldName = 'DSEOM3'
      Size = 1000
    end
    object CdsSetupAccessoryGetAMT_CAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMT_CAL'
      OnGetText = CdsSetupAccessoryGetAMT_CALGetText
      Calculated = True
    end
  end
  object CdsMtApprGetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtApprGetList'
    RemoteServer = dspDataConnection
    Left = 273
    Top = 504
    object CdsMtApprGetListDNOST3: TIntegerField
      FieldName = 'DNOST3'
    end
    object CdsMtApprGetListIDTST3: TDateField
      FieldName = 'IDTST3'
      OnGetText = CdsMtApprGetListIDTST3GetText
    end
    object CdsMtApprGetListSTSOT5: TStringField
      FieldName = 'STSOT5'
      Size = 1
    end
    object CdsMtApprGetListYAROT5: TIntegerField
      FieldName = 'YAROT5'
    end
    object CdsMtApprGetListCMPOT5: TStringField
      FieldName = 'CMPOT5'
      Size = 2
    end
    object CdsMtApprGetListBRNOT5: TStringField
      FieldName = 'BRNOT5'
      Size = 3
    end
    object CdsMtApprGetListDEPOT5: TStringField
      FieldName = 'DEPOT5'
      Size = 6
    end
    object CdsMtApprGetListDCDOT5: TStringField
      FieldName = 'DCDOT5'
      Size = 6
    end
    object CdsMtApprGetListDNOOT5: TIntegerField
      FieldName = 'DNOOT5'
    end
    object CdsMtApprGetListSEQOT5: TSmallintField
      FieldName = 'SEQOT5'
    end
    object CdsMtApprGetListIDTOT5: TDateField
      FieldName = 'IDTOT5'
      OnGetText = CdsMtApprGetListIDTST3GetText
    end
    object CdsMtApprGetListSMNOT5: TStringField
      FieldName = 'SMNOT5'
      Size = 6
    end
    object CdsMtApprGetListCNOOT5: TLargeintField
      FieldName = 'CNOOT5'
    end
    object CdsMtApprGetListFULLNAME: TStringField
      FieldName = 'FULLNAME'
      Size = 255
    end
    object CdsMtApprGetListITNPM1: TStringField
      FieldName = 'ITNPM1'
    end
    object CdsMtApprGetListTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsMtApprGetListTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsMtApprGetListSEROT5: TStringField
      FieldName = 'SEROT5'
      Size = 30
    end
    object CdsMtApprGetListSTPOT5: TStringField
      FieldName = 'STPOT5'
      FixedChar = True
      Size = 1
    end
    object CdsMtApprGetListTNMSTP: TStringField
      FieldName = 'TNMSTP'
      Size = 255
    end
    object CdsMtApprGetListEPDOT5: TDateField
      FieldName = 'EPDOT5'
      OnGetText = CdsMtApprGetListEPDOT5GetText
    end
    object CdsMtApprGetListASDOT5: TDateField
      FieldName = 'ASDOT5'
    end
    object CdsMtApprGetListPSTOT5: TStringField
      FieldName = 'PSTOT5'
      Size = 6
    end
    object CdsMtApprGetListFCDOT5: TStringField
      FieldName = 'FCDOT5'
      Size = 6
    end
    object CdsMtApprGetListTNMFCD: TStringField
      FieldName = 'TNMFCD'
      Size = 255
    end
    object CdsMtApprGetListDWTOT5: TFMTBCDField
      FieldName = 'DWTOT5'
      OnGetText = CdsMtApprGetListDWTOT5GetText
      Precision = 18
      Size = 2
    end
  end
  object CdsMtAppGetAccessoryMs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtAppGetAccessory'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsMtAppGetAccessoryMsCalcFields
    Left = 521
    Top = 416
    object CdsMtAppGetAccessoryMsSTSOT6: TStringField
      FieldName = 'STSOT6'
      Size = 1
    end
    object CdsMtAppGetAccessoryMsYAROT6: TIntegerField
      FieldName = 'YAROT6'
    end
    object CdsMtAppGetAccessoryMsCMPOT6: TStringField
      FieldName = 'CMPOT6'
      Size = 2
    end
    object CdsMtAppGetAccessoryMsBRNOT6: TStringField
      FieldName = 'BRNOT6'
      Size = 3
    end
    object CdsMtAppGetAccessoryMsDCDOT6: TStringField
      FieldName = 'DCDOT6'
      Size = 6
    end
    object CdsMtAppGetAccessoryMsDNOOT6: TIntegerField
      FieldName = 'DNOOT6'
    end
    object CdsMtAppGetAccessoryMsSEQOT6: TSmallintField
      FieldName = 'SEQOT6'
    end
    object CdsMtAppGetAccessoryMsFGDOT6: TStringField
      FieldName = 'FGDOT6'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryMsFRDOT6: TStringField
      FieldName = 'FRDOT6'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryMsFSROT6: TStringField
      FieldName = 'FSROT6'
    end
    object CdsMtAppGetAccessoryMsTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsMtAppGetAccessoryMsFWHOT6: TStringField
      FieldName = 'FWHOT6'
      Size = 6
    end
    object CdsMtAppGetAccessoryMsFPDOT6: TStringField
      FieldName = 'FPDOT6'
    end
    object CdsMtAppGetAccessoryMsFCLOT6: TStringField
      FieldName = 'FCLOT6'
      Size = 6
    end
    object CdsMtAppGetAccessoryMsFQ1OT6: TIntegerField
      FieldName = 'FQ1OT6'
    end
    object CdsMtAppGetAccessoryMsFQ2OT6: TIntegerField
      FieldName = 'FQ2OT6'
    end
    object CdsMtAppGetAccessoryMsTDSOT6: TStringField
      FieldName = 'TDSOT6'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryMsFDSOT6: TFMTBCDField
      FieldName = 'FDSOT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsFPAOT6: TFMTBCDField
      FieldName = 'FPAOT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsFP1OT6: TFMTBCDField
      FieldName = 'FP1OT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsFP2OT6: TFMTBCDField
      FieldName = 'FP2OT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsFP3OT6: TFMTBCDField
      FieldName = 'FP3OT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsFP4OT6: TFMTBCDField
      FieldName = 'FP4OT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsFU1OT6: TFMTBCDField
      FieldName = 'FU1OT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsFU2OT6: TFMTBCDField
      FieldName = 'FU2OT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsPRTOT6: TStringField
      FieldName = 'PRTOT6'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryMsABBOT6: TStringField
      FieldName = 'ABBOT6'
      Size = 3
    end
    object CdsMtAppGetAccessoryMsAMTOT6: TFMTBCDField
      FieldName = 'AMTOT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsNETOT6: TFMTBCDField
      FieldName = 'NETOT6'
      Precision = 18
      Size = 2
    end
    object CdsMtAppGetAccessoryMsFLAG_SELECT: TStringField
      FieldName = 'FLAG_SELECT'
      FixedChar = True
      Size = 1
    end
    object CdsMtAppGetAccessoryMsBRDPM1: TStringField
      FieldName = 'BRDPM1'
      Size = 6
    end
    object CdsMtAppGetAccessoryMsAM1OT6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AM1OT6'
      DisplayFormat = '#,###.00'
      Calculated = True
    end
    object CdsMtAppGetAccessoryMsAM2OT6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AM2OT6'
      DisplayFormat = '#,###.00'
      Calculated = True
    end
    object CdsMtAppGetAccessoryMsAMMOT6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AMMOT6'
      DisplayFormat = '#,###.00'
      Calculated = True
    end
    object CdsMtAppGetAccessoryMsNEEOT6: TFloatField
      FieldKind = fkCalculated
      FieldName = 'NEEOT6'
      DisplayFormat = '#,###.00'
      Calculated = True
    end
  end
  object CdsMtApprGetDoc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMtApprGetDoc'
    RemoteServer = dspDataConnection
    Left = 384
    Top = 192
    object CdsMtApprGetDocCMPRTH: TIntegerField
      FieldName = 'CMPRTH'
    end
    object CdsMtApprGetDocBRNRTH: TIntegerField
      FieldName = 'BRNRTH'
    end
    object CdsMtApprGetDocYARRTH: TIntegerField
      FieldName = 'YARRTH'
    end
    object CdsMtApprGetDocPRDRTH: TIntegerField
      FieldName = 'PRDRTH'
    end
    object CdsMtApprGetDocDCDRTH: TIntegerField
      FieldName = 'DCDRTH'
    end
    object CdsMtApprGetDocDNORTH: TIntegerField
      FieldName = 'DNORTH'
    end
    object CdsMtApprGetDocSEQRTH: TIntegerField
      FieldName = 'SEQRTH'
    end
    object CdsMtApprGetDocTEXT_DOC: TStringField
      FieldName = 'TEXT_DOC'
      Size = 255
    end
    object CdsMtApprGetDocREF_DOC: TStringField
      FieldName = 'REF_DOC'
    end
  end
end
