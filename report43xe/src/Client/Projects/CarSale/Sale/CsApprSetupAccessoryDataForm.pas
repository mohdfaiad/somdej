unit CsApprSetupAccessoryDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, uniSplitter,
  Vcl.Imaging.GIFImg, uniImage, uniScreenMask;

type
  TfrmCsApprSetupAccessoryData = class(TMainDataForm)
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel5: TUniLabel;
    DbStatus: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    dbgDataList: TUniDBGrid;
    UniDBGrid1: TUniDBGrid;
    UniSplitter1: TUniSplitter;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmCsApprSetupAccessoryData: TfrmCsApprSetupAccessoryData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmCsApprSetupAccessoryData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
