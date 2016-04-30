unit RrInqRedCardDataForm;

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
  TfrmRrInqRedCardData = class(TMainDataForm)
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    lbSearch: TUniLabel;
    edSearch: TUniEdit;
    btnSearch: TUniButton;
    UniLabel7: TUniLabel;
    UniLabel3: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniDateTimePicker2: TUniDateTimePicker;
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    UniTabSheet2: TUniTabSheet;
    UniTabSheet3: TUniTabSheet;
    UniTabSheet4: TUniTabSheet;
    UniTabSheet5: TUniTabSheet;
    UniDBGrid1: TUniDBGrid;
    UniGroupBox2: TUniGroupBox;
    UniDBGrid3: TUniDBGrid;
    UniGroupBox1: TUniGroupBox;
    UniDBGrid2: TUniDBGrid;
    UniDBGrid4: TUniDBGrid;
    UniDBGrid5: TUniDBGrid;
    UniScrollBox1: TUniScrollBox;
    UniGroupBox3: TUniGroupBox;
    UniDBGrid6: TUniDBGrid;
    UniGroupBox4: TUniGroupBox;
    UniDBGrid7: TUniDBGrid;
    UniGroupBox5: TUniGroupBox;
    UniDBGrid8: TUniDBGrid;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmRrInqRedCardData: TfrmRrInqRedCardData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmRrInqRedCardData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
