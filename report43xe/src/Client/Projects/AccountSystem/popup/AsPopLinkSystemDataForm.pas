unit AsPopLinkSystemDataForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MainDataFormClass, StdCtrls, UniLabel, UniButton, ExtCtrls, UniPanel,
  Mask, DBCtrls, UniDBEdit, Grids, DBGrids, uniDBGrid, uniGroupBox,
  UniDBComboBox, UniDateTimePicker, UniEdit, DB,
  MainModuleEx,
  uniGUIForm,  uniGUIVars,
  UniDBLookupComboBox, UniCheckBox, UniDBDateTimePicker, UniScrollBox,
  uniBasicGrid, uniGUIClasses, uniMultiItem, uniComboBox, uniGUIBaseClasses,
  uniMemo, uniDBMemo, uniRadioButton, Datasnap.DBClient, uniScreenMask,
  Vcl.Imaging.GIFImg, uniImage;

type
  TfrmAsLinkSystemData = class(TMainDataForm)
    UniLabel20: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel13: TUniLabel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniDBEdit7: TUniDBEdit;
    UniLabel5: TUniLabel;
    CmbLinkSystem: TUniComboBox;
    Grp6: TUniGroupBox;
    UniLabel65: TUniLabel;
    UniLabel66: TUniLabel;
    UniLabel67: TUniLabel;
    UniLabel68: TUniLabel;
    UniDBLookupComboBox16: TUniDBLookupComboBox;
    UniDBLookupComboBox17: TUniDBLookupComboBox;
    UniLabel69: TUniLabel;
    UniLabel70: TUniLabel;
    UniDBEdit40: TUniDBEdit;
    UniLabel71: TUniLabel;
    UniLabel72: TUniLabel;
    UniDateTimePicker6: TUniDateTimePicker;
    UniLabel73: TUniLabel;
    UniDBEdit41: TUniDBEdit;
    UniDBEdit42: TUniDBEdit;
    UniDBEdit43: TUniDBEdit;
    UniDBEdit44: TUniDBEdit;
    UniLabel74: TUniLabel;
    UniDBEdit45: TUniDBEdit;
    UniDBLookupComboBox18: TUniDBLookupComboBox;
    UniLabel76: TUniLabel;
    UniDBEdit46: TUniDBEdit;
    UniLabel77: TUniLabel;
    UniDBEdit47: TUniDBEdit;
    UniLabel78: TUniLabel;
    UniDBEdit48: TUniDBEdit;
    Grp4: TUniGroupBox;
    UniLabel38: TUniLabel;
    UniLabel39: TUniLabel;
    UniLabel40: TUniLabel;
    UniLabel41: TUniLabel;
    UniDBLookupComboBox9: TUniDBLookupComboBox;
    UniDBLookupComboBox10: TUniDBLookupComboBox;
    UniLabel43: TUniLabel;
    UniDBLookupComboBox12: TUniDBLookupComboBox;
    UniLabel45: TUniLabel;
    UniDBEdit24: TUniDBEdit;
    UniLabel47: TUniLabel;
    UniLabel48: TUniLabel;
    UniDBEdit26: TUniDBEdit;
    UniDateTimePicker4: TUniDateTimePicker;
    UniLabel49: TUniLabel;
    UniLabel50: TUniLabel;
    UniDBEdit27: TUniDBEdit;
    UniLabel51: TUniLabel;
    UniDBEdit28: TUniDBEdit;
    UniDBEdit29: TUniDBEdit;
    UniDBEdit30: TUniDBEdit;
    UniDBEdit31: TUniDBEdit;
    UniLabel42: TUniLabel;
    UniDBLookupComboBox11: TUniDBLookupComboBox;
    UniLabel44: TUniLabel;
    UniDBEdit23: TUniDBEdit;
    Grp3: TUniGroupBox;
    UniLabel8: TUniLabel;
    UniLabel24: TUniLabel;
    UniLabel26: TUniLabel;
    UniLabel27: TUniLabel;
    UniDBLookupComboBox3: TUniDBLookupComboBox;
    UniDBLookupComboBox4: TUniDBLookupComboBox;
    UniLabel28: TUniLabel;
    UniDBLookupComboBox5: TUniDBLookupComboBox;
    UniLabel29: TUniLabel;
    UniDBLookupComboBox8: TUniDBLookupComboBox;
    UniLabel30: TUniLabel;
    UniDBEdit13: TUniDBEdit;
    UniLabel32: TUniLabel;
    UniDBEdit15: TUniDBEdit;
    UniLabel33: TUniLabel;
    UniDBEdit16: TUniDBEdit;
    UniLabel34: TUniLabel;
    UniLabel35: TUniLabel;
    UniDBEdit17: TUniDBEdit;
    UniDateTimePicker2: TUniDateTimePicker;
    UniLabel36: TUniLabel;
    UniLabel25: TUniLabel;
    UniDBEdit18: TUniDBEdit;
    UniLabel31: TUniLabel;
    UniDBEdit14: TUniDBEdit;
    UniLabel37: TUniLabel;
    UniDateTimePicker3: TUniDateTimePicker;
    UniDBEdit19: TUniDBEdit;
    UniDBEdit20: TUniDBEdit;
    UniDBEdit21: TUniDBEdit;
    Grp12: TUniGroupBox;
    UniLabel7: TUniLabel;
    LbSale: TUniLabel;
    LbAp: TUniLabel;
    UniLabel10: TUniLabel;
    UniLabel12: TUniLabel;
    UniDBLookupComboBox6: TUniDBLookupComboBox;
    UniDBLookupComboBox7: TUniDBLookupComboBox;
    UniLabel11: TUniLabel;
    UniDBLookupComboBox1: TUniDBLookupComboBox;
    UniLabel14: TUniLabel;
    UniDBLookupComboBox2: TUniDBLookupComboBox;
    UniLabel15: TUniLabel;
    UniDBEdit8: TUniDBEdit;
    UniLabel16: TUniLabel;
    UniDBEdit9: TUniDBEdit;
    UniLabel17: TUniLabel;
    UniDBEdit10: TUniDBEdit;
    UniCheckBox1: TUniCheckBox;
    UniLabel18: TUniLabel;
    UniDBEdit11: TUniDBEdit;
    UniLabel19: TUniLabel;
    UniDBMemo1: TUniDBMemo;
    UniLabel21: TUniLabel;
    UniDBEdit12: TUniDBEdit;
    DbRegStartDate: TUniDateTimePicker;
    UniLabel22: TUniLabel;
    UniDateTimePicker1: TUniDateTimePicker;
    UniLabel23: TUniLabel;
    Grp5: TUniGroupBox;
    UniLabel46: TUniLabel;
    UniLabel52: TUniLabel;
    UniLabel53: TUniLabel;
    UniLabel54: TUniLabel;
    UniDBLookupComboBox13: TUniDBLookupComboBox;
    UniDBLookupComboBox14: TUniDBLookupComboBox;
    UniLabel55: TUniLabel;
    UniLabel56: TUniLabel;
    UniDBEdit25: TUniDBEdit;
    UniLabel57: TUniLabel;
    UniLabel58: TUniLabel;
    UniDateTimePicker5: TUniDateTimePicker;
    UniLabel61: TUniLabel;
    UniDBEdit34: TUniDBEdit;
    UniDBEdit35: TUniDBEdit;
    UniDBEdit36: TUniDBEdit;
    UniDBEdit37: TUniDBEdit;
    UniLabel62: TUniLabel;
    UniLabel63: TUniLabel;
    UniDBEdit32: TUniDBEdit;
    UniDBLookupComboBox15: TUniDBLookupComboBox;
    UniLabel59: TUniLabel;
    UniDBEdit33: TUniDBEdit;
    UniLabel60: TUniLabel;
    UniDBEdit38: TUniDBEdit;
    UniLabel64: TUniLabel;
    UniDBEdit39: TUniDBEdit;
    UniDBLookupComboBox19: TUniDBLookupComboBox;
    CDocType: TUniComboBox;
    CSale: TUniComboBox;
    Cap: TUniComboBox;
    CDocType2: TUniComboBox;
    Csell2: TUniComboBox;
    procedure CmbLinkSystemCloseUp(Sender: TObject);
    procedure CDocTypeCloseUp(Sender: TObject);
    procedure CDocType2CloseUp(Sender: TObject);

  private

  public
//    procedure Init();
  end;

var
  frmAsLinkSystemData: TfrmAsLinkSystemData;

implementation

{$R *.dfm}

//initialization
//  RegisterMainFormClass(TfrmPsAppApprPaymentData);

procedure TfrmAsLinkSystemData.CDocType2CloseUp(Sender: TObject);
var CH : Boolean;
begin
  CH := CDOCTYPE2.ItemIndex = 0;

  Lbsale.Visible := Ch;
  CSell2.Visible := ch;

  lbap.Visible := not ch;
  cap.Visible := not ch;

  CSale.Visible := False;

end;

procedure TfrmAsLinkSystemData.CDocTypeCloseUp(Sender: TObject);
var CH : Boolean;
begin
  CH := CDOCTYPE.ItemIndex = 0;

  Lbsale.Visible := Ch;
  Csale.Visible := ch;

  lbap.Visible := not ch;
  cap.Visible := not ch;

  Csell2.Visible := False;
end;

procedure TfrmAsLinkSystemData.CmbLinkSystemCloseUp(Sender: TObject);
begin

 if CmbLinkSystem.ItemIndex = 0 then
  begin
    LbSale.Caption := 'ภาษีซื้อ';
    Grp12.Caption := 'ระบบซื้อ';
    LbAp.Caption := 'ตั้งเจ้าหนี้';
    CDocType.Visible := True;
    CDocType2.Visible := False;

    Grp3.Visible := False;
    Grp4.Visible := False;
    Grp5.Visible := False;

    Grp12.Visible := True ;
    grp12.Align := alClient;
    CDocTypeCloseUp(CDocType);
  end
  else if CmbLinkSystem.ItemIndex = 1 then
  begin
    LbSale.Caption := 'ภาษีขาย';
    Grp12.Caption := 'ระบบขาย';
    LbAp.Caption := 'ตั้งลูกหนี้';
    CDocType.Visible := False;
    CDocType2.Visible := True;
    Grp3.Visible := False;
    Grp4.Visible := False;
    Grp5.Visible := False;

    Grp12.Visible := True ;
    grp12.Align := alClient;
    CDocType2CloseUp(CDocType2);
  end
  else if CmbLinkSystem.ItemIndex = 2 then   // รับทรัพย์สิน
  begin
    Grp12.Visible := False;
    Grp4.Visible := False;
    Grp5.Visible := False;

    Grp3.Visible := True;
    Grp3.Align := alClient;
  end
  else if CmbLinkSystem.ItemIndex = 3 then  // เบิกทรัพย์สิน
  begin
    Grp12.Visible := False;
    Grp3.Visible := False;
    Grp5.Visible := False;

    Grp4.Visible := True ;
    Grp4.Align := alClient;
  end
  else if CmbLinkSystem.ItemIndex = 4 then   // ภงด ซื้อ
  begin
    Grp12.Visible := False;
    Grp3.Visible := False ;
    Grp4.Visible := False ;

    Grp5.Visible := True ;
    Grp5.Align := alClient;
  end
  else if CmbLinkSystem.ItemIndex = 5 then   // ภงด ขาย
  begin
    Grp12.Visible := False;
    Grp3.Visible := False ;
    Grp4.Visible := False ;

    Grp5.Visible := True ;
    Grp5.Align := alClient;
  end;

end;

end.
