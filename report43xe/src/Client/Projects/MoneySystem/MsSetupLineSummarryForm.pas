unit MsSetupLineSummarryForm;

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
  TfrmMsSetupLineSummarryGrid = class(TMainGridForm)
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
  frmMsSetupLineSummarryGrid: TfrmMsSetupLineSummarryGrid;

implementation

{$R *.dfm}

uses uniGUIForm, MsSetupLineSummarryDataForm;


procedure TfrmMsSetupLineSummarryGrid.btnAddClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmMsSetupLineSummarryData).Create(UniApplication);
//  TfrmMsSetupLineSummarryData(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
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

//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
end.
