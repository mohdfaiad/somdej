unit PopupRedCardForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM;

 type
  TProcOfObject = procedure(PRVRM1,PRVTNM,REGRM1, REGFULL: String;RENRM1:INTEGER) of object;

   TfrmPopupRedCard = class(TPopupMainClass)
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
  frmPopupRedCard: TfrmPopupRedCard;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupRedCard.Init(_DM: TDSSetupDM; _PopupCaption: String = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;

  dscPopupData.DataSet := FDM.CdsStRedCardGet;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupRedCard.UniFormShow(Sender: TObject);
begin
  if FDM.CdsStRedCardGet.Active then
  FDM.CdsStRedCardGet.Close();

end;

procedure TfrmPopupRedCard.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsStRedCardGet.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

  if (Assigned(FOnSelectData)) then
    FOnSelectData(Fdm.CdsStRedCardGetPRVRM1.AsString ,
                  Fdm.CdsStRedCardGetPRVTNM.AsString ,
                  Fdm.CdsStRedCardGetREGRM1.AsString,
                  Fdm.CdsStRedCardGetREGFULL.AsString,
                  Fdm.CdsStRedCardGetRGNRM1.AsInteger);
    Close();
  end;

end;

procedure TfrmPopupRedCard.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsStRedCardGet.Close;
    IF not(FDM.StRedCardGet(FSearchText, FOrderfield,'','')) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStRedCardGet.Open;

end;

procedure TfrmPopupRedCard.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupRedCard.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupRedCard.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
