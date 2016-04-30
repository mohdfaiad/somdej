unit PsRcvProductCarDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars, DSSetupIntfDM,DSPurchaseIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniPageControl, Vcl.Imaging.jpeg, Vcl.Imaging.GIFImg, uniImage,
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask, uniRadioButton;

type
  TfrmPsRcvProductCarData = class(TMainDataForm)
    dsDATA: TDataSource;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    lbSearch: TUniLabel;
    EdtYptRcv: TUniEdit;
    ddyyyy: TUniEdit;
    CMPPT1: TUniDBEdit;
    UniLabel2: TUniLabel;
    CmbBrn: TUniDBLookupComboBox;
    UniLabel14: TUniLabel;
    RNOPT1: TUniDBEdit;
    UniLabel7: TUniLabel;
    CmbDEP: TUniDBLookupComboBox;
    dsAddr01: TDataSource;
    csPopUpAp: TUniScreenMask;
    csPopUpProduct: TUniScreenMask;
    UniLabel26: TUniLabel;
    BtnSelectAssignNo: TUniButton;
    EdtEDTAD1: TUniDateTimePicker;
    UniLabel27: TUniLabel;
    PnInvoice: TUniPanel;
    GrpVno: TUniGroupBox;
    UniLabel5: TUniLabel;
    DbvNOPT1: TUniDBEdit;
    BtnSelectvno: TUniButton;
    DbTNMVM1: TUniDBEdit;
    UniLabel1: TUniLabel;
    DbTa1_01: TUniDBEdit;
    DbTa2_01: TUniDBEdit;
    UniLabel8: TUniLabel;
    CmbChg_01: TUniDBLookupComboBox;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    CdsCPS: TUniDBLookupComboBox;
    UniGroupBox1: TUniGroupBox;
    UniLabel4: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel23: TUniLabel;
    RDVPT1: TUniDateTimePicker;
    RATPT1: TUniEdit;
    VAMPT1: TUniEdit;
    VPCPT1: TUniEdit;
    UniLabel3: TUniLabel;
    ChkVAT: TUniCheckBox;
    VATPT1: TUniCheckBox;
    UniGroupBox3: TUniGroupBox;
    UniLabel24: TUniLabel;
    RdoTyp2: TUniRadioButton;
    RdoTyp1: TUniRadioButton;
    UniLabel11: TUniLabel;
    DDTPT1: TUniDateTimePicker;
    UniLabel13: TUniLabel;
    Cmb: TUniDBLookupComboBox;
    UniLabel25: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel10: TUniLabel;
    CmbBRNFROM: TUniDBLookupComboBox;
    PnAssign: TUniPanel;
    dbgDataList: TUniDBGrid;
    dsgrid: TDataSource;
    EdtDNOAD1: TUniEdit;
    IDTPT1: TUniDateTimePicker;
    dsItn: TDataSource;
    DbItn: TUniDBGrid;
    BtnOK: TUniButton;
    DNOPT1: TUniDBEdit;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure BtnSelectvnoClick(Sender: TObject);
    procedure IDTPT1Change(Sender: TObject);
    procedure CmbVATCloseUp(Sender: TObject);
    procedure RATPT1Exit(Sender: TObject);
    procedure RATPT1KeyPress(Sender: TObject; var Key: Char);
    procedure RDVPT1Change(Sender: TObject);
    procedure DDTPT1Change(Sender: TObject);
    procedure QR1PT1Exit(Sender: TObject);
    procedure BtnSelectAssignNoClick(Sender: TObject);
    procedure BtnOKClick(Sender: TObject);
    procedure dbgDataListDblClick(Sender: TObject);

  private
    FUserSession: TUniMainModule;
    Fdm : TDSPurchaseDM;
    FSetupdm : TDSSetupDM;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure CalVATAMT();
    procedure GetDnoAd1(DNOAD1:Integer;EDTAD1:DOUBLE);
    procedure GetAddr(vno : String);
    procedure venderSelected(vnovm1,tnmvm1,vtpvm1,psnvm1: String;crtym3:integer;cpsvm1:string);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSPurchaseDM);
  end;

var
  frmPsRcvProductCarData: TfrmPsRcvProductCarData;

const
  DCD = '611';  // รหัส รับ  CAR

implementation

{$R *.dfm}

uses PopupApForm, PopupProductForm, PopupAssignWeekOutForm,PopupFg1ListForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmPsRcvProductCarData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
var
  cur : Currency;
  F: TField;
  Str,Tmp : String;
  i : integer;
begin
  if CdsTmp.State in [dsInsert,dsEdit] then
  begin
    if ((Sender as TUniEdit).text = '')then
      (Sender as TUniEdit).text := '0.00';

    Str := Trim((Sender as TUniEdit).text);
    Tmp := '0';

    for i := 0 to Length(Str) do
    begin
      if (Str[i] in ['0','1','2','3','4','5','6','7','8','9','.'])  then
        Tmp := Tmp + Str[i];
    end;

    try
      (Sender as TUniEdit).text := Tmp;
    except
      (Sender as TUniEdit).text := '0.00';
    end;

    try
      F := CdsTmp.FieldByName((Sender as TUniEdit).HelpKeyword);
      cur := FloatToCurr(StrToFloat(StringReplace((Sender as TUniEdit).text, ',','', [rfReplaceAll])));

      F.AsCurrency := cur;
      if (cur >= 0) then
      begin
        (Sender as TUniEdit).text := Format('%.2n',[cur]);
      end else
      begin
        ShowMessage(
          TUniLabel(FindComponent('lb' + Copy((Sender as TUniEdit).Name, 3, 255))).Caption +
          ' มีค่าน้อยกว่า ศูนย์ไม่ได้');
        F.AsCurrency := 0.00;
        (Sender as TUniEdit).text := '0.00';
      end;
    except
      ShowMessage(
          TUniLabel(FindComponent('lb' + Copy((Sender as TUniEdit).Name, 3, 255))).Caption +
          ' ให้ระบุเป็นตัวเลข');
      F.AsCurrency := 0.00;
      (Sender as TUniDBEdit).text := '0.00';
    end;
  end;
end;

procedure TfrmPsRcvProductCarData.CalVATAMT();
begin
  if fdm.CdsTtPtXGetVATPT1.AsString = 'Y' then
  begin
    fdm.CdsTtPtXGetVAMPT1.AsFloat := fdm.CdsTtPtXGetRATPT1.AsFloat *
      FDM.CdsTtPtXGetVPCPT1.AsFloat/(100.00 + FDM.CdsTtPtXGetVPCPT1.AsFloat);
    fdm.CdsTtPtXGetNETPT1.AsFloat :=  fdm.CdsTtPtXGetRATPT1.AsFloat - fdm.CdsTtPtXGetVAMPT1.AsFloat;

    VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetVAMPT1.AsFloat);
//    NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetNETPT1.AsFloat);

  end
  else
  begin
    fdm.CdsTtPtXGetVAMPT1.AsFloat := 0;
    fdm.CdsTtPtXGetNETPT1.AsFloat :=  fdm.CdsTtPtXGetRATPT1.AsFloat - fdm.CdsTtPtXGetVAMPT1.AsFloat;

    VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetVAMPT1.AsFloat);
//    NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetNETPT1.AsFloat);

  end;

end;

procedure TfrmPsRcvProductCarData.btnCancelClick(Sender: TObject);
begin

  if Fdm.CdsAd2GetByDno.Active then
    Fdm.CdsAd2GetByDno.close();

  if Fdm.CdsAd2GetItn.Active then
    Fdm.CdsAd2GetItn.close();

  if FSetupdm.CdsSTVm1GetAddr01.Active then
    FSetupdm.CdsSTVm1GetAddr01.close;

  if Fdm.CdsTtPtXGet.State in [dsInsert,dsEdit] then
    Fdm.CdsTtPtXGet.Cancel();

  inherited;

end;

procedure TfrmPsRcvProductCarData.btnConfirmClick(Sender: TObject);
var ch ,ch_dtl1, ch_dtl2: Boolean;
  md ,OUT_DNOPT1: String;
begin
  if ((fdm.CdsTtPtXGetBRNPT1.AsString = '') or
      (fdm.CdsTtPtXGetVNOPT1.AsString = '')
     ) then
  begin
    ShowMessage('กรอกข้อมูลเบื่องต้นไม่ครบถ้วน');
    Exit;

  end;


  if Fdm.CdsTtPtXGet.State in [dsInsert] then
    md := 'I'

  else
    md := 'E';

  Fdm.CdsTtPtXGetyarPT1.Asinteger := StrToInt(FormatDateTime('yyyy',fdm.CdsTtPtXGetIDTPT1.AsDateTime));

  //  Header
  ch:= FDM.TtPtXInsUpd(
        Fdm.CdsTtPtXGetYARPT1.AsInteger,
        Fdm.CdsTtPtXGetCMPPT1.AsString,
        Fdm.CdsTtPtXGetBRNPT1.AsString,
        DCD,
        Fdm.CdsTtPtXGetRNOPT1.AsString,
        Fdm.CdsTtPtXGetSEQPT1.AsInteger,
        Fdm.CdsTtPtXGetIDTPT1.AsFloat,
        Fdm.CdsTtPtXGetDEPPT1.AsString,
        Fdm.CdsTtPtXGetVNOPT1.AsString,
        Fdm.CdsTtPtXGetCRTPT1.AsInteger,
        Fdm.CdsTtPtXGetDNOPT1.AsString,
        Fdm.CdsTtPtXGetRDVPT1.AsFloat,
        Fdm.CdsTtPtXGetRATPT1.AsFloat,
        Fdm.CdsTtPtXGetVTPPT1.AsString,
        Fdm.CdsTtPtXGetVATPT1.AsString,
        Fdm.CdsTtPtXGetVPCPT1.AsFloat,
        Fdm.CdsTtPtXGetVAMPT1.AsFloat,
        Fdm.CdsTtPtXGetVTEPT1.AsString,
        '',
        '',
        '',
        '',
        '',
        1,
        Fdm.CdsTtPtXGetFWHPT1.AsString,
        Fdm.CdsTtPtXGetDDTPT1.AsFloat,
        Fdm.UserID,
        MD,OUT_DNOPT1);

// Detail product car

   Fdm.CdsAd2GetByDno.First();
   while not Fdm.CdsAd2GetByDno.Eof do
   begin

     ch_dtl1:= FDM.TtPtx2InsUpd(
        Fdm.CdsTtPtXGetYARPT1.AsInteger,
        Fdm.CdsTtPtXGetCMPPT1.AsString,
        Fdm.CdsTtPtXGetBRNPT1.AsString,
        DCD,
        OUT_DNOPT1,
        Fdm.CdsTtPtXGetSEQPT1.AsInteger,
        Fdm.CdsTtPtXGetIDTPT1.AsFloat,
        Fdm.CdsTtPtXGetDEPPT1.AsString,
        Fdm.CdsTtPtXGetVNOPT1.AsString,
        Fdm.CdsTtPtXGetCRTPT1.AsInteger,
        Fdm.CdsTtPtXGetDNOPT1.AsString,
        Fdm.CdsTtPtXGetRDVPT1.AsFloat,
        Fdm.CdsAd2GetByDnoUC1PM1.AsFloat,
        Fdm.CdsTtPtXGetVTPPT1.AsString,
        Fdm.CdsTtPtXGetVATPT1.AsString,
        Fdm.CdsTtPtXGetVPCPT1.AsFloat,
        0 ,//Fdm.CdsTtPtXGetVAMPT1.AsFloat, cal in pl
        Fdm.CdsTtPtXGetVTEPT1.AsString,
        Fdm.CdsAd2GetByDnoSRSPM1.AsString,
        Fdm.CdsAd2GetByDnoITNAD1.AsString,
        Fdm.CdsAd2GetByDnoCOLAD1.AsString,
        Fdm.CdsAd2GetByDnoSERAD2.AsString,
        Fdm.CdsAd2GetByDnoENGAD2.AsString,
        Fdm.CdsTtPtXGetQR1PT1.AsInteger,
        Fdm.CdsTtPtXGetFWHPT1.AsString,
        Fdm.CdsTtPtXGetDDTPT1.AsFloat,
        Fdm.UserID,
         MD);

     ch_dtl2 := Fdm.TtAd2InsUpd(
       Fdm.CdsAd2GetByDnoCMPAD2.AsString,
       Fdm.CdsAd2GetByDnoBRNAD2.AsString,
       Fdm.CdsAd2GetByDnoYARAD2.AsInteger,
       Fdm.CdsAd2GetByDnoPRDAD2.AsInteger,
       Fdm.CdsAd2GetByDnoDCDAD2.AsString,
       Fdm.CdsAd2GetByDnoDNOAD2.AsInteger,
       Fdm.CdsAd2GetByDnoSEQAD2.AsInteger,
       Fdm.CdsAd2GetByDnoSSBAD2.AsInteger,
       Fdm.CdsAd2GetByDnoISDAD2.AsFloat,
       Fdm.CdsAd2GetByDnoITNAD1.AsString,
       Fdm.CdsAd2GetByDnoCOLAD1.AsString,
       Fdm.CdsAd2GetByDnoQT1AD1.AsInteger,
       0,
       Fdm.CdsAd2GetByDnoSERAD2.AsString,
       Fdm.CdsAd2GetByDnoENGAD2.AsString,
       OUT_DNOPT1,
       Fdm.UserID);

       Fdm.CdsAd2GetByDno.Next();
   end;



  if ch and ch_dtl1 and ch_dtl2  then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Fdm.CdsTtPtXGetRNOPT1.AsString := OUT_DNOPT1;
    btnConfirm.Enabled := False;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmPsRcvProductCarData.ShowEdtAmt();
begin

   IDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPtXGetIDTPT1.AsDateTime);
   DDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPtXGetDDTPT1.AsDateTime);
   RDVPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPtXGetRDVPT1.AsDateTime);
   ddyyyy.Text := copy(IDTPT1.Text,4,7);

   RATPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetRATPT1.AsFloat);
   VAMPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetVAMPT1.AsFloat);
//   NETPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetNETPT1.AsFloat);
   VPCPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetVPCPT1.AsFloat);
//   QR1PT1.Text := FormatFloat('#,##0',Fdm.CdsTtPtXGetQR1PT1.AsInteger);

   EdtEDTAD1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPtXGetEDTAD1.AsDateTime);
   EdtDNOAD1.Text := FDM.CdsTtPtXGetDNOAD1.AsString;

end;

procedure TfrmPsRcvProductCarData.CmbVATCloseUp(Sender: TObject);
begin
  CalVATAMT();

end;

procedure TfrmPsRcvProductCarData.dbgDataListDblClick(Sender: TObject);
begin
  FSetupdm.CdsStFg1GetUsed.Close();
  FSetupdm.StFg1GetUsed(Fdm.CdsAd2GetByDnoYARAD2.AsInteger,
    Fdm.CdsAd2GetByDnoCMPAD2.AsString,
    Fdm.CdsAd2GetByDnoBRNAD2.AsString,
    Fdm.CdsAd2GetByDnoITNAD1.AsString,
    Fdm.CdsTtPtXGetIDTPT1.AsFloat
    );
  FSetupdm.CdsStFg1GetUsed.Open();
  with TfrmPopupFg1List.Create(UniApplication) do
  begin
    Init(FSetupdm);
    ShowModal();
  end;

end;

procedure TfrmPsRcvProductCarData.GetAddr(vno : String);
begin
  FSetupdm.CdsSTVm1GetAddr01.Close();
  FSetupdm.StVm1GetAddr(vno,'1');
  FSetupdm.CdsSTVm1GetAddr01.Open();
end;

procedure TfrmPsRcvProductCarData.VenderSelected(vnovm1,tnmvm1,vtpvm1,psnvm1: String;crtym3:integer;cpsvm1:string);
begin
  Fdm.CdsTtPtXGetvNOPT1.AsString := vnovm1;
  Fdm.CdsTtPtXGetTNMvM1.AsString := tnmvm1;
  Fdm.CdsTtPtXGetCPSVM1.AsString := cpsvm1;

  fdm.CdsTtPtXGetDDTPT1.AsFloat := fdm.CdsTtPtXGetIDTPT1.AsFloat +  crtym3;
  DDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPtXGetDDTPT1.AsDateTime);

  GetAddr(fdm.CdsTtPtXGetVNOPT1.AsString);
end;


procedure TfrmPsRcvProductCarData.DDTPT1Change(Sender: TObject);
begin
  if Trim(DDTPT1.Text) = '' then
    Fdm.CdsTtPtXGetDDTPT1.AsDateTime := 0
  else
   Fdm.CdsTtPtXGetDDTPT1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(DDTPT1.DateTime);

end;


procedure TfrmPsRcvProductCarData.GetDnoAd1(DNOAD1:Integer;EDTAD1:DOUBLE);
begin
  EdtDNOAD1.Text := IntToStr(DNOAD1);
  EdtEDTAD1.TEXT := Fdm.FSBuddhistDateToStr(EDTAD1);

  Fdm.CdsAd2GetByDno.Close();
  Fdm.TT_AD2_GET_BY_DNO(Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
         Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
         '604',DNOAD1,Fdm.CdsTtPtXGetRNOPT1.AsString);
  Fdm.CdsAd2GetByDno.Open();

 { Fdm.CdsAd2GetSrs.Close();
  Fdm.TT_AD2_GET_SRS(Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
         Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
         '604',DNOAD1);
  Fdm.CdsAd2GetSrs.Open();
  }
  Fdm.CdsAd2GetItn.Close();
  Fdm.TT_AD2_GET_ITN(Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
         Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
         '604',DNOAD1);
  Fdm.CdsAd2GetItn.Open();
 { Fdm.CdsAd2GetItn.Filter := 'SRSPM1 = ' +  QuotedStr(Fdm.CdsAd2GetSrsSRSPM1.AsString);

  Fdm.CdsAd2GetCol.Close();
  Fdm.TT_AD2_GET_COL(Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
         Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
         '604',DNOAD1);
  Fdm.CdsAd2GetCol.Open();
  Fdm.CdsAd2GetCol.Filter := 'ITNAD1 = ' +  QuotedStr(Fdm.CdsAd2GetItnITNAD1.AsString);
  }
end;

procedure TfrmPsRcvProductCarData.BtnOKClick(Sender: TObject);
var RecNo : integer;
begin
  if Fdm.CdsAd2GetItnOUTAD1.AsInteger < 1 then
  begin
    ShowMessage('ยอดคงค้างเป็น 0  แล้ว');
    Exit;
  end;

  if Fdm.CdsAd2GetItnSERAD2.AsString = '' then
  begin
    ShowMessage('เลขตัวถังเป็นค่าว่าง');
    Exit;
  end;

  if Fdm.CdsAd2GetItnENGAD2.AsString = '' then
  begin
    ShowMessage('เลขเครื่องเป็นค่าว่าง');
    Exit;
  end;

  RecNo := Fdm.CdsAd2GetByDno.RecNo + 1;

  Fdm.CdsAd2GetByDno.Append();
  Fdm.CdsAd2GetByDnoCmpad2.AsString := Fdm.CdsTtPtXGetCMPPT1.AsString;
  Fdm.CdsAd2GetByDnoBrnad2.AsString := Fdm.CdsTtPtXGetBRNPT1.AsString;
  Fdm.CdsAd2GetByDnoYarad2.AsInteger := Fdm.CdsTtPtXGetYARPT1.AsInteger;
  Fdm.CdsAd2GetByDnoPrdad2.AsInteger := StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime));
  Fdm.CdsAd2GetByDnoDcdad2.AsString := '604';
  Fdm.CdsAd2GetByDnoDnoad2.AsString := EdtDNOAD1.Text;
  Fdm.CdsAd2GetByDnoSeqad2.AsInteger := Fdm.CdsAd2GetItnSEQAD1.AsInteger;
  Fdm.CdsAd2GetByDnoSsbad2.AsInteger := RecNo;
  Fdm.CdsAd2GetByDnoIsdad2.AsFloat := fdm.CdsTtPtXGetIDTPT1.AsFloat;
  Fdm.CdsAd2GetByDnoEdtad1.AsFloat := EdtEDTAD1.DateTime;
  Fdm.CdsAd2GetByDnoWisad1.AsInteger := fDM.CdsAd2GetItnWISAD1.AsInteger;
  Fdm.CdsAd2GetByDnoTnmcty.AsString := '';
  Fdm.CdsAd2GetByDnoTnmsrs.AsString := fDM.CdsAd2GetItnTnmSrs.AsString;
  Fdm.CdsAd2GetByDnoItnad1.AsString := fDM.CdsAd2GetItnITNAD1.AsString;
  Fdm.CdsAd2GetByDnoTnmpm1.AsString := fDM.CdsAd2GetItnTNMPM1.AsString;
  Fdm.CdsAd2GetByDnoColad1.AsString := fDM.CdsAd2GetItnCOLAD1.AsString;
  Fdm.CdsAd2GetByDnoTnmcol.AsString :=  fDM.CdsAd2GetItnCOLAD1.AsString + '-' + fDM.CdsAd2GetItnTNMCOL.AsString;
  Fdm.CdsAd2GetByDnoQt1ad1.AsInteger := 1;
  Fdm.CdsAd2GetByDnoOutad1.AsInteger := FDM.CdsAd2GetColOutAD1.AsInteger;
  Fdm.CdsAd2GetByDnoSerad2.AsString := fDM.CdsAd2GetItnSERAD2.AsString;
  Fdm.CdsAd2GetByDnoEngad2.AsString := Fdm.CdsAd2GetItnENGAD2.AsString;
  Fdm.CdsAd2GetByDnoUc1pm1.AsFloat := Fdm.CdsAd2GetItnUC1PM1.AsFloat;
  Fdm.CdsAd2GetByDnoEpdom5.AsFloat := Now; // Edit
  Fdm.CdsAd2GetByDnoRsdom5.AsFloat := Now; //Edit
  Fdm.CdsAd2GetByDnoDnoom5.AsInteger :=  0;
  Fdm.CdsAd2GetByDnoFull_name.AsString := '';
  Fdm.CdsAd2GetByDnoTnmsmn.AsString := '';

  Fdm.CdsAd2GetByDno.Post();


  Fdm.CdsAd2GetItn.Edit();
  Fdm.CdsAd2GetITNOUTAD1.AsInteger := Fdm.CdsAd2GetItnOUTAD1.AsInteger - 1;
  Fdm.CdsAd2GetItnSERAD2.AsString := '';
  Fdm.CdsAd2GetItnEngAD2.AsString := '';
  Fdm.CdsAd2GetItn.Post();


  end;

procedure TfrmPsRcvProductCarData.BtnSelectAssignNoClick(Sender: TObject);
begin
  with TfrmPopupAssignWeekOut.Create(UniApplication) do
  begin
    Init(Fdm,Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
         Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',Fdm.CdsTtPtXGetIDTPT1.AsDateTime)),
         '604',Fdm.CdsTtPtXGetIDTPT1.AsDateTime);

    OnSelectData := GetDnoAd1;
    ShowModal();
  end;

end;

procedure TfrmPsRcvProductCarData.BtnSelectvnoClick(Sender: TObject);
begin
  if fdm.CdsTtPtXGetBRNPT1.IsNull then
  begin
    ShowMessage('ต้องเลือกสาขาก่อนเลือกลูกค้า');
    exit;
  end;

  with TfrmPopupAp.Create(UniApplication) do
  begin
    Init(FSetupdm, 'เลือกผู้จำหน่าย',  'A','ALL');

    OnSelectData := VenderSelected;
    ShowModal();
  end;
end;

procedure TfrmPsRcvProductCarData.IDTPT1Change(Sender: TObject);
begin
  if Trim(IDTPT1.Text) = '' then
    Fdm.CdsTtPtXGetIDTPT1.AsDateTime := 0
  else
  begin
   Fdm.CdsTtPtXGetIDTPT1.AsDateTime :=
     Fdm.FSBuddhistDateToDate(IDTPT1.DateTime);
     ddyyyy.Text := copy(IDTPT1.Text,4,7);

  end;
  Fdm.CdsTtPtXGetyarPT1.Asinteger := StrToInt(FormatDateTime('yyyy',fdm.CdsTtPtXGetIDTPT1.AsDateTime));
end;

procedure TfrmPsRcvProductCarData.Init(DM : TDSPurchaseDM);
VAR STR : STRING;
begin

    Fdm := dm;

    FUserSession :=  UniMainModule();
    FSetupdm:= FUsersession.DSSetupDM;

   dsDATA.DataSet := Fdm.CdsTtPtXGet;
   dsgrid.DataSet := Fdm.CdsAd2GetByDno;
   dsAddr01.DataSet := FSetupdm.CdsSTVm1GetAddr01;
//   dsSrs.DataSet := Fdm.CdsAd2GetSrs;
   dsItn.DataSet := Fdm.CdsAd2GetItn;
//   dsCol.DataSet := Fdm.CdsAd2GetCol;

   CmbBrn.ListSource := Fdm.GetDSC('BRN');
   CmbDEP.ListSource := Fdm.GetDSC('DP');
   CdsCPS.ListSource := Fdm.GetDSC('CP');
   CmbChg_01.ListSource := Fdm.GetDSC('AC');
   CmbBRNFROM.ListSource := Fdm.GetDSC('WH');

   CdsCPS.ReadOnly := True;
   CmbChg_01.ReadOnly := True;
   VPCPT1.ReadOnly := True;

  if (fdm.CdsTtPtXGet.State in [dsInsert]) then
  begin
    btnConfirm.Visible := True;

   IDTPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPtXGetIDTPT1.AsDateTime);
   DDTPT1.Text := '';
   RDVPT1.Text := FDM.FSBuddhistDateToStr(fDM.CdsTtPtXGetRDVPT1.AsDateTime);

    RATPT1.Text := '0.00';
    VAMPT1.Text := '0.00';
//    NETPT1.Text := '0.00';
//    QR1PT1.Text := '1';
    VPCPT1.Text := FormatFloat('#,##0.00',Fdm.CdsTtPtXGetVPCPT1.AsFloat);
    ddyyyy.Text := copy(IDTPT1.Text,4,7);
    if Fdm.CdsAd2GetByDno.Active then
      Fdm.CdsAd2GetByDno.close();

    if Fdm.CdsAd2GetItn.Active then
      Fdm.CdsAd2GetItn.close();

    if FSetupdm.CdsSTVm1GetAddr01.Active then
      FSetupdm.CdsSTVm1GetAddr01.close;

  end
  else if (fdm.CdsTtPtXGet.State in [dsEdit]) then
  begin
     CMPPT1.ReadOnly := True;
     CmbBrn.ReadOnly := True;
     DNOPT1.ReadOnly := True;

     ShowEdtAmt();

      Fdm.CdsAd2GetByDno.Close();
      Fdm.TT_AD2_GET_BY_DNO(Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
             Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
             '604',Fdm.CdsTtPtXGetDNOAD1.AsInteger,Fdm.CdsTtPtXGetRNOPT1.AsString);
      Fdm.CdsAd2GetByDno.Open();


      Fdm.CdsAd2GetItn.Close();
      Fdm.TT_AD2_GET_ITN(Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
             Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
             '604',Fdm.CdsTtPtXGetDNOAD1.AsInteger);
      Fdm.CdsAd2GetItn.Open();
      GetAddr(fdm.CdsTtPtXGetVNOPT1.AsString);
  end
  else
  begin
     btnConfirm.Visible := False;
     BtnSelectvno.Enabled := False;
//     BtnSelectProduct.Enabled := False;

     ShowEdtAmt();

      Fdm.CdsAd2GetByDno.Close();
      Fdm.TT_AD2_GET_BY_DNO(Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
             Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
             '604',Fdm.CdsTtPtXGetDNOAD1.AsInteger,Fdm.CdsTtPtXGetRNOPT1.AsString);
      Fdm.CdsAd2GetByDno.Open();


      Fdm.CdsAd2GetItn.Close();
      Fdm.TT_AD2_GET_ITN(Fdm.CdsTtPtXGetCMPPT1.AsString,Fdm.CdsTtPtXGetBRNPT1.AsString,
             Fdm.CdsTtPtXGetYARPT1.AsInteger,StrToInt(FormatDateTime('mm',EdtEDTAD1.DateTime)),
             '604',Fdm.CdsTtPtXGetDNOAD1.AsInteger);
      Fdm.CdsAd2GetItn.Open();
     GetAddr(fdm.CdsTtPtXGetVNOPT1.AsString);

     RSetReadOnly();
  end;

  RSetColorReadOnly();

end;


procedure TfrmPsRcvProductCarData.QR1PT1Exit(Sender: TObject);
begin
//  checkCur(QR1PT1,FDM.CdsTtPtXGet);
//  QR1PT1.Text := FormatFloat('#,##0',Fdm.CdsTtPtXGetQR1PT1.AsInteger);
end;

procedure TfrmPsRcvProductCarData.RATPT1Exit(Sender: TObject);
begin
  checkCur(RATPT1,FDM.CdsTtPtXGet);
  CalVATAMT();

end;

procedure TfrmPsRcvProductCarData.RATPT1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if KEY = #13 then
  begin
    key := #0;
    RATPT1Exit(RATPT1);
  end;

end;

procedure TfrmPsRcvProductCarData.RDVPT1Change(Sender: TObject);
begin
  if Trim(RDVPT1.Text) = '' then
    Fdm.CdsTtPtXGetRDVPT1.AsDateTime := 0
  else
   Fdm.CdsTtPtXGetRDVPT1.AsDateTime :=
   Fdm.FSBuddhistDateToDate(RDVPT1.DateTime);

end;

end.
