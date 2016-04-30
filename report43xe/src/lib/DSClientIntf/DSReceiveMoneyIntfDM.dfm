inherited DSReceiveMoneyDM: TDSReceiveMoneyDM
  OldCreateOrder = True
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSReceiveMoney'
  end
  inherited cdsDescData: TClientDataSet
    Left = 136
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
  inherited cdsMenusList: TClientDataSet
    Left = 136
  end
  inherited cdsGetComponentList: TClientDataSet
    Left = 128
  end
  object CdsTtRcvGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRcvGet'
    RemoteServer = dspDataConnection
    Left = 392
    Top = 160
    object CdsTtRcvGetSTSRT4: TStringField
      FieldName = 'STSRT4'
      Size = 1
    end
    object CdsTtRcvGetYARRT4: TIntegerField
      FieldName = 'YARRT4'
    end
    object CdsTtRcvGetPRDRT4: TIntegerField
      FieldName = 'PRDRT4'
    end
    object CdsTtRcvGetCMPRT4: TStringField
      FieldName = 'CMPRT4'
      Size = 2
    end
    object CdsTtRcvGetBRNRT4: TStringField
      FieldName = 'BRNRT4'
      Size = 3
    end
    object CdsTtRcvGetDCDRT4: TStringField
      FieldName = 'DCDRT4'
      Size = 6
    end
    object CdsTtRcvGetDNORT4: TIntegerField
      FieldName = 'DNORT4'
    end
    object CdsTtRcvGetIDTRT4: TDateField
      FieldName = 'IDTRT4'
    end
    object CdsTtRcvGetRDCRT4: TStringField
      FieldName = 'RDCRT4'
      Size = 6
    end
    object CdsTtRcvGetRDNRT4: TIntegerField
      FieldName = 'RDNRT4'
    end
    object CdsTtRcvGetRDTRT4: TDateField
      FieldName = 'RDTRT4'
    end
    object CdsTtRcvGetDEPRT4: TStringField
      FieldName = 'DEPRT4'
      Size = 6
    end
    object CdsTtRcvGetCTYRT4: TStringField
      FieldName = 'CTYRT4'
      Size = 6
    end
    object CdsTtRcvGetCNORT4: TLargeintField
      FieldName = 'CNORT4'
    end
    object CdsTtRcvGetTNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsTtRcvGetPTPRT4: TStringField
      FieldName = 'PTPRT4'
      Size = 6
    end
    object CdsTtRcvGetTNMPTP: TStringField
      FieldName = 'TNMPTP'
      Size = 80
    end
    object CdsTtRcvGetCYTRT4: TStringField
      FieldName = 'CYTRT4'
      Size = 6
    end
    object CdsTtRcvGetCYRRT4: TFMTBCDField
      FieldName = 'CYRRT4'
      Precision = 18
      Size = 4
    end
    object CdsTtRcvGetATPRT4: TStringField
      FieldName = 'ATPRT4'
      Size = 6
    end
    object CdsTtRcvGetAMTRT4: TFMTBCDField
      FieldName = 'AMTRT4'
      OnGetText = CdsTtRcvGetAMTRT4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRcvGetPINRT4: TStringField
      FieldName = 'PINRT4'
      Size = 6
    end
    object CdsTtRcvGetBAKRT4: TStringField
      FieldName = 'BAKRT4'
      Size = 6
    end
    object CdsTtRcvGetTNMBAK: TStringField
      FieldName = 'TNMBAK'
      Size = 80
    end
    object CdsTtRcvGetBBRRT4: TStringField
      FieldName = 'BBRRT4'
      Size = 80
    end
    object CdsTtRcvGetNOTRT4: TStringField
      FieldName = 'NOTRT4'
    end
    object CdsTtRcvGetDDTRT4: TDateField
      FieldName = 'DDTRT4'
    end
    object CdsTtRcvGetBCMRT4: TStringField
      FieldName = 'BCMRT4'
      Size = 6
    end
    object CdsTtRcvGetTNMBCM: TStringField
      FieldName = 'TNMBCM'
      Size = 80
    end
    object CdsTtRcvGetTGLRT4: TStringField
      FieldName = 'TGLRT4'
      FixedChar = True
      Size = 1
    end
    object CdsTtRcvGetMEMRT4: TStringField
      FieldName = 'MEMRT4'
      Size = 1000
    end
    object CdsTtRcvGetREGRT7: TStringField
      FieldName = 'REGRT7'
      Size = 6
    end
    object CdsTtRcvGetRENRT7: TIntegerField
      FieldName = 'RENRT7'
    end
    object CdsTtRcvGetPRVRT7: TStringField
      FieldName = 'PRVRT7'
      Size = 6
    end
    object CdsTtRcvGetTNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsTtRcvGetREGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsTtRcvGetENTUSR: TStringField
      FieldName = 'ENTUSR'
      Size = 31
    end
    object CdsTtRcvGetENTDTE: TSQLTimeStampField
      FieldName = 'ENTDTE'
    end
    object CdsTtRcvGetEDTUSR: TStringField
      FieldName = 'EDTUSR'
      Size = 31
    end
    object CdsTtRcvGetEDTDTE: TSQLTimeStampField
      FieldName = 'EDTDTE'
    end
  end
  object CdsTtRcvGetAm4: TClientDataSet
    Aggregates = <>
    Filter = 'BALAM4 > 0'
    Filtered = True
    Params = <>
    ProviderName = 'dspTtRcvGetAm4'
    RemoteServer = dspDataConnection
    Left = 400
    Top = 224
    object CdsTtRcvGetAm4YARAM4: TIntegerField
      FieldName = 'YARAM4'
    end
    object CdsTtRcvGetAm4CMPAM4: TStringField
      FieldName = 'CMPAM4'
      Size = 2
    end
    object CdsTtRcvGetAm4BRNAM4: TStringField
      FieldName = 'BRNAM4'
      Size = 3
    end
    object CdsTtRcvGetAm4DCDAM4: TStringField
      FieldName = 'DCDAM4'
      Size = 6
    end
    object CdsTtRcvGetAm4DNOAM4: TIntegerField
      FieldName = 'DNOAM4'
    end
    object CdsTtRcvGetAm4SEQAM4: TSmallintField
      FieldName = 'SEQAM4'
    end
    object CdsTtRcvGetAm4IDTAM4: TDateField
      FieldName = 'IDTAM4'
      OnGetText = CdsTtRcvGetAm4IDTAM4GetText
    end
    object CdsTtRcvGetAm4DEPAM4: TStringField
      FieldName = 'DEPAM4'
      Size = 6
    end
    object CdsTtRcvGetAm4PRDAM4: TStringField
      FieldName = 'PRDAM4'
    end
    object CdsTtRcvGetAm4TNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsTtRcvGetAm4TYPRT4: TStringField
      FieldName = 'TYPRT4'
      Size = 6
    end
    object CdsTtRcvGetAm4SERAM4: TStringField
      FieldName = 'SERAM4'
      Size = 30
    end
    object CdsTtRcvGetAm4AMTAM4: TFMTBCDField
      FieldName = 'AMTAM4'
      OnGetText = CdsTtRcvGetAm4AMTAM4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRcvGetAm4AMTRT4: TFMTBCDField
      FieldName = 'AMTRT4'
      OnGetText = CdsTtRcvGetAm4AMTAM4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRcvGetAm4BALAM4: TFMTBCDField
      FieldName = 'BALAM4'
      OnGetText = CdsTtRcvGetAm4AMTAM4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRcvGetAm4TMPAM4: TFMTBCDField
      FieldName = 'TMPAM4'
      Precision = 18
      Size = 2
    end
    object CdsTtRcvGetAm4TYPAM4: TStringField
      FieldName = 'TYPAM4'
      Size = 80
    end
    object CdsTtRcvGetAm4TNMTYP: TStringField
      FieldName = 'TNMTYP'
      Size = 80
    end
    object CdsTtRcvGetAm4PRVRT7: TStringField
      FieldName = 'PRVRT7'
      Size = 6
    end
    object CdsTtRcvGetAm4TNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsTtRcvGetAm4REGRT7: TStringField
      FieldName = 'REGRT7'
      Size = 6
    end
    object CdsTtRcvGetAm4RENRT7: TIntegerField
      FieldName = 'RENRT7'
    end
    object CdsTtRcvGetAm4REGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsTtRcvGetAm4FLAG: TIntegerField
      FieldName = 'FLAG'
    end
    object CdsTtRcvGetAm4TNMRT4: TStringField
      FieldName = 'TNMRT4'
      Size = 80
    end
  end
  object CdsTtRcvGetRt4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRcvGetRt4'
    RemoteServer = dspDataConnection
    Left = 392
    Top = 288
    object CdsTtRcvGetRt4STSRT4: TStringField
      FieldName = 'STSRT4'
      Size = 1
    end
    object CdsTtRcvGetRt4YARRT4: TIntegerField
      FieldName = 'YARRT4'
    end
    object CdsTtRcvGetRt4PRDRT4: TIntegerField
      FieldName = 'PRDRT4'
    end
    object CdsTtRcvGetRt4CMPRT4: TStringField
      FieldName = 'CMPRT4'
      Size = 2
    end
    object CdsTtRcvGetRt4BRNRT4: TStringField
      FieldName = 'BRNRT4'
      Size = 3
    end
    object CdsTtRcvGetRt4DCDRT4: TStringField
      FieldName = 'DCDRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4DNORT4: TIntegerField
      FieldName = 'DNORT4'
    end
    object CdsTtRcvGetRt4SEQRT4: TIntegerField
      FieldName = 'SEQRT4'
    end
    object CdsTtRcvGetRt4IDTRT4: TDateField
      FieldName = 'IDTRT4'
      OnGetText = CdsTtRcvGetRt4IDTRT4GetText
    end
    object CdsTtRcvGetRt4RDCRT4: TStringField
      FieldName = 'RDCRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4RDNRT4: TIntegerField
      FieldName = 'RDNRT4'
    end
    object CdsTtRcvGetRt4RSQRT4: TIntegerField
      FieldName = 'RSQRT4'
    end
    object CdsTtRcvGetRt4RDTRT4: TDateField
      FieldName = 'RDTRT4'
      OnGetText = CdsTtRcvGetRt4IDTRT4GetText
    end
    object CdsTtRcvGetRt4RTPRT4: TStringField
      FieldName = 'RTPRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4DEPRT4: TStringField
      FieldName = 'DEPRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4CTYRT4: TStringField
      FieldName = 'CTYRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4CNORT4: TLargeintField
      FieldName = 'CNORT4'
    end
    object CdsTtRcvGetRt4PTPRT4: TStringField
      FieldName = 'PTPRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4TNMPTP: TStringField
      FieldName = 'TNMPTP'
      Size = 255
    end
    object CdsTtRcvGetRt4CYTRT4: TStringField
      FieldName = 'CYTRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4CYRRT4: TFMTBCDField
      FieldName = 'CYRRT4'
      Precision = 18
      Size = 4
    end
    object CdsTtRcvGetRt4TYPRT4: TStringField
      FieldName = 'TYPRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4ATPRT4: TStringField
      FieldName = 'ATPRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4AMTRT4: TFMTBCDField
      FieldName = 'AMTRT4'
      OnGetText = CdsTtRcvGetRt4AMTRT4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRcvGetRt4PINRT4: TStringField
      FieldName = 'PINRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4BAKRT4: TStringField
      FieldName = 'BAKRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4BBRRT4: TStringField
      FieldName = 'BBRRT4'
      Size = 80
    end
    object CdsTtRcvGetRt4NOTRT4: TStringField
      FieldName = 'NOTRT4'
    end
    object CdsTtRcvGetRt4DDTRT4: TDateField
      FieldName = 'DDTRT4'
      OnGetText = CdsTtRcvGetRt4IDTRT4GetText
    end
    object CdsTtRcvGetRt4BCMRT4: TStringField
      FieldName = 'BCMRT4'
      Size = 6
    end
    object CdsTtRcvGetRt4ENTUSR: TStringField
      FieldName = 'ENTUSR'
      Size = 31
    end
    object CdsTtRcvGetRt4ENTDTE: TSQLTimeStampField
      FieldName = 'ENTDTE'
    end
    object CdsTtRcvGetRt4EDTUSR: TStringField
      FieldName = 'EDTUSR'
      Size = 31
    end
    object CdsTtRcvGetRt4EDTDTE: TSQLTimeStampField
      FieldName = 'EDTDTE'
    end
    object CdsTtRcvGetRt4TNMBAK: TStringField
      FieldName = 'TNMBAK'
      Size = 255
    end
    object CdsTtRcvGetRt4TNMBCM: TStringField
      FieldName = 'TNMBCM'
      Size = 255
    end
    object CdsTtRcvGetRt4TNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsTtRcvGetRt4TNMTYP: TStringField
      FieldName = 'TNMTYP'
      Size = 80
    end
    object CdsTtRcvGetRt4REGRT7: TStringField
      FieldName = 'REGRT7'
      Size = 6
    end
    object CdsTtRcvGetRt4RENRT7: TIntegerField
      FieldName = 'RENRT7'
    end
    object CdsTtRcvGetRt4PRVRT7: TStringField
      FieldName = 'PRVRT7'
      Size = 6
    end
    object CdsTtRcvGetRt4TNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsTtRcvGetRt4REGFULL: TStringField
      FieldName = 'REGFULL'
    end
  end
  object CdsTtRrRcvGetAm4: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'dspTtRcvGetAm4'
    RemoteServer = dspDataConnection
    Left = 528
    Top = 224
    object CdsTtRrRcvGetAm4YARAM4: TIntegerField
      FieldName = 'YARAM4'
    end
    object CdsTtRrRcvGetAm4CMPAM4: TStringField
      FieldName = 'CMPAM4'
      Size = 2
    end
    object CdsTtRrRcvGetAm4BRNAM4: TStringField
      FieldName = 'BRNAM4'
      Size = 3
    end
    object CdsTtRrRcvGetAm4DCDAM4: TStringField
      FieldName = 'DCDAM4'
      Size = 6
    end
    object CdsTtRrRcvGetAm4DNOAM4: TIntegerField
      FieldName = 'DNOAM4'
    end
    object CdsTtRrRcvGetAm4SEQAM4: TSmallintField
      FieldName = 'SEQAM4'
    end
    object CdsTtRrRcvGetAm4IDTAM4: TDateField
      FieldName = 'IDTAM4'
    end
    object CdsTtRrRcvGetAm4DEPAM4: TStringField
      FieldName = 'DEPAM4'
      Size = 6
    end
    object CdsTtRrRcvGetAm4PRDAM4: TStringField
      FieldName = 'PRDAM4'
    end
    object CdsTtRrRcvGetAm4TNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsTtRrRcvGetAm4SERAM4: TStringField
      FieldName = 'SERAM4'
      Size = 30
    end
    object CdsTtRrRcvGetAm4TYPRT4: TStringField
      FieldName = 'TYPRT4'
      Size = 6
    end
    object CdsTtRrRcvGetAm4TNMRT4: TStringField
      FieldName = 'TNMRT4'
      Size = 80
    end
    object CdsTtRrRcvGetAm4TYPAM4: TStringField
      FieldName = 'TYPAM4'
      Size = 6
    end
    object CdsTtRrRcvGetAm4TNMTYP: TStringField
      FieldName = 'TNMTYP'
      Size = 80
    end
    object CdsTtRrRcvGetAm4AMTAM4: TFMTBCDField
      FieldName = 'AMTAM4'
      OnGetText = CdsTtRrRcvGetAm4AMTAM4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRrRcvGetAm4AMTRT4: TFMTBCDField
      FieldName = 'AMTRT4'
      OnGetText = CdsTtRrRcvGetAm4AMTAM4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRrRcvGetAm4BALAM4: TFMTBCDField
      FieldName = 'BALAM4'
      OnGetText = CdsTtRrRcvGetAm4AMTAM4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRrRcvGetAm4TMPAM4: TFMTBCDField
      FieldName = 'TMPAM4'
      OnGetText = CdsTtRrRcvGetAm4AMTAM4GetText
      Precision = 18
      Size = 2
    end
    object CdsTtRrRcvGetAm4PRVRT7: TStringField
      FieldName = 'PRVRT7'
      Size = 6
    end
    object CdsTtRrRcvGetAm4TNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsTtRrRcvGetAm4REGRT7: TStringField
      FieldName = 'REGRT7'
      Size = 6
    end
    object CdsTtRrRcvGetAm4RENRT7: TIntegerField
      FieldName = 'RENRT7'
    end
    object CdsTtRrRcvGetAm4REGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsTtRrRcvGetAm4FLAG: TIntegerField
      FieldName = 'FLAG'
    end
  end
end
