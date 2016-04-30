inherited DSRegistationDM: TDSRegistationDM
  OldCreateOrder = True
  Height = 592
  Width = 761
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSRegistation'
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
  object CdsAm6GetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAm6GetList'
    RemoteServer = dspDataConnection
    Left = 304
    Top = 168
    object CdsAm6GetListYARAM6: TIntegerField
      FieldName = 'YARAM6'
    end
    object CdsAm6GetListPRDAM6: TIntegerField
      FieldName = 'PRDAM6'
    end
    object CdsAm6GetListCMPAM6: TStringField
      FieldName = 'CMPAM6'
      Size = 2
    end
    object CdsAm6GetListBRNAM6: TStringField
      FieldName = 'BRNAM6'
      Size = 3
    end
    object CdsAm6GetListDEPAM6: TStringField
      FieldName = 'DEPAM6'
      Size = 6
    end
    object CdsAm6GetListDCDAM6: TStringField
      FieldName = 'DCDAM6'
      Size = 6
    end
    object CdsAm6GetListDNOAM6: TIntegerField
      FieldName = 'DNOAM6'
    end
    object CdsAm6GetListIDTAM6: TDateField
      FieldName = 'IDTAM6'
      OnGetText = CdsAm6GetListIDTAM6GetText
    end
    object CdsAm6GetListTYPAM6: TStringField
      FieldName = 'TYPAM6'
      Size = 6
    end
    object CdsAm6GetListTOTALAM6: TFMTBCDField
      FieldName = 'TOTALAM6'
      OnGetText = CdsAm6GetListTOTALAM6GetText
      Precision = 18
      Size = 2
    end
    object CdsAm6GetListRETURNAM6: TFMTBCDField
      FieldName = 'RETURNAM6'
      OnGetText = CdsAm6GetListTOTALAM6GetText
      Precision = 18
      Size = 2
    end
    object CdsAm6GetListDIFAM6: TFMTBCDField
      FieldName = 'DIFAM6'
      OnGetText = CdsAm6GetListTOTALAM6GetText
      Precision = 18
      Size = 2
    end
  end
  object CdsAm6GetYm4: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAm6GetYm4'
    RemoteServer = dspDataConnection
    Left = 400
    Top = 168
    object CdsAm6GetYm4YARYM4: TIntegerField
      FieldName = 'YARYM4'
    end
    object CdsAm6GetYm4PRDYM4: TIntegerField
      FieldName = 'PRDYM4'
    end
    object CdsAm6GetYm4CMPYM4: TStringField
      FieldName = 'CMPYM4'
      Size = 2
    end
    object CdsAm6GetYm4BRNYM4: TStringField
      FieldName = 'BRNYM4'
      Size = 3
    end
    object CdsAm6GetYm4DEPYM4: TStringField
      FieldName = 'DEPYM4'
      Size = 6
    end
    object CdsAm6GetYm4DCDYM4: TStringField
      FieldName = 'DCDYM4'
      Size = 6
    end
    object CdsAm6GetYm4DNOYM4: TIntegerField
      FieldName = 'DNOYM4'
    end
    object CdsAm6GetYm4SEQYM4: TIntegerField
      FieldName = 'SEQYM4'
    end
    object CdsAm6GetYm4IDTYM4: TDateField
      FieldName = 'IDTYM4'
      OnGetText = CdsAm6GetYm4IDTYM4GetText
    end
    object CdsAm6GetYm4RDCYM4: TStringField
      FieldName = 'RDCYM4'
      Size = 6
    end
    object CdsAm6GetYm4RDNYM4: TIntegerField
      FieldName = 'RDNYM4'
    end
    object CdsAm6GetYm4RDTYM4: TDateField
      FieldName = 'RDTYM4'
      OnGetText = CdsAm6GetYm4IDTYM4GetText
    end
    object CdsAm6GetYm4TNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 80
    end
    object CdsAm6GetYm4CTYOM5: TSmallintField
      FieldName = 'CTYOM5'
    end
    object CdsAm6GetYm4CNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsAm6GetYm4TNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsAm6GetYm4TNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsAm6GetYm4TNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsAm6GetYm4SEROM5: TStringField
      FieldName = 'SEROM5'
      Size = 30
    end
    object CdsAm6GetYm4REGRT7: TStringField
      FieldName = 'REGRT7'
      Size = 6
    end
    object CdsAm6GetYm4RENRT7: TIntegerField
      FieldName = 'RENRT7'
    end
    object CdsAm6GetYm4PRVRT7: TStringField
      FieldName = 'PRVRT7'
      Size = 6
    end
    object CdsAm6GetYm4TNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsAm6GetYm4REGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsAm6GetYm4AMTYM4: TFMTBCDField
      FieldName = 'AMTYM4'
      OnGetText = CdsAm6GetYm4AMTYM4GetText
      Precision = 18
      Size = 2
    end
    object CdsAm6GetYm4ARGAM6: TFMTBCDField
      FieldName = 'ARGAM6'
      OnGetText = CdsAm6GetYm4AMTYM4GetText
      Precision = 18
      Size = 2
    end
    object CdsAm6GetYm4BALYM4: TFMTBCDField
      FieldName = 'BALYM4'
      OnGetText = CdsAm6GetYm4AMTYM4GetText
      Precision = 18
      Size = 2
    end
    object CdsAm6GetYm4FLAG: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FLAG'
    end
  end
  object CdsAm6GetByNo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAm6GetByNo'
    RemoteServer = dspDataConnection
    Left = 496
    Top = 168
    object CdsAm6GetByNoYARYM4: TIntegerField
      FieldName = 'YARYM4'
    end
    object CdsAm6GetByNoPRDYM4: TIntegerField
      FieldName = 'PRDYM4'
    end
    object CdsAm6GetByNoCMPYM4: TStringField
      FieldName = 'CMPYM4'
      Size = 2
    end
    object CdsAm6GetByNoBRNYM4: TStringField
      FieldName = 'BRNYM4'
      Size = 3
    end
    object CdsAm6GetByNoDEPYM4: TStringField
      FieldName = 'DEPYM4'
      Size = 6
    end
    object CdsAm6GetByNoDCDYM4: TStringField
      FieldName = 'DCDYM4'
      Size = 6
    end
    object CdsAm6GetByNoDNOYM4: TIntegerField
      FieldName = 'DNOYM4'
    end
    object CdsAm6GetByNoSEQYM4: TIntegerField
      FieldName = 'SEQYM4'
    end
    object CdsAm6GetByNoIDTYM4: TDateField
      FieldName = 'IDTYM4'
      OnGetText = CdsAm6GetByNoIDTYM4GetText
    end
    object CdsAm6GetByNoRDCYM4: TStringField
      FieldName = 'RDCYM4'
      Size = 6
    end
    object CdsAm6GetByNoRDNYM4: TIntegerField
      FieldName = 'RDNYM4'
    end
    object CdsAm6GetByNoRDTYM4: TDateField
      FieldName = 'RDTYM4'
      OnGetText = CdsAm6GetByNoIDTYM4GetText
    end
    object CdsAm6GetByNoTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 80
    end
    object CdsAm6GetByNoCTYOM5: TSmallintField
      FieldName = 'CTYOM5'
    end
    object CdsAm6GetByNoCNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsAm6GetByNoTNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsAm6GetByNoTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsAm6GetByNoTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsAm6GetByNoSEROM5: TStringField
      FieldName = 'SEROM5'
      Size = 30
    end
    object CdsAm6GetByNoREGRT7: TStringField
      FieldName = 'REGRT7'
      Size = 6
    end
    object CdsAm6GetByNoRENRT7: TIntegerField
      FieldName = 'RENRT7'
    end
    object CdsAm6GetByNoPRVRT7: TStringField
      FieldName = 'PRVRT7'
      Size = 6
    end
    object CdsAm6GetByNoTNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsAm6GetByNoREGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsAm6GetByNoARSAM6: TFMTBCDField
      FieldName = 'ARSAM6'
      OnGetText = CdsAm6GetByNoARSAM6GetText
      Precision = 18
      Size = 2
    end
    object CdsAm6GetByNoARGAM6: TFMTBCDField
      FieldName = 'ARGAM6'
      OnGetText = CdsAm6GetByNoARSAM6GetText
      Precision = 18
      Size = 2
    end
    object CdsAm6GetByNoBALYM4: TFMTBCDField
      FieldName = 'BALYM4'
      OnGetText = CdsAm6GetByNoARSAM6GetText
      Precision = 18
      Size = 2
    end
    object CdsAm6GetByNoPRCAM6: TStringField
      FieldName = 'PRCAM6'
      FixedChar = True
      Size = 1
    end
    object CdsAm6GetByNoSEQAM6: TIntegerField
      FieldName = 'SEQAM6'
    end
    object CdsAm6GetByNoFLAG: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FLAG'
    end
  end
  object CdsAm7GetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAm7GetList'
    RemoteServer = dspDataConnection
    Left = 304
    Top = 240
    object CdsAm7GetListYARAM7: TIntegerField
      FieldName = 'YARAM7'
    end
    object CdsAm7GetListPRDAM7: TIntegerField
      FieldName = 'PRDAM7'
    end
    object CdsAm7GetListCMPAM7: TStringField
      FieldName = 'CMPAM7'
      Size = 2
    end
    object CdsAm7GetListBRNAM7: TStringField
      FieldName = 'BRNAM7'
      Size = 3
    end
    object CdsAm7GetListDEPAM7: TStringField
      FieldName = 'DEPAM7'
      Size = 6
    end
    object CdsAm7GetListDCDAM7: TStringField
      FieldName = 'DCDAM7'
      Size = 6
    end
    object CdsAm7GetListDNOAM7: TIntegerField
      FieldName = 'DNOAM7'
    end
    object CdsAm7GetListIDTAM7: TDateField
      FieldName = 'IDTAM7'
    end
    object CdsAm7GetListTYPAM7: TStringField
      FieldName = 'TYPAM7'
      Size = 6
    end
    object CdsAm7GetListTOTALAM7: TFMTBCDField
      FieldName = 'TOTALAM7'
      OnGetText = CdsAm7GetListTOTALAM7GetText
      Precision = 18
      Size = 2
    end
    object CdsAm7GetListRDCAM7: TStringField
      FieldName = 'RDCAM7'
      Size = 6
    end
    object CdsAm7GetListRDNAM7: TIntegerField
      FieldName = 'RDNAM7'
    end
    object CdsAm7GetListRDTAM7: TDateField
      FieldName = 'RDTAM7'
    end
  end
  object CdsAm7GetByNo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtAm7GetByNo'
    RemoteServer = dspDataConnection
    Left = 400
    Top = 240
    object CdsAm7GetByNoYARYM4: TIntegerField
      FieldName = 'YARYM4'
    end
    object CdsAm7GetByNoPRDYM4: TIntegerField
      FieldName = 'PRDYM4'
    end
    object CdsAm7GetByNoCMPYM4: TStringField
      FieldName = 'CMPYM4'
      Size = 2
    end
    object CdsAm7GetByNoBRNYM4: TStringField
      FieldName = 'BRNYM4'
      Size = 3
    end
    object CdsAm7GetByNoDEPYM4: TStringField
      FieldName = 'DEPYM4'
      Size = 6
    end
    object CdsAm7GetByNoDCDYM4: TStringField
      FieldName = 'DCDYM4'
      Size = 6
    end
    object CdsAm7GetByNoDNOYM4: TIntegerField
      FieldName = 'DNOYM4'
    end
    object CdsAm7GetByNoSEQYM4: TIntegerField
      FieldName = 'SEQYM4'
    end
    object CdsAm7GetByNoIDTYM4: TDateField
      FieldName = 'IDTYM4'
      OnGetText = CdsAm7GetByNoIDTYM4GetText
    end
    object CdsAm7GetByNoRDCYM4: TStringField
      FieldName = 'RDCYM4'
      Size = 6
    end
    object CdsAm7GetByNoRDNYM4: TIntegerField
      FieldName = 'RDNYM4'
    end
    object CdsAm7GetByNoRDTYM4: TDateField
      FieldName = 'RDTYM4'
      OnGetText = CdsAm7GetByNoIDTYM4GetText
    end
    object CdsAm7GetByNoTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 80
    end
    object CdsAm7GetByNoCTYOM5: TSmallintField
      FieldName = 'CTYOM5'
    end
    object CdsAm7GetByNoCNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsAm7GetByNoTNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsAm7GetByNoTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsAm7GetByNoTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsAm7GetByNoSEROM5: TStringField
      FieldName = 'SEROM5'
      Size = 30
    end
    object CdsAm7GetByNoREGRT7: TStringField
      FieldName = 'REGRT7'
      Size = 6
    end
    object CdsAm7GetByNoRENRT7: TIntegerField
      FieldName = 'RENRT7'
    end
    object CdsAm7GetByNoPRVRT7: TStringField
      FieldName = 'PRVRT7'
      Size = 6
    end
    object CdsAm7GetByNoTNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsAm7GetByNoREGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsAm7GetByNoARSAM6: TFMTBCDField
      FieldName = 'ARSAM6'
      OnGetText = CdsAm7GetByNoARSAM6GetText
      Precision = 18
      Size = 2
    end
    object CdsAm7GetByNoSEQAM6: TIntegerField
      FieldName = 'SEQAM6'
    end
  end
  object CdsRg1GetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRg1GetList'
    RemoteServer = dspDataConnection
    Left = 304
    Top = 320
    object CdsRg1GetListYARRG1: TIntegerField
      FieldName = 'YARRG1'
    end
    object CdsRg1GetListPRDRG1: TIntegerField
      FieldName = 'PRDRG1'
    end
    object CdsRg1GetListCMPRG1: TStringField
      FieldName = 'CMPRG1'
      Size = 2
    end
    object CdsRg1GetListBRNRG1: TStringField
      FieldName = 'BRNRG1'
      Size = 3
    end
    object CdsRg1GetListDEPRG1: TStringField
      FieldName = 'DEPRG1'
      Size = 6
    end
    object CdsRg1GetListDCDRG1: TStringField
      FieldName = 'DCDRG1'
      Size = 6
    end
    object CdsRg1GetListDNORG1: TIntegerField
      FieldName = 'DNORG1'
    end
    object CdsRg1GetListIDTRG1: TDateField
      FieldName = 'IDTRG1'
      OnGetText = CdsRg1GetListIDTRG1GetText
    end
    object CdsRg1GetListTYPRG1: TStringField
      FieldName = 'TYPRG1'
      Size = 6
    end
    object CdsRg1GetListTNMVM1: TStringField
      FieldName = 'TNMVM1'
      Size = 80
    end
    object CdsRg1GetListVNORG1: TStringField
      FieldName = 'VNORG1'
      Size = 6
    end
    object CdsRg1GetListEDTRG1: TDateField
      FieldName = 'EDTRG1'
      OnGetText = CdsRg1GetListIDTRG1GetText
    end
    object CdsRg1GetListTOTALRG1: TFMTBCDField
      FieldName = 'TOTALRG1'
      OnGetText = CdsRg1GetListTOTALRG1GetText
      Precision = 18
      Size = 2
    end
  end
  object CdsRg1GetOm5: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRg1GetOm5'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsRg1GetOm5CalcFields
    Left = 400
    Top = 319
    object CdsRg1GetOm5YAROM5: TIntegerField
      FieldName = 'YAROM5'
    end
    object CdsRg1GetOm5CMPOM5: TStringField
      FieldName = 'CMPOM5'
      Size = 2
    end
    object CdsRg1GetOm5BRNOM5: TStringField
      FieldName = 'BRNOM5'
      Size = 3
    end
    object CdsRg1GetOm5DCDOM5: TStringField
      FieldName = 'DCDOM5'
      Size = 6
    end
    object CdsRg1GetOm5DNOOM5: TIntegerField
      FieldName = 'DNOOM5'
    end
    object CdsRg1GetOm5SEQOM5: TSmallintField
      FieldName = 'SEQOM5'
    end
    object CdsRg1GetOm5IDTOM5: TDateField
      FieldName = 'IDTOM5'
      OnGetText = CdsRg1GetOm5IDTOM5GetText
    end
    object CdsRg1GetOm5APNOM5: TIntegerField
      FieldName = 'APNOM5'
    end
    object CdsRg1GetOm5TNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 80
    end
    object CdsRg1GetOm5CTYOM5: TSmallintField
      FieldName = 'CTYOM5'
    end
    object CdsRg1GetOm5CNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsRg1GetOm5TNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsRg1GetOm5PRDOM5: TStringField
      FieldName = 'PRDOM5'
    end
    object CdsRg1GetOm5TNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsRg1GetOm5TNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsRg1GetOm5TNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsRg1GetOm5SEROM5: TStringField
      FieldName = 'SEROM5'
      Size = 30
    end
    object CdsRg1GetOm5ENGOM5: TStringField
      FieldName = 'ENGOM5'
      Size = 30
    end
    object CdsRg1GetOm5AMTAMT: TFMTBCDField
      FieldName = 'AMTAMT'
      OnGetText = CdsRg1GetOm5AMTAMTGetText
      Precision = 18
      Size = 2
    end
    object CdsRg1GetOm5PRT: TStringField
      FieldName = 'PRT'
      Size = 6
    end
    object CdsRg1GetOm5SELECT_FLAG: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'SELECT_FLAG'
    end
    object CdsRg1GetOm5FLAG: TStringField
      FieldName = 'FLAG'
      FixedChar = True
      Size = 1
    end
    object CdsRg1GetOm5APDOM5: TDateField
      FieldName = 'APDOM5'
      OnGetText = CdsRg1GetOm5APDOM5GetText
    end
  end
  object CdsRg1GetByNo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRg1GetByNo'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsRg1GetByNoCalcFields
    Left = 496
    Top = 319
    object CdsRg1GetByNoYARRG1: TIntegerField
      FieldName = 'YARRG1'
    end
    object CdsRg1GetByNoPRDRG1: TIntegerField
      FieldName = 'PRDRG1'
    end
    object CdsRg1GetByNoCMPRG1: TStringField
      FieldName = 'CMPRG1'
      Size = 2
    end
    object CdsRg1GetByNoBRNRG1: TStringField
      FieldName = 'BRNRG1'
      Size = 3
    end
    object CdsRg1GetByNoDEPRG1: TStringField
      FieldName = 'DEPRG1'
      Size = 6
    end
    object CdsRg1GetByNoDCDRG1: TStringField
      FieldName = 'DCDRG1'
      Size = 6
    end
    object CdsRg1GetByNoDNORG1: TIntegerField
      FieldName = 'DNORG1'
    end
    object CdsRg1GetByNoSEQRG1: TIntegerField
      FieldName = 'SEQRG1'
    end
    object CdsRg1GetByNoIDTRG1: TDateField
      FieldName = 'IDTRG1'
      OnGetText = CdsRg1GetByNoIDTRG1GetText
    end
    object CdsRg1GetByNoRDCRG1: TStringField
      FieldName = 'RDCRG1'
      Size = 6
    end
    object CdsRg1GetByNoRDNRG1: TIntegerField
      FieldName = 'RDNRG1'
    end
    object CdsRg1GetByNoRSQRG1: TIntegerField
      FieldName = 'RSQRG1'
    end
    object CdsRg1GetByNoRDTRG1: TDateField
      FieldName = 'RDTRG1'
      OnGetText = CdsRg1GetByNoIDTRG1GetText
    end
    object CdsRg1GetByNoTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 80
    end
    object CdsRg1GetByNoCTYOM5: TSmallintField
      FieldName = 'CTYOM5'
    end
    object CdsRg1GetByNoCNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsRg1GetByNoTNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsRg1GetByNoTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsRg1GetByNoTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsRg1GetByNoSEROM5: TStringField
      FieldName = 'SEROM5'
      Size = 30
    end
    object CdsRg1GetByNoARSRG1: TFMTBCDField
      FieldName = 'ARSRG1'
      OnGetText = CdsRg1GetByNoARSRG1GetText
      Precision = 18
      Size = 2
    end
    object CdsRg1GetByNoAPNOM5: TIntegerField
      FieldName = 'APNOM5'
    end
    object CdsRg1GetByNoAPDOM5: TDateField
      FieldName = 'APDOM5'
    end
    object CdsRg1GetByNoPRDOM5: TStringField
      FieldName = 'PRDOM5'
    end
    object CdsRg1GetByNoTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsRg1GetByNoENGOM5: TStringField
      FieldName = 'ENGOM5'
      Size = 30
    end
    object CdsRg1GetByNoPRVRG2: TStringField
      FieldName = 'PRVRG2'
      Size = 6
    end
    object CdsRg1GetByNoTNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsRg1GetByNoREGRG2: TStringField
      FieldName = 'REGRG2'
      Size = 6
    end
    object CdsRg1GetByNoRENRG2: TIntegerField
      FieldName = 'RENRG2'
    end
    object CdsRg1GetByNoRVDRG2: TDateField
      FieldName = 'RVDRG2'
      OnGetText = CdsRg1GetByNoIDTRG1GetText
    end
    object CdsRg1GetByNoRVNRG2: TFMTBCDField
      FieldName = 'RVNRG2'
      Precision = 18
      Size = 2
    end
    object CdsRg1GetByNoARARG2: TFMTBCDField
      FieldName = 'ARARG2'
      OnGetText = CdsRg1GetByNoARARG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg1GetByNoAOARG2: TFMTBCDField
      FieldName = 'AOARG2'
      OnGetText = CdsRg1GetByNoARARG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg1GetByNoTOTALAMT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTALAMT'
      OnGetText = CdsRg1GetByNoARARG2GetText
      Calculated = True
    end
    object CdsRg1GetByNoPRT: TStringField
      FieldName = 'PRT'
      FixedChar = True
      Size = 1
    end
    object CdsRg1GetByNoREGFULL: TStringField
      FieldName = 'REGFULL'
    end
  end
  object CdsRg2GetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRg2GetList'
    RemoteServer = dspDataConnection
    Left = 304
    Top = 408
    object CdsRg2GetListYARRG2: TIntegerField
      FieldName = 'YARRG2'
    end
    object CdsRg2GetListPRDRG2: TIntegerField
      FieldName = 'PRDRG2'
    end
    object CdsRg2GetListCMPRG2: TStringField
      FieldName = 'CMPRG2'
      Size = 2
    end
    object CdsRg2GetListBRNRG2: TStringField
      FieldName = 'BRNRG2'
      Size = 3
    end
    object CdsRg2GetListDEPRG2: TStringField
      FieldName = 'DEPRG2'
      Size = 6
    end
    object CdsRg2GetListDCDRG2: TStringField
      FieldName = 'DCDRG2'
      Size = 6
    end
    object CdsRg2GetListDNORG2: TIntegerField
      FieldName = 'DNORG2'
    end
    object CdsRg2GetListIDTRG2: TDateField
      FieldName = 'IDTRG2'
      OnGetText = CdsRg2GetListIDTRG2GetText
    end
    object CdsRg2GetListRDCRG2: TStringField
      FieldName = 'RDCRG2'
      Size = 6
    end
    object CdsRg2GetListRDNRG2: TIntegerField
      FieldName = 'RDNRG2'
    end
    object CdsRg2GetListRDTRG2: TDateField
      FieldName = 'RDTRG2'
      OnGetText = CdsRg2GetListIDTRG2GetText
    end
    object CdsRg2GetListTYPRG2: TStringField
      FieldName = 'TYPRG2'
      Size = 6
    end
    object CdsRg2GetListVNORG2: TStringField
      FieldName = 'VNORG2'
      Size = 6
    end
    object CdsRg2GetListTNMVM1: TStringField
      FieldName = 'TNMVM1'
      Size = 80
    end
    object CdsRg2GetListEDTRG2: TDateField
      FieldName = 'EDTRG2'
      OnGetText = CdsRg2GetListEDTRG2GetText
    end
    object CdsRg2GetListBDTRG2: TDateField
      FieldName = 'BDTRG2'
      OnGetText = CdsRg2GetListEDTRG2GetText
    end
    object CdsRg2GetListTOTALARARG2: TFMTBCDField
      FieldName = 'TOTALARARG2'
      OnGetText = CdsRg2GetListTOTALARARG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2GetListTOTALAOARG2: TFMTBCDField
      FieldName = 'TOTALAOARG2'
      OnGetText = CdsRg2GetListTOTALARARG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2GetListTOTALABLRG2: TFMTBCDField
      FieldName = 'TOTALABLRG2'
      OnGetText = CdsRg2GetListTOTALARARG2GetText
      Precision = 18
      Size = 2
    end
  end
  object CdsRg2GetByNo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRg2GetByNo'
    RemoteServer = dspDataConnection
    OnCalcFields = CdsRg2GetByNoCalcFields
    Left = 504
    Top = 407
    object CdsRg2GetByNoYARRG2: TIntegerField
      FieldName = 'YARRG2'
    end
    object CdsRg2GetByNoPRDRG2: TIntegerField
      FieldName = 'PRDRG2'
    end
    object CdsRg2GetByNoCMPRG2: TStringField
      FieldName = 'CMPRG2'
      Size = 2
    end
    object CdsRg2GetByNoBRNRG2: TStringField
      FieldName = 'BRNRG2'
      Size = 3
    end
    object CdsRg2GetByNoDEPRG2: TStringField
      FieldName = 'DEPRG2'
      Size = 6
    end
    object CdsRg2GetByNoDCDRG2: TStringField
      FieldName = 'DCDRG2'
      Size = 6
    end
    object CdsRg2GetByNoDNORG2: TIntegerField
      FieldName = 'DNORG2'
    end
    object CdsRg2GetByNoSEQRG2: TIntegerField
      FieldName = 'SEQRG2'
    end
    object CdsRg2GetByNoIDTRG2: TDateField
      FieldName = 'IDTRG2'
      OnGetText = CdsRg2GetByNoIDTRG2GetText
    end
    object CdsRg2GetByNoAPNOM5: TIntegerField
      FieldName = 'APNOM5'
    end
    object CdsRg2GetByNoAPDOM5: TDateField
      FieldName = 'APDOM5'
    end
    object CdsRg2GetByNoRDCRG2: TStringField
      FieldName = 'RDCRG2'
      Size = 6
    end
    object CdsRg2GetByNoRDNRG2: TIntegerField
      FieldName = 'RDNRG2'
    end
    object CdsRg2GetByNoRSQRG2: TIntegerField
      FieldName = 'RSQRG2'
    end
    object CdsRg2GetByNoRDTRG2: TDateField
      FieldName = 'RDTRG2'
      OnGetText = CdsRg2GetByNoIDTRG2GetText
    end
    object CdsRg2GetByNoTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 80
    end
    object CdsRg2GetByNoCTYOM5: TSmallintField
      FieldName = 'CTYOM5'
    end
    object CdsRg2GetByNoCNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsRg2GetByNoTNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsRg2GetByNoPRDOM5: TStringField
      FieldName = 'PRDOM5'
    end
    object CdsRg2GetByNoTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsRg2GetByNoTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsRg2GetByNoTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsRg2GetByNoSEROM5: TStringField
      FieldName = 'SEROM5'
      Size = 30
    end
    object CdsRg2GetByNoENGOM5: TStringField
      FieldName = 'ENGOM5'
      Size = 30
    end
    object CdsRg2GetByNoARSRG2: TFMTBCDField
      FieldName = 'ARSRG2'
      OnGetText = CdsRg2GetByNoARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2GetByNoPRVRG2: TStringField
      FieldName = 'PRVRG2'
      Size = 6
    end
    object CdsRg2GetByNoTNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsRg2GetByNoREGRG2: TStringField
      FieldName = 'REGRG2'
      Size = 6
    end
    object CdsRg2GetByNoRENRG2: TIntegerField
      FieldName = 'RENRG2'
    end
    object CdsRg2GetByNoREGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsRg2GetByNoRVDRG2: TDateField
      FieldName = 'RVDRG2'
    end
    object CdsRg2GetByNoRVNRG2: TFMTBCDField
      FieldName = 'RVNRG2'
      Precision = 18
      Size = 2
    end
    object CdsRg2GetByNoARARG2: TFMTBCDField
      FieldName = 'ARARG2'
      OnGetText = CdsRg2GetByNoARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2GetByNoAOARG2: TFMTBCDField
      FieldName = 'AOARG2'
      OnGetText = CdsRg2GetByNoARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2GetByNoPRT: TStringField
      FieldName = 'PRT'
      FixedChar = True
      Size = 1
    end
    object CdsRg2GetByNoTOTALAMT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTALAMT'
      OnGetText = CdsRg2GetByNoTOTALAMTGetText
      Calculated = True
    end
    object CdsRg2GetByNoBDTRG2: TDateField
      FieldName = 'BDTRG2'
    end
    object CdsRg2GetByNoBST: TStringField
      FieldName = 'BST'
      FixedChar = True
      Size = 1
    end
    object CdsRg2GetByNoFLAG: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'FLAG'
    end
  end
  object CdsRg2BookGetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRg2BookGetList'
    RemoteServer = dspDataConnection
    Left = 304
    Top = 480
    object CdsRg2BookGetListYARRG2: TIntegerField
      FieldName = 'YARRG2'
    end
    object CdsRg2BookGetListPRDRG2: TIntegerField
      FieldName = 'PRDRG2'
    end
    object CdsRg2BookGetListCMPRG2: TStringField
      FieldName = 'CMPRG2'
      Size = 2
    end
    object CdsRg2BookGetListBRNRG2: TStringField
      FieldName = 'BRNRG2'
      Size = 3
    end
    object CdsRg2BookGetListDEPRG2: TStringField
      FieldName = 'DEPRG2'
      Size = 6
    end
    object CdsRg2BookGetListDCDRG2: TStringField
      FieldName = 'DCDRG2'
      Size = 6
    end
    object CdsRg2BookGetListDNORG2: TIntegerField
      FieldName = 'DNORG2'
    end
    object CdsRg2BookGetListSEQRG2: TIntegerField
      FieldName = 'SEQRG2'
    end
    object CdsRg2BookGetListIDTRG2: TDateField
      FieldName = 'IDTRG2'
      OnGetText = CdsRg2BookGetListIDTRG2GetText
    end
    object CdsRg2BookGetListAPNOM5: TIntegerField
      FieldName = 'APNOM5'
    end
    object CdsRg2BookGetListAPDOM5: TDateField
      FieldName = 'APDOM5'
    end
    object CdsRg2BookGetListRDCRG2: TStringField
      FieldName = 'RDCRG2'
      Size = 6
    end
    object CdsRg2BookGetListRDNRG2: TIntegerField
      FieldName = 'RDNRG2'
    end
    object CdsRg2BookGetListRSQRG2: TIntegerField
      FieldName = 'RSQRG2'
    end
    object CdsRg2BookGetListRDTRG2: TDateField
      FieldName = 'RDTRG2'
      OnGetText = CdsRg2BookGetListIDTRG2GetText
    end
    object CdsRg2BookGetListTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 80
    end
    object CdsRg2BookGetListCTYOM5: TSmallintField
      FieldName = 'CTYOM5'
    end
    object CdsRg2BookGetListCNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsRg2BookGetListTNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsRg2BookGetListPRDOM5: TStringField
      FieldName = 'PRDOM5'
    end
    object CdsRg2BookGetListTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsRg2BookGetListTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsRg2BookGetListTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsRg2BookGetListSEROM5: TStringField
      FieldName = 'SEROM5'
      Size = 30
    end
    object CdsRg2BookGetListENGOM5: TStringField
      FieldName = 'ENGOM5'
      Size = 30
    end
    object CdsRg2BookGetListARSRG2: TFMTBCDField
      FieldName = 'ARSRG2'
      OnGetText = CdsRg2BookGetListARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2BookGetListPRVRG2: TStringField
      FieldName = 'PRVRG2'
      Size = 6
    end
    object CdsRg2BookGetListTNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsRg2BookGetListREGRG2: TStringField
      FieldName = 'REGRG2'
      Size = 6
    end
    object CdsRg2BookGetListRENRG2: TIntegerField
      FieldName = 'RENRG2'
    end
    object CdsRg2BookGetListREGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsRg2BookGetListRVDRG2: TDateField
      FieldName = 'RVDRG2'
    end
    object CdsRg2BookGetListRVNRG2: TFMTBCDField
      FieldName = 'RVNRG2'
      Precision = 18
      Size = 2
    end
    object CdsRg2BookGetListARARG2: TFMTBCDField
      FieldName = 'ARARG2'
      OnGetText = CdsRg2BookGetListARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2BookGetListAOARG2: TFMTBCDField
      FieldName = 'AOARG2'
      OnGetText = CdsRg2BookGetListARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2BookGetListBDTRG2: TDateField
      FieldName = 'BDTRG2'
      OnGetText = CdsRg2BookGetListIDTRG2GetText
    end
    object CdsRg2BookGetListBRDRG2: TDateField
      FieldName = 'BRDRG2'
      OnGetText = CdsRg2BookGetListIDTRG2GetText
    end
    object CdsRg2BookGetListBST: TStringField
      FieldName = 'BST'
      FixedChar = True
      Size = 1
    end
    object CdsRg2BookGetListTNMVM1: TStringField
      FieldName = 'TNMVM1'
      Size = 80
    end
  end
  object CdsRg2BookGetByNo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtRg2GetByNo'
    RemoteServer = dspDataConnection
    Left = 496
    Top = 487
    object CdsRg2BookGetByNoYARRG2: TIntegerField
      FieldName = 'YARRG2'
    end
    object CdsRg2BookGetByNoPRDRG2: TIntegerField
      FieldName = 'PRDRG2'
    end
    object CdsRg2BookGetByNoCMPRG2: TStringField
      FieldName = 'CMPRG2'
      Size = 2
    end
    object CdsRg2BookGetByNoBRNRG2: TStringField
      FieldName = 'BRNRG2'
      Size = 3
    end
    object CdsRg2BookGetByNoDEPRG2: TStringField
      FieldName = 'DEPRG2'
      Size = 6
    end
    object CdsRg2BookGetByNoDCDRG2: TStringField
      FieldName = 'DCDRG2'
      Size = 6
    end
    object CdsRg2BookGetByNoDNORG2: TIntegerField
      FieldName = 'DNORG2'
    end
    object CdsRg2BookGetByNoSEQRG2: TIntegerField
      FieldName = 'SEQRG2'
    end
    object CdsRg2BookGetByNoIDTRG2: TDateField
      FieldName = 'IDTRG2'
      OnGetText = CdsRg2BookGetByNoIDTRG2GetText
    end
    object CdsRg2BookGetByNoAPNOM5: TIntegerField
      FieldName = 'APNOM5'
    end
    object CdsRg2BookGetByNoAPDOM5: TDateField
      FieldName = 'APDOM5'
    end
    object CdsRg2BookGetByNoRDCRG2: TStringField
      FieldName = 'RDCRG2'
      Size = 6
    end
    object CdsRg2BookGetByNoRDNRG2: TIntegerField
      FieldName = 'RDNRG2'
    end
    object CdsRg2BookGetByNoRSQRG2: TIntegerField
      FieldName = 'RSQRG2'
    end
    object CdsRg2BookGetByNoRDTRG2: TDateField
      FieldName = 'RDTRG2'
      OnGetText = CdsRg2BookGetByNoIDTRG2GetText
    end
    object CdsRg2BookGetByNoTNMSMN: TStringField
      FieldName = 'TNMSMN'
      Size = 80
    end
    object CdsRg2BookGetByNoCTYOM5: TSmallintField
      FieldName = 'CTYOM5'
    end
    object CdsRg2BookGetByNoCNOOM5: TLargeintField
      FieldName = 'CNOOM5'
    end
    object CdsRg2BookGetByNoTNMCSM: TStringField
      FieldName = 'TNMCSM'
      Size = 255
    end
    object CdsRg2BookGetByNoPRDOM5: TStringField
      FieldName = 'PRDOM5'
    end
    object CdsRg2BookGetByNoTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsRg2BookGetByNoTNMSRS: TStringField
      FieldName = 'TNMSRS'
      Size = 80
    end
    object CdsRg2BookGetByNoTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsRg2BookGetByNoSEROM5: TStringField
      FieldName = 'SEROM5'
      Size = 30
    end
    object CdsRg2BookGetByNoENGOM5: TStringField
      FieldName = 'ENGOM5'
      Size = 30
    end
    object CdsRg2BookGetByNoARSRG2: TFMTBCDField
      FieldName = 'ARSRG2'
      OnGetText = CdsRg2BookGetByNoARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2BookGetByNoPRVRG2: TStringField
      FieldName = 'PRVRG2'
      Size = 6
    end
    object CdsRg2BookGetByNoTNMPRV: TStringField
      FieldName = 'TNMPRV'
      Size = 80
    end
    object CdsRg2BookGetByNoREGRG2: TStringField
      FieldName = 'REGRG2'
      Size = 6
    end
    object CdsRg2BookGetByNoRENRG2: TIntegerField
      FieldName = 'RENRG2'
    end
    object CdsRg2BookGetByNoREGFULL: TStringField
      FieldName = 'REGFULL'
    end
    object CdsRg2BookGetByNoRVDRG2: TDateField
      FieldName = 'RVDRG2'
      OnGetText = CdsRg2BookGetByNoIDTRG2GetText
    end
    object CdsRg2BookGetByNoRVNRG2: TFMTBCDField
      FieldName = 'RVNRG2'
      Precision = 18
      Size = 2
    end
    object CdsRg2BookGetByNoARARG2: TFMTBCDField
      FieldName = 'ARARG2'
      OnGetText = CdsRg2BookGetByNoARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2BookGetByNoAOARG2: TFMTBCDField
      FieldName = 'AOARG2'
      OnGetText = CdsRg2BookGetByNoARSRG2GetText
      Precision = 18
      Size = 2
    end
    object CdsRg2BookGetByNoBDTRG2: TDateField
      FieldName = 'BDTRG2'
    end
    object CdsRg2BookGetByNoBST: TStringField
      FieldName = 'BST'
      FixedChar = True
      Size = 1
    end
    object CdsRg2BookGetByNoPRT: TStringField
      FieldName = 'PRT'
      FixedChar = True
      Size = 1
    end
  end
end
