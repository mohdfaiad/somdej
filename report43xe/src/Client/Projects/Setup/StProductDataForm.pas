unit StProductDataForm;

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
  Datasnap.DBClient, uniMemo, uniDBMemo, uniScreenMask, uniBitBtn, uniDBImage,
  uniFileUpload;

type
  TfrmStProductData = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel28: TUniLabel;
    UniLabel1: TUniLabel;
    DbITN: TUniDBEdit;
    UniLabel29: TUniLabel;
    DbTNM: TUniDBEdit;
    UniLabel30: TUniLabel;
    DbENM: TUniDBEdit;
    UniLabel2: TUniLabel;
    DbMNM: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel27: TUniLabel;
    UniLabel31: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel21: TUniLabel;
    UniLabel22: TUniLabel;
    UniLabel34: TUniLabel;
    UniGroupBox1: TUniGroupBox;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    UniLabel8: TUniLabel;
    UniLabel9: TUniLabel;
    UniGroupBox2: TUniGroupBox;
    UniLabel10: TUniLabel;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    DbCT1: TUniDBEdit;
    UniLabel14: TUniLabel;
    DbACC: TUniDBEdit;
    CmbWHS: TUniDBLookupComboBox;
    CmbSTK: TUniDBLookupComboBox;
    UniLabel13: TUniLabel;
    DbDPC: TUniDBEdit;
    UniGroupBox3: TUniGroupBox;
    UniLabel15: TUniLabel;
    UniLabel16: TUniLabel;
    UniLabel17: TUniLabel;
    CmbITS: TUniDBLookupComboBox;
    CmbBRD: TUniDBLookupComboBox;
    UniLabel18: TUniLabel;
    UniLabel19: TUniLabel;
    CmbGEA: TUniDBLookupComboBox;
    UniLabel20: TUniLabel;
    DbCAS: TUniDBEdit;
    CmbITC: TUniDBLookupComboBox;
    CmbSRS: TUniDBLookupComboBox;
    UniLabel23: TUniLabel;
    DbPWR: TUniDBEdit;
    PnImg: TUniPanel;
    EdtCVTPM1: TUniEdit;
    DbUT1: TUniDBEdit;
    DbUE1: TUniDBEdit;
    DbUT2: TUniDBEdit;
    DbUE2: TUniDBEdit;
    EdtUC1PM1: TUniEdit;
    EdtUC2PM1: TUniEdit;
    EdtUP1PM1: TUniEdit;
    EdtUP2PM1: TUniEdit;
    EdtUF1PM1: TUniEdit;
    EdtUF2PM1: TUniEdit;
    EdtFAMPM1: TUniEdit;
    UniLabel24: TUniLabel;
    CmbSTS: TUniDBLookupComboBox;
    btnOpen: TUniBitBtn;
    FileUpload01: TUniFileUpload;
    dsImageRef: TDataSource;
    ViewImage: TUniImage;
    BtnSelectAccount: TUniButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure EdtCVTPM1Exit(Sender: TObject);
    procedure EdtUC1PM1Exit(Sender: TObject);
    procedure EdtUC2PM1Exit(Sender: TObject);
    procedure EdtUP1PM1Exit(Sender: TObject);
    procedure EdtUP2PM1Exit(Sender: TObject);
    procedure EdtUF1PM1Exit(Sender: TObject);
    procedure EdtUF2PM1Exit(Sender: TObject);
    procedure EdtFAMPM1Exit(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure FileUpload01Completed(Sender: TObject; AStream: TFileStream);
    procedure BtnSelectAccountClick(Sender: TObject);

  private
    Fdm : TDSSetupDM;
   // FPicField: TBlobField;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmt();
    procedure GetImage();
    procedure SelectAccount(ACCAC1,TNMAC1,ACTAC1,STTAC1 : String);
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStProductData: TfrmStProductData;

implementation

{$R *.dfm}

uses ServerModuleEx, PopupAc1Form;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStProductData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStProductData.EdtCVTPM1Exit(Sender: TObject);
begin
  checkCur(EdtCVTPM1,Fdm.CdsStPM1Get);

end;

procedure TfrmStProductData.EdtFAMPM1Exit(Sender: TObject);
begin
  checkCur(EdtFAMPM1,Fdm.CdsStPM1Get);

end;

procedure TfrmStProductData.EdtUC1PM1Exit(Sender: TObject);
begin
  checkCur(EdtUC1PM1,Fdm.CdsStPM1Get);

end;

procedure TfrmStProductData.EdtUC2PM1Exit(Sender: TObject);
begin
  checkCur(EdtUC2PM1,Fdm.CdsStPM1Get);

end;

procedure TfrmStProductData.EdtUF1PM1Exit(Sender: TObject);
begin
  checkCur(EdtUF1PM1,Fdm.CdsStPM1Get);

end;

procedure TfrmStProductData.EdtUF2PM1Exit(Sender: TObject);
begin
  checkCur(EdtUF2PM1,Fdm.CdsStPM1Get);

end;

procedure TfrmStProductData.EdtUP1PM1Exit(Sender: TObject);
begin
  checkCur(EdtUP1PM1,Fdm.CdsStPM1Get);

end;

procedure TfrmStProductData.EdtUP2PM1Exit(Sender: TObject);
begin
  checkCur(EdtUP2PM1,Fdm.CdsStPM1Get);

end;

procedure TfrmStProductData.FileUpload01Completed(Sender: TObject;
  AStream: TFileStream);
begin
{
var
  DestName: string;
  DestFolder : string;
  P: TPicture;
  B: TBitmap;
 DestFolder := UniServerModule.LocalCacheURL + '\';
  DestName := DestFolder + '\pic000.000';
  P := TPicture.Create();
  B := TBitmap.Create();
  try
    P.LoadFromFile(AStream.FileName);
    B.Assign(P.Graphic);
    B.SaveToFile(DestName);                //
  finally
    P.Free();
    B.Free();
  end;
}

  ViewImage.Picture.LoadFromFile(AStream.FileName);

  while not fdm.CdsStPm1GetImage.Eof do
  begin
     fdm.CdsStPm1GetImage.Delete;
     fdm.CdsStPm1GetImage.Next;
  end;

  fdm.CdsStPm1GetImage.Append;
  FDM.CdsStPm1GetImageITNPM1.AsString := Fdm.CdsStPm1GetITNPM1.AsString;
  FDM.CdsStPm1GetImageIMGPM1.LoadFromStream(AStream);
  fdm.CdsStPm1GetImage.Post;

end;

procedure TfrmStProductData.SelectAccount(ACCAC1,TNMAC1,ACTAC1,STTAC1 : String);
begin
  Fdm.CdsStPm1GetACCPM1.AsString := ACCAC1;
end;

procedure TfrmStProductData.BtnSelectAccountClick(Sender: TObject);
begin
  with TfrmPopupAc1.Create(UniApplication) do
  begin
    Init(Fdm);

    OnSelectData := SelectAccount;
    ShowModal();
  end;

end;

procedure TfrmStProductData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStPM1Get.State in [dsInsert,dsEdit] then
    Fdm.CdsStPM1Get.Cancel();

  if Fdm.CdsStPM1Get.State in [dsInsert,dsEdit] then
     fdm.CdsStPm1GetImage.Cancel();

  inherited;

end;

procedure TfrmStProductData.btnConfirmClick(Sender: TObject);
var ch ,ch1 ,chDel: Boolean;
  md : String;
begin
  if Fdm.CdsStPM1Get.State in [dsInsert] then
    md := 'I'
  else
    md := 'E';

  ch:= FDM.StPM1InsUpd(
        Fdm.CdsStPM1Getstspm1.AsString,
        Fdm.CdsStPM1Getitcpm1.AsString,
        Fdm.CdsStPM1Getitnpm1.AsString,
        Fdm.CdsStPM1Getenmpm1.AsString,
        Fdm.CdsStPM1Gettnmpm1.AsString,
        Fdm.CdsStPM1Getmnmpm1.AsString,
        Fdm.CdsStPM1Getut1pm1.AsString,
        Fdm.CdsStPM1Getut2pm1.AsString,
        Fdm.CdsStPM1Getue1pm1.AsString,
        Fdm.CdsStPM1Getue2pm1.AsString,
        Fdm.CdsStPM1Getcvtpm1.AsFloat,
        Fdm.CdsStPM1Getwhspm1.AsString,
        md
      );

 ch1:= FDM.StPM1InsUpd2(
        Fdm.CdsStPM1Getitnpm1.AsString,
        Fdm.CdsStPM1Getuc1pm1.AsFloat,
        Fdm.CdsStPM1Getuc2pm1.AsFloat,
        Fdm.CdsStPM1Getup1pm1.AsFloat,
        Fdm.CdsStPM1Getup2pm1.AsFloat,
        Fdm.CdsStPM1Getuf1pm1.AsFloat,
        Fdm.CdsStPM1Getuf2pm1.AsFloat,
        Fdm.CdsStPM1Getfampm1.AsFloat,
        Fdm.CdsStPM1Getct1pm1.AsFloat,
        Fdm.CdsStPM1Getct2pm1.AsFloat,
        Fdm.CdsStPM1Getitspm1.AsString,
        Fdm.CdsStPM1Getbrdpm1.AsString,
        Fdm.CdsStPM1Getsrspm1.AsString,
        Fdm.CdsStPM1Getgeapm1.AsString,
        Fdm.CdsStPM1Getcaspm1.AsInteger,
        Fdm.CdsStPM1Getpwrpm1.AsInteger,
        Fdm.CdsStPM1Getstkpm1.AsString,
        Fdm.CdsStPM1Getdpcpm1.AsInteger,
        Fdm.CdsStPM1Getaccpm1.AsString
      );

  chDel := fdm.StPm1DelImage(fdm.CdsStPm1GetITNPM1.AsString);

  fdm.CdsStPm1GetImage.ApplyUpdates(-1);

  if ch and ch1 then
  begin
    ShowMessage('บันทึกเรียบร้อยแล้ว');
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStProductData.btnOpenClick(Sender: TObject);
begin
//  FPicField := fdm.CdsStPm1GetImageIMGPM1;
  FileUpload01.Execute;

end;

procedure TfrmStProductData.ShowEdtAmt();
begin
  EdtCVTPM1.Text := FormatFloat('#,##0.00',Fdm.CdsStPM1GetCVTPM1.AsFloat);
  EdtUC1PM1.Text := FormatFloat('#,##0.00',Fdm.CdsStPM1GetUC1PM1.AsFloat);
  EdtUC2PM1.Text := FormatFloat('#,##0.00',Fdm.CdsStPM1GetUC2PM1.AsFloat);
  EdtUP1PM1.Text := FormatFloat('#,##0.00',Fdm.CdsStPM1GetUP1PM1.AsFloat);
  EdtUP2PM1.Text := FormatFloat('#,##0.00',Fdm.CdsStPM1GetUP2PM1.AsFloat);
  EdtUF1PM1.Text := FormatFloat('#,##0.00',Fdm.CdsStPM1GetUF1PM1.AsFloat);
  EdtUF2PM1.Text := FormatFloat('#,##0.00',Fdm.CdsStPM1GetUF2PM1.AsFloat);
  EdtFAMPM1.Text := FormatFloat('#,##0.00',Fdm.CdsStPM1GetFAMPM1.AsFloat);

end;

procedure TfrmStProductData.GetImage();
var
  DestName : string;
  DestFolder : string;
  _ImgName :string;
  Astream :TStream ;
begin

  _ImgName:= UniServerModule.FilesFolderPath+'NoPhoto.jpg';

  if not fdm.CdsStPm1GetImageIMGPM1.IsNull Then
  begin

      DestFolder:= UniServerModule.LocalCachePath ; // tom test
      _ImgName := DestFolder+'tmp.jpg' ;

      FDM.WriteLog('fILE Name  :'+   _ImgName ) ;
      FDM.CdsStPm1GetImageIMGPM1.SaveToFile(_ImgName);
      FDM.WriteLog('sAVE TO fILE  :'+   _ImgName ) ;
      ViewImage.Picture.LoadFromFile(_ImgName );
      FDM.WriteLog('LoadFromFile  :'+    UniServerModule.TempFolderPath) ;
  end
  else
      ViewImage.Picture.LoadFromFile(_ImgName );

end;

procedure TfrmStProductData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStPM1Get;
   dsImageRef.DataSet := Fdm.CdsStPm1GetImage;

   CmbSTS.ListSource := Fdm.GetDSC('STS');
   CmbITC.ListSource := Fdm.GetDSC('IT');
   CmbWHS.ListSource := Fdm.GetDSC('WH');

   CmbSTK.ListSource := Fdm.GetDSC('YN');
   CmbITS.ListSource := Fdm.GetDSC('IS'); //กลุ่มสินค้าย่อย
   CmbBRD.ListSource := Fdm.GetDSC('BD'); // ยี่ห้อ
   CmbSRS.ListSource := Fdm.GetDSC('IF'); // ซีรี่ ก็คือ รุ่น

   CmbGEA.ListSource := Fdm.GetDSC('AM');

  fdm.CdsStPm1GetImage.Close();
  fdm.StPm1GetImage(fdm.CdsStPm1GetITNPM1.AsString);
  fdm.CdsStPm1GetImage.Open();

  if (fdm.CdsStPM1Get.State in [dsInsert]) then
  begin
     DbITN.ReadOnly := False;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStPM1Get.State in [dsEdit]) then
  begin
     DbITN.ReadOnly := True;
     btnConfirm.Visible := True;
     ShowEdtAmt();
     GetImage();
  end
  else
  begin
     btnConfirm.Visible := False;
     btnOpen.Enabled := False;
     BtnSelectAccount.Enabled := False;
     ShowEdtAmt();
     GetImage();
     RSetReadOnly();
  end;
  RSetColorReadOnly();
end;


end.
