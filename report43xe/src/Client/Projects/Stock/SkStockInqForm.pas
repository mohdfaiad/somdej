unit SkStockInqForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, uniSplitter, uniScreenMask, Vcl.Imaging.GIFImg, uniImage;

type
  TfrmSkStockInq = class(TMainDataForm)
    dsSt: TDataSource;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniLabel4: TUniLabel;
    UniEdit2: TUniEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniEdit3: TUniEdit;
    UniPageControl1: TUniPageControl;
    tabProduct: TUniTabSheet;
    tabCassi: TUniTabSheet;
    tabKlangProduct: TUniTabSheet;
    tabKlangKlang: TUniTabSheet;
    tabTrans: TUniTabSheet;
    tabSumTrans: TUniTabSheet;
    dbgProduct: TUniDBGrid;
    dbgorderproduct: TUniDBGrid;
    dbgRcvDaily: TUniDBGrid;
    dbgrcvdealertop: TUniDBGrid;
    dbgRcvDealer: TUniDBGrid;
    UniEdit4: TUniEdit;
    UniButton1: TUniButton;
    UniEdit5: TUniEdit;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel7: TUniLabel;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel9: TUniLabel;
    UniLabel17: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel10: TUniLabel;
    UniEdit6: TUniEdit;
    UniDBGrid1: TUniDBGrid;
    tabAnalyst: TUniTabSheet;
    UniDBGrid2: TUniDBGrid;

  private

  public
//    procedure Init();
  end;

var
  frmSkStockInq: TfrmSkStockInq;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmSkStockInq);

end.
