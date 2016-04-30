inherited DSPurchaseDM: TDSPurchaseDM
  OldCreateOrder = True
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSPurchase'
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
  object CdsTtPt1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTTPt1Get'
    RemoteServer = dspDataConnection
    Left = 880
    Top = 32
    object CdsTtPt1GetYARPT1: TIntegerField
      FieldName = 'YARPT1'
      OnGetText = CdsTtPt1GetYARPT1GetText
    end
    object CdsTtPt1GetCMPPT1: TStringField
      FieldName = 'CMPPT1'
      Size = 2
    end
    object CdsTtPt1GetBRNPT1: TStringField
      FieldName = 'BRNPT1'
      Size = 3
    end
    object CdsTtPt1GetDNOPT1: TStringField
      FieldName = 'DNOPT1'
      Size = 30
    end
    object CdsTtPt1GetSEQPT1: TIntegerField
      FieldName = 'SEQPT1'
    end
    object CdsTtPt1GetIDTPT1: TDateField
      FieldName = 'IDTPT1'
      OnGetText = CdsTtPt1GetIDTPT1GetText
    end
    object CdsTtPt1GetDEPPT1: TStringField
      FieldName = 'DEPPT1'
      Size = 6
    end
    object CdsTtPt1GetVNOPT1: TStringField
      FieldName = 'VNOPT1'
      Size = 10
    end
    object CdsTtPt1GetTNMVM1: TStringField
      FieldName = 'TNMVM1'
      Size = 80
    end
    object CdsTtPt1GetCPSVM1: TStringField
      FieldName = 'CPSVM1'
      Size = 6
    end
    object CdsTtPt1GetCRTPT1: TIntegerField
      FieldName = 'CRTPT1'
    end
    object CdsTtPt1GetRNOPT1: TStringField
      FieldName = 'RNOPT1'
    end
    object CdsTtPt1GetRDVPT1: TDateField
      FieldName = 'RDVPT1'
      OnGetText = CdsTtPt1GetRDVPT1GetText
    end
    object CdsTtPt1GetRATPT1: TFMTBCDField
      FieldName = 'RATPT1'
      OnGetText = CdsTtPt1GetRATPT1GetText
      Precision = 18
      Size = 2
    end
    object CdsTtPt1GetVTPPT1: TStringField
      FieldName = 'VTPPT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtPt1GetVATPT1: TStringField
      FieldName = 'VATPT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtPt1GetVPCPT1: TFMTBCDField
      FieldName = 'VPCPT1'
      Precision = 18
      Size = 4
    end
    object CdsTtPt1GetVAMPT1: TFMTBCDField
      FieldName = 'VAMPT1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsTtPt1GetVTEPT1: TStringField
      FieldName = 'VTEPT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtPt1GetSRSPT1: TStringField
      FieldName = 'SRSPT1'
      Size = 6
    end
    object CdsTtPt1GetITNPT1: TStringField
      FieldName = 'ITNPT1'
    end
    object CdsTtPt1GetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsTtPt1GetCOLPT1: TStringField
      FieldName = 'COLPT1'
      Size = 6
    end
    object CdsTtPt1GetTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsTtPt1GetSERPT1: TStringField
      FieldName = 'SERPT1'
      Size = 30
    end
    object CdsTtPt1GetENGPT1: TStringField
      FieldName = 'ENGPT1'
      Size = 30
    end
    object CdsTtPt1GetQR1PT1: TIntegerField
      FieldName = 'QR1PT1'
    end
    object CdsTtPt1GetNETPT1: TFMTBCDField
      FieldName = 'NETPT1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsTtPt1GetFWHPT1: TStringField
      FieldName = 'FWHPT1'
      Size = 6
    end
    object CdsTtPt1GetDDTPT1: TDateField
      FieldName = 'DDTPT1'
      OnGetText = CdsTtPt1GetDDTPT1GetText
    end
    object CdsTtPt1GetDNOAD1: TIntegerField
      FieldName = 'DNOAD1'
    end
    object CdsTtPt1GetEDTAD1: TDateField
      FieldName = 'EDTAD1'
    end
    object CdsTtPt1GetCOUNTAD2: TIntegerField
      FieldName = 'COUNTAD2'
    end
    object CdsTtPt1GetTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 255
    end
  end
  object CdsAd2GetSrs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdsTTAd2GetSrs'
    RemoteServer = dspDataConnection
    Left = 312
    Top = 232
    object CdsAd2GetSrsSRSPM1: TStringField
      FieldName = 'SRSPM1'
      Size = 6
    end
    object CdsAd2GetSrsTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 255
    end
  end
  object CdsAd2GetItn: TClientDataSet
    Aggregates = <>
    Filter = 'OUTAD1<>0'
    Filtered = True
    Params = <>
    ProviderName = 'pdsTTAd2GetItn'
    RemoteServer = dspDataConnection
    Left = 400
    Top = 232
    object CdsAd2GetItnITNAD1: TStringField
      FieldName = 'ITNAD1'
    end
    object CdsAd2GetItnTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 255
    end
    object CdsAd2GetItnUC1PM1: TFMTBCDField
      FieldName = 'UC1PM1'
      Precision = 18
      Size = 2
    end
    object CdsAd2GetItnSRSPM1: TStringField
      FieldName = 'SRSPM1'
      Size = 6
    end
    object CdsAd2GetItnSEQAD1: TIntegerField
      FieldName = 'SEQAD1'
    end
    object CdsAd2GetItnEDTAD1: TDateField
      FieldName = 'EDTAD1'
    end
    object CdsAd2GetItnWISAD1: TIntegerField
      FieldName = 'WISAD1'
    end
    object CdsAd2GetItnTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 255
    end
    object CdsAd2GetItnCOLAD1: TStringField
      FieldName = 'COLAD1'
      Size = 6
    end
    object CdsAd2GetItnTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 255
    end
    object CdsAd2GetItnQT1AD1: TIntegerField
      FieldName = 'QT1AD1'
    end
    object CdsAd2GetItnOUTAD1: TIntegerField
      FieldName = 'OUTAD1'
    end
    object CdsAd2GetItnSERAD2: TStringField
      FieldName = 'SERAD2'
      Size = 30
    end
    object CdsAd2GetItnENGAD2: TStringField
      FieldName = 'ENGAD2'
      Size = 30
    end
  end
  object CdsAd2GetCol: TClientDataSet
    Aggregates = <>
    Filtered = True
    Params = <>
    ProviderName = 'pdsTTAd2GetCol'
    RemoteServer = dspDataConnection
    Left = 496
    Top = 232
    object CdsAd2GetColITNAD1: TStringField
      FieldName = 'ITNAD1'
    end
    object CdsAd2GetColCOLAD1: TStringField
      FieldName = 'COLAD1'
      Size = 6
    end
    object CdsAd2GetColTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 255
    end
    object CdsAd2GetColQT1AD1: TIntegerField
      FieldName = 'QT1AD1'
    end
    object CdsAd2GetColOUTAD1: TIntegerField
      FieldName = 'OUTAD1'
    end
  end
  object CdsAd2GetDno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdsTTAd2GetDno'
    RemoteServer = dspDataConnection
    Left = 312
    Top = 304
    object CdsAd2GetDnoDNOAD1: TIntegerField
      FieldName = 'DNOAD1'
    end
    object CdsAd2GetDnoEDTAD1: TDateField
      FieldName = 'EDTAD1'
      OnGetText = CdsAd2GetDnoEDTAD1GetText
    end
  end
  object CdsAd2GetByDno: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdsTTAd2GetByDno'
    RemoteServer = dspDataConnection
    Left = 312
    Top = 376
    object CdsAd2GetByDnoCMPAD2: TStringField
      FieldName = 'CMPAD2'
      Size = 2
    end
    object CdsAd2GetByDnoBRNAD2: TStringField
      FieldName = 'BRNAD2'
      Size = 3
    end
    object CdsAd2GetByDnoYARAD2: TIntegerField
      FieldName = 'YARAD2'
    end
    object CdsAd2GetByDnoPRDAD2: TIntegerField
      FieldName = 'PRDAD2'
    end
    object CdsAd2GetByDnoDCDAD2: TStringField
      FieldName = 'DCDAD2'
      Size = 6
    end
    object CdsAd2GetByDnoDNOAD2: TIntegerField
      FieldName = 'DNOAD2'
    end
    object CdsAd2GetByDnoSEQAD2: TIntegerField
      FieldName = 'SEQAD2'
    end
    object CdsAd2GetByDnoSSBAD2: TIntegerField
      FieldName = 'SSBAD2'
    end
    object CdsAd2GetByDnoISDAD2: TDateField
      FieldName = 'ISDAD2'
    end
    object CdsAd2GetByDnoEDTAD1: TDateField
      FieldName = 'EDTAD1'
    end
    object CdsAd2GetByDnoWISAD1: TIntegerField
      FieldName = 'WISAD1'
    end
    object CdsAd2GetByDnoTNMCTY: TStringField
      FieldName = 'TNMCTY'
      Size = 255
    end
    object CdsAd2GetByDnoTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 255
    end
    object CdsAd2GetByDnoITNAD1: TStringField
      FieldName = 'ITNAD1'
    end
    object CdsAd2GetByDnoTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 255
    end
    object CdsAd2GetByDnoCOLAD1: TStringField
      FieldName = 'COLAD1'
      Size = 6
    end
    object CdsAd2GetByDnoTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 255
    end
    object CdsAd2GetByDnoQT1AD1: TIntegerField
      FieldName = 'QT1AD1'
    end
    object CdsAd2GetByDnoOUTAD1: TIntegerField
      FieldName = 'OUTAD1'
    end
    object CdsAd2GetByDnoSERAD2: TStringField
      FieldName = 'SERAD2'
      Size = 30
    end
    object CdsAd2GetByDnoENGAD2: TStringField
      FieldName = 'ENGAD2'
      Size = 30
    end
    object CdsAd2GetByDnoUC1PM1: TFMTBCDField
      FieldName = 'UC1PM1'
      OnGetText = CdsAd2GetByDnoUC1PM1GetText
      Precision = 18
      Size = 2
    end
    object CdsAd2GetByDnoEPDOM5: TDateField
      FieldName = 'EPDOM5'
    end
    object CdsAd2GetByDnoRSDOM5: TDateField
      FieldName = 'RSDOM5'
    end
    object CdsAd2GetByDnoDNOOM5: TIntegerField
      FieldName = 'DNOOM5'
    end
    object CdsAd2GetByDnoFULL_NAME: TStringField
      FieldName = 'FULL_NAME'
      Size = 255
    end
    object CdsAd2GetByDnoTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 255
    end
    object CdsAd2GetByDnoSRSPM1: TStringField
      FieldName = 'SRSPM1'
      Size = 6
    end
  end
  object CdsTtPtXGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pdsTTPtXGet'
    RemoteServer = dspDataConnection
    Left = 312
    Top = 176
    object CdsTtPtXGetYARPT1: TIntegerField
      FieldName = 'YARPT1'
    end
    object CdsTtPtXGetCMPPT1: TStringField
      FieldName = 'CMPPT1'
      Size = 2
    end
    object CdsTtPtXGetBRNPT1: TStringField
      FieldName = 'BRNPT1'
      Size = 3
    end
    object CdsTtPtXGetDNOPT1: TStringField
      FieldName = 'DNOPT1'
      Size = 30
    end
    object CdsTtPtXGetSEQPT1: TIntegerField
      FieldName = 'SEQPT1'
    end
    object CdsTtPtXGetIDTPT1: TDateField
      FieldName = 'IDTPT1'
    end
    object CdsTtPtXGetDEPPT1: TStringField
      FieldName = 'DEPPT1'
      Size = 6
    end
    object CdsTtPtXGetVNOPT1: TStringField
      FieldName = 'VNOPT1'
      Size = 10
    end
    object CdsTtPtXGetTNMVM1: TStringField
      FieldName = 'TNMVM1'
      Size = 80
    end
    object CdsTtPtXGetCPSVM1: TStringField
      FieldName = 'CPSVM1'
      Size = 6
    end
    object CdsTtPtXGetCRTPT1: TIntegerField
      FieldName = 'CRTPT1'
    end
    object CdsTtPtXGetRNOPT1: TStringField
      FieldName = 'RNOPT1'
    end
    object CdsTtPtXGetRDVPT1: TDateField
      FieldName = 'RDVPT1'
    end
    object CdsTtPtXGetRATPT1: TFMTBCDField
      FieldName = 'RATPT1'
      OnGetText = CdsTtPtXGetRATPT1GetText
      Precision = 18
      Size = 2
    end
    object CdsTtPtXGetVTPPT1: TStringField
      FieldName = 'VTPPT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtPtXGetVATPT1: TStringField
      FieldName = 'VATPT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtPtXGetVPCPT1: TFMTBCDField
      FieldName = 'VPCPT1'
      Precision = 18
      Size = 4
    end
    object CdsTtPtXGetVAMPT1: TFMTBCDField
      FieldName = 'VAMPT1'
      Precision = 18
      Size = 2
    end
    object CdsTtPtXGetVTEPT1: TStringField
      FieldName = 'VTEPT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtPtXGetQR1PT1: TIntegerField
      FieldName = 'QR1PT1'
    end
    object CdsTtPtXGetNETPT1: TFMTBCDField
      FieldName = 'NETPT1'
      Precision = 18
      Size = 2
    end
    object CdsTtPtXGetFWHPT1: TStringField
      FieldName = 'FWHPT1'
      Size = 6
    end
    object CdsTtPtXGetDDTPT1: TDateField
      FieldName = 'DDTPT1'
    end
    object CdsTtPtXGetDNOAD1: TIntegerField
      FieldName = 'DNOAD1'
    end
    object CdsTtPtXGetEDTAD1: TDateField
      FieldName = 'EDTAD1'
    end
    object CdsTtPtXGetCOUNTAD2: TIntegerField
      FieldName = 'COUNTAD2'
    end
  end
end
