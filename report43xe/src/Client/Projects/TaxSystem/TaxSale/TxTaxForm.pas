unit TxTaxForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox {$ELSE} MainModuleEx,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit, uniDateTimePicker {$ENDIF};

type
  TfrmTxTaxGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel3: TUniLabel;
    UniLabel13: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel6: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    procedure btnAddClick(Sender: TObject);

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmTxTaxGrid: TfrmTxTaxGrid;

implementation

{$R *.dfm}

uses uniGUIForm, TxTaxDataForm;


procedure TfrmTxTaxGrid.btnAddClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmTxTaxData).Create(UniApplication);
//  TfrmPsAppPoData(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
  if (Assigned(_Form)) then
  begin
    {$IFDEF OBSS}
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
//    _Form.Position := poDefault;
//    _Form.Left := Self.Left;
//    _Form.Top := Self.Top;
//    _Form.Width := Self.Width;
//    _Form.Height := Self.Height;
    _Form.Align := alNone;
    _Form.WindowState := wsNormal;
    {$ENDIF}
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;


end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
end.
