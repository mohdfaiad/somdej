unit PopupAdvanceForReturnForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSRegistationIntfDM;

 type
  TProcOfObject = procedure(DCDAM6: String;DNOAM6:INTEGER;IDTAM6:DOUBLE) of object;

   TfrmPopupAdvanceForReturn = class(TPopupMainClass)
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
  frmPopupAdvanceForReturn: TfrmPopupAdvanceForReturn;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupAdvanceForReturn.Init(_DM: TDSRegistationDM; _PopupCaption: String = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  dscPopupData.DataSet := FDM.CdsAm6GetList;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupAdvanceForReturn.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsAm6GetList.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

  if (Assigned(FOnSelectData)) then
    FOnSelectData(Fdm.CdsAm6GetListDCDAM6.AsString ,
                  Fdm.CdsAm6GetListDNOAM6.AsInteger ,
                  Fdm.CdsAm6GetListIDTAM6.AsFloat);
    Close();
  end;

end;

procedure TfrmPopupAdvanceForReturn.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsAm6GetList.Close;
    IF not(FDM.TtAm6GetList(FSearchText, FOrderfield,Fdm.CdsAm7GetListCMPAM7.AsString,
           Fdm.CdsAm7GetListBRNAM7.AsString,Fdm.CdsAm7GetListDEPAM7.AsString,'423',
           0,0,'P')) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsAm6GetList.Open;

end;

procedure TfrmPopupAdvanceForReturn.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupAdvanceForReturn.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupAdvanceForReturn.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
