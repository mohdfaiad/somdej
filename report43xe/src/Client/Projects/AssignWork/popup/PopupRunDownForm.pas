unit PopupRunDownForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars,DSAssignWorkIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg, uniScreenMask,StCtShpDataForm,
  DSSetupIntfDM;

type
  TProcOfObject = procedure(OUT_DNORDW : Integer) of object;
  TfrmPopupRunDown = class(TMainDataForm)
    dsgrid: TDataSource;
    Q11RDW: TUniDBEdit;
    Q21RDW: TUniDBEdit;
    Q31RDW: TUniDBEdit;
    Q41RDW: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    EdtYar: TUniEdit;
    EdtMM: TUniEdit;
    UniLabel1: TUniLabel;
    Q51RDW: TUniDBEdit;
    UniLabel9: TUniLabel;
    SUMRDW: TUniDBEdit;
    UniLabel2: TUniLabel;
    ITNRDW: TUniDBEdit;
    BtnSelectProduct: TUniButton;
    TNMPM1: TUniDBEdit;
    UniLabel31: TUniLabel;
    SRSPM1: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    RDTRDW: TUniDateTimePicker;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure TD3SCHExit(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);
    procedure SRSPM1CloseUp(Sender: TObject);

  private
    FUserSession: TUniMainModule;
    Fdm : TDSAssignWorkDM;
    FSetupdm : TDSSetupDM;
    FOnGetDnoRdw: TProcOfObject;

    procedure ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
  //  procedure ShowValues();
  public
    procedure Init(DM : TDSAssignWorkDM);
    property OnGetDnoRdw: TProcOfObject read FOnGetDnoRdw write FOnGetDnoRdw;
  end;

var
  frmPopupRunDown: TfrmPopupRunDown;

implementation

{$R *.dfm}

uses PopupProductForm;

procedure TfrmPopupRunDown.ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsTtRdwGetITNRDW.AsString := ITNPM1;
  Fdm.CdsTtRdwGetTNMPM1.AsString := TNMPM1;

end;

procedure TfrmPopupRunDown.SRSPM1CloseUp(Sender: TObject);
begin


end;

//procedure TfrmPopupRunDown.ShowValues();
//begin
//  ;
//end;

procedure TfrmPopupRunDown.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsTtRdwGet.State in [dsInsert,dsEdit] then
    Fdm.CdsTtRdwGet.Cancel();
  inherited;

end;

procedure TfrmPopupRunDown.btnConfirmClick(Sender: TObject);
var ch : Boolean;
    OUT_DNORDW : Integer;
begin

  ch:= FDM.TtRdwInsUpd(
    fdm.CdsTtRdwGetSTSRDW.AsString,
    fdm.CdsTtRdwGetCMPRDW.AsString,
    fdm.CdsTtRdwGetBRNRDW.AsString,
    fdm.CdsTtRdwGetYARRDW.AsInteger,
    fdm.CdsTtRdwGetPRDRDW.AsInteger,
    fdm.CdsTtRdwGetDCDRDW.AsString,
    fdm.CdsTtRdwGetDNORDW.AsInteger,
    fdm.CdsTtRdwGetSEQRDW.AsInteger,
    fdm.CdsTtRdwGetOPTRDW.AsString,
    fdm.CdsTtRdwGetRWKRDW.AsInteger,
    fdm.CdsTtRdwGetRDTRDW.AsFloat,
    fdm.CdsTtRdwGetRNORDW.AsString,
    fdm.CdsTtRdwGetITNRDW.AsString,
    fdm.CdsTtRdwGetCOLRDW.AsString,
    fdm.CdsTtRdwGetQ11RDW.AsInteger,
    fdm.CdsTtRdwGetQ12RDW.AsInteger,
    fdm.CdsTtRdwGetQ21RDW.AsInteger,
    fdm.CdsTtRdwGetQ22RDW.AsInteger,
    fdm.CdsTtRdwGetQ31RDW.AsInteger,
    fdm.CdsTtRdwGetQ32RDW.AsInteger,
    fdm.CdsTtRdwGetQ41RDW.AsInteger,
    fdm.CdsTtRdwGetQ42RDW.AsInteger,
    fdm.CdsTtRdwGetQ51RDW.AsInteger,
    fdm.CdsTtRdwGetQ52RDW.AsInteger,
    'ADMIN',
    OUT_DNORDW);

   if (Assigned(FOnGetDnoRdw)) then
     FOnGetDnoRdw(OUT_DNORDW);

  if ch then
  begin
//    CIDCDE :=  Fdm.CdsTtRdwGetCIDCDE.AsString;
    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    Fdm.CdsTtRdwGet.Locate('CIDCDE',CIDCDE,[]);
    fdm.CdsTtRdwGet.Close;
    fdm.CdsTtRdwGet.Open;
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;


procedure TfrmPopupRunDown.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProduct.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกสินค้า',Fdm.CdsTtRdwGetSRSPM1.AsString);

    OnSelectData := ProductSelected;
    ShowModal();
  end;

end;

procedure TfrmPopupRunDown.Init(DM : TDSAssignWorkDM);
begin

    FUserSession :=  UniMainModule();
    FSetupdm:= FUsersession.DSSetupDM;

   Fdm := dm;


   dsgrid.DataSet := dm.CdsTtRdwGet;

   SRSPM1.ListSource := Fdm.GetDSC('IF'); //รุ่นรถ

   EdtYar.Text := IntToStr(Fdm.CdsTtRdwGetYARRDW.AsInteger + 543);
   EdtMM.Text := IntToStr(Fdm.CdsTtRdwGetPRDRDW.AsInteger);
   RDTRDW.Text := fdm.FSBuddhistDateToStr(fdm.CdsTtRdwGetRDTRDW.AsDateTime);

  if (fdm.CdsTtRdwGet.State in [dsInsert]) then
  begin

     btnConfirm.Visible := True;
  end
  else if (fdm.CdsTtRdwGet.State in [dsEdit]) then
  begin

     btnConfirm.Visible := True;

  end
  else
  begin
     BtnSelectProduct.Visible := False;
     btnConfirm.Visible := False;
     RSetReadOnly();
  end;

  RSetColorReadOnly();
end;

procedure TfrmPopupRunDown.TD3SCHExit(Sender: TObject);
begin

end;

//initialization
//  RegisterMainFormClass(TfrmApInqData);

end.
