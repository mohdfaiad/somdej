unit PopupApplicationForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSCarsaleIntfDM,
  uniDateTimePicker;

  type
  TProcOfObject = procedure(YAR:Integer;CMP,BRN,DCD:String;DNO : Integer;app_sts:integer;APPR_TEXT:string) of object;

   TfrmPopupApplication = class(TPopupMainClass)
    EdtCom: TUniEdit;
    UniLabel2: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel3: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel4: TUniLabel;
    IFRM: TUniDateTimePicker;
    UniLabel5: TUniLabel;
    ITO: TUniDateTimePicker;
    EdtDEP: TUniEdit;
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnPopupCancelClick(Sender: TObject);
    procedure btnPopupConfirmClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure UniFormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
   FDM: TDSCarsaleDM ;

   V_FRM , V_TO : Double;

    FSearchText: String;
    FOrderfield: String;
    FAPPSTS : STRING;
    ICMP, IBRN ,ICFG: String;  // ICFG = 'C' CUSTOMER, 'G' = GUARENTOR
    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSCarsaleDM; _PopupCaption: String = '';CMP : String = '';BRN : String = '';CFG:STRING ='';APPSTS : STRING=''): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupApplication: TfrmPopupApplication;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupApplication.Init(_DM: TDSCarsaleDM; _PopupCaption: String = '';CMP : String = '';BRN : String = '';CFG:STRING ='';APPSTS: STRING=''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  ICMP := CMP;
  IBRN := BRN;
  ICFG := CFG;
  FAPPSTS := APPSTS;
  dscPopupData.DataSet:= FDM.CdsMtAppGetList;

  IFRM.Text := FDM.FSBuddhistDateToStr(FDM.GetSystemDate - (365*2));
  ITO.Text := FDM.FSBuddhistDateToStr(FDM.GetSystemDate);

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupApplication.UniFormShow(Sender: TObject);
begin
  if FDM.CdsMtCsmGet.Active then
  FDM.CdsMtCsmGet.Close();

end;

procedure TfrmPopupApplication.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsMtAppGetList.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(
        Fdm.CdsMtAppGetListYAROT5.AsInteger,
        Fdm.CdsMtAppGetListCMPOT5.AsString,
        Fdm.CdsMtAppGetListBRNOT5.AsString,
        Fdm.CdsMtAppGetListDCDOT5.AsString,
        Fdm.CdsMtAppGetListDNOOT5.AsInteger,
        Fdm.CdsMtAppGetListAPP_STS.AsInteger,
        Fdm.CdsMtAppGetListAPPR_TEXT.AsString
        );

    Close();
  end;

end;

procedure TfrmPopupApplication.btnSearchClick(Sender: TObject);
var
    cirt : String;
begin
    cirt := Trim(edSearch.Text);

 if Trim(IFRM.Text) = '' then
    V_FRM := 0
 else
    V_FRM := Fdm.FSBuddhistDateToDate(IFRM.DateTime);

 if Trim(ITO.Text) = '' then
    V_TO := 0
 else
    V_TO := Fdm.FSBuddhistDateToDate(ITO.DateTime);

    FDM.CdsMtAppGetList.Close;
    IF not(FDM.MtAppGetList(cirt,FOrderfield,EdtCom.Text,EdtBrn.Text,EdtDEP.Text,V_FRM,V_TO,FAPPSTS)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsMtAppGetList.Open;
end;

procedure TfrmPopupApplication.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupApplication.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupApplication.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FDM.CdsMtCsmGet.Active then
    FDM.CdsMtCsmGet.Close();

end;

procedure TfrmPopupApplication.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
