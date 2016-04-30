unit ArInqDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, uniScreenMask,
  Vcl.Imaging.GIFImg, uniImage;

type
  TfrmArInqData = class(TMainDataForm)
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    lbSearch: TUniLabel;
    UniLabel12: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniPageControl1: TUniPageControl;
    tabNormal: TUniTabSheet;
    taborder: TUniTabSheet;
    tabRcv: TUniTabSheet;
    tabAp: TUniTabSheet;
    tabAnalyst: TUniTabSheet;
    tabCheque: TUniTabSheet;
    PnNorTop: TUniPanel;
    UniLabel1: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniDBEdit12: TUniDBEdit;
    UniDBEdit13: TUniDBEdit;
    UniDBEdit14: TUniDBEdit;
    PnNormalClient: TUniPanel;
    UniLabel15: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniLabel16: TUniLabel;
    UniRadioButton1: TUniRadioButton;
    UniRadioButton2: TUniRadioButton;
    UniLabel17: TUniLabel;
    UniDBEdit16: TUniDBEdit;
    UniDBEdit17: TUniDBEdit;
    UniLabel18: TUniLabel;
    UniDBEdit18: TUniDBEdit;
    UniLabel19: TUniLabel;
    UniDBEdit19: TUniDBEdit;
    UniLabel20: TUniLabel;
    dbgbottom: TUniDBGrid;
    UniPanel1: TUniPanel;
    UniLabel21: TUniLabel;
    btnSearch: TUniButton;
    dbgtop: TUniDBGrid;
    UniDBGrid1: TUniDBGrid;
    UniPanel2: TUniPanel;
    UniLabel23: TUniLabel;
    UniEdit1: TUniEdit;
    UniButton1: TUniButton;
    UniLabel24: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel25: TUniLabel;
    UniDateTimePicker2: TUniDateTimePicker;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    UniEdit2: TUniEdit;
    UniLabel22: TUniLabel;
    UniDateTimePicker3: TUniDateTimePicker;
    UniLabel26: TUniLabel;
    UniDateTimePicker4: TUniDateTimePicker;
    UniPanel3: TUniPanel;
    UniLabel27: TUniLabel;
    UniEdit3: TUniEdit;
    UniButton2: TUniButton;
    UniLabel28: TUniLabel;
    CmbMonth: TUniComboBox;
    UniLabel29: TUniLabel;
    UniDBEdit20: TUniDBEdit;
    UniDBEdit21: TUniDBEdit;
    UniLabel30: TUniLabel;
    UniDBEdit22: TUniDBEdit;
    UniLabel31: TUniLabel;
    UniLabel32: TUniLabel;
    UniDBEdit23: TUniDBEdit;
    UniDBEdit24: TUniDBEdit;
    UniLabel33: TUniLabel;
    UniDBEdit25: TUniDBEdit;
    UniLabel34: TUniLabel;
    UniDBEdit26: TUniDBEdit;
    UniDBEdit27: TUniDBEdit;
    UniLabel35: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniLabel36: TUniLabel;
    UniLabel37: TUniLabel;
    UniDBEdit29: TUniDBEdit;
    UniDBEdit30: TUniDBEdit;
    UniLabel38: TUniLabel;
    UniDBEdit31: TUniDBEdit;
    UniLabel39: TUniLabel;
    UniLabel40: TUniLabel;
    UniDBEdit32: TUniDBEdit;
    UniPanel4: TUniPanel;
    UniLabel41: TUniLabel;
    UniEdit4: TUniEdit;
    UniButton3: TUniButton;
    UniLabel42: TUniLabel;
    UniDateTimePicker5: TUniDateTimePicker;
    UniDBGrid4: TUniDBGrid;
    UniPanel5: TUniPanel;
    UniLabel43: TUniLabel;
    UniButton4: TUniButton;
    UniDateTimePicker6: TUniDateTimePicker;
    UniDBGrid5: TUniDBGrid;
    UniLabel44: TUniLabel;
    UniDateTimePicker7: TUniDateTimePicker;

  private

  public
//    procedure Init();
  end;

var
  frmArInqData: TfrmArInqData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
