unit PopupAddressForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, uniScreenMask, Vcl.Imaging.jpeg;

type
  TPopupAddress = class(TMainDataForm)
    UniLabel18: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniDBLookupComboBox11: TUniDBLookupComboBox;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel23: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel22: TUniLabel;
    UniLabel21: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniLabel4: TUniLabel;
    UniComboBox2: TUniComboBox;
    imgLogo: TUniImage;

  private

  public
//    procedure Init();
  end;

var
  PopupAddress: TPopupAddress;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
