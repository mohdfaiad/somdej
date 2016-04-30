unit SaAnalystInqForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, uniSplitter, uniScreenMask, Vcl.Imaging.GIFImg, uniImage;

type
  TfrmSaAnalystInq = class(TMainDataForm)
    dsSt: TDataSource;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    UniLabel2: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    UniEdit1: TUniEdit;
    UniLabel4: TUniLabel;
    UniEdit2: TUniEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniEdit3: TUniEdit;
    UniPageControl1: TUniPageControl;
    tabDealer: TUniTabSheet;
    tabProduct: TUniTabSheet;
    tabRcvDaily: TUniTabSheet;
    tabRcvDealer: TUniTabSheet;
    tabRcvProduct: TUniTabSheet;
    tabOrderDealer: TUniTabSheet;
    tabOrderProduct: TUniTabSheet;
    dbgDealer: TUniDBGrid;
    dbgProduct: TUniDBGrid;
    dbgorderproduct: TUniDBGrid;
    dbgRcvDaily: TUniDBGrid;
    dbgrcvdealertop: TUniDBGrid;
    dbgrcvdealerbottom: TUniDBGrid;
    UniSplitter1: TUniSplitter;
    dbgRcvProductTop: TUniDBGrid;
    dbgRcvProductBottom: TUniDBGrid;
    UniSplitter2: TUniSplitter;
    dbgRcvDealer: TUniDBGrid;
    UniEdit4: TUniEdit;
    UniEdit5: TUniEdit;
    UniEdit6: TUniEdit;
    UniEdit7: TUniEdit;

  private

  public
//    procedure Init();
  end;

var
  frmSaAnalystInq: TfrmSaAnalystInq;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPaAnalystInq);

end.
