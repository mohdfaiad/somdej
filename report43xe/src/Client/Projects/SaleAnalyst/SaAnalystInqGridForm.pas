unit SaAnalystInqGridForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox {$ELSE} MainModuleEx, uniMultiItem,
  uniComboBox, uniDBComboBox, uniDBLookupComboBox, Vcl.Imaging.GIFImg, uniImage {$ENDIF};

type
  TfrmSaAnalystInqGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel1: TUniLabel;
    UniEdit1: TUniEdit;
    UniLabel2: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel8: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniEdit2: TUniEdit;
    UniLabel5: TUniLabel;
    UniEdit3: TUniEdit;
    UniLabel6: TUniLabel;
    procedure btnAddClick(Sender: TObject);

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmSaAnalystInqGrid: TfrmSaAnalystInqGrid;

implementation

{$R *.dfm}

uses uniGUIForm, SaAnalystInqForm;


procedure TfrmSaAnalystInqGrid.btnAddClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmSaAnalystInq).Create(UniApplication);
//  TfrmSaAnalystInq(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
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
