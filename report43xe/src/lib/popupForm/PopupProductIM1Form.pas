unit PopupProductIM1Form;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM;

 type
  TProcOfObject = procedure(SERIM1,ENGIM1,COLIM1,WHSIM1,TNMWHS,_DNOYM1: String;_IDTYM1:Double) of object;

   TfrmPopupProductIM1 = class(TPopupMainClass)
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
    _ITN,_COL : STRING;

    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSSetupDM; _PopupCaption: String = '';ITN:String='';COL:STRING='ALL'): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupProductIM1: TfrmPopupProductIM1;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupProductIM1.Init(_DM: TDSSetupDM; _PopupCaption: String = '';ITN:String='';COL:STRING='ALL'): Boolean;
begin

  FDM := _DM;
  _ITN := ITN;
  _COL := COL;

  dscPopupData.DataSet := FDM.CdsStIm1GetByITN;

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupProductIM1.UniFormShow(Sender: TObject);
begin
  if FDM.CdsStIm1GetByITN.Active then
  FDM.CdsStIm1GetByITN.Close();

end;

procedure TfrmPopupProductIM1.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsStIm1GetByITN.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(Fdm.CdsStIm1GetByItnSERIM1.AsString,
        Fdm.CdsStIm1GetByItnENGIM1.AsString,
        Fdm.CdsStIm1GetByItnCOLIM1.AsString,
        Fdm.CdsStIm1GetByItnWHSIM1.AsString,
        Fdm.CdsStIm1GetByItnTNMWHS.AsString,
        Fdm.CdsStIm1GetByItnDNOYM1.AsString,
        Fdm.CdsStIm1GetByItnIDTYM1.AsFloat);

    Close();
  end;

end;

procedure TfrmPopupProductIM1.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsStIm1GetByITN.Close;
    IF not(FDM.StIm1GetByItn(FSearchText, FOrderfield,_ITN,_COL)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStIm1GetByITN.Open;

end;

procedure TfrmPopupProductIM1.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupProductIM1.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupProductIM1.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
