inherited DSAssignWorkDM: TDSAssignWorkDM
  OldCreateOrder = True
  Height = 587
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSAssignWork'
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
  object CdsTtSchGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTTSchGet'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsTtSchGetCalcFields
    Left = 392
    Top = 104
    object CdsTtSchGetSTSSCH: TStringField
      FieldName = 'STSSCH'
      Size = 1
    end
    object CdsTtSchGetCMPSCH: TStringField
      FieldName = 'CMPSCH'
      Size = 2
    end
    object CdsTtSchGetBRNSCH: TStringField
      FieldName = 'BRNSCH'
      Size = 3
    end
    object CdsTtSchGetYARSCH: TIntegerField
      FieldName = 'YARSCH'
    end
    object CdsTtSchGetPRDSCH: TIntegerField
      FieldName = 'PRDSCH'
    end
    object CdsTtSchGetDFRSCH: TDateField
      FieldName = 'DFRSCH'
    end
    object CdsTtSchGetDTOSCH: TDateField
      FieldName = 'DTOSCH'
    end
    object CdsTtSchGetFR1SCH: TDateField
      FieldName = 'FR1SCH'
    end
    object CdsTtSchGetTO1SCH: TDateField
      FieldName = 'TO1SCH'
    end
    object CdsTtSchGetFR2SCH: TDateField
      FieldName = 'FR2SCH'
    end
    object CdsTtSchGetTO2SCH: TDateField
      FieldName = 'TO2SCH'
    end
    object CdsTtSchGetFR3SCH: TDateField
      FieldName = 'FR3SCH'
    end
    object CdsTtSchGetTO3SCH: TDateField
      FieldName = 'TO3SCH'
    end
    object CdsTtSchGetFR4SCH: TDateField
      FieldName = 'FR4SCH'
    end
    object CdsTtSchGetTO4SCH: TDateField
      FieldName = 'TO4SCH'
    end
    object CdsTtSchGetENTUSR: TStringField
      FieldName = 'ENTUSR'
      Size = 31
    end
    object CdsTtSchGetENTDTE: TSQLTimeStampField
      FieldName = 'ENTDTE'
    end
    object CdsTtSchGetEDTUSR: TStringField
      FieldName = 'EDTUSR'
      Size = 31
    end
    object CdsTtSchGetEDTDTE: TSQLTimeStampField
      FieldName = 'EDTDTE'
    end
    object CdsTtSchGetDDDDMMYYYY: TStringField
      FieldKind = fkCalculated
      FieldName = 'DDDDMMYYYY'
      Size = 40
      Calculated = True
    end
    object CdsTtSchGetW1: TStringField
      FieldName = 'W1'
    end
    object CdsTtSchGetW2: TStringField
      FieldName = 'W2'
    end
    object CdsTtSchGetW3: TStringField
      FieldName = 'W3'
    end
    object CdsTtSchGetW4: TStringField
      FieldName = 'W4'
    end
    object CdsTtSchGetFD1: TSmallintField
      FieldName = 'FD1'
    end
    object CdsTtSchGetTD1: TSmallintField
      FieldName = 'TD1'
    end
    object CdsTtSchGetFD2: TSmallintField
      FieldName = 'FD2'
    end
    object CdsTtSchGetTD2: TSmallintField
      FieldName = 'TD2'
    end
    object CdsTtSchGetFD3: TSmallintField
      FieldName = 'FD3'
    end
    object CdsTtSchGetTD3: TSmallintField
      FieldName = 'TD3'
    end
    object CdsTtSchGetFD4: TSmallintField
      FieldName = 'FD4'
    end
    object CdsTtSchGetTD4: TSmallintField
      FieldName = 'TD4'
    end
  end
  object CdsTtSchOptGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTTSchOptGet'
    RemoteServer = dspDataConnection
    Left = 392
    Top = 168
    object CdsTtSchOptGetSTSOPT: TStringField
      FieldName = 'STSOPT'
      Size = 1
    end
    object CdsTtSchOptGetCMPOPT: TStringField
      FieldName = 'CMPOPT'
      Size = 2
    end
    object CdsTtSchOptGetBRNOPT: TStringField
      FieldName = 'BRNOPT'
      Size = 3
    end
    object CdsTtSchOptGetYAROPT: TIntegerField
      FieldName = 'YAROPT'
    end
    object CdsTtSchOptGetPRDOPT: TIntegerField
      FieldName = 'PRDOPT'
    end
    object CdsTtSchOptGetWEKOPT: TSmallintField
      FieldName = 'WEKOPT'
    end
    object CdsTtSchOptGetOPTOPT: TStringField
      FieldName = 'OPTOPT'
      Size = 6
    end
    object CdsTtSchOptGetDATOPT: TDateField
      FieldName = 'DATOPT'
    end
    object CdsTtSchOptGetMEMOPT: TStringField
      FieldName = 'MEMOPT'
      Size = 1000
    end
    object CdsTtSchOptGetENTUSR: TStringField
      FieldName = 'ENTUSR'
      Size = 31
    end
    object CdsTtSchOptGetENTDTE: TSQLTimeStampField
      FieldName = 'ENTDTE'
    end
    object CdsTtSchOptGetEDTUSR: TStringField
      FieldName = 'EDTUSR'
      Size = 31
    end
    object CdsTtSchOptGetEDTDTE: TSQLTimeStampField
      FieldName = 'EDTDTE'
    end
  end
  object CdsTtRdwGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTTRdwGet'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsTtRdwGetCalcFields
    Left = 400
    Top = 240
    object CdsTtRdwGetSTSRDW: TStringField
      FieldName = 'STSRDW'
      Size = 1
    end
    object CdsTtRdwGetCMPRDW: TStringField
      FieldName = 'CMPRDW'
      Size = 2
    end
    object CdsTtRdwGetBRNRDW: TStringField
      FieldName = 'BRNRDW'
      Size = 3
    end
    object CdsTtRdwGetYARRDW: TIntegerField
      FieldName = 'YARRDW'
    end
    object CdsTtRdwGetPRDRDW: TIntegerField
      FieldName = 'PRDRDW'
    end
    object CdsTtRdwGetDCDRDW: TStringField
      FieldName = 'DCDRDW'
      Size = 6
    end
    object CdsTtRdwGetDNORDW: TIntegerField
      FieldName = 'DNORDW'
    end
    object CdsTtRdwGetSEQRDW: TIntegerField
      FieldName = 'SEQRDW'
    end
    object CdsTtRdwGetOPTRDW: TStringField
      FieldName = 'OPTRDW'
      Size = 6
    end
    object CdsTtRdwGetRWKRDW: TIntegerField
      FieldName = 'RWKRDW'
    end
    object CdsTtRdwGetRDTRDW: TDateField
      FieldName = 'RDTRDW'
    end
    object CdsTtRdwGetRNORDW: TStringField
      FieldName = 'RNORDW'
    end
    object CdsTtRdwGetITNRDW: TStringField
      FieldName = 'ITNRDW'
    end
    object CdsTtRdwGetCOLRDW: TStringField
      FieldName = 'COLRDW'
      Size = 6
    end
    object CdsTtRdwGetQ11RDW: TIntegerField
      FieldName = 'Q11RDW'
    end
    object CdsTtRdwGetQ12RDW: TIntegerField
      FieldName = 'Q12RDW'
    end
    object CdsTtRdwGetQ21RDW: TIntegerField
      FieldName = 'Q21RDW'
    end
    object CdsTtRdwGetQ22RDW: TIntegerField
      FieldName = 'Q22RDW'
    end
    object CdsTtRdwGetQ31RDW: TIntegerField
      FieldName = 'Q31RDW'
    end
    object CdsTtRdwGetQ32RDW: TIntegerField
      FieldName = 'Q32RDW'
    end
    object CdsTtRdwGetQ41RDW: TIntegerField
      FieldName = 'Q41RDW'
    end
    object CdsTtRdwGetQ42RDW: TIntegerField
      FieldName = 'Q42RDW'
    end
    object CdsTtRdwGetQ51RDW: TIntegerField
      FieldName = 'Q51RDW'
    end
    object CdsTtRdwGetQ52RDW: TIntegerField
      FieldName = 'Q52RDW'
    end
    object CdsTtRdwGetENTUSR: TStringField
      FieldName = 'ENTUSR'
      Size = 31
    end
    object CdsTtRdwGetENTDTE: TSQLTimeStampField
      FieldName = 'ENTDTE'
    end
    object CdsTtRdwGetEDTUSR: TStringField
      FieldName = 'EDTUSR'
      Size = 31
    end
    object CdsTtRdwGetEDTDTE: TSQLTimeStampField
      FieldName = 'EDTDTE'
    end
    object CdsTtRdwGetTNMOPT: TStringField
      FieldName = 'TNMOPT'
      Size = 80
    end
    object CdsTtRdwGetSRSPM1: TStringField
      FieldName = 'SRSPM1'
      Size = 6
    end
    object CdsTtRdwGetSUMRDW: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SUMRDW'
      Calculated = True
    end
    object CdsTtRdwGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsTtRdwGetTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
  end
  object CdsTtSchGetNextMM: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTTSchGet'
    RemoteServer = dspDataConnection
    Left = 480
    Top = 104
    object CdsTtSchGetNextMMW1: TStringField
      FieldName = 'W1'
    end
    object CdsTtSchGetNextMMW2: TStringField
      FieldName = 'W2'
    end
    object CdsTtSchGetNextMMW3: TStringField
      FieldName = 'W3'
    end
    object CdsTtSchGetNextMMW4: TStringField
      FieldName = 'W4'
    end
  end
  object CdsTtPasGetByDate: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtPasGetByDate'
    RemoteServer = dspDataConnection
    Left = 400
    Top = 312
    object CdsTtPasGetByDateDNOPAS: TIntegerField
      FieldName = 'DNOPAS'
    end
  end
  object CdsTtPasGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtPasGet'
    RemoteServer = dspDataConnection
    Left = 400
    Top = 384
    object CdsTtPasGetSTSPAS: TStringField
      FieldName = 'STSPAS'
      Size = 1
    end
    object CdsTtPasGetCMPPAS: TStringField
      FieldName = 'CMPPAS'
      Size = 2
    end
    object CdsTtPasGetBRNPAS: TStringField
      FieldName = 'BRNPAS'
      Size = 3
    end
    object CdsTtPasGetYARPAS: TIntegerField
      FieldName = 'YARPAS'
    end
    object CdsTtPasGetPRDPAS: TIntegerField
      FieldName = 'PRDPAS'
    end
    object CdsTtPasGetDCDPAS: TStringField
      FieldName = 'DCDPAS'
      Size = 6
    end
    object CdsTtPasGetDNOPAS: TIntegerField
      FieldName = 'DNOPAS'
    end
    object CdsTtPasGetSEQPAS: TIntegerField
      FieldName = 'SEQPAS'
    end
    object CdsTtPasGetIWKPAS: TIntegerField
      FieldName = 'IWKPAS'
    end
    object CdsTtPasGetIDTPAS: TDateField
      FieldName = 'IDTPAS'
    end
    object CdsTtPasGetRWKPAS: TIntegerField
      FieldName = 'RWKPAS'
    end
    object CdsTtPasGetRDTPAS: TDateField
      FieldName = 'RDTPAS'
    end
    object CdsTtPasGetRDNPAS: TIntegerField
      FieldName = 'RDNPAS'
    end
    object CdsTtPasGetRNOPAS: TStringField
      FieldName = 'RNOPAS'
    end
    object CdsTtPasGetITNPAS: TStringField
      FieldName = 'ITNPAS'
    end
    object CdsTtPasGetCOLPAS: TStringField
      FieldName = 'COLPAS'
      Size = 6
    end
    object CdsTtPasGetTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsTtPasGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsTtPasGetSO1PAS: TIntegerField
      FieldName = 'SO1PAS'
    end
    object CdsTtPasGetSO2PAS: TIntegerField
      FieldName = 'SO2PAS'
    end
    object CdsTtPasGetSN1PAS: TIntegerField
      FieldName = 'SN1PAS'
    end
    object CdsTtPasGetSN2PAS: TIntegerField
      FieldName = 'SN2PAS'
    end
    object CdsTtPasGetP11PAS: TIntegerField
      FieldName = 'P11PAS'
    end
    object CdsTtPasGetP12PAS: TIntegerField
      FieldName = 'P12PAS'
    end
    object CdsTtPasGetP21PAS: TIntegerField
      FieldName = 'P21PAS'
    end
    object CdsTtPasGetP22PAS: TIntegerField
      FieldName = 'P22PAS'
    end
    object CdsTtPasGetP31PAS: TIntegerField
      FieldName = 'P31PAS'
    end
    object CdsTtPasGetP32PAS: TIntegerField
      FieldName = 'P32PAS'
    end
    object CdsTtPasGetP41PAS: TIntegerField
      FieldName = 'P41PAS'
    end
    object CdsTtPasGetP42PAS: TIntegerField
      FieldName = 'P42PAS'
    end
    object CdsTtPasGetBM1PAS: TIntegerField
      FieldName = 'BM1PAS'
    end
    object CdsTtPasGetBM2PAS: TIntegerField
      FieldName = 'BM2PAS'
    end
    object CdsTtPasGetBN1PAS: TIntegerField
      FieldName = 'BN1PAS'
    end
    object CdsTtPasGetBN2PAS: TIntegerField
      FieldName = 'BN2PAS'
    end
    object CdsTtPasGetSB1PAS: TIntegerField
      FieldName = 'SB1PAS'
    end
    object CdsTtPasGetSB2PAS: TIntegerField
      FieldName = 'SB2PAS'
    end
    object CdsTtPasGetSSMPAS: TIntegerField
      FieldName = 'SSMPAS'
    end
    object CdsTtPasGetPSMPAS: TIntegerField
      FieldName = 'PSMPAS'
    end
    object CdsTtPasGetBSMPAS: TIntegerField
      FieldName = 'BSMPAS'
    end
    object CdsTtPasGetALLPAS: TIntegerField
      FieldName = 'ALLPAS'
    end
    object CdsTtPasGetTALPAS: TIntegerField
      FieldName = 'TALPAS'
    end
  end
  object CdsTtAsnGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAsnGet'
    RemoteServer = dspDataConnection
    Left = 408
    Top = 456
    object CdsTtAsnGetSTSASN: TStringField
      FieldName = 'STSASN'
      Size = 1
    end
    object CdsTtAsnGetCMPASN: TStringField
      FieldName = 'CMPASN'
      Size = 2
    end
    object CdsTtAsnGetBRNASN: TStringField
      FieldName = 'BRNASN'
      Size = 3
    end
    object CdsTtAsnGetYARASN: TIntegerField
      FieldName = 'YARASN'
    end
    object CdsTtAsnGetPRDASN: TIntegerField
      FieldName = 'PRDASN'
    end
    object CdsTtAsnGetDCDASN: TStringField
      FieldName = 'DCDASN'
      Size = 6
    end
    object CdsTtAsnGetDNOASN: TIntegerField
      FieldName = 'DNOASN'
    end
    object CdsTtAsnGetSEQASN: TIntegerField
      FieldName = 'SEQASN'
    end
    object CdsTtAsnGetIWKASN: TIntegerField
      FieldName = 'IWKASN'
    end
    object CdsTtAsnGetIDTASN: TDateField
      FieldName = 'IDTASN'
    end
    object CdsTtAsnGetRWKASN: TIntegerField
      FieldName = 'RWKASN'
    end
    object CdsTtAsnGetRDTASN: TDateField
      FieldName = 'RDTASN'
    end
    object CdsTtAsnGetRDNASN: TIntegerField
      FieldName = 'RDNASN'
    end
    object CdsTtAsnGetRNOASN: TStringField
      FieldName = 'RNOASN'
    end
    object CdsTtAsnGetTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsTtAsnGetITNASN: TStringField
      FieldName = 'ITNASN'
    end
    object CdsTtAsnGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsTtAsnGetCOLASN: TStringField
      FieldName = 'COLASN'
      Size = 6
    end
    object CdsTtAsnGetSO1ASN: TIntegerField
      FieldName = 'SO1ASN'
    end
    object CdsTtAsnGetSO2ASN: TIntegerField
      FieldName = 'SO2ASN'
    end
    object CdsTtAsnGetSN1ASN: TIntegerField
      FieldName = 'SN1ASN'
    end
    object CdsTtAsnGetSN2ASN: TIntegerField
      FieldName = 'SN2ASN'
    end
    object CdsTtAsnGetA11ASN: TIntegerField
      FieldName = 'A11ASN'
    end
    object CdsTtAsnGetA12ASN: TIntegerField
      FieldName = 'A12ASN'
    end
    object CdsTtAsnGetA21ASN: TIntegerField
      FieldName = 'A21ASN'
    end
    object CdsTtAsnGetA22ASN: TIntegerField
      FieldName = 'A22ASN'
    end
    object CdsTtAsnGetA31ASN: TIntegerField
      FieldName = 'A31ASN'
    end
    object CdsTtAsnGetA32ASN: TIntegerField
      FieldName = 'A32ASN'
    end
    object CdsTtAsnGetA41ASN: TIntegerField
      FieldName = 'A41ASN'
    end
    object CdsTtAsnGetA42ASN: TIntegerField
      FieldName = 'A42ASN'
    end
    object CdsTtAsnGetODTASN: TDateField
      FieldName = 'ODTASN'
    end
    object CdsTtAsnGetOYRASN: TIntegerField
      FieldName = 'OYRASN'
    end
    object CdsTtAsnGetODCASN: TStringField
      FieldName = 'ODCASN'
      Size = 6
    end
    object CdsTtAsnGetODNASN: TIntegerField
      FieldName = 'ODNASN'
    end
    object CdsTtAsnGetOSQASN: TIntegerField
      FieldName = 'OSQASN'
    end
    object CdsTtAsnGetCNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsTtAsnGetTNMCNO: TStringField
      FieldName = 'TNMCNO'
      Size = 255
    end
    object CdsTtAsnGetTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 255
    end
    object CdsTtAsnGetEXDOM5: TDateField
      FieldName = 'EXDOM5'
    end
    object CdsTtAsnGetSSMASN: TIntegerField
      FieldName = 'SSMASN'
    end
    object CdsTtAsnGetASMASN: TIntegerField
      FieldName = 'ASMASN'
    end
    object CdsTtAsnGetALLASN: TIntegerField
      FieldName = 'ALLASN'
    end
    object CdsTtAsnGetREMASN: TIntegerField
      FieldName = 'REMASN'
    end
  end
  object CdsTtAswGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAswGet'
    RemoteServer = dspDataConnection
    Left = 408
    Top = 528
    object CdsTtAswGetSTSASW: TStringField
      FieldName = 'STSASW'
      Size = 1
    end
    object CdsTtAswGetCMPASW: TStringField
      FieldName = 'CMPASW'
      Size = 2
    end
    object CdsTtAswGetBRNASW: TStringField
      FieldName = 'BRNASW'
      Size = 3
    end
    object CdsTtAswGetYARASW: TIntegerField
      FieldName = 'YARASW'
    end
    object CdsTtAswGetPRDASW: TIntegerField
      FieldName = 'PRDASW'
    end
    object CdsTtAswGetDCDASW: TStringField
      FieldName = 'DCDASW'
      Size = 6
    end
    object CdsTtAswGetDNOASW: TIntegerField
      FieldName = 'DNOASW'
    end
    object CdsTtAswGetSEQASW: TIntegerField
      FieldName = 'SEQASW'
    end
    object CdsTtAswGetIWKASW: TIntegerField
      FieldName = 'IWKASW'
    end
    object CdsTtAswGetIDTASW: TDateField
      FieldName = 'IDTASW'
    end
    object CdsTtAswGetRWKASW: TIntegerField
      FieldName = 'RWKASW'
    end
    object CdsTtAswGetRDTASW: TDateField
      FieldName = 'RDTASW'
    end
    object CdsTtAswGetRDNASW: TIntegerField
      FieldName = 'RDNASW'
    end
    object CdsTtAswGetRNOASW: TStringField
      FieldName = 'RNOASW'
    end
    object CdsTtAswGetTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsTtAswGetITNASW: TStringField
      FieldName = 'ITNASW'
    end
    object CdsTtAswGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsTtAswGetCOLASW: TStringField
      FieldName = 'COLASW'
      Size = 6
    end
    object CdsTtAswGetSO1ASW: TIntegerField
      FieldName = 'SO1ASW'
    end
    object CdsTtAswGetSO2ASW: TIntegerField
      FieldName = 'SO2ASW'
    end
    object CdsTtAswGetSN1ASW: TIntegerField
      FieldName = 'SN1ASW'
    end
    object CdsTtAswGetSN2ASW: TIntegerField
      FieldName = 'SN2ASW'
    end
    object CdsTtAswGetA11ASW: TIntegerField
      FieldName = 'A11ASW'
    end
    object CdsTtAswGetA12ASW: TIntegerField
      FieldName = 'A12ASW'
    end
    object CdsTtAswGetA21ASW: TIntegerField
      FieldName = 'A21ASW'
    end
    object CdsTtAswGetA22ASW: TIntegerField
      FieldName = 'A22ASW'
    end
    object CdsTtAswGetA31ASW: TIntegerField
      FieldName = 'A31ASW'
    end
    object CdsTtAswGetA32ASW: TIntegerField
      FieldName = 'A32ASW'
    end
    object CdsTtAswGetA41ASW: TIntegerField
      FieldName = 'A41ASW'
    end
    object CdsTtAswGetA42ASW: TIntegerField
      FieldName = 'A42ASW'
    end
    object CdsTtAswGetODTASW: TDateField
      FieldName = 'ODTASW'
    end
    object CdsTtAswGetOYRASW: TIntegerField
      FieldName = 'OYRASW'
    end
    object CdsTtAswGetODCASW: TStringField
      FieldName = 'ODCASW'
      Size = 6
    end
    object CdsTtAswGetODNASW: TIntegerField
      FieldName = 'ODNASW'
    end
    object CdsTtAswGetOSQASW: TIntegerField
      FieldName = 'OSQASW'
    end
    object CdsTtAswGetCNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsTtAswGetTNMCNO: TStringField
      FieldName = 'TNMCNO'
      Size = 255
    end
    object CdsTtAswGetSMNOM5: TStringField
      FieldName = 'SMNOM5'
      Size = 6
    end
    object CdsTtAswGetTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 255
    end
    object CdsTtAswGetEXDOM5: TDateField
      FieldName = 'EXDOM5'
    end
    object CdsTtAswGetTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsTtAswGetASS_SO1ASW: TIntegerField
      FieldName = 'ASS_SO1ASW'
    end
    object CdsTtAswGetASS_SO2ASW: TIntegerField
      FieldName = 'ASS_SO2ASW'
    end
    object CdsTtAswGetASS_SN1ASW: TIntegerField
      FieldName = 'ASS_SN1ASW'
    end
    object CdsTtAswGetASS_SN2ASW: TIntegerField
      FieldName = 'ASS_SN2ASW'
    end
    object CdsTtAswGetASS_A11ASW: TIntegerField
      FieldName = 'ASS_A11ASW'
    end
    object CdsTtAswGetASS_A12ASW: TIntegerField
      FieldName = 'ASS_A12ASW'
    end
    object CdsTtAswGetASS_A21ASW: TIntegerField
      FieldName = 'ASS_A21ASW'
    end
    object CdsTtAswGetASS_A22ASW: TIntegerField
      FieldName = 'ASS_A22ASW'
    end
    object CdsTtAswGetASS_A31ASW: TIntegerField
      FieldName = 'ASS_A31ASW'
    end
    object CdsTtAswGetASS_A32ASW: TIntegerField
      FieldName = 'ASS_A32ASW'
    end
    object CdsTtAswGetASS_A41ASW: TIntegerField
      FieldName = 'ASS_A41ASW'
    end
    object CdsTtAswGetASS_A42ASW: TIntegerField
      FieldName = 'ASS_A42ASW'
    end
    object CdsTtAswGetREM_SO1ASW: TIntegerField
      FieldName = 'REM_SO1ASW'
    end
    object CdsTtAswGetREM_SO2ASW: TIntegerField
      FieldName = 'REM_SO2ASW'
    end
    object CdsTtAswGetREM_SN1ASW: TIntegerField
      FieldName = 'REM_SN1ASW'
    end
    object CdsTtAswGetREM_SN2ASW: TIntegerField
      FieldName = 'REM_SN2ASW'
    end
    object CdsTtAswGetREM_A11ASW: TIntegerField
      FieldName = 'REM_A11ASW'
    end
    object CdsTtAswGetREM_A12ASW: TIntegerField
      FieldName = 'REM_A12ASW'
    end
    object CdsTtAswGetREM_A21ASW: TIntegerField
      FieldName = 'REM_A21ASW'
    end
    object CdsTtAswGetREM_A22ASW: TIntegerField
      FieldName = 'REM_A22ASW'
    end
    object CdsTtAswGetREM_A31ASW: TIntegerField
      FieldName = 'REM_A31ASW'
    end
    object CdsTtAswGetREM_A32ASW: TIntegerField
      FieldName = 'REM_A32ASW'
    end
    object CdsTtAswGetREM_A41ASW: TIntegerField
      FieldName = 'REM_A41ASW'
    end
    object CdsTtAswGetREM_A42ASW: TIntegerField
      FieldName = 'REM_A42ASW'
    end
    object CdsTtAswGetSSMASW: TIntegerField
      FieldName = 'SSMASW'
    end
    object CdsTtAswGetASMASW: TIntegerField
      FieldName = 'ASMASW'
    end
    object CdsTtAswGetALLASW: TIntegerField
      FieldName = 'ALLASW'
    end
    object CdsTtAswGetREMASW: TIntegerField
      FieldName = 'REMASW'
    end
    object CdsTtAswGetREM_MONTH: TIntegerField
      FieldName = 'REM_MONTH'
    end
  end
  object CdsTtColGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtColGet'
    RemoteServer = dspDataConnection
    Left = 504
    Top = 528
    object CdsTtColGetSTSCOL: TStringField
      FieldName = 'STSCOL'
      Size = 1
    end
    object CdsTtColGetCMPCOL: TStringField
      FieldName = 'CMPCOL'
      Size = 2
    end
    object CdsTtColGetBRNCOL: TStringField
      FieldName = 'BRNCOL'
      Size = 3
    end
    object CdsTtColGetYARCOL: TIntegerField
      FieldName = 'YARCOL'
    end
    object CdsTtColGetPRDCOL: TIntegerField
      FieldName = 'PRDCOL'
    end
    object CdsTtColGetDCDCOL: TStringField
      FieldName = 'DCDCOL'
      Size = 6
    end
    object CdsTtColGetDNOCOL: TIntegerField
      FieldName = 'DNOCOL'
    end
    object CdsTtColGetSEQCOL: TIntegerField
      FieldName = 'SEQCOL'
    end
    object CdsTtColGetIWKCOL: TIntegerField
      FieldName = 'IWKCOL'
    end
    object CdsTtColGetIDTCOL: TDateField
      FieldName = 'IDTCOL'
    end
    object CdsTtColGetRWKCOL: TIntegerField
      FieldName = 'RWKCOL'
    end
    object CdsTtColGetRDTCOL: TDateField
      FieldName = 'RDTCOL'
    end
    object CdsTtColGetRDNCOL: TIntegerField
      FieldName = 'RDNCOL'
    end
    object CdsTtColGetTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsTtColGetITNCOL: TStringField
      FieldName = 'ITNCOL'
    end
    object CdsTtColGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsTtColGetCOLCOL: TStringField
      FieldName = 'COLCOL'
      Size = 6
    end
    object CdsTtColGetTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsTtColGetQT1COL: TIntegerField
      FieldName = 'QT1COL'
    end
    object CdsTtColGetQT2COL: TIntegerField
      FieldName = 'QT2COL'
    end
  end
  object CdsTtAd1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAd1Get'
    RemoteServer = dspDataConnection
    Left = 584
    Top = 528
    object CdsTtAd1GetSTSAD1: TStringField
      FieldName = 'STSAD1'
      Size = 1
    end
    object CdsTtAd1GetCMPAD1: TStringField
      FieldName = 'CMPAD1'
      Size = 2
    end
    object CdsTtAd1GetBRNAD1: TStringField
      FieldName = 'BRNAD1'
      Size = 3
    end
    object CdsTtAd1GetYARAD1: TIntegerField
      FieldName = 'YARAD1'
    end
    object CdsTtAd1GetPRDAD1: TIntegerField
      FieldName = 'PRDAD1'
    end
    object CdsTtAd1GetDCDAD1: TStringField
      FieldName = 'DCDAD1'
      Size = 6
    end
    object CdsTtAd1GetDNOAD1: TIntegerField
      FieldName = 'DNOAD1'
    end
    object CdsTtAd1GetSEQAD1: TIntegerField
      FieldName = 'SEQAD1'
    end
    object CdsTtAd1GetIWKAD1: TIntegerField
      FieldName = 'IWKAD1'
    end
    object CdsTtAd1GetIDTAD1: TDateField
      FieldName = 'IDTAD1'
      OnGetText = CdsTtAd1GetIDTAD1GetText
    end
    object CdsTtAd1GetEDTAD1: TDateField
      FieldName = 'EDTAD1'
      OnGetText = CdsTtAd1GetIDTAD1GetText
    end
    object CdsTtAd1GetWISAD1: TIntegerField
      FieldName = 'WISAD1'
    end
    object CdsTtAd1GetCOLAD1: TStringField
      FieldName = 'COLAD1'
      Size = 6
    end
    object CdsTtAd1GetQT1AD1: TIntegerField
      FieldName = 'QT1AD1'
    end
    object CdsTtAd1GetITNAD1: TStringField
      FieldName = 'ITNAD1'
    end
    object CdsTtAd1GetTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 255
    end
  end
  object CdsTtAp1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAp1Get'
    RemoteServer = dspDataConnection
    Left = 664
    Top = 528
    object CdsTtAp1GetSTSAP1: TStringField
      FieldName = 'STSAP1'
      Size = 1
    end
    object CdsTtAp1GetCMPAP1: TStringField
      FieldName = 'CMPAP1'
      Size = 2
    end
    object CdsTtAp1GetBRNAP1: TStringField
      FieldName = 'BRNAP1'
      Size = 3
    end
    object CdsTtAp1GetYARAP1: TIntegerField
      FieldName = 'YARAP1'
    end
    object CdsTtAp1GetPRDAP1: TIntegerField
      FieldName = 'PRDAP1'
    end
    object CdsTtAp1GetDCDAP1: TStringField
      FieldName = 'DCDAP1'
      Size = 6
    end
    object CdsTtAp1GetDNOAP1: TIntegerField
      FieldName = 'DNOAP1'
    end
    object CdsTtAp1GetSEQAP1: TIntegerField
      FieldName = 'SEQAP1'
    end
    object CdsTtAp1GetIWKAP1: TIntegerField
      FieldName = 'IWKAP1'
    end
    object CdsTtAp1GetIDTAP1: TDateField
      FieldName = 'IDTAP1'
    end
    object CdsTtAp1GetRWKAP1: TIntegerField
      FieldName = 'RWKAP1'
    end
    object CdsTtAp1GetRDTAP1: TDateField
      FieldName = 'RDTAP1'
    end
    object CdsTtAp1GetRDNAP1: TIntegerField
      FieldName = 'RDNAP1'
    end
    object CdsTtAp1GetTNMITC: TStringField
      FieldName = 'TNMITC'
      Size = 80
    end
    object CdsTtAp1GetTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsTtAp1GetITNAP1: TIntegerField
      FieldName = 'ITNAP1'
    end
    object CdsTtAp1GetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsTtAp1GetTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsTtAp1GetQT1AP1: TIntegerField
      FieldName = 'QT1AP1'
    end
    object CdsTtAp1GetQT2AP1: TIntegerField
      FieldName = 'QT2AP1'
    end
    object CdsTtAp1GetWISAP1: TIntegerField
      FieldName = 'WISAP1'
    end
    object CdsTtAp1GetISDAP1: TDateField
      FieldName = 'ISDAP1'
    end
    object CdsTtAp1GetEXDOM5: TDateField
      FieldName = 'EXDOM5'
    end
    object CdsTtAp1GetRPDOM5: TDateField
      FieldName = 'RPDOM5'
    end
    object CdsTtAp1GetDNOOM5: TIntegerField
      FieldName = 'DNOOM5'
    end
    object CdsTtAp1GetTNMCNO: TStringField
      FieldName = 'TNMCNO'
      Size = 255
    end
    object CdsTtAp1GetTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 255
    end
  end
  object CdsTtSchGetDay: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTTSchGet'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsTtSchGetCalcFields
    Left = 576
    Top = 104
    object CdsTtSchGetDaySTSSCH: TStringField
      FieldName = 'STSSCH'
      Size = 1
    end
    object CdsTtSchGetDayCMPSCH: TStringField
      FieldName = 'CMPSCH'
      Size = 2
    end
    object CdsTtSchGetDayBRNSCH: TStringField
      FieldName = 'BRNSCH'
      Size = 3
    end
    object CdsTtSchGetDayYARSCH: TIntegerField
      FieldName = 'YARSCH'
    end
    object CdsTtSchGetDayPRDSCH: TIntegerField
      FieldName = 'PRDSCH'
    end
    object CdsTtSchGetDayDFRSCH: TDateField
      FieldName = 'DFRSCH'
    end
    object CdsTtSchGetDayDTOSCH: TDateField
      FieldName = 'DTOSCH'
    end
    object CdsTtSchGetDayFR1SCH: TDateField
      FieldName = 'FR1SCH'
    end
    object CdsTtSchGetDayTO1SCH: TDateField
      FieldName = 'TO1SCH'
    end
    object CdsTtSchGetDayFR2SCH: TDateField
      FieldName = 'FR2SCH'
    end
    object CdsTtSchGetDayTO2SCH: TDateField
      FieldName = 'TO2SCH'
    end
    object CdsTtSchGetDayFR3SCH: TDateField
      FieldName = 'FR3SCH'
    end
    object CdsTtSchGetDayTO3SCH: TDateField
      FieldName = 'TO3SCH'
    end
    object CdsTtSchGetDayFR4SCH: TDateField
      FieldName = 'FR4SCH'
    end
    object CdsTtSchGetDayTO4SCH: TDateField
      FieldName = 'TO4SCH'
    end
    object CdsTtSchGetDayENTUSR: TStringField
      FieldName = 'ENTUSR'
      Size = 31
    end
    object CdsTtSchGetDayENTDTE: TSQLTimeStampField
      FieldName = 'ENTDTE'
    end
    object CdsTtSchGetDayEDTUSR: TStringField
      FieldName = 'EDTUSR'
      Size = 31
    end
    object CdsTtSchGetDayEDTDTE: TSQLTimeStampField
      FieldName = 'EDTDTE'
    end
    object CdsTtSchGetDayW1: TStringField
      FieldName = 'W1'
    end
    object CdsTtSchGetDayW2: TStringField
      FieldName = 'W2'
    end
    object CdsTtSchGetDayW3: TStringField
      FieldName = 'W3'
    end
    object CdsTtSchGetDayW4: TStringField
      FieldName = 'W4'
    end
    object CdsTtSchGetDayFD1: TSmallintField
      FieldName = 'FD1'
    end
    object CdsTtSchGetDayTD1: TSmallintField
      FieldName = 'TD1'
    end
    object CdsTtSchGetDayFD2: TSmallintField
      FieldName = 'FD2'
    end
    object CdsTtSchGetDayTD2: TSmallintField
      FieldName = 'TD2'
    end
    object CdsTtSchGetDayFD3: TSmallintField
      FieldName = 'FD3'
    end
    object CdsTtSchGetDayTD3: TSmallintField
      FieldName = 'TD3'
    end
    object CdsTtSchGetDayFD4: TSmallintField
      FieldName = 'FD4'
    end
    object CdsTtSchGetDayTD4: TSmallintField
      FieldName = 'TD4'
    end
  end
  object CdsTtAd1GetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAd1GetList'
    RemoteServer = dspDataConnection
    Left = 584
    Top = 472
    object CdsTtAd1GetListCMPAD1: TStringField
      FieldName = 'CMPAD1'
      Size = 2
    end
    object CdsTtAd1GetListBRNAD1: TStringField
      FieldName = 'BRNAD1'
      Size = 3
    end
    object CdsTtAd1GetListYARAD1: TIntegerField
      FieldName = 'YARAD1'
    end
    object CdsTtAd1GetListPRDAD1: TIntegerField
      FieldName = 'PRDAD1'
    end
    object CdsTtAd1GetListDCDAD1: TStringField
      FieldName = 'DCDAD1'
      Size = 6
    end
    object CdsTtAd1GetListDNOAD1: TIntegerField
      FieldName = 'DNOAD1'
    end
    object CdsTtAd1GetListIWKAD1: TIntegerField
      FieldName = 'IWKAD1'
    end
    object CdsTtAd1GetListIDTAD1: TDateField
      FieldName = 'IDTAD1'
    end
    object CdsTtAd1GetListQT1AD1: TIntegerField
      FieldName = 'QT1AD1'
    end
  end
end
