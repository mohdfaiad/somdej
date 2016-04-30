unit RmCheqToBankDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  {$IFDEF FSLOSHP} MainModuleEx {$ELSE} MainModule {$ENDIF},
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, uniScreenMask,
  Vcl.Imaging.GIFImg, uniImage;

type
  TfrmRmCheqToBankData = class(TMainDataForm)
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel5: TUniLabel;
    DbStatus: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox4: TUniDBLookupComboBox;

  private

  public
//    procedure Init();
  end;

var
  frmRmCheqToBankData: TfrmRmCheqToBankData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
