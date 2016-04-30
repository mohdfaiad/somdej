unit PopupStAm3Form;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  {$IFDEF OBSS} MainModuleEx {$ELSE} MainModuleEx {$ENDIF},
  uniGUIForm,  uniGUIVars,DSSetupIntfDM,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, uniPageControl, Vcl.Imaging.GIFImg,
  uniImage, uniSplitter, Vcl.Imaging.jpeg,Datasnap.DBClient, uniScreenMask;

type
  TfrmPopupStAm3 = class(TMainDataForm)
    LbCreditLineNo: TUniLabel;
    DbCMPAM3: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    dsgrid: TDataSource;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniLabel13: TUniLabel;
    UniLabel14: TUniLabel;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    UniLabel20: TUniLabel;
    UniLabel21: TUniLabel;
    DBCRT: TUniDBEdit;
    CRLAM3: TUniEdit;
    BFIAM3: TUniEdit;
    MINAM3: TUniEdit;
    MPYAM3: TUniEdit;
    MCMAM3: TUniEdit;
    MDNAM3: TUniEdit;
    MCNAM3: TUniEdit;
    MAJAM3: TUniEdit;
    MDSAM3: TUniEdit;
    MITAM3: TUniEdit;
    PDCAM3: TUniEdit;
    UNCAM3: TUniEdit;
    CQRAM3: TUniEdit;
    ADNAM3: TUniEdit;
    ACNAM3: TUniEdit;
    APYAM3: TUniEdit;
    YPYAM3: TUniEdit;
    YPCAM3: TUniEdit;
    CmbSTS: TUniDBLookupComboBox;
    UniLabel24: TUniLabel;
    CmbBRN: TUniDBLookupComboBox;
    UniLabel2: TUniLabel;
    EdCNOAM3: TUniEdit;
    EdTNMCM1: TUniEdit;
    imgLogo: TUniImage;
    UniImage1: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure CRLAM3Exit(Sender: TObject);
    procedure BFIAM3Exit(Sender: TObject);
    procedure MITAM3Exit(Sender: TObject);
    procedure MINAM3Exit(Sender: TObject);
    procedure PDCAM3Exit(Sender: TObject);
    procedure MPYAM3Exit(Sender: TObject);
    procedure UNCAM3Exit(Sender: TObject);
    procedure MCMAM3Exit(Sender: TObject);
    procedure CQRAM3Exit(Sender: TObject);
    procedure MDNAM3Exit(Sender: TObject);
    procedure ADNAM3Exit(Sender: TObject);
    procedure MCNAM3Exit(Sender: TObject);
    procedure ACNAM3Exit(Sender: TObject);
    procedure MAJAM3Exit(Sender: TObject);
    procedure APYAM3Exit(Sender: TObject);
    procedure MDSAM3Exit(Sender: TObject);
    procedure YPYAM3Exit(Sender: TObject);
    procedure YPCAM3Exit(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    _StrBrn : TStringList;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowAm3();
  public
    procedure Init(DM : TDSSetupDM;_CNOAM3,_TNMCM1 : String;StrBrn : TStringList);
  end;

var
  frmPopupStAm3: TfrmPopupStAm3;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupStAm3.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupStAm3.CQRAM3Exit(Sender: TObject);
begin
  checkCur(CQRAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.ShowAm3();
begin

    crlam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3crlam3.AsFloat);
    bfiam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3bfiam3.AsFloat);
    minam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3minam3.AsFloat);
    mpyam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3mpyam3.AsFloat);
    mcmam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3mcmam3.AsFloat);
    mdnam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3mdnam3.AsFloat);
    mcnam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3mcnam3.AsFloat);
    majam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3majam3.AsFloat);
    mdsam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3mdsam3.AsFloat);
    mitam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3mitam3.AsFloat);
    pdcam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3pdcam3.AsFloat);
    uncam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3uncam3.AsFloat);
    cqram3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3cqram3.AsFloat);
    adnam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3adnam3.AsFloat);
    acnam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3acnam3.AsFloat);
    apyam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3apyam3.AsFloat);
    ypyam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3ypyam3.AsFloat);
    ypcam3.Text := FormatFloat('#,##0.00',Fdm.CdsStCm1GetAm3ypcam3.AsFloat);

end;

procedure TfrmPopupStAm3.UNCAM3Exit(Sender: TObject);
begin
  checkCur(UNCAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.YPCAM3Exit(Sender: TObject);
begin
  checkCur(YPCAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.YPYAM3Exit(Sender: TObject);
begin
  checkCur(YPYAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.ACNAM3Exit(Sender: TObject);
begin
  checkCur(ACNAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.ADNAM3Exit(Sender: TObject);
begin
  checkCur(ADNAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.APYAM3Exit(Sender: TObject);
begin
  checkCur(APYAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.BFIAM3Exit(Sender: TObject);
begin
  checkCur(BFIAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStCm1GetAm3.State in [dsInsert,dsEdit] then
    Fdm.CdsStCm1GetAm3.Cancel();
  inherited;

end;

procedure TfrmPopupStAm3.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
var ch : Boolean;
   CNOCDE: String;
   brn : String;
begin
  ch := False;
  if fdm.CdsStCm1GetAm3CMPAM3.IsNull then
  begin
    ShowMessage('บริษัทเป็นค่าว่าง กรุณากรอกบริษัท');
    exit;
  end
  else  if fdm.CdsStCm1GetAm3BRNAM3.IsNull then
  begin
    ShowMessage('สาขาเป็นค่าว่าง กรุณากรอกสาขา');
    exit;
  end;

  if fdm.CdsStCm1GetAm3.State in [dsInsert] then
  begin
    cnt := _StrBrn.Count - 1;
    for I := 0 to cnt do
    begin
      if _StrBrn[i] = fdm.CdsStCm1GetAm3BRNAM3.AsString then
      begin
        ch := True;
        Break;
      end;
    end;
  end;

  if ch then
  begin
    ShowMessage('สาขามีในระบบแล้ว');

  end
  else
  begin
    fdm.CdsStCm1GetAm3.Post();
    Close;
  end;

//  if ch then
//  begin
//    CNOCDE :=  Fdm.CdsStCm1GetAm3CNOCDE.AsString;
//    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsStCm1GetAm3.Close;
//    FDM.CdsStCm1GetAm3.Open;
//    Fdm.CdsStCm1GetAm3.Locate('CNOCDE',CNOCDE,[]);

//  end
//  else
//    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupStAm3.CRLAM3Exit(Sender: TObject);
begin
  checkCur(CRLAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.Init(DM : TDSSetupDM;_CNOAM3,_TNMCM1 : String;StrBrn : TStringList);
var i : integer;
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStCm1GetAm3;
   CmbSTS.ListSource := Fdm.GetDSC('STS');
   CmbBRN.ListSource := Fdm.GetDSC('BRN');

   EdCNOAM3.Text := _CNOAM3;
   EdTNMCM1.Text := _TNMCM1;

  if (fdm.CdsStCm1GetAm3.State in [dsInsert]) then
  begin
     _StrBrn := TStringList.Create;

     for I := 0 to StrBrn.Count - 1 do
     begin
       _StrBrn.Add(StrBrn[i]);
     end;

     EdCNOAM3.ReadOnly := False;
     CmbBRN.ReadOnly := False;
     btnConfirm.Visible := True;
     Showam3();
  end
  else if (fdm.CdsStCm1GetAm3.State in [dsEdit]) then
  begin
     EdCNOAM3.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     btnConfirm.Visible := True;
     ShowAm3();
  end
  else
  begin
     EdCNOAM3.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     btnConfirm.Visible := False;

     ShowAm3();

     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;

procedure TfrmPopupStAm3.MAJAM3Exit(Sender: TObject);
begin
  checkCur(MAJAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.MCMAM3Exit(Sender: TObject);
begin
  checkCur(MCMAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.MCNAM3Exit(Sender: TObject);
begin
  checkCur(MCNAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.MDNAM3Exit(Sender: TObject);
begin
  checkCur(MDNAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.MDSAM3Exit(Sender: TObject);
begin
  checkCur(MDSAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.MINAM3Exit(Sender: TObject);
begin
  checkCur(MINAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.MITAM3Exit(Sender: TObject);
begin
  checkCur(MITAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.MPYAM3Exit(Sender: TObject);
begin
  checkCur(MPYAM3,Fdm.CdsStCm1GetAm3);

end;

procedure TfrmPopupStAm3.PDCAM3Exit(Sender: TObject);
begin
  checkCur(PDCAM3,Fdm.CdsStCm1GetAm3);

end;

end.
