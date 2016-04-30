unit PopupAssignNoWeekForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PopupMainClassForm, Data.DB, uniEdit,
  uniLabel, uniButton, Vcl.Imaging.GIFImg, uniImage, uniGUIClasses,
  uniBasicGrid, uniDBGrid, uniGUIBaseClasses, uniPanel,uniGUIAbstractClasses,DSAssignWorkIntfDM,
  uniDateTimePicker;

 type
  TProcOfObject = procedure(DNOPAS : INTEGER) of object;

   TfrmPopupAssignNoWeek = class(TPopupMainClass)
    UniLabel1: TUniLabel;
    EdtMM: TUniEdit;
    LbCid: TUniLabel;
    EdtYar: TUniEdit;
    UniLabel2: TUniLabel;
    EdtCom: TUniEdit;
    UniLabel3: TUniLabel;
    EdtBrn: TUniEdit;
    UniLabel6: TUniLabel;
    IDTPAS: TUniDateTimePicker;
    procedure dbgDataListTitleClick(Column: TUniDBGridColumn);
    procedure btnPopupCancelClick(Sender: TObject);
    procedure btnPopupConfirmClick(Sender: TObject);
    procedure edSearchKeyPress(Sender: TObject; var Key: Char);
  private

    Fdm : TDSAssignWorkDM;

    FSearchText: String;
    FOrderfield: String;
    _ITN,_COL : STRING;

    FOnSelectData: TProcOfObject;
  public
     procedure Init(_DM: TDSAssignWorkDM;_cmp,_brn:string;_yar,_prd:integer;_dcd:string;_date : TDateTime);

    property OnSelectData: TProcOfObject read FOnSelectData write FOnSelectData;
  end;

var
  frmPopupAssignNoWeek: TfrmPopupAssignNoWeek;

implementation

{$R *.dfm}


const
  _ORDER_ASC_ = ' ASC';
  _ORDER_DESC_ = ' DESC';

procedure TfrmPopupAssignNoWeek.Init(_DM: TDSAssignWorkDM;_cmp,_brn:string;_yar,_prd:integer;_dcd:string;_date : TDateTime);
begin

  FDM := _DM;

  dscPopupData.DataSet := FDM.CdsTtPasGetByDate;

  EdtCom.Text := _cmp;
  EdtBrn.Text := _brn;

  EdtYar.Text := IntToStr(_yar + 543);
  EdtMM.Text := IntToStr(_prd);
  IDTPAS.Text := FDM.FSBuddhistDateToStr(_date);

  Fdm.CdsTtPasGetByDate.Close();
  Fdm.TtPasGetByDat(_cmp,_brn,_yar,_prd,'602',_date,'A');// P is from Pre assign
  Fdm.CdsTtPasGetByDate.Open();


end;

procedure TfrmPopupAssignNoWeek.btnPopupConfirmClick(Sender: TObject);
begin
if (FDM.CdsTtPasGetByDate.IsEmpty) then
  begin
    ShowMessage('เลือกรายกาที่ต้องการก่อน');
  end else
  begin

    if (Assigned(FOnSelectData)) then
      FOnSelectData(FDM.CdsTtPasGetByDateDNOPAS.AsInteger); // อ้างอิง DNOASN แต่ตัวแปรเป็น dnopas

    Close();
  end;

end;

procedure TfrmPopupAssignNoWeek.dbgDataListTitleClick(Column: TUniDBGridColumn);
begin
    if (FOrderfield <> Column.FieldName + _ORDER_DESC_) then
      FOrderfield := Column.FieldName + _ORDER_DESC_
    else
      FOrderfield := Column.FieldName + _ORDER_ASC_;

  btnSearchClick(btnSearch);

end;

procedure TfrmPopupAssignNoWeek.edSearchKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    btnSearchClick(btnSearch);
    Key := #0;
  end;

end;

procedure TfrmPopupAssignNoWeek.btnPopupCancelClick(Sender: TObject);
begin
  Close();

end;


end.
