unit PsCashPaymentDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniSplitter, Vcl.Imaging.GIFImg, uniImage,
  uniScreenMask;

type                                     TfrmPsCashPaymentData = class(TMainDataForm)
    dsSt: TDataSource;
    UniLabel9: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel10: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    lbSearch: TUniLabel;
    UniLabel12: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniDBEdit9: TUniDBEdit;
    PnDtlTop: TUniPanel;
    UniGroupBox1: TUniGroupBox;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniGroupBox2: TUniGroupBox;
    UniGroupBox3: TUniGroupBox;
    UniDBEdit1: TUniDBEdit;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniLabel6: TUniLabel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniLabel19: TUniLabel;
    UniLabel17: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel8: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniLabel14: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel15: TUniLabel;
    UniCheckBox1: TUniCheckBox;
    UniLabel16: TUniLabel;
    UniDBEdit6: TUniDBEdit;
    UniDBMemo1: TUniDBMemo;
    UniDBGrid1: TUniDBGrid;
    dbgDataList: TUniDBGrid;
    UniSplitter1: TUniSplitter;

  private

  public
//    procedure Init();
  end;

var
  frmPsCashPaymentData: TfrmPsCashPaymentData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsCashPaymentData);

end.
