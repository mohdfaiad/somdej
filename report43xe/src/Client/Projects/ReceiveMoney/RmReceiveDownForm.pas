unit RmReceiveDownForm;

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
  TfrmRmReceiveDownGrid = class(TMainDataForm)
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel4: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel9: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniLabel7: TUniLabel;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    UniDBEdit7: TUniDBEdit;
    UniLabel22: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniButton1: TUniButton;
    UniLabel5: TUniLabel;
    DbStatus: TUniDBEdit;
    dbgDataList: TUniDBGrid;
    procedure UniButton1Click(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmRmReceiveDownGrid: TfrmRmReceiveDownGrid;

implementation

{$R *.dfm}

uses PopupCardForm, PopupAddressForm, RmReceiveDownDataForm;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmRmReceiveDownGrid.btnConfirmClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmRmReceiveDownData).Create(UniApplication);
//  TfrmPsAppPoData(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
  if (Assigned(_Form)) then
  begin
    {$IFDEF OBSS}
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.Position := poDefault;
    _Form.Left := Self.Left;
    _Form.Top := Self.Top;
    _Form.Width := Self.Width;
    _Form.Height := Self.Height;
    _Form.Align := alNone;
    _Form.WindowState := wsNormal;
    {$ENDIF}
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

procedure TfrmRmReceiveDownGrid.UniButton1Click(Sender: TObject);
begin
  PopupAddress.ShowModal;

end;

end.
