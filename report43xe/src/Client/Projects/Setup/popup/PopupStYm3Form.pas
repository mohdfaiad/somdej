unit PopupStYm3Form;

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
  TfrmPopupStYm3 = class(TMainDataForm)
    LbCreditLineNo: TUniLabel;
    UniLabel1: TUniLabel;
    dsgrid: TDataSource;
    CmbSTS: TUniDBLookupComboBox;
    UniLabel24: TUniLabel;
    CmbBRN: TUniDBLookupComboBox;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    DBCRT: TUniDBEdit;
    CRLYM3: TUniEdit;
    BFIYM3: TUniEdit;
    MINYM3: TUniEdit;
    MPYYM3: TUniEdit;
    MCMYM3: TUniEdit;
    MDNYM3: TUniEdit;
    MCNYM3: TUniEdit;
    MAJYM3: TUniEdit;
    MDSYM3: TUniEdit;
    MITYM3: TUniEdit;
    PDCYM3: TUniEdit;
    UNCYM3: TUniEdit;
    CQRYM3: TUniEdit;
    ADNYM3: TUniEdit;
    ACNYM3: TUniEdit;
    APYYM3: TUniEdit;
    YPYYM3: TUniEdit;
    YPCYM3: TUniEdit;
    UniLabel27: TUniLabel;
    UniLabel26: TUniLabel;
    DSDYM3: TUniDBEdit;
    DSAYM3: TUniEdit;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
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
    EdTNMVM1: TUniEdit;
    EdVNOYM3: TUniEdit;
    UniLabel2: TUniLabel;
    imgLogo: TUniImage;
    UniImage1: TUniImage;
    procedure btnConfirmClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure CRLYM3Exit(Sender: TObject);
    procedure BFIYM3Exit(Sender: TObject);
    procedure MITYM3Exit(Sender: TObject);
    procedure MINYM3Exit(Sender: TObject);
    procedure PDCYM3Exit(Sender: TObject);
    procedure MPYYM3Exit(Sender: TObject);
    procedure UNCYM3Exit(Sender: TObject);
    procedure MCMYM3Exit(Sender: TObject);
    procedure CQRYM3Exit(Sender: TObject);
    procedure MDNYM3Exit(Sender: TObject);
    procedure ADNYM3Exit(Sender: TObject);
    procedure MCNYM3Exit(Sender: TObject);
    procedure ACNYM3Exit(Sender: TObject);
    procedure MAJYM3Exit(Sender: TObject);
    procedure APYYM3Exit(Sender: TObject);
    procedure MDSYM3Exit(Sender: TObject);
    procedure YPYYM3Exit(Sender: TObject);
    procedure YPCYM3Exit(Sender: TObject);
    procedure DSAYM3Exit(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    _StrBrn : TStringList;

    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowYM3();
  public
    procedure Init(DM : TDSSetupDM;_VNOYM3,_TNMVM1 : String;StrBrn : TStringList);
  end;

var
  frmPopupStYm3: TfrmPopupStYm3;

implementation

{$R *.dfm}


//initialization
//  RegisterMainFormClass(TfrmApInqData);

procedure TfrmPopupStYm3.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmPopupStYm3.CQRYM3Exit(Sender: TObject);
begin
  checkCur(CQRYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.ShowYM3();
begin

    crlYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3crlYM3.AsFloat);
    dsaYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3dsaYM3.AsFloat);
    bfiYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3bfiYM3.AsFloat);
    minYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3minYM3.AsFloat);
    mpyYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3mpyYM3.AsFloat);
    mcmYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3mcmYM3.AsFloat);
    mdnYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3mdnYM3.AsFloat);
    mcnYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3mcnYM3.AsFloat);
    majYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3majYM3.AsFloat);
    mdsYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3mdsYM3.AsFloat);
    mitYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3mitYM3.AsFloat);
    pdcYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3pdcYM3.AsFloat);
    uncYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3uncYM3.AsFloat);
    cqrYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3cqrYM3.AsFloat);
    adnYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3adnYM3.AsFloat);
    acnYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3acnYM3.AsFloat);
    apyYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3apyYM3.AsFloat);
    ypyYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3ypyYM3.AsFloat);
    ypcYM3.Text := FormatFloat('#,##0.00',Fdm.CdsStVm1GetYM3ypcYM3.AsFloat);

end;

procedure TfrmPopupStYm3.UNCYM3Exit(Sender: TObject);
begin
  checkCur(UNCYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.YPCYM3Exit(Sender: TObject);
begin
  checkCur(YPCYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.YPYYM3Exit(Sender: TObject);
begin
  checkCur(YPYYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.ACNYM3Exit(Sender: TObject);
begin
  checkCur(ACNYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.ADNYM3Exit(Sender: TObject);
begin
  checkCur(ADNYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.APYYM3Exit(Sender: TObject);
begin
  checkCur(APYYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.BFIYM3Exit(Sender: TObject);
begin
  checkCur(BFIYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStVm1GetYM3.State in [dsInsert,dsEdit] then
    Fdm.CdsStVm1GetYM3.Cancel();
  inherited;

end;

procedure TfrmPopupStYm3.btnConfirmClick(Sender: TObject);
var i ,cnt: integer;
var ch : Boolean;
   CNOCDE: String;
   brn : String;
begin
  ch := False;
  if fdm.CdsStVm1GetYM3CMPYM3.IsNull then
  begin
    ShowMessage('บริษัทเป็นค่าว่าง กรุณากรอกบริษัท');
    exit;
  end
  else  if fdm.CdsStVm1GetYM3BRNYM3.IsNull then
  begin
    ShowMessage('สาขาเป็นค่าว่าง กรุณากรอกสาขา');
    exit;
  end;

  if fdm.CdsStVm1GetYM3.State in [dsInsert] then
  begin
    cnt := _StrBrn.Count - 1;
    for I := 0 to cnt do
    begin
      if _StrBrn[i] = fdm.CdsStVm1GetYM3BRNYM3.AsString then
      begin
        ch := True;
        Break;
      end;
    end;
  end;

  if ch then
  begin
    ShowMessage('สาขา ' + CmbBRN.Text + ' มีในระบบแล้ว');

  end
  else
  begin
    fdm.CdsStVm1GetYM3.Post();
    Close;
  end;

//  if ch then
//  begin
//    CNOCDE :=  Fdm.CdsStVm1GetYM3CNOCDE.AsString;
//    ShowMessage('บันทึกเรียบร้อยแล้ว');
//    FDM.CdsStVm1GetYM3.Close;
//    FDM.CdsStVm1GetYM3.Open;
//    Fdm.CdsStVm1GetYM3.Locate('CNOCDE',CNOCDE,[]);

//  end
//  else
//    ShowMessage('เกิดข้อผิดพลาด??');


end;

procedure TfrmPopupStYm3.CRLYM3Exit(Sender: TObject);
begin
  checkCur(CRLYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.DSAYM3Exit(Sender: TObject);
begin
  checkCur(DSAYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.Init(DM : TDSSetupDM;_VNOYM3,_TNMVM1 : String;StrBrn : TStringList);
var i : integer;
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStVm1GetYM3;
   CmbSTS.ListSource := Fdm.GetDSC('STS');
   CmbBRN.ListSource := Fdm.GetDSC('BRN');

   EdVNOYM3.Text := _VNOYM3;
   EdTNMVM1.Text := _TNMVM1;

  if (fdm.CdsStVm1GetYM3.State in [dsInsert]) then
  begin

     _StrBrn := TStringList.Create;

     for I := 0 to StrBrn.Count - 1 do
     begin
       _StrBrn.Add(StrBrn[i]);
     end;


     EdVNOYM3.ReadOnly := False;
     CmbBRN.ReadOnly := False;
     btnConfirm.Visible := True;
     ShowYM3();
  end
  else if (fdm.CdsStVm1GetYM3.State in [dsEdit]) then
  begin
     EdVNOYM3.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     btnConfirm.Visible := True;
     ShowYM3();
  end
  else
  begin
     EdVNOYM3.ReadOnly := True;
     CmbBRN.ReadOnly := True;
     btnConfirm.Visible := False;

     ShowYM3();

     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;

procedure TfrmPopupStYm3.MAJYM3Exit(Sender: TObject);
begin
  checkCur(MAJYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.MCMYM3Exit(Sender: TObject);
begin
  checkCur(MCMYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.MCNYM3Exit(Sender: TObject);
begin
  checkCur(MCNYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.MDNYM3Exit(Sender: TObject);
begin
  checkCur(MDNYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.MDSYM3Exit(Sender: TObject);
begin
  checkCur(MDSYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.MINYM3Exit(Sender: TObject);
begin
  checkCur(MINYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.MITYM3Exit(Sender: TObject);
begin
  checkCur(MITYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.MPYYM3Exit(Sender: TObject);
begin
  checkCur(MPYYM3,Fdm.CdsStVm1GetYM3);

end;

procedure TfrmPopupStYm3.PDCYM3Exit(Sender: TObject);
begin
  checkCur(PDCYM3,Fdm.CdsStVm1GetYM3);

end;

end.
