unit PopupArForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM,
  Vcl.Imaging.jpeg;

 type
  TProcOfObject = procedure(CNOCM1,TNMCM1,CTPCM1,SMNCM1 : String;CRTAM3 : INTEGER) of object;

   TfrmPopupAr = class(TPopupMainClass)
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

    ICMP, IBRN ,ICTY: String;
    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSSetupDM; _PopupCaption: String = '';CMP : String = '';BRN : String = '';CTY : String = ''): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupAr: TfrmPopupAr;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupAr.Init(_DM: TDSSetupDM; _PopupCaption: String = '';CMP : String = '';BRN : String = '';CTY : STRING=''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  ICMP := CMP;
  IBRN := BRN;
  ICTY := CTY;
  if FDM.CdsStCM1GetUsedBrn.Active then
    FDM.CdsStCM1GetUsedBrn.Close;

  dscPopupData.DataSet := FDM.CdsStCM1GetUsedBrn;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupAr.UniFormShow(Sender: TObject);
begin
  if FDM.CdsStCM1GetUsedBrn.Active then
  FDM.CdsStCM1GetUsedBrn.Close();

end;

procedure TfrmPopupAr.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsStCM1GetUsedBrn.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(Fdm.CdsStCM1GetUsedBrnCNOCM1.AsString,
        Fdm.CdsStCM1GetUsedBrnTNMCM1.AsString,FDM.CdsStCM1GetUsedBrnCTPCM1.AsString,
        FDM.CdsStCM1GetUsedBrnSMNCM1.AsString,Fdm.CdsStCm1GetUsedBrnCRTAM3.AsInteger
        );

    Close();
  end;

end;

procedure TfrmPopupAr.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsStCM1GetUsedBrn.Close;
    IF not(FDM.StCM1GetUsedBrn(FSearchText, FOrderfield,ICMP,IBRN,ICTY)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStCM1GetUsedBrn.Open;

end;

procedure TfrmPopupAr.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupAr.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupAr.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
