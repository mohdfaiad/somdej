unit TaAssignWeekDataForm;

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
  TfrmTaPAssignWeekData = class(TMainDataForm)
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel3: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniDBGrid3: TUniDBGrid;
    UniLabel4: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniLabel6: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    procedure UniButton1Click(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmTaPAssignWeekData: TfrmTaPAssignWeekData;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmTaPAssignWeekData.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
