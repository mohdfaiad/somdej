unit AsDocDailyDataForm;

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
  uniMemo, uniDBMemo, uniRadioButton, uniRadioGroup, Datasnap.DBClient,
  uniScreenMask, Vcl.Imaging.GIFImg, uniImage;

type
  TfrmAsDocDailyData = class(TMainDataForm)
    dsDocDaily: TDataSource;
    UniLabel10: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    dbgDataList: TUniDBGrid;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniPanel1: TUniPanel;
    UniLabel7: TUniLabel;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    CdsData: TClientDataSet;
    UniLabel8: TUniLabel;
    UniDBEdit5: TUniDBEdit;
    UniLabel12: TUniLabel;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel9: TUniLabel;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    CdsDataitem_no: TIntegerField;
    CdsDatawork: TStringField;
    CdsDataacc_code: TStringField;
    CdsDataacc_name: TStringField;
    CdsDatacheq_no: TStringField;
    CdsDatadr_ame: TFloatField;
    CdsDatacr_amt: TFloatField;
    CdsDatalink_sys: TStringField;
    CdsDatalink_system: TStringField;
    BtnLinkSystem: TUniButton;
    procedure UniFormCreate(Sender: TObject);
    procedure BtnLinkSystemClick(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmAsDocDailyData: TfrmAsDocDailyData;

implementation

{$R *.dfm}

uses AsPopLinkSystemDataForm;

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

procedure TfrmAsDocDailyData.BtnLinkSystemClick(Sender: TObject);
var
  _Form: TUniForm;
begin
  _Form := TUniFormClass(TfrmAsLinkSystemData).Create(UniApplication);
//  TPopupLink(_Form).Init(DM,dm.CdsGetConListCONTRACT_ID.AsLargeInt);
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

procedure TfrmAsDocDailyData.UniFormCreate(Sender: TObject);
begin

 CdsData.CreateDataSet;

 CdsData.Append;
 CdsDataitem_no.AsInteger := 1;
 CdsDatawork.AsString := 'ºÑ­ªÕ';
 CdsDataacc_code.AsString := '5111011';
 CdsDataacc_name.AsString := 'à§Ô¹Ê´';
 CdsDatacheq_no.AsString := '12345678';
 CdsDatadr_ame.AsString := '12345678';
 CdsDatacr_amt.AsFloat := 190000.00;
 CdsDatalink_sys.Asstring := 'N';
 CdsDatalink_system.AsString := '';
 cdsdata.Post;

end;

end.
