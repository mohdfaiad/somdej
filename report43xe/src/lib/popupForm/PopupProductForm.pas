unit PopupProductForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM;

 type
  TProcOfObject = procedure(ITNPM1,TNMPM1 : String;UC1PM1,UC2PM1,CP1PM1,FAMPM1: DOUBLE) of object;

   TfrmPopupProduct = class(TPopupMainClass)
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
    _SRS : STRING;

    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSSetupDM; _PopupCaption: String = '';SRS:STRING = ''): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupProduct: TfrmPopupProduct;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupProduct.Init(_DM: TDSSetupDM; _PopupCaption: String = '';SRS:STRING = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;
  _SRS := SRS;
  dscPopupData.DataSet := FDM.CdsStPm1Get;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupProduct.UniFormShow(Sender: TObject);
begin
  if FDM.CdsStPm1Get.Active then
  FDM.CdsStPm1Get.Close();

end;

procedure TfrmPopupProduct.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsStPm1Get.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(Fdm.CdsStPm1GetITNPM1.AsString,
        Fdm.CdsStPm1GetTNMPM1.AsString,
        Fdm.CdsStPm1GetUC1PM1.AsFloat,
        Fdm.CdsStPm1GetUC2PM1.AsFloat ,
        FDM.CdsStPm1GetUP1PM1.AsFloat ,
        Fdm.cdsstpm1getFAMPM1.AsFloat
        );

    Close();
  end;

end;

procedure TfrmPopupProduct.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsStPm1Get.Close;
    IF not(FDM.StPm1Get(FSearchText, FOrderfield,_SRS)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStPm1Get.Open;

end;

procedure TfrmPopupProduct.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupProduct.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupProduct.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
