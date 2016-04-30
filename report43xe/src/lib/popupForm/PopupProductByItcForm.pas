unit PopupProductByItcForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSSetupIntfDM;

 type
  TProcOfObject = procedure(ITNPM1,TNMPM1 : String;UC1PM1,UC2PM1,CP1PM1,CP2PM1,FAMPM1: DOUBLE) of object;

   TfrmPopupProductByItc = class(TPopupMainClass)
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnPopupCancelClick(Sender: TObject);
    procedure btnPopupConfirmClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
  private
    FDM: TDSSetupDM;

    FSearchText: String;
    FOrderfield: String;
    _ITC : STRING;

    FOnSelectData: TProcOfObject;
  public
     function Init(_DM: TDSSetupDM; _PopupCaption: String = '';ITC:STRING = ''): Boolean;

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupProductByItc: TfrmPopupProductByItc;

implementation

{$R *.dfm}

const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

function TfrmPopupProductByItc.Init(_DM: TDSSetupDM; _PopupCaption: String = '';ITC:STRING = ''): Boolean;
begin
//  FOnSelectData := _OnSelectData;
  FDM := _DM;
  _ITC := ITC;
  dscPopupData.DataSet := FDM.CdsStPm1GetByItc;
  FDM.CdsStPm1GetByItc.Close();

  if (Trim(_PopupCaption) <> '') then
    Caption := _PopupCaption;

  FOrderfield := '';
  Result := True;
end;

procedure TfrmPopupProductByItc.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsStPm1GetByItc.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(Fdm.CdsStPm1GetByItcITNPM1.AsString,
        Fdm.CdsStPm1GetByItcTNMPM1.AsString,
        Fdm.CdsStPm1GetByItcUC1PM1.AsFloat,
        Fdm.CdsStPm1GetByItcUC2PM1.AsFloat ,
        FDM.CdsStPm1GetByItcUP1PM1.AsFloat ,
        FDM.CdsStPm1GetByItcUP2PM1.AsFloat ,
        Fdm.CdsStPm1GetByItcFAMPM1.AsFloat
        );

    Close();
  end;

end;

procedure TfrmPopupProductByItc.btnSearchClick(Sender: TObject);
begin
    FSearchText := Trim(edSearch.Text);
    FDM.CdsStPm1GetByItc.Close;
    IF not(FDM.StPm1GetByItc(FSearchText, FOrderfield,_ITC)) THEN
       ShowMessage('เกิดข้อผิดพลาดเข้าถึงข้อมูล');
    FDM.CdsStPm1GetByItc.Open;

end;

procedure TfrmPopupProductByItc.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupProductByItc.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupProductByItc.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
