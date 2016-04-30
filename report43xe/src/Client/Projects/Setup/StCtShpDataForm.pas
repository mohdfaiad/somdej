unit StCtShpDataForm;

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
  TfrmStCtShpData = class(TMainDataForm)
    dsgrid: TDataSource;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    CmbBRNFROM: TUniDBLookupComboBox;
    UniLabel4: TUniLabel;
    CmbBRNTO: TUniDBLookupComboBox;
    UniLabel5: TUniLabel;
    AMTSHP: TUniEdit;
    CmbCno: TUniDBLookupComboBox;
    procedure btnCancelClick(Sender: TObject);
    procedure btnConfirmClick(Sender: TObject);
    procedure AMTSHPExit(Sender: TObject);

  private
    Fdm : TDSSetupDM;
    procedure checkCur(Sender: TObject;CdsTmp : TClientDataSet);
    procedure ShowEdtAmt();
  public
     procedure Init(DM : TDSSetupDM);
  end;

var
  frmStCtShpData: TfrmStCtShpData;

implementation

{$R *.dfm}

uses PopupArForm, PopupProductForm;

//initialization
//  RegisterMainFormClass(TfrmStAp);

procedure TfrmStCtShpData.checkCur(Sender: TObject;CdsTmp : TClientDataSet);
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

procedure TfrmStCtShpData.AMTSHPExit(Sender: TObject);
begin
  checkCur(AMTSHP,Fdm.CdsStShpGet);

end;

procedure TfrmStCtShpData.btnCancelClick(Sender: TObject);
begin
  if Fdm.CdsStShpGet.State in [dsInsert,dsEdit] then
    Fdm.CdsStShpGet.Cancel();
  inherited;

end;

procedure TfrmStCtShpData.btnConfirmClick(Sender: TObject);
var ch  : Boolean;
  md ,Cno: String;
  seq : integer;
begin
  if Fdm.CdsStShpGet.State in [dsInsert] then
  begin
    md := 'I' ;
    seq := -1;
  end
  else
  begin
    md := 'E';
    seq :=  Fdm.CdsStShpGetSEQSHP.AsInteger
  end;

  Cno := Fdm.CdsStShpGetCNOSHP.AsString;

  ch:= FDM.StShpInsUpd(
        Fdm.CdsStShpGetSTSSHP.AsString,
        Fdm.CdsStShpGetCNOSHP.AsString,
        seq,
        Fdm.CdsStShpGetFBNSHP.AsString,
        Fdm.CdsStShpGetTBNSHP.AsString,
        Fdm.CdsStShpGetAMTSHP.AsFloat,
        md
      );

  if ch  then
  begin

    ShowMessage('บันทึกเรียบร้อยแล้ว');
    fdm.CdsStShpGet.Close();
    fdm.CdsStShpGet.Open();
    fdm.CdsStShpGet.Locate('CNOSHP',Cno,[]);
    Close;
  end
  else
    ShowMessage('เกิดข้อผิดพลาด??');

end;

procedure TfrmStCtShpData.ShowEdtAmt();
begin
   AMTSHP.Text := FormatFloat('#,##0.00',Fdm.CdsStShpGetAMTSHP.AsFloat);
end;

procedure TfrmStCtShpData.Init(DM : TDSSetupDM);
begin

   Fdm := dm;

   dsgrid.DataSet := Fdm.CdsStShpGet;

   CmbCno.ListSource := Fdm.GetDSC('IF');
   CmbBRNFROM.ListSource := Fdm.GetDSC('WH');
   CmbBRNTO.ListSource := Fdm.GetDSC('WH');

  if (fdm.CdsStShpGet.State in [dsInsert]) then
  begin
     CmbCno.ReadOnly := False;
     btnConfirm.Visible := True;
  end
  else if (fdm.CdsStShpGet.State in [dsEdit]) then
  begin
     CmbCno.ReadOnly := True;
     btnConfirm.Visible := True;
     ShowEdtAmt();
  end
  else
  begin
     btnConfirm.Visible := False;
     ShowEdtAmt();
     RSetReadOnly();
  end;

  RSetColorReadOnly();
end;


end.
