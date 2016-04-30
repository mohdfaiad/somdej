unit PaAnalystInqGridForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniSplitter, uniPageControl;

type
  TfrmPaAnalystInqGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    LbBrn: TUniLabel;
    cmbcmp: TUniDBLookupComboBox;
    Cmbbrn: TUniDBLookupComboBox;
    Lbcmp: TUniLabel;
    LbDealer: TUniLabel;
    CmbDealer: TUniDBLookupComboBox;
    LbProduct: TUniLabel;
    EdtSer: TUniEdit;
    LbSer: TUniLabel;
    EdtEng: TUniEdit;
    Lbeng: TUniLabel;
    PgControlAnalyst: TUniPageControl;
    tabDealer: TUniTabSheet;
    dbgDealer: TUniDBGrid;
    tabProduct: TUniTabSheet;
    dbgProduct: TUniDBGrid;
    tabRcvDaily: TUniTabSheet;
    dbgRcvDaily: TUniDBGrid;
    tabRcvDealer: TUniTabSheet;
    dbgrcvdealertop: TUniDBGrid;
    dbgrcvdealerbottom: TUniDBGrid;
    UniSplitter1: TUniSplitter;
    tabRcvProduct: TUniTabSheet;
    dbgRcvProductTop: TUniDBGrid;
    dbgRcvProductBottom: TUniDBGrid;
    UniSplitter2: TUniSplitter;
    tabOrderDealer: TUniTabSheet;
    dbgRcvDealer: TUniDBGrid;
    tabOrderProduct: TUniTabSheet;
    dbgorderproduct: TUniDBGrid;
    EdtProduct: TUniEdit;
    private

  public

  end;

var
  frmPaAnalystInqGrid: TfrmPaAnalystInqGrid;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
end.
