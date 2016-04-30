unit StFrameNoDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars, DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask;

type
  TfrmStFrameNoData = class(TMainDataForm)
    dsgrid: TDataSource;
    LbCreditLineDate: TUniLabel;
    DbSERSTY: TUniDBEdit;
    DbTNMCM1: TUniDBEdit;
    DbCNOSTY: TUniDBEdit;
    UniLabel5: TUniLabel;
    UniLabel1: TUniLabel;
    DbENGSTY: TUniDBEdit;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    BtnSelectCno: TUniButton;
    DbSRSSTY: TUniDBEdit;
    DbITNSTY: TUniDBEdit;
    BtnSelectProduct: TUniButton;
    DbTNMPM1: TUniDBEdit;
    CmbCOL: TUniDBLookupComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectCnoClick(Sender: TObject);
    procedure BtnSelectProductClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure ContractSelected(cnocm1,tnmcm1,typcm1,smncm1: String;crtam3 : integer);
    procedure ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStFrameNoData: TfrmStFrameNoData;

 const
  Lnk1 = '1';
  Lnk2 = '2';
  Lnk3 = '3';
  Lnk4 = '4';

implementation

{$R *.dfm}

uses PopupArForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStFrameNoData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStStyGet.State in [dsInsert,dsEdit] then
    Fdm.CdsStStyGet.Cancel();
  inherited;

end;

procedure TfrmStFrameNoData.btnConfirmClick(Sender: TObject);
var ch  : Boolean;
  md : String;
begin
  if Fdm.CdsStStyGet.State in [dsInsert] then
    md := 'I'
  else
    md := 'E';

  ch:= FDM.StStyInsUpd(
        Fdm.CdsStStyGetSTSSTY.AsString,
        Fdm.CdsStStyGetSERSTY.AsString,
        Fdm.CdsStStyGetCNOSTY.AsString,
        Fdm.CdsStStyGetENGSTY.AsString,
        Fdm.CdsStStyGetITNSTY.AsString,
        Fdm.CdsStStyGetSRSSTY.AsString,
        Fdm.CdsStStyGetCOLSTY.AsString,
        md
      );

  if ch  then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStFrameNoData.ShowEdtAmt();
begin

end;

procedure TfrmStFrameNoData.ContractSelected(cnocm1,tnmcm1,typcm1,smncm1: String; crtam3 : integer);
begin
  Fdm.CdsStStyGetCNOSTY.AsString := cnocm1;
  Fdm.CdsStStyGetTNMCM1.AsString := tnmcm1;

end;


procedure TfrmStFrameNoData.BtnSelectCnoClick(Sender: TObject);
begin
  with TfrmPopupAr.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกลูกค้า','A','ALL');

    OnSelectData := ContractSelected;
    ShowModal();
  end;
end;

procedure TfrmStFrameNoData.ProductSelected(ITNPM1,TNMPM1: String;UC1PM1,UC2PM1,UP1PM1,FAMPM1: DOUBLE);
begin
  Fdm.CdsStStyGetITNSTY.AsString := ITNPM1;
  Fdm.CdsStStyGetTNMPM1.AsString := TNMPM1;

end;


procedure TfrmStFrameNoData.BtnSelectProductClick(Sender: TObject);
begin
  with TfrmPopupProduct.Create(UniApplication) do
  begin
    Init(Fdm, 'เลือกลูกค้า');

    OnSelectData := ProductSelected;
    ShowModal();
  end;

end;

procedure TfrmStFrameNoData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStStyGet;

   CmbCOL.ListSource := Fdm.GetDSC('IC');

  if (fdm.CdsStStyGet.State in [dsInsert]) then
  begin
     DbSERSTY.ReadOnly := False;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStStyGet.State in [dsEdit]) then
  begin
     DbSERSTY.ReadOnly := True;
     btnConfirm.Visible := True;
     ShowEdtAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectCno.Enabled := False;
     BtnSelectProduct.Enabled := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;


end.
