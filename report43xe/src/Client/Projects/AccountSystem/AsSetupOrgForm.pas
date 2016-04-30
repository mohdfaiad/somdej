unit AsSetupOrgForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  {$IFDEF OBSS} MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,
  uniDBComboBox, uniDBLookupComboBox, uniDBEdit {$ELSE} MainModuleEx, uniDBEdit,
  uniDateTimePicker, uniMultiItem, uniComboBox, uniDBComboBox,
  uniDBLookupComboBox {$ENDIF};

type
  TfrmAsSetupOrgGrid = class(TMainGridForm)
    dsgrid: TDataSource;
    UniLabel3: TUniLabel;
    procedure btnAddClick(Sender: TObject);

    private

 //  order : String;
 //  FUserSession: TUniMainModule;
  // FDM: TDSCTMDM ;

  public
 //   property DM : TDSCTMDM read FDM write FDM;

  end;

var
  frmAsSetupOrgGrid: TfrmAsSetupOrgGrid;

implementation

{$R *.dfm}

uses uniGUIForm, AsSetupOrgDataForm;


procedure TfrmAsSetupOrgGrid.btnAddClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmAsSetupOrgData).Create(UniApplication);
//  TfrmMsSetupMoneyCodeData(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
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
    _Form.ShowModal();
  end else
  begin
    MessageDlg('There are no FROME related', mtError, [mbOK], nil);
  end;



end;

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
end.
