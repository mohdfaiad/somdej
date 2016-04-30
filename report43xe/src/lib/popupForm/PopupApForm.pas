unit PopupApForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM,
  uniScreenMask;

 type
  TProcOfObject = procedure(VNOvm1,TNMvm1,CTPvm1,psNvm1: String;CRTYM3 : INTEGER;cspvm1 :String) of object;

   TfrmPopupAp = class(TPopupMainClass)
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnPopupCancelClick(Sender: TObject);
    procedure btnPopupConfirmClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure UniFormShow(Sender: TObject);
  private
    FDM: TDSSetupDM;

    FSearchText: String;
    FOrderfield: String;

    ICMP, IBRN : String;
    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSSetupDM; _PopupCaption: String = '';CMP : String = '';BRN : String = ''): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupAp: TfrmPopupAp;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupAp.Init(_DM: TDSSetupDM; _PopupCaption: String = '';CMP : String = '';BRN : String = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  ICMP := CMP;
  IBRN := BRN;

  dscPopupData.DataSet := FDM.CdsStvm1GetUsedBrn;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupAp.UniFormShow(Sender: TObject);
begin
  if FDM.CdsStvm1GetUsedBrn.Active then
  FDM.CdsStvm1GetUsedBrn.Close();

end;

procedure TfrmPopupAp.btnPopupConfirmClick(Sender: TObject);
begin
  if (FDM.CdsStvm1GetUsedBrn.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(Fdm.CdsStvm1GetUsedBrnvNOvm1.AsString,
        Fdm.CdsStvm1GetUsedBrnTNMvm1.AsString,FDM.CdsStvm1GetUsedBrnvTPvm1.AsString,
        FDM.CdsStvm1GetUsedBrnpsnvm1.AsString,FDM.CdsStVm1GetUsedBrnCRTYM3.AsInteger,
        fdm.CdsStVm1GetUsedBrnCPSVM1.AsString);

    Close();
  end;

end;

procedure TfrmPopupAp.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsStvm1GetUsedBrn.Close;
    IF not(FDM.Stvm1GetUsedBrn(FSearchText, FOrderfield,ICMP,IBRN)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStvm1GetUsedBrn.Open;

end;

procedure TfrmPopupAp.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupAp.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupAp.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
