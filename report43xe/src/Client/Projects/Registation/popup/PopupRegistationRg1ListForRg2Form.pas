unit PopupRegistationRg1ListForRg2Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSRegistationIntfDM;

 type
  TProcOfObject = procedure(DCDRG1: String;DNORG1:INTEGER;IDTRG1,EDTRG1:DOUBLE;VNORG1:STRING) of object;

   TfrmPopupRegistationRg1ListForRg2 = class(TPopupMainClass)
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnPopupCancelClick(Sender: TObject);
    procedure btnPopupConfirmClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
  private
    FDM: TDSRegistationDM;

    FSearchText: String;
    FOrderfield: String;

    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSRegistationDM; _PopupCaption: String = ''): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupRegistationRg1ListForRg2: TfrmPopupRegistationRg1ListForRg2;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupRegistationRg1ListForRg2.Init(_DM: TDSRegistationDM; _PopupCaption: String = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  dscPopupData.DataSet := FDM.CdsRG1GetList;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupRegistationRg1ListForRg2.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsRG1GetList.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

  if (Assigned(FOnSelectData)) then
    FOnSelectData(Fdm.CdsRG1GetListDCDRG1.AsString ,
                  Fdm.CdsRG1GetListDNORG1.AsInteger ,
                  Fdm.CdsRG1GetListIDTRG1.AsFloat,
                  Fdm.CdsRg1GetListEDTRG1.AsFloat,
                  Fdm.CdsRg1GetListVNORG1.AsString);
    Close();
  end;

end;

procedure TfrmPopupRegistationRg1ListForRg2.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsRG1GetList.Close;
    IF not(FDM.TtRG1GetList(FSearchText, FOrderfield,Fdm.CdsRG2GetListCMPRG2.AsString,
           Fdm.CdsRG2GetListBRNRG2.AsString,Fdm.CdsRG2GetListDEPRG2.AsString,'425',
           0,0,'P')) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsRG1GetList.Open;

end;

procedure TfrmPopupRegistationRg1ListForRg2.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupRegistationRg1ListForRg2.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupRegistationRg1ListForRg2.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
