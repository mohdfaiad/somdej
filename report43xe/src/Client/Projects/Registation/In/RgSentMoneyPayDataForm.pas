unit RgSentMoneyPayDataForm;

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
  TfrmRgSentMoneyPayData = class(TMainDataForm)
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
    UniDBGrid1: TUniDBGrid;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid3: TUniDBGrid;
    UniLabel1: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniComboBox1: TUniComboBox;
    UniLabel4: TUniLabel;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmRgSentMoneyPayData: TfrmRgSentMoneyPayData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmRgSentMoneyPayData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
