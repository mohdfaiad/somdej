unit PopupAssignWeekOutForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSPurchaseIntfDM,
  uniDateTimePicker, uniMultiItem, uniComboBox;

 type
  TProcOfObject = procedure(DNOAD1 : INTEGER;EDTAD1 : DOUBLE) of object;

   TfrmPopupAssignWeekOut = class(TPopupMainClass)
    UniLabel1: TUniLabel;
    LbCid: TUniLabel;
    EdtYar: TUniEdit;
    UniLabel2: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel3: TUniLabel;
    EdtBrn: TUniEdit;
    CmbMM: TUniComboBox;
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnPopupCancelClick(Sender: TObject);
    procedure btnPopupConfirmClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
    procedure CmbMMCloseUp(Sender: TObject);
  private

    Fdm : TDSPurchaseDM;

    FSearchText: String;
    FOrderfield: String;
    _ITN,_COL : STRING;
    Y,M : INTEGER;
    C,B : STRING;
    FOnSelectData: TProcOfObject;
  public
     procedure Init(_DM: TDSPurchaseDM;_cmp,_brn:string;_yar,_prd:integer;_dcd:string;_date : TDateTime);

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupAssignWeekOut: TfrmPopupAssignWeekOut;

implementation

{$R *.dfm}


const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

procedure TfrmPopupAssignWeekOut.Init(_DM: TDSPurchaseDM;_cmp,_brn:string;_yar,_prd:integer;_dcd:string;_date : TDateTime);
begin

  FDM := _DM;
  C := _CMP;
  B := _BRN;
  Y := _YAR;
  M := _PRD;

  dscPopupData.DataSet := FDM.CdsAd2GetDno;

  EdtCom.Text := _cmp;
  EdtBrn.Text := _brn;

  EdtYar.Text := IntToStr(_yar + 543);
  CmbMM.Text := IntToStr(_prd);

  Fdm.CdsAd2GetDno.Close();
  Fdm.TT_AD2_GET_DNO(_cmp,_brn,_yar,_prd);
  Fdm.CdsAd2GetDno.Open();

end;

procedure TfrmPopupAssignWeekOut.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsAd2GetDno.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(FDM.CdsAd2GetDnoDNOAD1.AsInteger,
                    FDM.CdsAd2GetDnoEDTAD1.AsFloat);

    Close();
  end;

end;

procedure TfrmPopupAssignWeekOut.CmbMMCloseUp(Sender: TObject);
begin

  Fdm.CdsAd2GetDno.Close();
  Fdm.TT_AD2_GET_DNO(C,B,Y,StrToInt(CmbMM.Text));
  Fdm.CdsAd2GetDno.Open();


end;

procedure TfrmPopupAssignWeekOut.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupAssignWeekOut.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupAssignWeekOut.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
