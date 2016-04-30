unit PopupAddrForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM;

 type
  TProcOfObject = procedure(idzip:integer;codzip,tamzip,ampzip,chgzip,cnmzip:string) of object;

   TfrmPopupAddr = class(TPopupMainClass)
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

    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSSetupDM; _PopupCaption: String = ''): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupAddr: TfrmPopupAddr;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupAddr.Init(_DM: TDSSetupDM; _PopupCaption: String = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  dscPopupData.DataSet := FDM.CdsStZipGet;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupAddr.UniFormShow(Sender: TObject);
begin
  if FDM.CdsStZipGet.Active then
  FDM.CdsStZipGet.Close();

end;

procedure TfrmPopupAddr.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsStZipGet.IsEmpty) then
  begin
    ShowMessage('เลือกรายการที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(Fdm.CdsStZipGetidzip.AsInteger,
        Fdm.CdsStZipGetcodzip.AsString,FDM.CdsStZipGettamzip.AsString,
        FDM.CdsStZipGetampzip.AsString,FDM.CdsStZipGetchgzip.AsString,FDM.CdsStZipGetcnmzip.AsString);

    Close();
  end;

end;

procedure TfrmPopupAddr.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsStZipGet.Close;
    IF not(FDM.StZipGet(FSearchText, FOrderfield)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStZipGet.Open;

end;

procedure TfrmPopupAddr.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupAddr.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupAddr.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
