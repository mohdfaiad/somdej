unit PopupAc1Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM;

 type
  TProcOfObject = procedure(ACCAC1,TNMAC1,ACTAC1,STTAC1 : String) of object;

   TfrmPopupAc1 = class(TPopupMainClass)
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
  frmPopupAc1: TfrmPopupAc1;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupAc1.Init(_DM: TDSSetupDM; _PopupCaption: String = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  dscPopupData.DataSet := FDM.CdsStAc1Get;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupAc1.UniFormShow(Sender: TObject);
begin
  if FDM.CdsStAc1Get.Active then
  FDM.CdsStAc1Get.Close();

end;

procedure TfrmPopupAc1.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsStAc1Get.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(Fdm.CdsStAc1GetAGPAC1.AsString +
                    Fdm.CdsStAc1GetASGAC1.AsString +
                    Fdm.CdsStAc1GetATPAC1.AsString +
                    Fdm.CdsStAc1GetARNAC1.AsString ,
        Fdm.CdsStAc1GetTNMAC1.AsString,
        Fdm.CdsStAc1GetACTAC1.AsString,
        Fdm.CdsStAc1GetSTTAC1.AsString);

    Close();
  end;

end;

procedure TfrmPopupAc1.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsStAc1Get.Close;
    IF not(FDM.StAccGet(FSearchText, FOrderfield)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStAc1Get.Open;

end;

procedure TfrmPopupAc1.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupAc1.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupAc1.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
