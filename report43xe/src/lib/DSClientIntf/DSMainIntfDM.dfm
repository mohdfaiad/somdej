object DSMainDM: TDSMainDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 721
  Width = 979
  object dspDataConnection: TDSProviderConnection
    ServerClassName = 'TDSMain'
    Left = 40
    Top = 32
  end
  object cdsDescData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDescData'
    RemoteServer = dspDataConnection
    Left = 144
    Top = 32
  end
  object cdsProvince: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProvince'
    RemoteServer = dspDataConnection
    Left = 224
    Top = 32
  end
  object cdsAmphur: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAmphur'
    RemoteServer = dspDataConnection
    Left = 304
    Top = 32
  end
  object cdsDescList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDescList'
    RemoteServer = dspDataConnection
    Left = 392
    Top = 32
    object cdsDescListPREFIX: TStringField
      FieldName = 'PREFIX'
      Size = 3
    end
    object cdsDescListCODE: TStringField
      FieldName = 'CODE'
      Size = 6
    end
    object cdsDescListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 80
    end
    object cdsDescListTHAI_DESC: TStringField
      FieldName = 'THAI_DESC'
      Size = 80
    end
  end
  object cdsAccountInternalList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAccountInternalList'
    RemoteServer = dspDataConnection
    Left = 480
    Top = 32
  end
  object frxReport: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40159.703222650500000000
    ReportOptions.LastChange = 41345.031776250000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      '//var sumamt : double = 0  ;'
      'procedure Memo28OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  //sumamt := sumamt + (<frxRepData."NOR_OUTSTANDING_AMT">+ <frx' +
        'RepData."OVD_OUTSTANDING_AMT"> ) ;  '
      'end;'
      ''
      'procedure Memo41OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    //      memo41.text := formatfloat('#39'#,##0.00'#39',sumamt); ;  '
      'end;'
      ''
      'begin    '
      'end.    '
      '    ')
    Left = 40
    Top = 192
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
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Height = 250.157377800000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo30: TfrxMemoView
          Align = baWidth
          Top = 25.055040000000010000
          Width = 718.110700000000000000
          Height = 54.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #3610#3619#3636#3625#3633#3607' '#3650#3605#3650#3618#3605#3657#3634' '#3626#3640#3619#3636#3609#3607#3619#3660'(1991) '#3592#3635#3585#3633#3604
            '370-378 '#3606#3609#3609#3611#3633#3607#3617#3634#3609#3609#3607#3660' '#3605#3635#3610#3621': '#3651#3609#3648#3617#3639#3629#3591
            #3629'.'#3648#3617#3639#3629#3591' '#3592'.'#3626#3640#3619#3636#3609#3607#3619#3660' 32000 ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'PURCHASE ORDER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          Top = 85.039370080000000000
          Width = 283.464750000000000000
          Height = 64.251968500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            ' '#3616#3633#3607#3619#3634#3614#3619'  '#3648#3614#3621#3634
            '  8/7 '#3606'.'#3619#3634#3625#3598#3619#3660#3610#3641#3619#3603#3632'  '#3605'.'#3617#3634#3610#3605#3634#3614#3640#3605
            '  '#3629'.'#3648#3617#3639#3629#3591' '#3592'.'#3619#3632#3618#3629#3591' ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Top = 212.133890000000000000
          Width = 26.456668500000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 26.204700000000000000
          Top = 212.133890000000000000
          Width = 127.015770000000000000
          Height = 37.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Item Code')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 150.803149610000000000
          Top = 212.133890000000000000
          Width = 189.448980000000000000
          Height = 37.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Description Narrarion')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 338.921308660000000000
          Top = 212.133890000000000000
          Width = 56.692913390000000000
          Height = 37.795287800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Quantity')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 396.850393700787000000
          Top = 211.133890000000000000
          Width = 177.826793620000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Bath')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 574.488188980000000000
          Top = 212.133890000000000000
          Width = 143.811023620000000000
          Height = 37.795287800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Note')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 551.811380000000000000
          Top = 85.039370080000000000
          Width = 166.299320000000000000
          Height = 45.354318500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'NO : [frxRepData."ordom3"] '
            'Date   [frxRepData."idtom3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          Left = 283.842519685039000000
          Top = 85.039370080000000000
          Width = 113.385900000000000000
          Height = 45.354318500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Shipment Date')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Left = 396.850393700787000000
          Top = 85.039370080000000000
          Width = 154.960730000000000000
          Height = 45.354318500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Contract Person')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 396.850393700787000000
          Top = 231.259740000000000000
          Width = 71.811023620000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Unit Cost')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 468.000000000000000000
          Top = 231.259740000000000000
          Width = 105.826793620000000000
          Height = 18.897637800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Amount')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Top = 149.401670000000000000
          Width = 113.385858500000000000
          Height = 22.677155590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'PR.No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 113.385900000000000000
          Top = 149.181200000000000000
          Width = 170.078808500000000000
          Height = 22.677155590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Payment Term  [frxRepData."crtom3"]   DAYS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 283.842519685039000000
          Top = 130.283550000000000000
          Width = 113.385900000000000000
          Height = 41.574788500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Vender Code'
            '[frxRepData."vnoom3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 396.850393700787000000
          Top = 130.283550000000000000
          Width = 154.960730000000000000
          Height = 41.574788500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ship To')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 551.811380000000000000
          Top = 130.283550000000000000
          Width = 166.299320000000000000
          Height = 41.574788500000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Warehouse'
            
              '[frxRepData."twhom3"] ([frxRepData."cmpom3"]-[frxRepData."brnom3' +
              '"])')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          Top = 173.858380000000000000
          Width = 151.181158500000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #3594#3639#3656#3629#3621#3641#3585#3588#3657#3634
            '[frxRepData."tnmcsm"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          Left = 150.803149610000000000
          Top = 173.858380000000000000
          Width = 117.165388500000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #3648#3621#3586#3607#3637#3656#3588#3635#3586#3629
            '[frxRepData."rdnom3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          Left = 263.842519690000000000
          Top = 173.858380000000000000
          Width = 132.661410000000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #3648#3621#3586#3648#3588#3619#3639#3656#3629#3591' '
            '[frxRepData."engom3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 396.850393700787000000
          Top = 173.858380000000000000
          Width = 158.740218500000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            #3648#3621#3586#3605#3633#3623#3606#3633#3591
            '[frxRepData."serom3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          Left = 574.488188980000000000
          Top = 173.858380000000000000
          Width = 143.622098500000000000
          Height = 37.795275590000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            #3649#3610#3610
            '[frxRepData."prdom3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 26.559060000000000000
        Top = 351.496290000000000000
        Width = 718.110700000000000000
        DataSet = frxRepData
        DataSetName = 'frxRepData'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 26.456692910000000000
          Height = 26.559060000000000000
          ShowHint = False
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRepData."seqom3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 150.803149610000000000
          Width = 193.133858270000000000
          Height = 26.559060000000000000
          ShowHint = False
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxRepData."TNMPM1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 339.023622050000000000
          Width = 57.070858820000000000
          Height = 26.559060000000000000
          ShowHint = False
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxRepData."qr1om3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 396.094488190000000000
          Width = 71.811023620000000000
          Height = 26.559060000000000000
          ShowHint = False
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxRepData."uc1om3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 26.078740160000000000
          Width = 126.992125980000000000
          Height = 26.559060000000000000
          ShowHint = False
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRepData."fsrom3"] ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 467.905511810000000000
          Width = 105.826793620000000000
          Height = 26.559060000000000000
          ShowHint = False
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxRepData."amtom3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 574.488188980000000000
          Width = 143.999997560000000000
          Height = 26.559060000000000000
          ShowHint = False
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxRepData."dseom3"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 155.756030000000000000
        Top = 1035.591220000000000000
        Width = 718.110700000000000000
        object Memo33: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 125.519790000000000000
          Width = 75.590600000000000000
          Height = 22.677180000000000000
          ShowHint = False
          HAlign = haRight
          Memo.UTF8W = (
            'Page [Page#]')
        end
        object Memo35: TfrxMemoView
          Left = 436.102350000000000000
          Top = 127.432900000000000000
          Width = 187.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'po.fr3')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Top = 26.472479999999900000
          Width = 244.181200000000000000
          Height = 71.913407800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            ''
            '_______________'
            'Purchasing Manager')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          Left = 245.448980000000000000
          Top = 25.692949999999430000
          Width = 225.283550000000000000
          Height = 71.913407800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            ''
            '_______________'
            'Controller')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          Left = 471.220780000000000000
          Top = 25.692949999999880000
          Width = 247.181102362205000000
          Height = 71.913407800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            ''
            ''
            '_______________'
            'General Manager')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          Left = -0.220470000000000000
          Top = 0.440939999999955000
          Height = 26.456692913385800000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] [Time]')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Top = 3.015769999999975000
          Width = 343.937007870000000000
          Height = 26.456692913385800000
          ShowHint = False
          Color = cl3DLight
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxRepData."bathtext"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          Left = 471.041931280000000000
          Top = 3.015769999999975000
          Width = 101.902860290000000000
          Height = 26.456692913385800000
          OnBeforePrint = 'Memo28OnBeforePrint'
          ShowHint = False
          Color = cl3DLight
          DataSet = frxRepData
          DataSetName = 'frxRepData'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxRepData."sumamt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 343.937230000000000000
          Top = 3.015769999999975000
          Width = 125.858267720000000000
          Height = 26.456692913385800000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 574.268090000000000000
          Top = 3.015769999999975000
          Width = 143.622093620000000000
          Height = 26.456692913385800000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        Condition = 'frxRepData."ORDOM3"'
        KeepTogether = True
        StartNewPage = True
      end
      object Footer1: TfrxFooter
        Height = 574.590897800000000000
        Top = 400.630180000000000000
        Width = 718.110700000000000000
        object Memo31: TfrxMemoView
          Width = 718.110236220471900000
          Height = 608.606667800000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxPDFExport: TfrxPDFExport
    ShowDialog = False
    UseFileCache = True
    ShowProgress = False
    OverwritePrompt = False
    DataOnly = False
    EmbeddedFonts = True
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 40
    Top = 240
  end
  object frxRepData: TfrxDBDataset
    UserName = 'frxRepData'
    CloseDataSource = False
    DataSet = cdsGetFrmReport
    BCDToCurrency = False
    Left = 40
    Top = 144
  end
  object cdsBranchList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBranchList'
    RemoteServer = dspDataConnection
    Left = 576
    Top = 32
    object cdsBranchListORG_ID: TLargeintField
      FieldName = 'ORG_ID'
    end
    object cdsBranchListORG_CODE: TStringField
      FieldName = 'ORG_CODE'
      Size = 6
    end
    object cdsBranchListORG_NAME: TStringField
      FieldName = 'ORG_NAME'
      Size = 80
    end
  end
  object cdsTranAccount: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTranAccount'
    RemoteServer = dspDataConnection
    Left = 656
    Top = 32
    object cdsTranAccountACC_MAIN_CODE: TStringField
      FieldName = 'ACC_MAIN_CODE'
      Size = 4
    end
    object cdsTranAccountDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 120
    end
    object cdsTranAccountACC_NAME: TStringField
      FieldName = 'ACC_NAME'
      Size = 120
    end
    object cdsTranAccountDISPLAY_NAME: TStringField
      FieldName = 'DISPLAY_NAME'
      Size = 120
    end
    object cdsTranAccountPRINTING_NAME: TStringField
      FieldName = 'PRINTING_NAME'
      Size = 120
    end
    object cdsTranAccountPAY_SPLIT: TStringField
      FieldName = 'PAY_SPLIT'
      FixedChar = True
      Size = 1
    end
  end
  object cdsReportData: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetFrmReport'
    RemoteServer = dspDataConnection
    Left = 40
    Top = 88
  end
  object cdsReportInfo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReportInfo'
    RemoteServer = dspDataConnection
    Left = 40
    Top = 296
    object cdsReportInfoREPORT_CODE: TStringField
      FieldName = 'REPORT_CODE'
    end
    object cdsReportInfoREPORT_NAME: TStringField
      FieldName = 'REPORT_NAME'
      Size = 120
    end
    object cdsReportInfoFR3_NAME: TStringField
      FieldName = 'FR3_NAME'
      Size = 15
    end
    object cdsReportInfoPL_NAME: TStringField
      FieldName = 'PL_NAME'
      Size = 31
    end
  end
  object cdsMenusList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMenusList'
    RemoteServer = dspDataConnection
    Left = 144
    Top = 96
    object MenusItemIndex: TIntegerField
      FieldName = 'ITEM_INDEX'
    end
    object MenusParentRecID: TLargeintField
      FieldName = 'PARENT_ID'
    end
    object MenusSelfRecID: TLargeintField
      FieldName = 'RECORD_ID'
    end
    object MenusAppName: TStringField
      FieldName = 'APP_NAME'
      Size = 60
    end
    object MenusFORM_NAME: TStringField
      FieldName = 'FORM_NAME'
      Size = 80
    end
    object MenusPARAM_LIST: TStringField
      FieldName = 'PARAM_LIST'
      Size = 40
    end
    object MenusNAME: TStringField
      FieldName = 'NAME'
      Size = 120
    end
    object MenusNameDesc: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
    object MenusIsEnabled: TSmallintField
      FieldName = 'IS_ENABLED'
    end
    object MenusIsVisibled: TSmallintField
      FieldName = 'IS_VISIBLED'
    end
  end
  object cdsGetComponentList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetComponentList'
    RemoteServer = dspDataConnection
    Left = 136
    Top = 160
    object cdsGetComponentListCOMPONENT_TYPE: TIntegerField
      FieldName = 'COMPONENT_TYPE'
    end
    object cdsGetComponentListCOMPONENT_CLASS: TStringField
      FieldName = 'COMPONENT_CLASS'
      Size = 80
    end
    object cdsGetComponentListCOMPONENT_NAME: TStringField
      FieldName = 'COMPONENT_NAME'
      Size = 80
    end
    object cdsGetComponentListIS_VISIBLED: TSmallintField
      FieldName = 'IS_VISIBLED'
    end
    object cdsGetComponentListIS_ENABLED: TSmallintField
      FieldName = 'IS_ENABLED'
    end
  end
  object cdsGetCodeDescList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetCodeDescList'
    RemoteServer = dspDataConnection
    Left = 40
    Top = 391
    object cdsGetCodeDescListCODE: TLargeintField
      FieldName = 'CODE'
    end
    object cdsGetCodeDescListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
    object cdsGetCodeDescListDESCRIPTION_EX: TStringField
      FieldName = 'DESCRIPTION_EX'
      Size = 255
    end
  end
  object cdsBank: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBank'
    RemoteServer = dspDataConnection
    Left = 40
    Top = 459
    object cdsBankBANK_CODE: TStringField
      FieldName = 'BANK_CODE'
      Size = 4
    end
    object cdsBankBANK_NAME: TStringField
      FieldName = 'BANK_NAME'
      Size = 120
    end
    object cdsBankBANK_ABBR: TStringField
      FieldName = 'BANK_ABBR'
      Size = 15
    end
    object cdsBankBANK_NAME_EX: TStringField
      FieldName = 'BANK_NAME_EX'
      Size = 120
    end
  end
  object cdsBankBranch: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBankBranch'
    RemoteServer = dspDataConnection
    Left = 120
    Top = 456
    object cdsBankBranchBANK_BRANCH_CODE: TStringField
      FieldName = 'BANK_BRANCH_CODE'
      Size = 5
    end
    object cdsBankBranchBANK_BRANCH_NAME: TStringField
      FieldName = 'BANK_BRANCH_NAME'
      Size = 120
    end
    object cdsBankBranchBANK_BRANCH_NAME_EX: TStringField
      FieldName = 'BANK_BRANCH_NAME_EX'
      Size = 120
    end
  end
  object cdsGetLoanType: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetLoanType'
    RemoteServer = dspDataConnection
    Left = 40
    Top = 527
    object cdsGetLoanTypeLOAN_TYPE: TStringField
      FieldName = 'LOAN_TYPE'
      Required = True
      Size = 3
    end
    object cdsGetLoanTypeLOAN_TYPE_DESC: TStringField
      FieldName = 'LOAN_TYPE_DESC'
      Required = True
      Size = 80
    end
    object cdsGetLoanTypeLOAN_TYPE_CODE_DESC: TStringField
      FieldName = 'LOAN_TYPE_CODE_DESC'
      Required = True
      Size = 84
    end
  end
  object cdsMiscDataSet: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMiscDataSet'
    RemoteServer = dspDataConnection
    Left = 120
    Top = 528
  end
  object cdsReportList: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspReportList'
    RemoteServer = dspDataConnection
    Left = 40
    Top = 344
    object cdsReportListFORMS_DATA_REC_ID: TLargeintField
      FieldName = 'FORMS_DATA_REC_ID'
    end
    object cdsReportListREPORT_CODE: TStringField
      FieldName = 'REPORT_CODE'
      Size = 80
    end
    object cdsReportListREPORT_NAME: TStringField
      FieldName = 'REPORT_NAME'
      Size = 80
    end
    object cdsReportListSQL_STATEMENT: TStringField
      FieldName = 'SQL_STATEMENT'
      Size = 30720
    end
    object cdsReportListDESCRIPTION: TStringField
      FieldName = 'DESCRIPTION'
      Size = 255
    end
  end
  object cdsGetFrmReport: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGetFrmReport'
    RemoteServer = dspDataConnection
    Left = 128
    Top = 352
  end
  object CdsTtGetGt1ByNo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspTtGetGt1ByNo'
    RemoteServer = dspDataConnection
    Left = 304
    Top = 96
    object CdsTtGetGt1ByNoSTSGT1: TStringField
      FieldName = 'STSGT1'
      Size = 1
    end
    object CdsTtGetGt1ByNoYARGT1: TIntegerField
      FieldName = 'YARGT1'
    end
    object CdsTtGetGt1ByNoPRDGT1: TIntegerField
      FieldName = 'PRDGT1'
    end
    object CdsTtGetGt1ByNoCMPGT1: TStringField
      FieldName = 'CMPGT1'
      Size = 2
    end
    object CdsTtGetGt1ByNoBRNGT1: TStringField
      FieldName = 'BRNGT1'
      Size = 3
    end
    object CdsTtGetGt1ByNoDCDGT1: TStringField
      FieldName = 'DCDGT1'
      Size = 6
    end
    object CdsTtGetGt1ByNoDNOGT1: TIntegerField
      FieldName = 'DNOGT1'
    end
    object CdsTtGetGt1ByNoSEQGT1: TIntegerField
      FieldName = 'SEQGT1'
    end
    object CdsTtGetGt1ByNoIDTGT1: TDateField
      FieldName = 'IDTGT1'
      OnGetText = CdsTtGetGt1ByNoIDTGT1GetText
    end
    object CdsTtGetGt1ByNoAGPGT1: TStringField
      FieldName = 'AGPGT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtGetGt1ByNoASGGT1: TStringField
      FieldName = 'ASGGT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtGetGt1ByNoATPGT1: TStringField
      FieldName = 'ATPGT1'
      Size = 2
    end
    object CdsTtGetGt1ByNoARNGT1: TStringField
      FieldName = 'ARNGT1'
      Size = 3
    end
    object CdsTtGetGt1ByNoACCAC1: TStringField
      FieldName = 'ACCAC1'
      Size = 7
    end
    object CdsTtGetGt1ByNoTNMAC1: TStringField
      FieldName = 'TNMAC1'
      Size = 80
    end
    object CdsTtGetGt1ByNoPFXGT1: TStringField
      FieldName = 'PFXGT1'
      Size = 6
    end
    object CdsTtGetGt1ByNoCHQGT1: TStringField
      FieldName = 'CHQGT1'
    end
    object CdsTtGetGt1ByNoDCRGT1: TStringField
      FieldName = 'DCRGT1'
      FixedChar = True
      Size = 1
    end
    object CdsTtGetGt1ByNoDAMTGT1: TFMTBCDField
      FieldName = 'DAMTGT1'
      OnGetText = CdsTtGetGt1ByNoDAMTGT1GetText
      Precision = 18
      Size = 2
    end
    object CdsTtGetGt1ByNoCAMTGT1: TFMTBCDField
      FieldName = 'CAMTGT1'
      OnGetText = CdsTtGetGt1ByNoDAMTGT1GetText
      Precision = 18
      Size = 2
    end
  end
end
