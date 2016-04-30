unit PopupCsmForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSCarsaleIntfDM;

 type
  TProcOfObject = procedure(CCNCSM:int64;TNMCSM:String) of object;

   TfrmPopupCsm = class(TPopupMainClass)
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnPopupCancelClick(Sender: TObject);
    procedure btnPopupConfirmClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure UniFormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FDM: TDSCarsaleDM;

    FSearchText: String;
    FOrderfield: String;

    ICMP, IBRN ,ICFG: String;  // ICFG = 'C' CUSTOMER, 'G' = GUARENTOR
    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSCarsaleDM; _PopupCaption: String = '';CMP : String = '';BRN : String = '';CFG:STRING =''): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupCsm: TfrmPopupCsm;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupCsm.Init(_DM: TDSCarsaleDM; _PopupCaption: String = '';CMP : String = '';BRN : String = '';CFG:STRING =''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  ICMP := CMP;
  IBRN := BRN;
  ICFG := CFG;

  dscPopupData.DataSet := FDM.CdsMtCsmGet;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupCsm.UniFormShow(Sender: TObject);
begin
  if FDM.CdsMtCsmGet.Active then
  FDM.CdsMtCsmGet.Close();

end;

procedure TfrmPopupCsm.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsMtCsmGet.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(Fdm.CdsMtCsmGetCCNCSM.AsLargeInt,
        Fdm.CdsMtCsmGetFULLNAME.AsString);

    Close();
  end;

end;

procedure TfrmPopupCsm.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsMtCsmGet.Close;
    IF not(FDM.MtCsmGet(FSearchText, FOrderfield,ICMP,IBRN,ICFG)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsMtCsmGet.Open;

end;

procedure TfrmPopupCsm.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupCsm.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupCsm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDM.CdsMtCsmGet.Active then
    FDM.CdsMtCsmGet.Close();

end;

procedure TfrmPopupCsm.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
