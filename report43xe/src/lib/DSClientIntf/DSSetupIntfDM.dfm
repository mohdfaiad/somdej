inherited DSSetupDM: TDSSetupDM
  OldCreateOrder = True
  Height = 686
  Width = 1073
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSHISSetup'
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
  object CdsStCdeGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetCde'
    RemoteServer = dspDataConnection
    Left = 242
    Top = 142
    object CdsStCdeGetREPORTID: TIntegerField
      FieldName = 'REPORTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object CdsStCdeGetHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object CdsStCdeGetPID: TWideStringField
      FieldName = 'PID'
      Size = 15
    end
    object CdsStCdeGetADDRESSTYPE: TWideStringField
      FieldName = 'ADDRESSTYPE'
      Size = 1
    end
    object CdsStCdeGetHOUSE_ID: TWideStringField
      FieldName = 'HOUSE_ID'
      Size = 11
    end
    object CdsStCdeGetHOUSETYPE: TWideStringField
      FieldName = 'HOUSETYPE'
      Size = 1
    end
    object CdsStCdeGetROOMNO: TWideStringField
      FieldName = 'ROOMNO'
      Size = 10
    end
    object CdsStCdeGetCONDO: TWideStringField
      FieldName = 'CONDO'
      Size = 75
    end
    object CdsStCdeGetHOUSENO: TWideStringField
      FieldName = 'HOUSENO'
      Size = 75
    end
    object CdsStCdeGetSOISUB: TWideStringField
      FieldName = 'SOISUB'
      Size = 255
    end
    object CdsStCdeGetSOIMAIN: TWideStringField
      FieldName = 'SOIMAIN'
      Size = 255
    end
    object CdsStCdeGetROAD: TWideStringField
      FieldName = 'ROAD'
      Size = 255
    end
    object CdsStCdeGetVILLANAME: TWideStringField
      FieldName = 'VILLANAME'
      Size = 255
    end
    object CdsStCdeGetVILLAGE: TWideStringField
      FieldName = 'VILLAGE'
      Size = 2
    end
    object CdsStCdeGetTAMBON: TWideStringField
      FieldName = 'TAMBON'
      Size = 2
    end
    object CdsStCdeGetAMPUR: TWideStringField
      FieldName = 'AMPUR'
      Size = 2
    end
    object CdsStCdeGetCHANGWAT: TWideStringField
      FieldName = 'CHANGWAT'
      Size = 2
    end
    object CdsStCdeGetTELEPHONE: TWideStringField
      FieldName = 'TELEPHONE'
      Size = 15
    end
    object CdsStCdeGetMOBILE: TWideStringField
      FieldName = 'MOBILE'
      Size = 15
    end
    object CdsStCdeGetD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
  object CdsStCdeGetDtl: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetCde'
    RemoteServer = dspDataConnection
    Left = 394
    Top = 110
    object CdsStCdeGetDtlSTSCDE: TStringField
      FieldName = 'STSCDE'
      Size = 1
    end
    object CdsStCdeGetDtlFMTCDE: TStringField
      FieldName = 'FMTCDE'
      Size = 1
    end
    object CdsStCdeGetDtlCIDCDE: TStringField
      FieldName = 'CIDCDE'
      Size = 3
    end
    object CdsStCdeGetDtlCNOCDE: TStringField
      FieldName = 'CNOCDE'
      Size = 6
    end
    object CdsStCdeGetDtlENMCDE: TStringField
      FieldName = 'ENMCDE'
      Size = 80
    end
    object CdsStCdeGetDtlTNMCDE: TStringField
      FieldName = 'TNMCDE'
      Size = 80
    end
    object CdsStCdeGetDtlABBCDE: TStringField
      FieldName = 'ABBCDE'
      Size = 3
    end
    object CdsStCdeGetDtlVA1CDE: TFMTBCDField
      FieldName = 'VA1CDE'
      OnGetText = CdsStCdeGetDtlVA1CDEGetText
      Precision = 18
      Size = 2
    end
    object CdsStCdeGetDtlVA2CDE: TFMTBCDField
      FieldName = 'VA2CDE'
      OnGetText = CdsStCdeGetDtlVA1CDEGetText
      Precision = 18
      Size = 4
    end
    object CdsStCdeGetDtlDT1CDE: TDateField
      FieldName = 'DT1CDE'
      OnGetText = CdsStCdeGetDtlDT1CDEGetText
    end
    object CdsStCdeGetDtlDT2CDE: TDateField
      FieldName = 'DT2CDE'
      OnGetText = CdsStCdeGetDtlDT1CDEGetText
    end
    object CdsStCdeGetDtlAC1CDE: TStringField
      FieldName = 'AC1CDE'
      OnGetText = CdsStCdeGetDtlAC1CDEGetText
      Size = 11
    end
    object CdsStCdeGetDtlAC2CDE: TStringField
      FieldName = 'AC2CDE'
      OnGetText = CdsStCdeGetDtlAC2CDEGetText
      Size = 11
    end
    object CdsStCdeGetDtlDESCDE: TStringField
      FieldName = 'DESCDE'
    end
  end
  object CdsStNb1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetNb1'
    RemoteServer = dspDataConnection
    Left = 298
    Top = 175
    object CdsStNb1GetSTSNB1: TStringField
      FieldName = 'STSNB1'
      Size = 1
    end
    object CdsStNb1GetCMPNB1: TStringField
      FieldName = 'CMPNB1'
      Size = 2
    end
    object CdsStNb1GetBRNNB1: TStringField
      FieldName = 'BRNNB1'
      Size = 3
    end
    object CdsStNb1GetDCDNB1: TStringField
      FieldName = 'DCDNB1'
      Size = 6
    end
    object CdsStNb1GetYARNB1: TIntegerField
      FieldName = 'YARNB1'
    end
    object CdsStNb1GetN01NB1: TStringField
      FieldName = 'N01NB1'
      Size = 6
    end
    object CdsStNb1GetN02NB1: TStringField
      FieldName = 'N02NB1'
      Size = 6
    end
    object CdsStNb1GetN03NB1: TStringField
      FieldName = 'N03NB1'
      Size = 6
    end
    object CdsStNb1GetN04NB1: TStringField
      FieldName = 'N04NB1'
      Size = 6
    end
    object CdsStNb1GetN05NB1: TStringField
      FieldName = 'N05NB1'
      Size = 6
    end
    object CdsStNb1GetN06NB1: TStringField
      FieldName = 'N06NB1'
      Size = 6
    end
    object CdsStNb1GetN07NB1: TStringField
      FieldName = 'N07NB1'
      Size = 6
    end
    object CdsStNb1GetN08NB1: TStringField
      FieldName = 'N08NB1'
      Size = 6
    end
    object CdsStNb1GetN09NB1: TStringField
      FieldName = 'N09NB1'
      Size = 6
    end
    object CdsStNb1GetN10NB1: TStringField
      FieldName = 'N10NB1'
      Size = 6
    end
    object CdsStNb1GetN11NB1: TStringField
      FieldName = 'N11NB1'
      Size = 6
    end
    object CdsStNb1GetN12NB1: TStringField
      FieldName = 'N12NB1'
      Size = 6
    end
    object CdsStNb1GetPR1NB1: TStringField
      FieldName = 'PR1NB1'
      FixedChar = True
      Size = 1
    end
    object CdsStNb1GetPR2NB1: TStringField
      FieldName = 'PR2NB1'
      FixedChar = True
      Size = 1
    end
    object CdsStNb1GetENMCDE: TStringField
      FieldName = 'ENMCDE'
      Size = 80
    end
    object CdsStNb1GetTNMCDE: TStringField
      FieldName = 'TNMCDE'
      Size = 80
    end
    object CdsStNb1GetFORMAT_DOC: TStringField
      FieldName = 'FORMAT_DOC'
    end
  end
  object CdsStVm1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetVm1'
    RemoteServer = dspDataConnection
    Left = 298
    Top = 243
    object CdsStVm1GetSTSVM1: TStringField
      FieldName = 'STSVM1'
      Size = 1
    end
    object CdsStVm1GetVNOVM1: TStringField
      FieldName = 'VNOVM1'
      Size = 6
    end
    object CdsStVm1GetTNMVM1: TStringField
      FieldName = 'TNMVM1'
      Size = 80
    end
    object CdsStVm1GetENMVM1: TStringField
      FieldName = 'ENMVM1'
      Size = 80
    end
    object CdsStVm1GetCPSVM1: TStringField
      FieldName = 'CPSVM1'
      Size = 6
    end
    object CdsStVm1GetVTPVM1: TStringField
      FieldName = 'VTPVM1'
      Size = 6
    end
    object CdsStVm1GetACCVM1: TStringField
      FieldName = 'ACCVM1'
      Size = 7
    end
    object CdsStVm1GetOTPVM1: TStringField
      FieldName = 'OTPVM1'
      FixedChar = True
      Size = 1
    end
    object CdsStVm1GetVIAVM1: TStringField
      FieldName = 'VIAVM1'
      Size = 6
    end
    object CdsStVm1GetPSNVM1: TStringField
      FieldName = 'PSNVM1'
      Size = 6
    end
    object CdsStVm1GetTAXVM1: TStringField
      FieldName = 'TAXVM1'
    end
    object CdsStVm1GetTTXVM1: TStringField
      FieldName = 'TTXVM1'
      Size = 6
    end
    object CdsStVm1GetTPIVM1: TStringField
      FieldName = 'TPIVM1'
      Size = 6
    end
    object CdsStVm1GetVPCVM1: TFMTBCDField
      FieldName = 'VPCVM1'
      DisplayFormat = '#0.0000'
      EditFormat = '#0.0000'
      currency = True
      Precision = 18
      Size = 4
    end
    object CdsStVm1GetPOPVM1: TStringField
      FieldName = 'POPVM1'
      Size = 6
    end
    object CdsStVm1GetPAPVM1: TStringField
      FieldName = 'PAPVM1'
      Size = 6
    end
    object CdsStVm1GetDOPVM1: TStringField
      FieldName = 'DOPVM1'
      Size = 6
    end
    object CdsStVm1GetMEMVM1: TStringField
      FieldName = 'MEMVM1'
      Size = 1000
    end
  end
  object CdsSTVm1GetAddr01: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStVm1GetAddr'
    RemoteServer = dspDataConnection
    Left = 394
    Top = 243
    object CdsSTVm1GetAddr01TA1VMA: TStringField
      FieldName = 'TA1VMA'
      Size = 50
    end
    object CdsSTVm1GetAddr01TA2VMA: TStringField
      FieldName = 'TA2VMA'
      Size = 50
    end
    object CdsSTVm1GetAddr01CHGVMA: TStringField
      FieldName = 'CHGVMA'
      Size = 6
    end
    object CdsSTVm1GetAddr01CTYVMA: TStringField
      FieldName = 'CTYVMA'
      Size = 6
    end
    object CdsSTVm1GetAddr01ZIPVMA: TStringField
      FieldName = 'ZIPVMA'
      Size = 5
    end
    object CdsSTVm1GetAddr01TELVMA: TStringField
      FieldName = 'TELVMA'
    end
    object CdsSTVm1GetAddr01MOBVMA: TStringField
      FieldName = 'MOBVMA'
    end
    object CdsSTVm1GetAddr01FAXVMA: TStringField
      FieldName = 'FAXVMA'
    end
    object CdsSTVm1GetAddr01EMAVMA: TStringField
      FieldName = 'EMAVMA'
    end
    object CdsSTVm1GetAddr01WEBVMA: TStringField
      FieldName = 'WEBVMA'
    end
  end
  object CdsSTVm1GetAddr02: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStVm1GetAddr'
    RemoteServer = dspDataConnection
    Left = 514
    Top = 243
    object CdsSTVm1GetAddr02TA1VMA: TStringField
      FieldName = 'TA1VMA'
      Size = 50
    end
    object CdsSTVm1GetAddr02TA2VMA: TStringField
      FieldName = 'TA2VMA'
      Size = 50
    end
    object CdsSTVm1GetAddr02CHGVMA: TStringField
      FieldName = 'CHGVMA'
      Size = 6
    end
    object CdsSTVm1GetAddr02CTYVMA: TStringField
      FieldName = 'CTYVMA'
      Size = 6
    end
    object CdsSTVm1GetAddr02ZIPVMA: TStringField
      FieldName = 'ZIPVMA'
      Size = 5
    end
    object CdsSTVm1GetAddr02TELVMA: TStringField
      FieldName = 'TELVMA'
    end
    object CdsSTVm1GetAddr02MOBVMA: TStringField
      FieldName = 'MOBVMA'
    end
    object CdsSTVm1GetAddr02FAXVMA: TStringField
      FieldName = 'FAXVMA'
    end
    object CdsSTVm1GetAddr02EMAVMA: TStringField
      FieldName = 'EMAVMA'
    end
    object CdsSTVm1GetAddr02WEBVMA: TStringField
      FieldName = 'WEBVMA'
    end
  end
  object CdsSTVm1GetAddr03: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStVm1GetAddr'
    RemoteServer = dspDataConnection
    Left = 634
    Top = 243
    object CdsSTVm1GetAddr03TA1VMA: TStringField
      FieldName = 'TA1VMA'
      Size = 50
    end
    object CdsSTVm1GetAddr03TA2VMA: TStringField
      FieldName = 'TA2VMA'
      Size = 50
    end
    object CdsSTVm1GetAddr03CHGVMA: TStringField
      FieldName = 'CHGVMA'
      Size = 6
    end
    object CdsSTVm1GetAddr03CTYVMA: TStringField
      FieldName = 'CTYVMA'
      Size = 6
    end
    object CdsSTVm1GetAddr03ZIPVMA: TStringField
      FieldName = 'ZIPVMA'
      Size = 5
    end
    object CdsSTVm1GetAddr03TELVMA: TStringField
      FieldName = 'TELVMA'
    end
    object CdsSTVm1GetAddr03MOBVMA: TStringField
      FieldName = 'MOBVMA'
    end
    object CdsSTVm1GetAddr03FAXVMA: TStringField
      FieldName = 'FAXVMA'
    end
    object CdsSTVm1GetAddr03EMAVMA: TStringField
      FieldName = 'EMAVMA'
    end
    object CdsSTVm1GetAddr03WEBVMA: TStringField
      FieldName = 'WEBVMA'
    end
  end
  object CdsSTVm1GetAddr04: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStVm1GetAddr'
    RemoteServer = dspDataConnection
    Left = 762
    Top = 243
    object CdsSTVm1GetAddr04TA1VMA: TStringField
      FieldName = 'TA1VMA'
      Size = 50
    end
    object CdsSTVm1GetAddr04TA2VMA: TStringField
      FieldName = 'TA2VMA'
      Size = 50
    end
    object CdsSTVm1GetAddr04CHGVMA: TStringField
      FieldName = 'CHGVMA'
      Size = 6
    end
    object CdsSTVm1GetAddr04CTYVMA: TStringField
      FieldName = 'CTYVMA'
      Size = 6
    end
    object CdsSTVm1GetAddr04ZIPVMA: TStringField
      FieldName = 'ZIPVMA'
      Size = 5
    end
    object CdsSTVm1GetAddr04TELVMA: TStringField
      FieldName = 'TELVMA'
    end
    object CdsSTVm1GetAddr04MOBVMA: TStringField
      FieldName = 'MOBVMA'
    end
    object CdsSTVm1GetAddr04FAXVMA: TStringField
      FieldName = 'FAXVMA'
    end
    object CdsSTVm1GetAddr04EMAVMA: TStringField
      FieldName = 'EMAVMA'
    end
    object CdsSTVm1GetAddr04WEBVMA: TStringField
      FieldName = 'WEBVMA'
    end
  end
  object CdsStCm1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetCm1'
    RemoteServer = dspDataConnection
    Left = 298
    Top = 323
    object CdsStCm1GetSTSCM1: TStringField
      FieldName = 'STSCM1'
      Size = 1
    end
    object CdsStCm1GetTYPCM1: TStringField
      FieldName = 'TYPCM1'
      Size = 6
    end
    object CdsStCm1GetCTPCM1: TStringField
      FieldName = 'CTPCM1'
      Size = 6
    end
    object CdsStCm1GetCNOCM1: TStringField
      FieldName = 'CNOCM1'
      Size = 10
    end
    object CdsStCm1GetTNMCM1: TStringField
      FieldName = 'TNMCM1'
      Size = 80
    end
    object CdsStCm1GetENMCM1: TStringField
      FieldName = 'ENMCM1'
      Size = 80
    end
    object CdsStCm1GetACCCM1: TStringField
      FieldName = 'ACCCM1'
      Size = 7
    end
    object CdsStCm1GetTAXCM1: TStringField
      FieldName = 'TAXCM1'
    end
    object CdsStCm1GetCPSCM1: TStringField
      FieldName = 'CPSCM1'
      Size = 80
    end
    object CdsStCm1GetCCMCM1: TStringField
      FieldName = 'CCMCM1'
      Size = 80
    end
    object CdsStCm1GetPOSCM1: TStringField
      FieldName = 'POSCM1'
      Size = 6
    end
    object CdsStCm1GetCTLCM1: TStringField
      FieldName = 'CTLCM1'
    end
    object CdsStCm1GetCMBCM1: TStringField
      FieldName = 'CMBCM1'
    end
    object CdsStCm1GetCFACM1: TStringField
      FieldName = 'CFACM1'
    end
    object CdsStCm1GetCEMCM1: TStringField
      FieldName = 'CEMCM1'
    end
    object CdsStCm1GetVIACM1: TStringField
      FieldName = 'VIACM1'
      Size = 6
    end
    object CdsStCm1GetSMNCM1: TStringField
      FieldName = 'SMNCM1'
      Size = 6
    end
    object CdsStCm1GetPDPCM1: TStringField
      FieldName = 'PDPCM1'
      Size = 6
    end
    object CdsStCm1GetDOPCM1: TStringField
      FieldName = 'DOPCM1'
      Size = 6
    end
    object CdsStCm1GetMEMCM1: TStringField
      FieldName = 'MEMCM1'
      Size = 1000
    end
  end
  object CdsSTCm1GetAddr01: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStCm1GetAddr'
    RemoteServer = dspDataConnection
    Left = 394
    Top = 323
    object CdsSTCm1GetAddr01TA1CMA: TStringField
      FieldName = 'TA1CMA'
      Size = 50
    end
    object CdsSTCm1GetAddr01TA2CMA: TStringField
      FieldName = 'TA2CMA'
      Size = 50
    end
    object CdsSTCm1GetAddr01CHGCMA: TStringField
      FieldName = 'CHGCMA'
      Size = 6
    end
    object CdsSTCm1GetAddr01CTYCMA: TStringField
      FieldName = 'CTYCMA'
      Size = 6
    end
    object CdsSTCm1GetAddr01ZIPCMA: TStringField
      FieldName = 'ZIPCMA'
      Size = 5
    end
    object CdsSTCm1GetAddr01TELCMA: TStringField
      FieldName = 'TELCMA'
    end
    object CdsSTCm1GetAddr01MOBCMA: TStringField
      FieldName = 'MOBCMA'
    end
    object CdsSTCm1GetAddr01FAXCMA: TStringField
      FieldName = 'FAXCMA'
    end
    object CdsSTCm1GetAddr01EMACMA: TStringField
      FieldName = 'EMACMA'
    end
    object CdsSTCm1GetAddr01WEBCMA: TStringField
      FieldName = 'WEBCMA'
    end
  end
  object CdsSTCm1GetAddr02: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStCm1GetAddr'
    RemoteServer = dspDataConnection
    Left = 514
    Top = 323
    object CdsSTCm1GetAddr02TA1CMA: TStringField
      FieldName = 'TA1CMA'
      Size = 50
    end
    object CdsSTCm1GetAddr02TA2CMA: TStringField
      FieldName = 'TA2CMA'
      Size = 50
    end
    object CdsSTCm1GetAddr02CHGCMA: TStringField
      FieldName = 'CHGCMA'
      Size = 6
    end
    object CdsSTCm1GetAddr02CTYCMA: TStringField
      FieldName = 'CTYCMA'
      Size = 6
    end
    object CdsSTCm1GetAddr02ZIPCMA: TStringField
      FieldName = 'ZIPCMA'
      Size = 5
    end
    object CdsSTCm1GetAddr02TELCMA: TStringField
      FieldName = 'TELCMA'
    end
    object CdsSTCm1GetAddr02MOBCMA: TStringField
      FieldName = 'MOBCMA'
    end
    object CdsSTCm1GetAddr02FAXCMA: TStringField
      FieldName = 'FAXCMA'
    end
    object CdsSTCm1GetAddr02EMACMA: TStringField
      FieldName = 'EMACMA'
    end
    object CdsSTCm1GetAddr02WEBCMA: TStringField
      FieldName = 'WEBCMA'
    end
  end
  object CdsSTCm1GetAddr03: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStCm1GetAddr'
    RemoteServer = dspDataConnection
    Left = 634
    Top = 323
    object CdsSTCm1GetAddr03TA1CMA: TStringField
      FieldName = 'TA1CMA'
      Size = 50
    end
    object CdsSTCm1GetAddr03TA2CMA: TStringField
      FieldName = 'TA2CMA'
      Size = 50
    end
    object CdsSTCm1GetAddr03CHGCMA: TStringField
      FieldName = 'CHGCMA'
      Size = 6
    end
    object CdsSTCm1GetAddr03CTYCMA: TStringField
      FieldName = 'CTYCMA'
      Size = 6
    end
    object CdsSTCm1GetAddr03ZIPCMA: TStringField
      FieldName = 'ZIPCMA'
      Size = 5
    end
    object CdsSTCm1GetAddr03TELCMA: TStringField
      FieldName = 'TELCMA'
    end
    object CdsSTCm1GetAddr03MOBCMA: TStringField
      FieldName = 'MOBCMA'
    end
    object CdsSTCm1GetAddr03FAXCMA: TStringField
      FieldName = 'FAXCMA'
    end
    object CdsSTCm1GetAddr03EMACMA: TStringField
      FieldName = 'EMACMA'
    end
    object CdsSTCm1GetAddr03WEBCMA: TStringField
      FieldName = 'WEBCMA'
    end
  end
  object CdsSTCm1GetAddr04: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStCm1GetAddr'
    RemoteServer = dspDataConnection
    Left = 762
    Top = 323
    object CdsSTCm1GetAddr04TA1CMA: TStringField
      FieldName = 'TA1CMA'
      Size = 50
    end
    object CdsSTCm1GetAddr04TA2CMA: TStringField
      FieldName = 'TA2CMA'
      Size = 50
    end
    object CdsSTCm1GetAddr04CHGCMA: TStringField
      FieldName = 'CHGCMA'
      Size = 6
    end
    object CdsSTCm1GetAddr04CTYCMA: TStringField
      FieldName = 'CTYCMA'
      Size = 6
    end
    object CdsSTCm1GetAddr04ZIPCMA: TStringField
      FieldName = 'ZIPCMA'
      Size = 5
    end
    object CdsSTCm1GetAddr04TELCMA: TStringField
      FieldName = 'TELCMA'
    end
    object CdsSTCm1GetAddr04MOBCMA: TStringField
      FieldName = 'MOBCMA'
    end
    object CdsSTCm1GetAddr04FAXCMA: TStringField
      FieldName = 'FAXCMA'
    end
    object CdsSTCm1GetAddr04EMACMA: TStringField
      FieldName = 'EMACMA'
    end
    object CdsSTCm1GetAddr04WEBCMA: TStringField
      FieldName = 'WEBCMA'
    end
  end
  object CdsStPm1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetPm1'
    RemoteServer = dspDataConnection
    Left = 298
    Top = 395
    object CdsStPm1GetSTSPM1: TStringField
      FieldName = 'STSPM1'
      Size = 1
    end
    object CdsStPm1GetITCPM1: TStringField
      FieldName = 'ITCPM1'
      Size = 6
    end
    object CdsStPm1GetITNPM1: TStringField
      FieldName = 'ITNPM1'
    end
    object CdsStPm1GetENMPM1: TStringField
      FieldName = 'ENMPM1'
      Size = 80
    end
    object CdsStPm1GetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStPm1GetMNMPM1: TStringField
      FieldName = 'MNMPM1'
    end
    object CdsStPm1GetUT1PM1: TStringField
      FieldName = 'UT1PM1'
      Size = 10
    end
    object CdsStPm1GetUT2PM1: TStringField
      FieldName = 'UT2PM1'
      Size = 10
    end
    object CdsStPm1GetUE1PM1: TStringField
      FieldName = 'UE1PM1'
      Size = 10
    end
    object CdsStPm1GetUE2PM1: TStringField
      FieldName = 'UE2PM1'
      Size = 10
    end
    object CdsStPm1GetCVTPM1: TFMTBCDField
      FieldName = 'CVTPM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetWHSPM1: TStringField
      FieldName = 'WHSPM1'
      Size = 6
    end
    object CdsStPm1GetUC1PM1: TFMTBCDField
      FieldName = 'UC1PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetUC2PM1: TFMTBCDField
      FieldName = 'UC2PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetUP1PM1: TFMTBCDField
      FieldName = 'UP1PM1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetUP2PM1: TFMTBCDField
      FieldName = 'UP2PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetUF1PM1: TFMTBCDField
      FieldName = 'UF1PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetUF2PM1: TFMTBCDField
      FieldName = 'UF2PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetFAMPM1: TFMTBCDField
      FieldName = 'FAMPM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetCT1PM1: TFMTBCDField
      FieldName = 'CT1PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetCT2PM1: TFMTBCDField
      FieldName = 'CT2PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetITSPM1: TStringField
      FieldName = 'ITSPM1'
      Size = 6
    end
    object CdsStPm1GetBRDPM1: TStringField
      FieldName = 'BRDPM1'
      Size = 6
    end
    object CdsStPm1GetSRSPM1: TStringField
      FieldName = 'SRSPM1'
      Size = 6
    end
    object CdsStPm1GetGEAPM1: TStringField
      FieldName = 'GEAPM1'
      Size = 6
    end
    object CdsStPm1GetCASPM1: TIntegerField
      FieldName = 'CASPM1'
    end
    object CdsStPm1GetPWRPM1: TIntegerField
      FieldName = 'PWRPM1'
    end
    object CdsStPm1GetSTKPM1: TStringField
      FieldName = 'STKPM1'
      Size = 6
    end
    object CdsStPm1GetDPCPM1: TIntegerField
      FieldName = 'DPCPM1'
    end
    object CdsStPm1GetACCPM1: TStringField
      FieldName = 'ACCPM1'
      Size = 7
    end
  end
  object CdsStBgGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetBg'
    RemoteServer = dspDataConnection
    Left = 298
    Top = 459
    object CdsStBgGetSTSBG2: TStringField
      FieldName = 'STSBG2'
      Size = 1
    end
    object CdsStBgGetYARBG2: TIntegerField
      FieldName = 'YARBG2'
    end
    object CdsStBgGetCMPBG2: TStringField
      FieldName = 'CMPBG2'
      Size = 2
    end
    object CdsStBgGetBRNBG2: TStringField
      FieldName = 'BRNBG2'
      Size = 3
    end
    object CdsStBgGetITNBG2: TStringField
      FieldName = 'ITNBG2'
    end
    object CdsStBgGetSMNBG2: TStringField
      FieldName = 'SMNBG2'
      Size = 6
    end
    object CdsStBgGetQ01BG2: TFMTBCDField
      FieldName = 'Q01BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ02BG2: TFMTBCDField
      FieldName = 'Q02BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ03BG2: TFMTBCDField
      FieldName = 'Q03BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ04BG2: TFMTBCDField
      FieldName = 'Q04BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ05BG2: TFMTBCDField
      FieldName = 'Q05BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ06BG2: TFMTBCDField
      FieldName = 'Q06BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ07BG2: TFMTBCDField
      FieldName = 'Q07BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ08BG2: TFMTBCDField
      FieldName = 'Q08BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ09BG2: TFMTBCDField
      FieldName = 'Q09BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ10BG2: TFMTBCDField
      FieldName = 'Q10BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ11BG2: TFMTBCDField
      FieldName = 'Q11BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetQ12BG2: TFMTBCDField
      FieldName = 'Q12BG2'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA01BG2: TFMTBCDField
      FieldName = 'A01BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA02BG2: TFMTBCDField
      FieldName = 'A02BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA03BG2: TFMTBCDField
      FieldName = 'A03BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA04BG2: TFMTBCDField
      FieldName = 'A04BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA05BG2: TFMTBCDField
      FieldName = 'A05BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA06BG2: TFMTBCDField
      FieldName = 'A06BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA07BG2: TFMTBCDField
      FieldName = 'A07BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA08BG2: TFMTBCDField
      FieldName = 'A08BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA09BG2: TFMTBCDField
      FieldName = 'A09BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA10BG2: TFMTBCDField
      FieldName = 'A10BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA11BG2: TFMTBCDField
      FieldName = 'A11BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetA12BG2: TFMTBCDField
      FieldName = 'A12BG2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStBgGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStBgGetSMNTNM: TStringField
      FieldName = 'SMNTNM'
      Size = 80
    end
    object CdsStBgGetFLG_BG: TStringField
      FieldName = 'FLG_BG'
      FixedChar = True
      Size = 1
    end
  end
  object CdsStStyGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetSty'
    RemoteServer = dspDataConnection
    Left = 298
    Top = 531
    object CdsStStyGetSTSSTY: TStringField
      FieldName = 'STSSTY'
      Size = 1
    end
    object CdsStStyGetSERSTY: TStringField
      FieldName = 'SERSTY'
      Size = 30
    end
    object CdsStStyGetCNOSTY: TStringField
      FieldName = 'CNOSTY'
      Size = 10
    end
    object CdsStStyGetTNMCM1: TStringField
      FieldName = 'TNMCM1'
      Size = 80
    end
    object CdsStStyGetENGSTY: TStringField
      FieldName = 'ENGSTY'
      Size = 30
    end
    object CdsStStyGetSRSSTY: TStringField
      FieldName = 'SRSSTY'
      Size = 6
    end
    object CdsStStyGetITNSTY: TStringField
      FieldName = 'ITNSTY'
    end
    object CdsStStyGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStStyGetCOLSTY: TStringField
      FieldName = 'COLSTY'
      Size = 6
    end
    object CdsStStyGetCOLTNM: TStringField
      FieldName = 'COLTNM'
      Size = 80
    end
  end
  object CdsStShpGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetShp'
    RemoteServer = dspDataConnection
    Left = 386
    Top = 531
    object CdsStShpGetSTSSHP: TStringField
      FieldName = 'STSSHP'
      Size = 1
    end
    object CdsStShpGetCNOSHP: TStringField
      FieldName = 'CNOSHP'
      Size = 10
    end
    object CdsStShpGetCNOTNM: TStringField
      FieldName = 'CNOTNM'
      Size = 80
    end
    object CdsStShpGetSEQSHP: TIntegerField
      FieldName = 'SEQSHP'
    end
    object CdsStShpGetFBNSHP: TStringField
      FieldName = 'FBNSHP'
      Size = 6
    end
    object CdsStShpGetFBNTNM: TStringField
      FieldName = 'FBNTNM'
      Size = 80
    end
    object CdsStShpGetTBNSHP: TStringField
      FieldName = 'TBNSHP'
      Size = 6
    end
    object CdsStShpGetTBNTNM: TStringField
      FieldName = 'TBNTNM'
      Size = 80
    end
    object CdsStShpGetAMTSHP: TFMTBCDField
      FieldName = 'AMTSHP'
      OnGetText = CdsStShpGetAMTSHPGetText
      Precision = 18
      Size = 2
    end
  end
  object CdsStCm1GetAm3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStCm1GetAm3'
    RemoteServer = dspDataConnection
    Left = 874
    Top = 323
    object CdsStCm1GetAm3STSAM3: TStringField
      FieldName = 'STSAM3'
      Size = 1
    end
    object CdsStCm1GetAm3CMPAM3: TStringField
      FieldName = 'CMPAM3'
      Size = 2
    end
    object CdsStCm1GetAm3BRNAM3: TStringField
      FieldName = 'BRNAM3'
      Size = 3
    end
    object CdsStCm1GetAm3TNMCM3: TStringField
      FieldName = 'TNMCM3'
      Size = 80
    end
    object CdsStCm1GetAm3CNOAM3: TStringField
      FieldName = 'CNOAM3'
      Size = 10
    end
    object CdsStCm1GetAm3CRTAM3: TIntegerField
      FieldName = 'CRTAM3'
    end
    object CdsStCm1GetAm3CRLAM3: TFMTBCDField
      FieldName = 'CRLAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3BFIAM3: TFMTBCDField
      FieldName = 'BFIAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3MINAM3: TFMTBCDField
      FieldName = 'MINAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3MPYAM3: TFMTBCDField
      FieldName = 'MPYAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3MCMAM3: TFMTBCDField
      FieldName = 'MCMAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3MDNAM3: TFMTBCDField
      FieldName = 'MDNAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3MCNAM3: TFMTBCDField
      FieldName = 'MCNAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3MAJAM3: TFMTBCDField
      FieldName = 'MAJAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3MDSAM3: TFMTBCDField
      FieldName = 'MDSAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3MITAM3: TFMTBCDField
      FieldName = 'MITAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3PDCAM3: TFMTBCDField
      FieldName = 'PDCAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3UNCAM3: TFMTBCDField
      FieldName = 'UNCAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3CQRAM3: TFMTBCDField
      FieldName = 'CQRAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3ADNAM3: TFMTBCDField
      FieldName = 'ADNAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3ACNAM3: TFMTBCDField
      FieldName = 'ACNAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3APYAM3: TFMTBCDField
      FieldName = 'APYAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3YPYAM3: TFMTBCDField
      FieldName = 'YPYAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStCm1GetAm3YPCAM3: TFMTBCDField
      FieldName = 'YPCAM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object CdsStCm3Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetCm3'
    RemoteServer = dspDataConnection
    Left = 482
    Top = 531
    object CdsStCm3GetSTSCM3: TStringField
      FieldName = 'STSCM3'
      Size = 1
    end
    object CdsStCm3GetCMPCM3: TStringField
      FieldName = 'CMPCM3'
      Size = 2
    end
    object CdsStCm3GetBRNCM3: TStringField
      FieldName = 'BRNCM3'
      Size = 3
    end
    object CdsStCm3GetENMCM3: TStringField
      FieldName = 'ENMCM3'
      Size = 80
    end
    object CdsStCm3GetTNMCM3: TStringField
      FieldName = 'TNMCM3'
      Size = 80
    end
    object CdsStCm3GetTA1CM3: TStringField
      FieldName = 'TA1CM3'
      Size = 50
    end
    object CdsStCm3GetTA2CM3: TStringField
      FieldName = 'TA2CM3'
      Size = 50
    end
    object CdsStCm3GetTIDCM3: TStringField
      FieldName = 'TIDCM3'
    end
  end
  object CdsStRm1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetRm1'
    RemoteServer = dspDataConnection
    Left = 578
    Top = 531
    object CdsStRm1GetSTSRM1: TStringField
      FieldName = 'STSRM1'
      Size = 1
    end
    object CdsStRm1GetCMPRM1: TStringField
      FieldName = 'CMPRM1'
      Size = 2
    end
    object CdsStRm1GetBRNRM1: TStringField
      FieldName = 'BRNRM1'
      Size = 3
    end
    object CdsStRm1GetREGRM1: TStringField
      FieldName = 'REGRM1'
      Size = 6
    end
    object CdsStRm1GetRGNRM1: TIntegerField
      FieldName = 'RGNRM1'
    end
    object CdsStRm1GetRNORM1: TStringField
      FieldName = 'RNORM1'
    end
    object CdsStRm1GetPRVRM1: TStringField
      FieldName = 'PRVRM1'
      Size = 6
    end
    object CdsStRm1GetPRVTNM: TStringField
      FieldName = 'PRVTNM'
      Size = 80
    end
    object CdsStRm1GetPDTRM1: TDateField
      FieldName = 'PDTRM1'
      OnGetText = CdsStRm1GetPDTRM1GetText
    end
    object CdsStRm1GetPATRM1: TFMTBCDField
      FieldName = 'PATRM1'
      OnGetText = CdsStRm1GetPATRM1GetText
      Precision = 18
      Size = 2
    end
    object CdsStRm1GetOATRM1: TFMTBCDField
      FieldName = 'OATRM1'
      OnGetText = CdsStRm1GetPATRM1GetText
      Precision = 18
      Size = 2
    end
    object CdsStRm1GetAVLRM1: TStringField
      FieldName = 'AVLRM1'
      FixedChar = True
      Size = 1
    end
    object CdsStRm1GetNARRM1: TStringField
      FieldName = 'NARRM1'
      Size = 80
    end
    object CdsStRm1GetSUMRM1: TFMTBCDField
      FieldName = 'SUMRM1'
      OnGetText = CdsStRm1GetPATRM1GetText
      Precision = 18
      Size = 2
    end
  end
  object CdsStRegGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetReg'
    RemoteServer = dspDataConnection
    Left = 298
    Top = 603
    object CdsStRegGetSTSREG: TStringField
      FieldName = 'STSREG'
      Size = 1
    end
    object CdsStRegGetCMPREG: TStringField
      FieldName = 'CMPREG'
      Size = 2
    end
    object CdsStRegGetBRNREG: TStringField
      FieldName = 'BRNREG'
      Size = 3
    end
    object CdsStRegGetCNOREG: TStringField
      FieldName = 'CNOREG'
      Size = 6
    end
    object CdsStRegGetCNOTNM: TStringField
      FieldName = 'CNOTNM'
      Size = 80
    end
    object CdsStRegGetSEQREG: TIntegerField
      FieldName = 'SEQREG'
    end
    object CdsStRegGetITNREG: TStringField
      FieldName = 'ITNREG'
    end
    object CdsStRegGetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStRegGetAMTREG: TFMTBCDField
      FieldName = 'AMTREG'
      OnGetText = CdsStRegGetAMTREGGetText
      Precision = 18
      Size = 2
    end
    object CdsStRegGetSUMREG: TFMTBCDField
      FieldName = 'SUMREG'
      OnGetText = CdsStRegGetAMTREGGetText
      Precision = 18
      Size = 2
    end
    object CdsStRegGetNARREG: TStringField
      FieldName = 'NARREG'
      Size = 80
    end
    object CdsStRegGetCNOITN: TStringField
      FieldName = 'CNOITN'
      Size = 26
    end
    object CdsStRegGetOTHREG: TFMTBCDField
      FieldName = 'OTHREG'
      OnGetText = CdsStRegGetAMTREGGetText
      Precision = 18
      Size = 2
    end
  end
  object CdsStRegGetPm1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStRegGetPm1'
    RemoteServer = dspDataConnection
    Left = 386
    Top = 603
    object CdsStRegGetPm1STSREG: TStringField
      FieldName = 'STSREG'
      Size = 1
    end
    object CdsStRegGetPm1ITNREG: TStringField
      FieldName = 'ITNREG'
    end
    object CdsStRegGetPm1TNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStRegGetPm1AMTREG: TFMTBCDField
      FieldName = 'AMTREG'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStRegGetPm1OTHREG: TFMTBCDField
      FieldName = 'OTHREG'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStRegGetPm1SUMREG: TFMTBCDField
      FieldName = 'SUMREG'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStRegGetPm1NARREG: TStringField
      FieldName = 'NARREG'
      Size = 80
    end
    object CdsStRegGetPm1SEQREG: TIntegerField
      FieldName = 'SEQREG'
    end
  end
  object CdsStRegGetExtra: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetReg'
    RemoteServer = dspDataConnection
    Left = 482
    Top = 603
    object CdsStRegGetExtraSTSREG: TStringField
      FieldName = 'STSREG'
      Size = 1
    end
    object CdsStRegGetExtraCMPREG: TStringField
      FieldName = 'CMPREG'
      Size = 2
    end
    object CdsStRegGetExtraBRNREG: TStringField
      FieldName = 'BRNREG'
      Size = 3
    end
    object CdsStRegGetExtraCNOREG: TStringField
      FieldName = 'CNOREG'
      Size = 6
    end
    object CdsStRegGetExtraCNOTNM: TStringField
      FieldName = 'CNOTNM'
      Size = 80
    end
    object CdsStRegGetExtraSEQREG: TIntegerField
      FieldName = 'SEQREG'
    end
    object CdsStRegGetExtraITNREG: TStringField
      FieldName = 'ITNREG'
    end
    object CdsStRegGetExtraTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStRegGetExtraAMTREG: TFMTBCDField
      FieldName = 'AMTREG'
      Precision = 18
      Size = 2
    end
    object CdsStRegGetExtraOTHREG: TFMTBCDField
      FieldName = 'OTHREG'
      Precision = 18
      Size = 2
    end
    object CdsStRegGetExtraSUMREG: TFMTBCDField
      FieldName = 'SUMREG'
      Precision = 18
      Size = 2
    end
    object CdsStRegGetExtraNARREG: TStringField
      FieldName = 'NARREG'
      Size = 80
    end
    object CdsStRegGetExtraCNOITN: TStringField
      FieldName = 'CNOITN'
      Size = 26
    end
  end
  object CdsStAm1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetAm1'
    RemoteServer = dspDataConnection
    Left = 210
    Top = 323
    object CdsStAm1GetSTSAM1: TStringField
      FieldName = 'STSAM1'
      Size = 1
    end
    object CdsStAm1GetYARAM1: TIntegerField
      FieldName = 'YARAM1'
    end
    object CdsStAm1GetCMPAM1: TStringField
      FieldName = 'CMPAM1'
      Size = 2
    end
    object CdsStAm1GetBRNAM1: TStringField
      FieldName = 'BRNAM1'
      Size = 3
    end
    object CdsStAm1GetCNOAM1: TStringField
      FieldName = 'CNOAM1'
      Size = 10
    end
    object CdsStAm1GetIDTAM1: TDateField
      FieldName = 'IDTAM1'
      OnGetText = CdsStAm1GetIDTAM1GetText
    end
    object CdsStAm1GetDCDAM1: TStringField
      FieldName = 'DCDAM1'
      Size = 6
    end
    object CdsStAm1GetDNOAM1: TStringField
      FieldName = 'DNOAM1'
      Size = 30
    end
    object CdsStAm1GetSEQAM1: TIntegerField
      FieldName = 'SEQAM1'
    end
    object CdsStAm1GetDEPAM1: TStringField
      FieldName = 'DEPAM1'
      Size = 6
    end
    object CdsStAm1GetPRTAM1: TStringField
      FieldName = 'PRTAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetPRCAM1: TStringField
      FieldName = 'PRCAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetCQPAM1: TStringField
      FieldName = 'CQPAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetCQSAM1: TStringField
      FieldName = 'CQSAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetATPAM1: TStringField
      FieldName = 'ATPAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetCYTAM1: TStringField
      FieldName = 'CYTAM1'
      Size = 6
    end
    object CdsStAm1GetCYRAM1: TFMTBCDField
      FieldName = 'CYRAM1'
      Precision = 18
      Size = 4
    end
    object CdsStAm1GetACYAM1: TFMTBCDField
      FieldName = 'ACYAM1'
      Precision = 18
      Size = 2
    end
    object CdsStAm1GetBCYAM1: TFMTBCDField
      FieldName = 'BCYAM1'
      Precision = 18
      Size = 2
    end
    object CdsStAm1GetAMTAM1: TFMTBCDField
      FieldName = 'AMTAM1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStAm1GetBALAM1: TFMTBCDField
      FieldName = 'BALAM1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStAm1GetBILAM1: TStringField
      FieldName = 'BILAM1'
      Size = 6
    end
    object CdsStAm1GetSHPAM1: TStringField
      FieldName = 'SHPAM1'
      Size = 10
    end
    object CdsStAm1GetSDTAM1: TDateField
      FieldName = 'SDTAM1'
    end
    object CdsStAm1GetCDTAM1: TDateField
      FieldName = 'CDTAM1'
    end
    object CdsStAm1GetBNKAM1: TStringField
      FieldName = 'BNKAM1'
      Size = 6
    end
    object CdsStAm1GetNTEAM1: TStringField
      FieldName = 'NTEAM1'
      Size = 8
    end
    object CdsStAm1GetPAYAM1: TStringField
      FieldName = 'PAYAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetNTYAM1: TStringField
      FieldName = 'NTYAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetCPDAM1: TDateField
      FieldName = 'CPDAM1'
    end
    object CdsStAm1GetFLGAM1: TStringField
      FieldName = 'FLGAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetORDAM1: TFMTBCDField
      FieldName = 'ORDAM1'
      Precision = 18
      Size = 2
    end
    object CdsStAm1GetDDTAM1: TDateField
      FieldName = 'DDTAM1'
      OnGetText = CdsStAm1GetDDTAM1GetText
    end
    object CdsStAm1GetINVAM1: TFMTBCDField
      FieldName = 'INVAM1'
      Precision = 18
      Size = 2
    end
    object CdsStAm1GetITPAM1: TStringField
      FieldName = 'ITPAM1'
      FixedChar = True
      Size = 1
    end
    object CdsStAm1GetABBAM1: TStringField
      FieldName = 'ABBAM1'
      Size = 6
    end
    object CdsStAm1GetSERAM1: TStringField
      FieldName = 'SERAM1'
      Size = 30
    end
    object CdsStAm1GetSMNCM1: TStringField
      FieldName = 'SMNCM1'
      Size = 6
    end
    object CdsStAm1GetTNMCM1: TStringField
      FieldName = 'TNMCM1'
      Size = 80
    end
    object CdsStAm1GetCTPCM1: TStringField
      FieldName = 'CTPCM1'
      Size = 6
    end
  end
  object CdsStCm1GetUsedBrn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStCm1GetUsedBrn'
    RemoteServer = dspDataConnection
    Left = 986
    Top = 323
    object CdsStCm1GetUsedBrnCMPAM3: TStringField
      FieldName = 'CMPAM3'
      Size = 2
    end
    object CdsStCm1GetUsedBrnBRNAM3: TStringField
      FieldName = 'BRNAM3'
      Size = 3
    end
    object CdsStCm1GetUsedBrnSTSCM1: TStringField
      FieldName = 'STSCM1'
      Size = 1
    end
    object CdsStCm1GetUsedBrnTYPCM1: TStringField
      FieldName = 'TYPCM1'
      Size = 6
    end
    object CdsStCm1GetUsedBrnCTPCM1: TStringField
      FieldName = 'CTPCM1'
      Size = 6
    end
    object CdsStCm1GetUsedBrnCNOCM1: TStringField
      FieldName = 'CNOCM1'
      Size = 10
    end
    object CdsStCm1GetUsedBrnTNMCM1: TStringField
      FieldName = 'TNMCM1'
      Size = 80
    end
    object CdsStCm1GetUsedBrnENMCM1: TStringField
      FieldName = 'ENMCM1'
      Size = 80
    end
    object CdsStCm1GetUsedBrnACCCM1: TStringField
      FieldName = 'ACCCM1'
      Size = 7
    end
    object CdsStCm1GetUsedBrnTAXCM1: TStringField
      FieldName = 'TAXCM1'
    end
    object CdsStCm1GetUsedBrnCPSCM1: TStringField
      FieldName = 'CPSCM1'
      Size = 80
    end
    object CdsStCm1GetUsedBrnCCMCM1: TStringField
      FieldName = 'CCMCM1'
      Size = 80
    end
    object CdsStCm1GetUsedBrnPOSCM1: TStringField
      FieldName = 'POSCM1'
      Size = 6
    end
    object CdsStCm1GetUsedBrnCTLCM1: TStringField
      FieldName = 'CTLCM1'
    end
    object CdsStCm1GetUsedBrnCMBCM1: TStringField
      FieldName = 'CMBCM1'
    end
    object CdsStCm1GetUsedBrnCFACM1: TStringField
      FieldName = 'CFACM1'
    end
    object CdsStCm1GetUsedBrnCEMCM1: TStringField
      FieldName = 'CEMCM1'
    end
    object CdsStCm1GetUsedBrnVIACM1: TStringField
      FieldName = 'VIACM1'
      Size = 6
    end
    object CdsStCm1GetUsedBrnSMNCM1: TStringField
      FieldName = 'SMNCM1'
      Size = 6
    end
    object CdsStCm1GetUsedBrnPDPCM1: TStringField
      FieldName = 'PDPCM1'
      Size = 6
    end
    object CdsStCm1GetUsedBrnDOPCM1: TStringField
      FieldName = 'DOPCM1'
      Size = 6
    end
    object CdsStCm1GetUsedBrnMEMCM1: TStringField
      FieldName = 'MEMCM1'
      Size = 1000
    end
    object CdsStCm1GetUsedBrnCRTAM3: TIntegerField
      FieldName = 'CRTAM3'
    end
  end
  object CdsStVm1GetYm3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStVm1GetYm3'
    RemoteServer = dspDataConnection
    Left = 874
    Top = 243
    object CdsStVm1GetYm3STSYM3: TStringField
      FieldName = 'STSYM3'
      Size = 1
    end
    object CdsStVm1GetYm3CMPYM3: TStringField
      FieldName = 'CMPYM3'
      Size = 2
    end
    object CdsStVm1GetYm3BRNYM3: TStringField
      FieldName = 'BRNYM3'
      Size = 3
    end
    object CdsStVm1GetYm3TNMCM3: TStringField
      FieldName = 'TNMCM3'
      Size = 80
    end
    object CdsStVm1GetYm3VNOYM3: TStringField
      FieldName = 'VNOYM3'
      Size = 6
    end
    object CdsStVm1GetYm3CRTYM3: TIntegerField
      FieldName = 'CRTYM3'
    end
    object CdsStVm1GetYm3CRLYM3: TFMTBCDField
      FieldName = 'CRLYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3DSDYM3: TIntegerField
      FieldName = 'DSDYM3'
    end
    object CdsStVm1GetYm3DSAYM3: TFMTBCDField
      FieldName = 'DSAYM3'
      DisplayFormat = '##0.000'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3BFIYM3: TFMTBCDField
      FieldName = 'BFIYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3MINYM3: TFMTBCDField
      FieldName = 'MINYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3MPYYM3: TFMTBCDField
      FieldName = 'MPYYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3MCMYM3: TFMTBCDField
      FieldName = 'MCMYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3MDNYM3: TFMTBCDField
      FieldName = 'MDNYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3MCNYM3: TFMTBCDField
      FieldName = 'MCNYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3MAJYM3: TFMTBCDField
      FieldName = 'MAJYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3MDSYM3: TFMTBCDField
      FieldName = 'MDSYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3MITYM3: TFMTBCDField
      FieldName = 'MITYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3PDCYM3: TFMTBCDField
      FieldName = 'PDCYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3UNCYM3: TFMTBCDField
      FieldName = 'UNCYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3CQRYM3: TFMTBCDField
      FieldName = 'CQRYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3ADNYM3: TFMTBCDField
      FieldName = 'ADNYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3ACNYM3: TFMTBCDField
      FieldName = 'ACNYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3APYYM3: TFMTBCDField
      FieldName = 'APYYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3YPYYM3: TFMTBCDField
      FieldName = 'YPYYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStVm1GetYm3YPCYM3: TFMTBCDField
      FieldName = 'YPCYM3'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object CdsStYm1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetYm1'
    RemoteServer = dspDataConnection
    Left = 210
    Top = 243
    object CdsStYm1GetSTSYM1: TStringField
      FieldName = 'STSYM1'
      Size = 1
    end
    object CdsStYm1GetYARYM1: TIntegerField
      FieldName = 'YARYM1'
    end
    object CdsStYm1GetDCDYM1: TStringField
      FieldName = 'DCDYM1'
      Size = 6
    end
    object CdsStYm1GetCMPYM1: TStringField
      FieldName = 'CMPYM1'
      Size = 2
    end
    object CdsStYm1GetBRNYM1: TStringField
      FieldName = 'BRNYM1'
      Size = 3
    end
    object CdsStYm1GetVNOYM1: TStringField
      FieldName = 'VNOYM1'
      Size = 10
    end
    object CdsStYm1GetTNMVM1: TStringField
      FieldName = 'TNMVM1'
      Size = 80
    end
    object CdsStYm1GetVTPVM1: TStringField
      FieldName = 'VTPVM1'
      Size = 6
    end
    object CdsStYm1GetIDTYM1: TDateField
      FieldName = 'IDTYM1'
      OnGetText = CdsStYm1GetIDTYM1GetText
    end
    object CdsStYm1GetDNOYM1: TStringField
      FieldName = 'DNOYM1'
      Size = 30
    end
    object CdsStYm1GetDEPYM1: TStringField
      FieldName = 'DEPYM1'
      Size = 6
    end
    object CdsStYm1GetABTYM1: TFMTBCDField
      FieldName = 'ABTYM1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStYm1GetVATYM1: TStringField
      FieldName = 'VATYM1'
      FixedChar = True
      Size = 1
    end
    object CdsStYm1GetAVTYM1: TFMTBCDField
      FieldName = 'AVTYM1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStYm1GetPOYM1: TFMTBCDField
      FieldName = 'POYM1'
      Precision = 18
      Size = 2
    end
    object CdsStYm1GetSERYM1: TStringField
      FieldName = 'SERYM1'
      Size = 30
    end
    object CdsStYm1GetDDTYM1: TDateField
      FieldName = 'DDTYM1'
      OnGetText = CdsStYm1GetDDTYM1GetText
    end
    object CdsStYm1GetAMTYM1: TFMTBCDField
      FieldName = 'AMTYM1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStYm1GetBALYM1: TFMTBCDField
      FieldName = 'BALYM1'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object CdsStZipGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetZip'
    RemoteServer = dspDataConnection
    Left = 514
    Top = 115
    object CdsStZipGetIDZIP: TIntegerField
      FieldName = 'IDZIP'
    end
    object CdsStZipGetCODZIP: TStringField
      FieldName = 'CODZIP'
      Size = 5
    end
    object CdsStZipGetTAMZIP: TStringField
      FieldName = 'TAMZIP'
      Size = 50
    end
    object CdsStZipGetAMPZIP: TStringField
      FieldName = 'AMPZIP'
      Size = 50
    end
    object CdsStZipGetCHGZIP: TStringField
      FieldName = 'CHGZIP'
      Size = 3
    end
    object CdsStZipGetCNMZIP: TStringField
      FieldName = 'CNMZIP'
      Size = 50
    end
  end
  object CdsStVm1GetUsedBrn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStVm1GetUsedBrn'
    RemoteServer = dspDataConnection
    Left = 986
    Top = 251
    object CdsStVm1GetUsedBrnCMPYM3: TStringField
      FieldName = 'CMPYM3'
      Size = 2
    end
    object CdsStVm1GetUsedBrnBRNYM3: TStringField
      FieldName = 'BRNYM3'
      Size = 3
    end
    object CdsStVm1GetUsedBrnSTSVM1: TStringField
      FieldName = 'STSVM1'
      Size = 1
    end
    object CdsStVm1GetUsedBrnVNOVM1: TStringField
      FieldName = 'VNOVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnTNMVM1: TStringField
      FieldName = 'TNMVM1'
      Size = 80
    end
    object CdsStVm1GetUsedBrnENMVM1: TStringField
      FieldName = 'ENMVM1'
      Size = 80
    end
    object CdsStVm1GetUsedBrnCPSVM1: TStringField
      FieldName = 'CPSVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnVTPVM1: TStringField
      FieldName = 'VTPVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnACCVM1: TStringField
      FieldName = 'ACCVM1'
      Size = 7
    end
    object CdsStVm1GetUsedBrnOTPVM1: TStringField
      FieldName = 'OTPVM1'
      FixedChar = True
      Size = 1
    end
    object CdsStVm1GetUsedBrnVIAVM1: TStringField
      FieldName = 'VIAVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnPSNVM1: TStringField
      FieldName = 'PSNVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnTAXVM1: TStringField
      FieldName = 'TAXVM1'
    end
    object CdsStVm1GetUsedBrnTTXVM1: TStringField
      FieldName = 'TTXVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnTPIVM1: TStringField
      FieldName = 'TPIVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnVPCVM1: TFMTBCDField
      FieldName = 'VPCVM1'
      Precision = 18
      Size = 4
    end
    object CdsStVm1GetUsedBrnPOPVM1: TStringField
      FieldName = 'POPVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnPAPVM1: TStringField
      FieldName = 'PAPVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnDOPVM1: TStringField
      FieldName = 'DOPVM1'
      Size = 6
    end
    object CdsStVm1GetUsedBrnMEMVM1: TStringField
      FieldName = 'MEMVM1'
      Size = 1000
    end
    object CdsStVm1GetUsedBrnCRTYM3: TIntegerField
      FieldName = 'CRTYM3'
    end
  end
  object CdsStPm1GetImage: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetPm1Image'
    RemoteServer = dspDataConnection
    Left = 394
    Top = 395
    object CdsStPm1GetImageITNPM1: TStringField
      FieldName = 'ITNPM1'
      Required = True
    end
    object CdsStPm1GetImageIMGPM1: TBlobField
      FieldName = 'IMGPM1'
      Size = 1
    end
  end
  object CdsStIm2Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetIm2'
    RemoteServer = dspDataConnection
    Left = 210
    Top = 395
    object CdsStIm2GetSTSIM2: TStringField
      FieldName = 'STSIM2'
      Size = 1
    end
    object CdsStIm2GetYARIM2: TIntegerField
      FieldName = 'YARIM2'
    end
    object CdsStIm2GetCMPIM2: TStringField
      FieldName = 'CMPIM2'
      Size = 2
    end
    object CdsStIm2GetBRNIM2: TStringField
      FieldName = 'BRNIM2'
      Size = 3
    end
    object CdsStIm2GetFWHIM2: TStringField
      FieldName = 'FWHIM2'
      Size = 6
    end
    object CdsStIm2GetTWHIM2: TStringField
      FieldName = 'TWHIM2'
      Size = 6
    end
    object CdsStIm2GetITNIM2: TStringField
      FieldName = 'ITNIM2'
    end
    object CdsStIm2GetSERIM2: TStringField
      FieldName = 'SERIM2'
      Size = 30
    end
    object CdsStIm2GetENGIM2: TStringField
      FieldName = 'ENGIM2'
      Size = 30
    end
    object CdsStIm2GetCOLIM2: TStringField
      FieldName = 'COLIM2'
      Size = 6
    end
    object CdsStIm2GetIDTIM2: TDateField
      FieldName = 'IDTIM2'
    end
    object CdsStIm2GetMOVIM2: TStringField
      FieldName = 'MOVIM2'
      Size = 6
    end
    object CdsStIm2GetDCDIM2: TStringField
      FieldName = 'DCDIM2'
      Size = 6
    end
    object CdsStIm2GetDNOIM2: TLargeintField
      FieldName = 'DNOIM2'
    end
    object CdsStIm2GetSEQIM2: TIntegerField
      FieldName = 'SEQIM2'
    end
    object CdsStIm2GetDEPIM2: TStringField
      FieldName = 'DEPIM2'
      Size = 6
    end
    object CdsStIm2GetDESIM2: TStringField
      FieldName = 'DESIM2'
      Size = 30
    end
    object CdsStIm2GetQT1IM2: TIntegerField
      FieldName = 'QT1IM2'
    end
    object CdsStIm2GetQT2IM2: TIntegerField
      FieldName = 'QT2IM2'
    end
    object CdsStIm2GetCT1IM2: TFMTBCDField
      FieldName = 'CT1IM2'
      OnGetText = CdsStIm2GetCT1IM2GetText
      Precision = 18
      Size = 2
    end
    object CdsStIm2GetCT2IM2: TFMTBCDField
      FieldName = 'CT2IM2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStIm2GetAT1IM2: TFMTBCDField
      FieldName = 'AT1IM2'
      Precision = 18
      Size = 2
    end
    object CdsStIm2GetAT2IM2: TFMTBCDField
      FieldName = 'AT2IM2'
      Precision = 18
      Size = 2
    end
    object CdsStIm2GetUC1IM2: TFMTBCDField
      FieldName = 'UC1IM2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStIm2GetUC2IM2: TFMTBCDField
      FieldName = 'UC2IM2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStIm2GetUP1IM2: TFMTBCDField
      FieldName = 'UP1IM2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStIm2GetUP2IM2: TFMTBCDField
      FieldName = 'UP2IM2'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 2
    end
    object CdsStIm2GetTNMFWH: TStringField
      FieldName = 'TNMFWH'
      Size = 80
    end
    object CdsStIm2GetTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsStIm2GetORCIM2: TStringField
      FieldName = 'ORCIM2'
      Size = 6
    end
    object CdsStIm2GetORNIM2: TIntegerField
      FieldName = 'ORNIM2'
    end
    object CdsStIm2GetORDIM2: TLargeintField
      FieldName = 'ORDIM2'
    end
    object CdsStIm2GetVNOIM2: TStringField
      FieldName = 'VNOIM2'
      Size = 10
    end
    object CdsStIm2GetCOCIM2: TStringField
      FieldName = 'COCIM2'
      Size = 6
    end
    object CdsStIm2GetCONIM2: TIntegerField
      FieldName = 'CONIM2'
    end
    object CdsStIm2GetCODIM2: TLargeintField
      FieldName = 'CODIM2'
    end
    object CdsStIm2GetCNOIM2: TStringField
      FieldName = 'CNOIM2'
      Size = 10
    end
    object CdsStIm2GetPRTIM2: TStringField
      FieldName = 'PRTIM2'
      FixedChar = True
      Size = 1
    end
    object CdsStIm2GetABBIM2: TStringField
      FieldName = 'ABBIM2'
      Size = 6
    end
    object CdsStIm2GetTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
  end
  object CdsStAc1Get: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetAcc'
    RemoteServer = dspDataConnection
    Left = 1010
    Top = 39
    object CdsStAc1GetSTSAC1: TStringField
      FieldName = 'STSAC1'
      Size = 1
    end
    object CdsStAc1GetCMPAC1: TStringField
      FieldName = 'CMPAC1'
      Size = 2
    end
    object CdsStAc1GetAGPAC1: TStringField
      FieldName = 'AGPAC1'
      FixedChar = True
      Size = 1
    end
    object CdsStAc1GetASGAC1: TStringField
      FieldName = 'ASGAC1'
      FixedChar = True
      Size = 1
    end
    object CdsStAc1GetATPAC1: TStringField
      FieldName = 'ATPAC1'
      Size = 2
    end
    object CdsStAc1GetARNAC1: TStringField
      FieldName = 'ARNAC1'
      Size = 3
    end
    object CdsStAc1GetACCAC1: TStringField
      FieldName = 'ACCAC1'
    end
    object CdsStAc1GetENMAC1: TStringField
      FieldName = 'ENMAC1'
      Size = 80
    end
    object CdsStAc1GetTNMAC1: TStringField
      FieldName = 'TNMAC1'
      Size = 80
    end
    object CdsStAc1GetACTAC1: TStringField
      FieldName = 'ACTAC1'
      FixedChar = True
      Size = 1
    end
    object CdsStAc1GetSTTAC1: TStringField
      FieldName = 'STTAC1'
      FixedChar = True
      Size = 1
    end
  end
  object CdsStIm1GetByItn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsptStGetIM1ByItn'
    RemoteServer = dspDataConnection
    Left = 1010
    Top = 119
    object CdsStIm1GetByItnSTSIM1: TStringField
      FieldName = 'STSIM1'
      Size = 1
    end
    object CdsStIm1GetByItnCMPIM1: TStringField
      FieldName = 'CMPIM1'
      Size = 2
    end
    object CdsStIm1GetByItnBRNIM1: TStringField
      FieldName = 'BRNIM1'
      Size = 3
    end
    object CdsStIm1GetByItnWHSIM1: TStringField
      FieldName = 'WHSIM1'
      Size = 6
    end
    object CdsStIm1GetByItnITNIM1: TStringField
      FieldName = 'ITNIM1'
    end
    object CdsStIm1GetByItnSERIM1: TStringField
      FieldName = 'SERIM1'
      Size = 30
    end
    object CdsStIm1GetByItnENGIM1: TStringField
      FieldName = 'ENGIM1'
      Size = 30
    end
    object CdsStIm1GetByItnCOLIM1: TStringField
      FieldName = 'COLIM1'
      Size = 6
    end
    object CdsStIm1GetByItnTNMWHS: TStringField
      FieldName = 'TNMWHS'
      Size = 80
    end
    object CdsStIm1GetByItnTNMCOL: TStringField
      FieldName = 'TNMCOL'
      Size = 80
    end
    object CdsStIm1GetByItnDNOYM1: TStringField
      FieldName = 'DNOYM1'
      Size = 30
    end
    object CdsStIm1GetByItnIDTYM1: TDateField
      FieldName = 'IDTYM1'
    end
  end
  object CdsStPm1GetByItc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStGetPm1ByItc'
    RemoteServer = dspDataConnection
    Left = 514
    Top = 395
    object CdsStPm1GetByItcSTSPM1: TStringField
      FieldName = 'STSPM1'
      Size = 1
    end
    object CdsStPm1GetByItcITCPM1: TStringField
      FieldName = 'ITCPM1'
      Size = 6
    end
    object CdsStPm1GetByItcITNPM1: TStringField
      FieldName = 'ITNPM1'
    end
    object CdsStPm1GetByItcENMPM1: TStringField
      FieldName = 'ENMPM1'
      Size = 80
    end
    object CdsStPm1GetByItcTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStPm1GetByItcMNMPM1: TStringField
      FieldName = 'MNMPM1'
    end
    object CdsStPm1GetByItcUT1PM1: TStringField
      FieldName = 'UT1PM1'
      Size = 10
    end
    object CdsStPm1GetByItcUT2PM1: TStringField
      FieldName = 'UT2PM1'
      Size = 10
    end
    object CdsStPm1GetByItcUE1PM1: TStringField
      FieldName = 'UE1PM1'
      Size = 10
    end
    object CdsStPm1GetByItcUE2PM1: TStringField
      FieldName = 'UE2PM1'
      Size = 10
    end
    object CdsStPm1GetByItcCVTPM1: TFMTBCDField
      FieldName = 'CVTPM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcWHSPM1: TStringField
      FieldName = 'WHSPM1'
      Size = 6
    end
    object CdsStPm1GetByItcUC1PM1: TFMTBCDField
      FieldName = 'UC1PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcUC2PM1: TFMTBCDField
      FieldName = 'UC2PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcUP1PM1: TFMTBCDField
      FieldName = 'UP1PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcUP2PM1: TFMTBCDField
      FieldName = 'UP2PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcUF1PM1: TFMTBCDField
      FieldName = 'UF1PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcUF2PM1: TFMTBCDField
      FieldName = 'UF2PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcFAMPM1: TFMTBCDField
      FieldName = 'FAMPM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcCT1PM1: TFMTBCDField
      FieldName = 'CT1PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcCT2PM1: TFMTBCDField
      FieldName = 'CT2PM1'
      Precision = 18
      Size = 2
    end
    object CdsStPm1GetByItcITSPM1: TStringField
      FieldName = 'ITSPM1'
      Size = 6
    end
    object CdsStPm1GetByItcBRDPM1: TStringField
      FieldName = 'BRDPM1'
      Size = 6
    end
    object CdsStPm1GetByItcSRSPM1: TStringField
      FieldName = 'SRSPM1'
      Size = 6
    end
    object CdsStPm1GetByItcGEAPM1: TStringField
      FieldName = 'GEAPM1'
      Size = 6
    end
    object CdsStPm1GetByItcCASPM1: TIntegerField
      FieldName = 'CASPM1'
    end
    object CdsStPm1GetByItcPWRPM1: TIntegerField
      FieldName = 'PWRPM1'
    end
    object CdsStPm1GetByItcSTKPM1: TStringField
      FieldName = 'STKPM1'
      Size = 6
    end
    object CdsStPm1GetByItcDPCPM1: TIntegerField
      FieldName = 'DPCPM1'
    end
    object CdsStPm1GetByItcACCPM1: TStringField
      FieldName = 'ACCPM1'
      Size = 7
    end
    object CdsStPm1GetByItcIMGPM1: TBlobField
      FieldName = 'IMGPM1'
      Size = 1
    end
  end
  object CdsStRedCardGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStRedCardGet'
    RemoteServer = dspDataConnection
    Left = 674
    Top = 531
    object CdsStRedCardGetSTSRM1: TStringField
      FieldName = 'STSRM1'
      Required = True
      Size = 1
    end
    object CdsStRedCardGetCMPRM1: TStringField
      FieldName = 'CMPRM1'
      Required = True
      Size = 2
    end
    object CdsStRedCardGetBRNRM1: TStringField
      FieldName = 'BRNRM1'
      Required = True
      Size = 3
    end
    object CdsStRedCardGetREGRM1: TStringField
      FieldName = 'REGRM1'
      Required = True
      Size = 6
    end
    object CdsStRedCardGetRGNRM1: TIntegerField
      FieldName = 'RGNRM1'
      Required = True
    end
    object CdsStRedCardGetREGFULL: TStringField
      FieldName = 'REGFULL'
      Required = True
      Size = 17
    end
    object CdsStRedCardGetPRVRM1: TStringField
      FieldName = 'PRVRM1'
      Required = True
      Size = 6
    end
    object CdsStRedCardGetPRVTNM: TStringField
      FieldName = 'PRVTNM'
      Required = True
      Size = 80
    end
    object CdsStRedCardGetPDTRM1: TDateField
      FieldName = 'PDTRM1'
    end
    object CdsStRedCardGetPATRM1: TFMTBCDField
      FieldName = 'PATRM1'
      Precision = 18
      Size = 2
    end
    object CdsStRedCardGetOATRM1: TFMTBCDField
      FieldName = 'OATRM1'
      Precision = 18
      Size = 2
    end
    object CdsStRedCardGetAVLRM1: TStringField
      FieldName = 'AVLRM1'
      FixedChar = True
      Size = 1
    end
    object CdsStRedCardGetNARRM1: TStringField
      FieldName = 'NARRM1'
      Size = 80
    end
    object CdsStRedCardGetADD: TFMTBCDField
      FieldName = 'ADD'
      Precision = 18
      Size = 2
    end
  end
  object CdsStFg1GetList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStFg1GetList'
    RemoteServer = dspDataConnection
    Left = 794
    Top = 531
    object CdsStFg1GetListYARFG1: TIntegerField
      FieldName = 'YARFG1'
    end
    object CdsStFg1GetListCMPFG1: TIntegerField
      FieldName = 'CMPFG1'
    end
    object CdsStFg1GetListBRNFG1: TStringField
      FieldName = 'BRNFG1'
      Size = 3
    end
    object CdsStFg1GetListPRDFG1: TStringField
      FieldName = 'PRDFG1'
    end
    object CdsStFg1GetListTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStFg1GetListFDTFG1: TDateField
      FieldName = 'FDTFG1'
    end
    object CdsStFg1GetListTDTFG1: TDateField
      FieldName = 'TDTFG1'
    end
    object CdsStFg1GetListCOUNT_ITEM: TIntegerField
      FieldName = 'COUNT_ITEM'
    end
    object CdsStFg1GetListSUMAMT: TFMTBCDField
      FieldName = 'SUMAMT'
      OnGetText = CdsStFg1GetListSUMAMTGetText
      Precision = 18
      Size = 2
    end
  end
  object CdsStFg1GetDtl: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStFg1GetDtl'
    RemoteServer = dspDataConnection
    Left = 882
    Top = 531
    object CdsStFg1GetDtlYARFG1: TIntegerField
      FieldName = 'YARFG1'
    end
    object CdsStFg1GetDtlCMPFG1: TIntegerField
      FieldName = 'CMPFG1'
    end
    object CdsStFg1GetDtlBRNFG1: TStringField
      FieldName = 'BRNFG1'
      Size = 3
    end
    object CdsStFg1GetDtlPRDFG1: TStringField
      FieldName = 'PRDFG1'
    end
    object CdsStFg1GetDtlTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStFg1GetDtlFDTFG1: TDateField
      FieldName = 'FDTFG1'
    end
    object CdsStFg1GetDtlTDTFG1: TDateField
      FieldName = 'TDTFG1'
    end
    object CdsStFg1GetDtlSEQFG1: TIntegerField
      FieldName = 'SEQFG1'
    end
    object CdsStFg1GetDtlFGDFG1: TStringField
      FieldName = 'FGDFG1'
    end
    object CdsStFg1GetDtlTNMFGD: TStringField
      FieldName = 'TNMFGD'
      Size = 80
    end
    object CdsStFg1GetDtlFCLFG1: TStringField
      FieldName = 'FCLFG1'
      Size = 6
    end
    object CdsStFg1GetDtlFQ1FG1: TIntegerField
      FieldName = 'FQ1FG1'
    end
    object CdsStFg1GetDtlFQ2FG1: TIntegerField
      FieldName = 'FQ2FG1'
    end
    object CdsStFg1GetDtlFDSFG1: TFMTBCDField
      FieldName = 'FDSFG1'
      Precision = 18
      Size = 4
    end
    object CdsStFg1GetDtlFPAFG1: TFMTBCDField
      FieldName = 'FPAFG1'
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetDtlFU1FG1: TFMTBCDField
      FieldName = 'FU1FG1'
      OnGetText = CdsStFg1GetDtlFU1FG1GetText
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetDtlFU2FG1: TFMTBCDField
      FieldName = 'FU2FG1'
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetDtlAM1FG1: TFMTBCDField
      FieldName = 'AM1FG1'
      OnGetText = CdsStFg1GetDtlAM1FG1GetText
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetDtlAM2FG1: TFMTBCDField
      FieldName = 'AM2FG1'
      OnGetText = CdsStFg1GetDtlAM1FG1GetText
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetDtlABBFG1: TStringField
      FieldName = 'ABBFG1'
      Size = 3
    end
    object CdsStFg1GetDtlFAMFG1: TFMTBCDField
      FieldName = 'FAMFG1'
      OnGetText = CdsStFg1GetDtlFAMFG1GetText
      Precision = 18
      Size = 2
    end
  end
  object CdsStFg1GetUsed: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStFg1GetUsed'
    RemoteServer = dspDataConnection
    Left = 970
    Top = 531
    object CdsStFg1GetUsedYARFG1: TIntegerField
      FieldName = 'YARFG1'
    end
    object CdsStFg1GetUsedCMPFG1: TIntegerField
      FieldName = 'CMPFG1'
    end
    object CdsStFg1GetUsedBRNFG1: TStringField
      FieldName = 'BRNFG1'
      Size = 3
    end
    object CdsStFg1GetUsedPRDFG1: TStringField
      FieldName = 'PRDFG1'
    end
    object CdsStFg1GetUsedTNMPM1: TStringField
      FieldName = 'TNMPM1'
      Size = 80
    end
    object CdsStFg1GetUsedFDTFG1: TDateField
      FieldName = 'FDTFG1'
    end
    object CdsStFg1GetUsedTDTFG1: TDateField
      FieldName = 'TDTFG1'
    end
    object CdsStFg1GetUsedSEQFG1: TIntegerField
      FieldName = 'SEQFG1'
    end
    object CdsStFg1GetUsedFGDFG1: TStringField
      FieldName = 'FGDFG1'
    end
    object CdsStFg1GetUsedTNMFGD: TStringField
      FieldName = 'TNMFGD'
      Size = 80
    end
    object CdsStFg1GetUsedFCLFG1: TStringField
      FieldName = 'FCLFG1'
      Size = 6
    end
    object CdsStFg1GetUsedFQ1FG1: TIntegerField
      FieldName = 'FQ1FG1'
    end
    object CdsStFg1GetUsedFQ2FG1: TIntegerField
      FieldName = 'FQ2FG1'
    end
    object CdsStFg1GetUsedFDSFG1: TFMTBCDField
      FieldName = 'FDSFG1'
      Precision = 18
      Size = 4
    end
    object CdsStFg1GetUsedFPAFG1: TFMTBCDField
      FieldName = 'FPAFG1'
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetUsedFU1FG1: TFMTBCDField
      FieldName = 'FU1FG1'
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetUsedFU2FG1: TFMTBCDField
      FieldName = 'FU2FG1'
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetUsedFAMFG1: TFMTBCDField
      FieldName = 'FAMFG1'
      Precision = 18
      Size = 2
    end
    object CdsStFg1GetUsedABBFG1: TStringField
      FieldName = 'ABBFG1'
      Size = 3
    end
  end
  object cdsGetReport43Person: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHisGetReport43Person'
    RemoteServer = dspDataConnection
    Left = 658
    Top = 102
    object cdsGetReport43PersonREPORTID: TIntegerField
      FieldName = 'REPORTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGetReport43PersonHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43PersonCID: TWideStringField
      FieldName = 'CID'
      Size = 13
    end
    object cdsGetReport43PersonPID: TWideStringField
      FieldName = 'PID'
      Size = 15
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
    ProviderName = 'dspHisGetReport43Service'
    RemoteServer = dspDataConnection
    Left = 666
    Top = 158
    object cdsGetReport43ServiceREPORTID: TIntegerField
      FieldName = 'REPORTID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsGetReport43ServiceHOSPCODE: TWideStringField
      FieldName = 'HOSPCODE'
      Size = 5
    end
    object cdsGetReport43ServicePID: TWideStringField
      FieldName = 'PID'
      Size = 15
    end
    object cdsGetReport43ServiceHN: TWideStringField
      FieldName = 'HN'
      Size = 15
    end
    object cdsGetReport43ServiceSEQ: TWideStringField
      FieldName = 'SEQ'
      Size = 16
    end
    object cdsGetReport43ServiceDATE_SERV: TDateField
      FieldName = 'DATE_SERV'
    end
    object cdsGetReport43ServiceTIME_SERV: TTimeField
      FieldName = 'TIME_SERV'
    end
    object cdsGetReport43ServiceLOCATION: TWideStringField
      FieldName = 'LOCATION'
      Size = 1
    end
    object cdsGetReport43ServiceINTIME: TWideStringField
      FieldName = 'INTIME'
      Size = 1
    end
    object cdsGetReport43ServiceINSTYPE: TWideStringField
      FieldName = 'INSTYPE'
      Size = 4
    end
    object cdsGetReport43ServiceINSID: TWideStringField
      FieldName = 'INSID'
      Size = 18
    end
    object cdsGetReport43ServiceMAIN: TWideStringField
      FieldName = 'MAIN'
      Size = 5
    end
    object cdsGetReport43ServiceTYPEIN: TWideStringField
      FieldName = 'TYPEIN'
      Size = 1
    end
    object cdsGetReport43ServiceREFERINHOSP: TWideStringField
      FieldName = 'REFERINHOSP'
      Size = 5
    end
    object cdsGetReport43ServiceCAUSEIN: TWideStringField
      FieldName = 'CAUSEIN'
      Size = 1
    end
    object cdsGetReport43ServiceCHIEFCOMP: TWideStringField
      FieldName = 'CHIEFCOMP'
      Size = 255
    end
    object cdsGetReport43ServiceSERVPLACE: TWideStringField
      FieldName = 'SERVPLACE'
      Size = 1
    end
    object cdsGetReport43ServiceBTEMP: TIntegerField
      FieldName = 'BTEMP'
    end
    object cdsGetReport43ServiceSBP: TIntegerField
      FieldName = 'SBP'
    end
    object cdsGetReport43ServiceDBP: TIntegerField
      FieldName = 'DBP'
    end
    object cdsGetReport43ServicePR: TIntegerField
      FieldName = 'PR'
    end
    object cdsGetReport43ServiceRR: TIntegerField
      FieldName = 'RR'
    end
    object cdsGetReport43ServiceTYPEOUT: TWideStringField
      FieldName = 'TYPEOUT'
      Size = 1
    end
    object cdsGetReport43ServiceREFEROUTHOSP: TWideStringField
      FieldName = 'REFEROUTHOSP'
      Size = 5
    end
    object cdsGetReport43ServiceCAUSEOUT: TWideStringField
      FieldName = 'CAUSEOUT'
      Size = 1
    end
    object cdsGetReport43ServiceCOST: TIntegerField
      FieldName = 'COST'
    end
    object cdsGetReport43ServicePRICE: TIntegerField
      FieldName = 'PRICE'
    end
    object cdsGetReport43ServicePAYPRICE: TIntegerField
      FieldName = 'PAYPRICE'
    end
    object cdsGetReport43ServiceACTUALPAY: TIntegerField
      FieldName = 'ACTUALPAY'
    end
    object cdsGetReport43ServiceD_UPDATE: TSQLTimeStampField
      FieldName = 'D_UPDATE'
    end
  end
end
