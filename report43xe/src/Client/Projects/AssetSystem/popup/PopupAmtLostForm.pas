unit PopupAmtLostForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  {$IFDEF OBSS} MainModuleEx {$ELSE} MainModuleEx {$ENDIF},
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter;

type
  TfrmPopupAmtLost = class(TMainDataForm)
    UniLabel8: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel11: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniDBMemo1: TUniDBMemo;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniDBDateTimePicker1: TUniDBDateTimePicker;
    UniDBDateTimePicker2: TUniDBDateTimePicker;
    UniDBDateTimePicker3: TUniDBDateTimePicker;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;

  private

  public
//    procedure Init();
  end;

var
  frmPopupAmtLost: TfrmPopupAmtLost;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
