inherited DSStockDM: TDSStockDM
  OldCreateOrder = True
  inherited dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSSTOCK'
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
  object cdsTtStockGet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspStockGet'
    RemoteServer = dspDataConnection
    Left = 416
    Top = 184
  end
end
