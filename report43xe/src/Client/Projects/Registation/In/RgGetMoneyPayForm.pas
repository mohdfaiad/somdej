unit RgGetMoneyPayForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniDBEdit {$ELSE} MainModuleEx, uniDBEdit,
  uniDateTimePicker, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox, Vcl.Imaging.GIFImg, uniImage {$ENDIF};

type
  TfrmRgGetMoneyPayGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel5: TUniLabel;
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
  frmRgGetMoneyPayGrid: TfrmRgGetMoneyPayGrid;

implementation

{$R *.dfm}

uses uniGUIForm, RgGetMoneyPayDataForm;


procedure TfrmRgGetMoneyPayGrid.btnAddClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmRgGetMoneyPayData).Create(UniApplication);
//  TfrmPsAppPoData(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
  if (Assigned(_Form)) then
  begin
    _Form.BorderIcons := [];
    _Form.BorderStyle := bsNone;
    _Form.WindowState := wsNormal;
    _Form.Top := Top;
    _Form.Left := Left;
    _Form.Height := Height;
    _Form.Width := Width;
    _Form.WebForm.ExtWindow.Draggable := False;
    _Form.WebForm.ExtWindow.Resizable := False;
    _Form.Show();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;

end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
end.
