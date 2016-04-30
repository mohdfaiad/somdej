unit PopupRcvAm4Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx ,
  uniGUIForm,  uniGUIVars,DSReceiveMoneyIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg,Datasnap.DBClient, uniScreenMask,
  uniStringGrid;

type
  TProcOfObject = procedure(SumAmtRt4: DOUBLE) of object;

  TfrmPopupRcvAm4 = class(TMainDataForm)
    dsRcvGetAm4: TDataSource;
    pnAm4Button: TUniPanel;
    DbAm4: TUniDBGrid;
    LbAmtTotal: TUniLabel;
    TOTALAMTRT4: TUniEdit;
    imgLogo: TUniImage;
    UniImage1: TUniImage;
    UniHiddenPanel1: TUniHiddenPanel;
    CkFlag: TUniCheckBox;
    TYPRT4: TUniDBLookupComboBox;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure ETAMTRT4Exit(Sender: TObject);
    procedure DbAm4DblClick(Sender: TObject);
    procedure CkFlagClick(Sender: TObject);

  private
    Fdm : TDSReceiveMoneyDM;
    _PTPRT4,_TNMBAK  : String;
    Total_Amt : Double;

    FOnSumAmtRt4: TProcOfObject;
    FG : STRING;
    procedure checkCur(Sender: TObject; CdsTmp : TClientDataSet);
    procedure CalculatAmt();
    procedure _SumAmtAm4(SumAmtAm4 : Double);
  public
    procedure Init(DM : TDSReceiveMoneyDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);
    property OnSumAmtRt4: TProcOfObject read FOnSumAmtRt4 write FOnSumAmtRt4;
  end;

var
  frmPopupRcvAm4: TfrmPopupRcvAm4;

implementation

{$R *.dfm}

uses PopupRcvMoneyForm;


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupRcvAm4.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupRcvAm4._SumAmtAm4(SumAmtAm4 : Double);
begin
  TOTALAMTRT4.Text := FormatFloat('#,##0.00',SumAmtAm4);

end;

procedure TfrmPopupRcvAm4.DbAm4DblClick(Sender: TObject);
begin
{
  with TfrmPopupRcvMoney.Create(UniApplication) do
  begin
    Init(FDM,Fdm.CdsTtRcvGetAm4TNMTYP.AsString,FG);

    OnSumAmtAm4 := _SumAmtAm4;
    ShowModal();
  end;
}
end;

procedure TfrmPopupRcvAm4.CalculatAmt();
begin
  fdm.CdsTtRcvGetAm4BALAM4.AsFloat :=
     Fdm.CdsTtRcvGetAm4AMTAM4.AsFloat - Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat;

end;

procedure TfrmPopupRcvAm4.ETAMTRT4Exit(Sender: TObject);
var Old_Amt : Double;
begin
  Fdm.CdsTtRcvGetAm4.Edit;
  Old_Amt := Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat;

//  checkCur(ETAMTRT4,fdm.CdsTtRcvGetAm4);
  CalculatAmt();
  Fdm.CdsTtRcvGetAm4.Post;

  Total_Amt := Total_Amt - Old_Amt + Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat;
  TOTALAMTRT4.Text := FormatFloat('#,##0.00',Total_Amt);

end;

procedure TfrmPopupRcvAm4.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsTtRcvGetAm4.State in [dsInsert,dsEdit] then
    Fdm.CdsTtRcvGetAm4.Cancel();
  inherited;

end;

procedure TfrmPopupRcvAm4.btnConfirmClick(Sender: TObject);
var i ,cnt, p: integer;
   ch : Boolean;
   CNOCDE: String;
   brn : String;
   SeqNo : integer;
   SumAmt : Double;

begin
{  if TOTALAMTRT4.Text = '0.00' then
  begin
    ShowMessage('ไม่มีรายการรับเงิน กรุณาเลือกรายการ');
    exit;
  end;
  }
  Fdm.CdsTtRcvGetAm4.First;
  while not ( Fdm.CdsTtRcvGetam4.Eof ) do
  begin
      if  (Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat > 0)   then
      begin
        if (Fdm.CdsTtRcvGetAm4FLAG.AsInteger = 1) then
        begin
          SeqNo := Fdm.CdsTtRcvGetRt4.RecordCount + 1;
          fdm.CdsTtRcvGetRt4.Append();
          fdm.CdsTtRcvGetRt4STSRT4.AsString := 'A';
          Fdm.CdsTtRcvGetRt4YARRT4.AsInteger := Fdm.CdsTtRcvGetYARRT4.AsInteger;
          Fdm.CdsTtRcvGetRt4PRDRT4.AsInteger := Fdm.CdsTtRcvGetPRDRT4.AsInteger;
          Fdm.CdsTtRcvGetRt4CMPRT4.Asstring  :=  Fdm.CdsTtRcvGetCMPRT4.Asstring;
          Fdm.CdsTtRcvGetRt4BRNRT4.Asstring  := Fdm.CdsTtRcvGetBRNRT4.Asstring;
          Fdm.CdsTtRcvGetRt4DCDRT4.Asstring  := Fdm.CdsTtRcvGetDCDRT4.Asstring;
          Fdm.CdsTtRcvGetRt4DNORT4.AsInteger := Fdm.CdsTtRcvGetDNORT4.AsInteger;
          fdm.CdsTtRcvGetRt4SEQRT4.AsInteger := SeqNo;


          Fdm.CdsTtRcvGetRt4IDTRT4.AsDateTime := Fdm.CdsTtRcvGetIDTRT4.AsDateTime;
          Fdm.CdsTtRcvGetRt4RDCRT4.AsString   := Fdm.CdsTtRcvGetAm4DCDAM4.AsString;
          Fdm.CdsTtRcvGetRt4RDNRT4.AsInteger  := Fdm.CdsTtRcvGetAm4DNOAM4.AsInteger;
          Fdm.CdsTtRcvGetRt4RSQRT4.AsInteger  := Fdm.CdsTtRcvGetAm4SEQAM4.AsInteger;
          Fdm.CdsTtRcvGetRt4RDTRT4.AsDateTime  := Fdm.CdsTtRcvGetAm4IDTAM4.AsDateTime;
          Fdm.CdsTtRcvGetRt4RTPRT4.AsString  := Fdm.CdsTtRcvGetAm4TYPRT4.AsString;   // กำหนดค่า Popup    'ET'
          Fdm.CdsTtRcvGetRt4DEPRT4.AsString := Fdm.CdsTtRcvGetDEPRT4.AsString;
          Fdm.CdsTtRcvGetRt4CTYRT4.AsString  := Fdm.CdsTtRcvGetCTYRT4.AsString;
          Fdm.CdsTtRcvGetRt4CNORT4.AsLargeInt  := Fdm.CdsTtRcvGetCNORT4.AsLargeInt;
          Fdm.CdsTtRcvGetRt4PTPRT4.AsString  := Fdm.CdsTtRcvGetPTPRT4.AsString;
        //  Fdm.CdsTtRcvGetRt4TNMPTP.AsString  := _PTPRT4;


          p := POS('-',Fdm.CdsTtRcvGetAm4TNMRT4.AsString);
          Fdm.CdsTtRcvGetRt4TYPRT4.AsString := trim(Copy(Fdm.CdsTtRcvGetAm4TNMRT4.AsString,1,p-1));
          Fdm.CdsTtRcvGetRt4TNMTYP.AsString  := trim(Copy(Fdm.CdsTtRcvGetAm4TNMRT4.AsString,p+1,Length(Fdm.CdsTtRcvGetAm4TNMRT4.AsString)-p));
          Fdm.CdsTtRcvGetRt4ATPRT4.AsString  := 'C';
          Fdm.CdsTtRcvGetRt4AMTRT4.AsFloat  := Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat;
          Fdm.CdsTtRcvGetRt4PINRT4.AsString  := Fdm.CdsTtRcvGetPINRT4.AsString;
          Fdm.CdsTtRcvGetRt4BAKRT4.AsString  := Fdm.CdsTtRcvGetBAKRT4.AsString;
          Fdm.CdsTtRcvGetRt4TNMBAK.AsString  := _TNMBAK;
          Fdm.CdsTtRcvGetRt4BBRRT4.AsString  := Fdm.CdsTtRcvGetBBRRT4.AsString;
          Fdm.CdsTtRcvGetRt4NOTRT4.AsString  := Fdm.CdsTtRcvGetNOTRT4.AsString;
          Fdm.CdsTtRcvGetRt4DDTRT4.AsDateTime  := Fdm.CdsTtRcvGetDDTRT4.AsDateTime;
          Fdm.CdsTtRcvGetRt4BCMRT4.AsString  := Fdm.CdsTtRcvGetBCMRT4.AsString;

          Fdm.CdsTtRcvGetRt4PRVRT7.AsString  := Fdm.CdsTtRcvGetAm4PRVRT7.AsString;
          Fdm.CdsTtRcvGetRt4TNMPRV.AsString  := Fdm.CdsTtRcvGetAm4TNMPRV.AsString;
          Fdm.CdsTtRcvGetRt4REGRT7.AsString  := Fdm.CdsTtRcvGetAm4REGRT7.AsString;
          Fdm.CdsTtRcvGetRt4RENRT7.AsInteger  := Fdm.CdsTtRcvGetAm4RENRT7.AsInteger;
          Fdm.CdsTtRcvGetRt4REGFULL.AsString := Fdm.CdsTtRcvGetRt4REGRT7.AsString + '-' + IntToStr(Fdm.CdsTtRcvGetRt4RENRT7.AsInteger);

          fdm.CdsTtRcvGetRt4.Post();
       end;

       Fdm.CdsTtRcvGetAm4.Edit();
       if (Fdm.CdsTtRcvGetAm4FLAG.AsInteger = 1) then
       begin

         Fdm.CdsTtRcvGetAm4TMPAM4.AsFloat := Fdm.CdsTtRcvGetAm4BALAM4.AsFloat - Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat ;
       end
       else
       begin
         Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat := 0;
         Fdm.CdsTtRcvGetAm4TMPAM4.AsFloat := Fdm.CdsTtRcvGetAm4BALAM4.AsFloat - Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat ;
       end;

        Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat := 0;
        fDM.CdsTtRcvGetAm4BALAM4.AsFloat := FDM.CdsTtRcvGetAm4TMPAM4.AsFloat;
        Fdm.CdsTtRcvGetAm4FLAG.AsInteger := 0;
        Fdm.CdsTtRcvGetAm4.Post();
      end
      else
         Fdm.CdsTtRcvGetAm4.Next;
  end;

  SumAmt := 0;

  Fdm.CdsTtRcvGetRt4.First;
  while not Fdm.CdsTtRcvGetRt4.eof do
  begin
    SumAmt := SumAmt + Fdm.CdsTtRcvGetRt4AMTRT4.AsFloat;
    Fdm.CdsTtRcvGetRt4.Next;
  end;

   if (Assigned(FOnSumAmtRt4)) then
     FOnSumAmtRt4(SumAmt);

  Close;

end;

procedure TfrmPopupRcvAm4.Init(DM : TDSReceiveMoneyDM; PTPRT4_TEXT ,TNMBAK : String;_FG : STRING);

begin
    Fdm := dm;
    FG := _FG;

   _PTPRT4 := PTPRT4_TEXT;
   _TNMBAK  := TNMBAK ;

   Total_Amt := 0;
   TOTALAMTRT4.Text := '0.00';

   dsRcvGetAm4.DataSet := Fdm.CdsTtRcvGetAm4;
   //TYPRT4.ListSource := Fdm.GetDSC('TR');

   TYPRT4.ListSource := Fdm.GetDSC('TR');

   DbAm4.Columns[10].Visible := (FG = 'R');
   DbAm4.Columns[11].Visible := (FG = 'R');

   if FG = 'N' then
      DbAm4.Columns[1].Title.Caption := 'เลขที่อินวอยส์'
   else
      DbAm4.Columns[1].Title.Caption := 'เลขที่คำขอซื้อ';

   if not Fdm.CdsTtRcvGetAm4.IsEmpty then
   begin
     Fdm.CdsTtRcvGetAm4.First;
  //  Fdm.CdsTtRcvGetam4.Edit;
   end
   else
   begin

     btnConfirm.Enabled := False;
   end;


   RSetColorReadOnly();
end;

procedure TfrmPopupRcvAm4.CkFlagClick(Sender: TObject);
begin
   Fdm.CdsTtRcvGetAm4.Edit();
   if CkFlag.Checked then
   begin

     Fdm.CdsTtRcvGetAm4FLAG.AsInteger := 1;
     if Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat = 0 then
       Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat := Fdm.CdsTtRcvGetAm4BALAM4.AsFloat;
     Fdm.CdsTtRcvGetAm4TMPAM4.AsFloat := Fdm.CdsTtRcvGetAm4BALAM4.AsFloat - Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat ;
   end
   else
   begin
     Fdm.CdsTtRcvGetAm4FLAG.AsInteger := 0;
     Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat := 0;
     Fdm.CdsTtRcvGetAm4TMPAM4.AsFloat := Fdm.CdsTtRcvGetAm4BALAM4.AsFloat - Fdm.CdsTtRcvGetAm4AMTRT4.AsFloat ;
   end;
   Fdm.CdsTtRcvGetAm4.Post();
end;

end.
