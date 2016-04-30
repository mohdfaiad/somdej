unit PopupRegistationRg2ListForBookForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSRegistationIntfDM;

 type
  TProcOfObject = procedure(YARRG2,PRDRG2:INTEGER;CMPRG2,BRNRG2,DEPRG2:STRING;DCDRG2: String;DNORG2:INTEGER;IDTRG2,BDTRG2:DOUBLE;VNORG2:STRING) of object;

   TfrmPopupRegistationRg2ListForBook = class(TPopupMainClass)
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
  frmPopupRegistationRg2ListForBook: TfrmPopupRegistationRg2ListForBook;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupRegistationRg2ListForBook.Init(_DM: TDSRegistationDM; _PopupCaption: String = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  dscPopupData.DataSet := FDM.CdsRG2GetList;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupRegistationRg2ListForBook.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsRG2GetList.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

  if (Assigned(FOnSelectData)) then
    FOnSelectData(Fdm.CdsRg2GetListYARRG2.AsInteger,
                  Fdm.CdsRg2GetListPRDRG2.AsInteger,
                  Fdm.CdsRg2GetListCMPRG2.AsString,
                  Fdm.CdsRg2GetListBRNRG2.AsString,
                  Fdm.CdsRg2GetListDEPRG2.AsString,
                  Fdm.CdsRG2GetListDCDRG2.AsString ,
                  Fdm.CdsRG2GetListDNORG2.AsInteger ,
                  Fdm.CdsRG2GetListIDTRG2.AsFloat,
                  Fdm.CdsRg2GetListBDTRG2.AsFloat,
                  Fdm.CdsRG2GetListTNMVM1.AsString);
    Close();
  end;

end;

procedure TfrmPopupRegistationRg2ListForBook.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsRG2GetList.Close;
    IF not(FDM.TtRG2GetList(FSearchText, FOrderfield,Fdm.CMPUser,Fdm.BRNUser,'','426',
           0,0,'B')) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsRG2GetList.Open;

end;

procedure TfrmPopupRegistationRg2ListForBook.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupRegistationRg2ListForBook.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupRegistationRg2ListForBook.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
