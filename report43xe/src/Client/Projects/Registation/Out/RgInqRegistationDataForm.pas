unit RgInqRegistationDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, uniScreenMask,
  Vcl.Imaging.GIFImg, uniImage;

type
  TfrmRgInqRegistationData = class(TMainDataForm)
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel5: TUniLabel;
    DbStatus: TUniDBEdit;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniDBGrid1: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    UniLabel7: TUniLabel;
    UniLabel3: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmRgInqRegistationData: TfrmRgInqRegistationData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmRgInqRegistationData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
