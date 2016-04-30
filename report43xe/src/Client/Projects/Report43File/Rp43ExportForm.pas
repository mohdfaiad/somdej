unit Rp43ExportForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MainGridFormClass, uniGUIClasses,
  uniScreenMask, uniEdit, uniLabel, uniButton, uniBasicGrid, uniDBGrid,
  uniGUIBaseClasses, uniPanel, Data.DB,  uniGUIAbstractClasses, uniGUIVars,
  MainModuleEx, uniDateTimePicker, uniMultiItem, uniComboBox,DS43FileIntfDM,
  uniDBComboBox, uniDBLookupComboBox, uniGroupBox ,
  Vcl.Imaging.GIFImg, uniImage, uniDBEdit,  Vcl.Imaging.jpeg,MainDataFormClass,
  uniPageControl, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdTime, IdUnixTime, uniCheckBox, uniTimer, uniBitBtn,
  uniProgressBar, Datasnap.DBClient,shellapi, uniListBox,dateutils;

type
  TfrmRp43Export = class(TMainDataForm)
    BtnAddEdtSubCode: TUniButton;
    btnExport: TUniButton;
    UniScreenMask1: TUniScreenMask;
    cmbMonth: TUniComboBox;
    cmbYear: TUniComboBox;
    dtFrom: TUniDateTimePicker;
    dtTo: TUniDateTimePicker;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    btnExportAFile: TUniButton;
    ClientDataSet1: TClientDataSet;
    btnDownload: TUniButton;
    scDownloadFile: TUniScreenMask;
    lbDownload: TUniLabel;
    ckPERSON: TUniCheckBox;
    ckADDRESS: TUniCheckBox;
    ckDEATH: TUniCheckBox;
    ckCARD: TUniCheckBox;
    ckDRUGALLERGY: TUniCheckBox;
    ckHOME: TUniCheckBox;
    ckSERVICE: TUniCheckBox;
    ckAPPOINTMENT: TUniCheckBox;
    ckACCIDENT: TUniCheckBox;
    ckDIAGNOSIS_OPD: TUniCheckBox;
    ckPROCEDURE_OPD: TUniCheckBox;
    ckDRUG_OPD: TUniCheckBox;
    ckCHARGE_OPD: TUniCheckBox;
    ckADMISSION: TUniCheckBox;
    ckDIAGNOSIS_IPD: TUniCheckBox;
    ckPROCEDURE_IPD: TUniCheckBox;
    ckDRUG_IPD: TUniCheckBox;
    ckCHARGE_IPD: TUniCheckBox;
    ckSURVEILLANCE: TUniCheckBox;
    ckWOMEN: TUniCheckBox;
    ckFP: TUniCheckBox;
    ckEPI: TUniCheckBox;
    ckNUTRITION: TUniCheckBox;
    ckPRENATAL: TUniCheckBox;
    ckANC: TUniCheckBox;
    ckLABOR: TUniCheckBox;
    ckPOSTNATAL: TUniCheckBox;
    ckNEWBORN: TUniCheckBox;
    ckNEWBORNCARE: TUniCheckBox;
    ckDENTAL: TUniCheckBox;
    ckSPECIALPP: TUniCheckBox;
    ckNCDSCREEN: TUniCheckBox;
    ckCHRONIC: TUniCheckBox;
    ckCHRONICFU: TUniCheckBox;
    ckLABFU: TUniCheckBox;
    ckCOMMUNITY_SERVICE: TUniCheckBox;
    ckDISABILITY: TUniCheckBox;
    ckICF: TUniCheckBox;
    ckFUNCTIONAL: TUniCheckBox;
    ckREHABILITATION: TUniCheckBox;
    ckVILLAGE: TUniCheckBox;
    ckCOMMUNITY_ACTIVITY: TUniCheckBox;
    ckPROVIDER: TUniCheckBox;
    IdUnixTime1: TIdUnixTime;
    btnUnCheckAll: TUniButton;
    btnCheckAll: TUniButton;
    cmbBatchCode: TUniComboBox;
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
    procedure btnCheckAllClick(Sender: TObject);
    procedure btnUnCheckAllClick(Sender: TObject);

    private

   order : String;
   FUserSession: TUniMainModule;
   FDM: TDS43FileDM ;
   FileArrNum: array of integer;
   procedure ShowData();
   procedure _Confirm(AResult: Integer);

   procedure downloadtxtfile(zipfName:string);
   function getHospCode:string;


  public
    property DM : TDS43FileDM read FDM write FDM;


  end;

type
  TIntArray = array of Integer;


var
  frmStHdrCodeGrid: TfrmRp43Export;
  pagesIndex : array[0..15] of TIntArray ;

implementation

{$R *.dfm}

uses uniGUIForm,
  XeUniGUIComponents, ServerModuleEx, DS43FileIntf;

const
SecsPerDay = 24 *60 *60;

function UnixTime(DateTime: TDateTime): Double;
begin
result := Trunc( (DateTime -EncodeDate(1970,1,1)) * SecsPerDay);
end;

function UnixDateTimeToDelphiDateTime(UnixDateTime: longint): Double;
begin
result := EncodeDate(1970, 1, 1) +( UnixDateTime / SecsPerDay );
end;


procedure TfrmRp43Export.btnExportClick(Sender: TObject);
var i:integer;
    dd,month,year,_dd,_month,_year:word;
    f43List,delimeter,ExportZipFileName:string;

    xdd,xmonth,xyear,hh,mm,ss,ms:word;



begin
  inherited;
  //_month := strtoint(tstring(cmbMonth.Items.Objects[cmbMonth.ItemIndex]).str);
  //_year := strtoint(tstring(cmbYear.Items.Objects[cmbYear.ItemIndex]).str);


  f43List:='';
  delimeter:=';';


  if ckPERSON.Checked then f43List:=f43List+'PERSON'+delimeter;
  if ckADDRESS.Checked then f43List:=f43List+'ADDRESS'+delimeter;
  if ckDEATH.Checked then f43List:=f43List+'DEATH'+delimeter;
  if ckCARD.Checked then f43List:=f43List+'CARD'+delimeter;
  if ckDRUGALLERGY.Checked then f43List:=f43List+'DRUGALLERGY'+delimeter;

  if ckHOME.Checked then f43List:=f43List+'HOME'+delimeter;
  if ckSERVICE.Checked then f43List:=f43List+'SERVICE'+delimeter;
  if ckAPPOINTMENT.Checked then f43List:=f43List+'APPOINTMENT'+delimeter;
  if ckACCIDENT.Checked then f43List:=f43List+'ACCIDENT'+delimeter;
  if ckDIAGNOSIS_OPD.Checked then f43List:=f43List+'DIAGNOSIS_OPD'+delimeter;

  if ckPROCEDURE_OPD.Checked then f43List:=f43List+'PROCEDURE_OPD'+delimeter;
  if ckDRUG_OPD.Checked then f43List:=f43List+'DRUG_OPD'+delimeter;
  if ckCHARGE_OPD.Checked then f43List:=f43List+'CHARGE_OPD'+delimeter;
  if ckDIAGNOSIS_IPD.Checked then f43List:=f43List+'DIAGNOSIS_IPD'+delimeter;

  if ckPROCEDURE_IPD.Checked then f43List:=f43List+'PROCEDURE_IPD'+delimeter;
  if ckDRUG_IPD.Checked then f43List:=f43List+'DRUG_IPD'+delimeter;
  if ckCHARGE_IPD.Checked then f43List:=f43List+'CHARGE_IPD'+delimeter;
  if ckSURVEILLANCE.Checked then f43List:=f43List+'SURVEILLANCE'+delimeter;
  if ckWOMEN.Checked then f43List:=f43List+'WOMEN'+delimeter;

  if ckFP.Checked then f43List:=f43List+'FP'+delimeter;
  if ckEPI.Checked then f43List:=f43List+'EPI'+delimeter;
  if ckNUTRITION.Checked then f43List:=f43List+'NUTRITION'+delimeter;
  if ckPRENATAL.Checked then f43List:=f43List+'PRENATAL'+delimeter;
  if ckANC.Checked then f43List:=f43List+'ANC'+delimeter;

  if ckLABOR.Checked then f43List:=f43List+'LABOR'+delimeter;
  if ckPOSTNATAL.Checked then f43List:=f43List+'POSTNATAL'+delimeter;
  if ckNEWBORN.Checked then f43List:=f43List+'NEWBORN'+delimeter;
  if ckNEWBORNCARE.Checked then f43List:=f43List+'NEWBORNCARE'+delimeter;
  if ckSPECIALPP.Checked then f43List:=f43List+'SPECIALPP'+delimeter;

  if ckNCDSCREEN.Checked then f43List:=f43List+'NCDSCREEN'+delimeter;
  if ckCHRONIC.Checked then f43List:=f43List+'CHRONIC'+delimeter;
  if ckCHRONICFU.Checked then f43List:=f43List+'CHRONICFU'+delimeter;
  if ckLABFU.Checked then f43List:=f43List+'LABFU'+delimeter;
  if ckCOMMUNITY_SERVICE.Checked then f43List:=f43List+'COMMUNITY_SERVICE'+delimeter;

  if ckDISABILITY.Checked then f43List:=f43List+'DISABILITY'+delimeter;
  if ckICF.Checked then f43List:=f43List+'ICF'+delimeter;
  if ckFUNCTIONAL.Checked then f43List:=f43List+'FUNCTIONAL'+delimeter;
  if ckREHABILITATION.Checked then f43List:=f43List+'REHABILITATION'+delimeter;
  if ckVILLAGE.Checked then f43List:=f43List+'VILLAGE'+delimeter;

  if ckCOMMUNITY_ACTIVITY.Checked then f43List:=f43List+'COMMUNITY_ACTIVITY'+delimeter;
  if ckPROVIDER.Checked then f43List:=f43List+'PROVIDER'+delimeter;
  if ckADMISSION.Checked then f43List:=f43List+'ADMISSION'+delimeter;
  if ckDENTAL.Checked then f43List:=f43List+'DENTAL'+delimeter;




  DecodeDate(dtFrom.DateTime,year,month,dd);
  DecodeDate(dtTo.DateTime,_year,_month,_dd);

  DecodeTime(Now,hh,mm,ss,ms);



  ExportZipFileName:='F43_'+getHospCode+'_'+FormatCurr('0000',_year)+FormatCurr('00',_month)+FormatCurr('00',_dd)+FormatCurr('00',hh)+FormatCurr('00',mm)+FormatCurr('00',ss)+'.zip';
  //ExportZipFileName:='F43_'+getHospCode+'_'+FormatCurr('00',_year)+FormatCurr('00',_month)+FormatCurr('00',_dd)+'_'+FormatCurr('00',hh)+FormatCurr('00',mm)+FormatCurr('00',ss)+FormatCurr('00',ms)+'.zip';

  if year<2500 then year:=year+543;
  if _year<2500 then _year:=_year+543;

  fdm.ExportAllFile(cmbBatchCode.Items.Strings[cmbBatchCode.ItemIndex],ExportZipFileName,f43List,dd,month,year,_dd,_month,_year);
  downloadtxtfile(ExportZipFileName);
end;




procedure TfrmRp43Export.btnUnCheckAllClick(Sender: TObject);
var bValue:boolean;
begin
  //inherited;
  bValue := false;

  ckPERSON.Checked:=bValue;
  ckADDRESS.Checked:=bValue;
  ckDEATH.Checked:=bValue;
  ckCARD.Checked:=bValue;

  ckDRUGALLERGY.Checked:=bValue;
  ckHOME.Checked:=bValue;
  ckSERVICE.Checked:=bValue;
  ckAPPOINTMENT.Checked:=bValue;

  ckACCIDENT.Checked:=bValue;
  ckDIAGNOSIS_OPD.Checked:=bValue;
  ckPROCEDURE_OPD.Checked:=bValue;
  ckDRUG_OPD.Checked:=bValue;

  ckCHARGE_OPD.Checked:=bValue;
  ckADDRESS.Checked:=bValue;
  ckDIAGNOSIS_IPD.Checked:=bValue;
  ckPROCEDURE_IPD.Checked:=bValue;

  ckDRUG_IPD.Checked:=bValue;
  ckCHARGE_IPD.Checked:=bValue;
  ckSURVEILLANCE.Checked:=bValue;
  ckWOMEN.Checked:=bValue;

  ckFP.Checked:=bValue;
  ckEPI.Checked:=bValue;
  ckNUTRITION.Checked:=bValue;
  ckPRENATAL.Checked:=bValue;

  ckANC.Checked:=bValue;
  ckLABOR.Checked:=bValue;
  ckPOSTNATAL.Checked:=bValue;
  ckNEWBORN.Checked:=bValue;

  ckNEWBORNCARE.Checked:=bValue;
  ckSPECIALPP.Checked:=bValue;
  ckNCDSCREEN.Checked:=bValue;
  ckCHRONIC.Checked:=bValue;

  ckCHRONICFU.Checked:=bValue;
  ckLABFU.Checked:=bValue;
  ckCOMMUNITY_SERVICE.Checked:=bValue;
  ckDISABILITY.Checked:=bValue;

  ckICF.Checked:=bValue;
  ckFUNCTIONAL.Checked:=bValue;
  ckREHABILITATION.Checked:=bValue;
  ckVILLAGE.Checked:=bValue;

  ckCOMMUNITY_ACTIVITY.Checked:=bValue;
  ckPROVIDER.Checked:=bValue;

  ckADMISSION.Checked:=bValue;
  ckDENTAL.Checked:=bValue;


end;


procedure TfrmRp43Export.downloadtxtfile(zipfName:string);
var
    RetStream: TStream;

    Buffer: PByte;
    Mem: TMemoryStream;
    BytesRead: Integer;
    DocumentId: Int64;
    Size: Int64;

    BufSize: Integer;


begin
    BufSize := 1024;
     FDM.WriteLog('start download : '+zipfName);

    try
      Mem := TMemoryStream.Create;
      GetMem( Buffer, BufSize );

      try
        FDM.WriteLog('get stream');
        RetStream := FDM.DownloadFile('exports\'+zipfName);
        RetStream.Position := 0;

        Size := RetStream.Size;
        FDM.WriteLog(' stream size:'+inttostr(size));

        if ( Size <> 0 ) then
        begin
          //filename := 'person.txt';
          repeat
            BytesRead := RetStream.Read( Pointer( Buffer )^, BufSize );

            if ( BytesRead > 0 ) then
            begin
              Mem.WriteBuffer( Pointer( Buffer )^, BytesRead );
            end;

            //lStatus.Caption := IntToStr( Mem.Size ) + '/' + IntToStr( Size );
            //FDM.WriteLog(IntToStr( Mem.Size ) + '/' + IntToStr( Size ));
            Application.ProcessMessages;

          until ( BytesRead < BufSize );

          Mem.SaveToFile(ExtractFilePath(Application.ExeName)+'temp\'+zipfName);

          //ShellExecute(Handle,'open','http://localhost:8087/?',nil,nil,SW_ShowNormal);

          lbDownload.Caption:='<a href="'+UniServerModule.TempFolderURL+zipfName+'" target=new>2.Click here to download: ('+zipfName+')</a>';

          {
          if ( Size <> Mem.Size ) then
          begin
            //raise Exception.Create( 'Error downloading file...' );
            FDM.WriteLog('Error downloading file...');
          end;

          }

          FDM.WriteLog(' download success.');
        end
        else
        begin
          //lStatus.Caption := '';
        end;
      finally
        FreeMem( Buffer, BufSize );
        FreeAndNIl(Mem);
        FreeAndNil(RetStream);
      end;
    except
      on E: Exception do
      begin
        //lErrorMessage.Caption := PChar( E.ClassName + ': ' + E.Message );
      end;
    end;
end;

function TfrmRp43Export.getHospCode: string;
begin
  FDM.cdsSettingGetHospName.Close;
  FDM.getHospName('','');
  FDM.cdsSettingGetHospName.Open;

  result := FDM.cdsSettingGetHospName.FieldByName('hospcode').AsString;
end;

procedure TfrmRp43Export.ShowData();
var
  _Form: TUniForm;
begin




end;




//initialization
//  RegisterMainFormClass(TfrmPsPaymentByAppGrid);
procedure TfrmRp43Export._Confirm(AResult: Integer);
begin

end;



procedure TfrmRp43Export.btnCheckAllClick(Sender: TObject);
var bValue:boolean;
begin
  //inherited;
  bValue := true;

  ckPERSON.Checked:=bValue;
  ckADDRESS.Checked:=bValue;
  ckDEATH.Checked:=bValue;
  ckCARD.Checked:=bValue;

  ckDRUGALLERGY.Checked:=bValue;
  ckHOME.Checked:=bValue;
  ckSERVICE.Checked:=bValue;
  ckAPPOINTMENT.Checked:=bValue;

  ckACCIDENT.Checked:=bValue;
  ckDIAGNOSIS_OPD.Checked:=bValue;
  ckPROCEDURE_OPD.Checked:=bValue;
  ckDRUG_OPD.Checked:=bValue;

  ckCHARGE_OPD.Checked:=bValue;
  ckADDRESS.Checked:=bValue;
  ckDIAGNOSIS_IPD.Checked:=bValue;
  ckPROCEDURE_IPD.Checked:=bValue;

  ckDRUG_IPD.Checked:=bValue;
  ckCHARGE_IPD.Checked:=bValue;
  ckSURVEILLANCE.Checked:=bValue;
  ckWOMEN.Checked:=bValue;

  ckFP.Checked:=bValue;
  ckEPI.Checked:=bValue;
  ckNUTRITION.Checked:=bValue;
  ckPRENATAL.Checked:=bValue;

  ckANC.Checked:=bValue;
  ckLABOR.Checked:=bValue;
  ckPOSTNATAL.Checked:=bValue;
  ckNEWBORN.Checked:=bValue;

  ckNEWBORNCARE.Checked:=bValue;
  ckSPECIALPP.Checked:=bValue;
  ckNCDSCREEN.Checked:=bValue;
  ckCHRONIC.Checked:=bValue;

  ckCHRONICFU.Checked:=bValue;
  ckLABFU.Checked:=bValue;
  ckCOMMUNITY_SERVICE.Checked:=bValue;
  ckDISABILITY.Checked:=bValue;

  ckICF.Checked:=bValue;
  ckFUNCTIONAL.Checked:=bValue;
  ckREHABILITATION.Checked:=bValue;
  ckVILLAGE.Checked:=bValue;

  ckCOMMUNITY_ACTIVITY.Checked:=bValue;
  ckPROVIDER.Checked:=bValue;

  ckADMISSION.Checked:=bValue;
  ckDENTAL.Checked:=bValue;


end;

procedure TfrmRp43Export.btnDownloadClick(Sender: TObject);
begin
  inherited;
//  downloadtxtfile;
end;

procedure TfrmRp43Export.UniFormCreate(Sender: TObject);
var k:integer;
begin
   FUserSession :=  UniMainModule();
   FDM:= FUserSession.DS43FileDM;

  if (WebMode) then
  begin
    WebForm.ExtWindow.Draggable := False;
    WebForm.ExtWindow.Resizable := False;
  end;

////////////////////////////////////////////////////////////////////////////////
{$IFNDEF OBSS}
  FDM.UserID := 'admin';//UniApplication.Cookies.Values['userid'];
  FDM.UserPWD := 'admin';//UniApplication.Cookies.Values['userpwd'];

  {$IFDEF RELEASE}
  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    UniServerModule.ServerMessages.TerminateTemplate.Text :=
      '<html> ' +
      '<body bgcolor="#E6E6FA"> ' +
      '<p style="text-align:center;color:#0000A0">Authentication needed for this application,</p> ' +
      '<p style="text-align:center;color:#0000A0">please sign-on using Application Center.</p> <br>' +
      '<p style="text-align:center;color:#0000A0">ระบบต้องการสิทธิ์ในการเข้าถึงโปรแกรม</p> ' +
      '<p style="text-align:center;color:#0000A0">กรุณา Sign-On เข้าใช้งานโดยใช้ Application Center.</p> ' +
      '</body> ' +
      '</html>';
    UniApplication.Terminate();
    Exit;
  end;
  {$ENDIF}
  {$IFDEF DEBUG}
  if (Self.WebMode and (FDM.UserID = '')) then
  begin
    FDM.UserID := 'admin';
    FDM.UserPWD := 'admin';
  end;
  {$ENDIF}
{$ELSE}
  FDM.UserID := UniMainModule.UserID;

  FDM.UserPWD := UniMainModule.UserPWD;
{$ENDIF}

  FDM.LogIn(FDM.UserID, FDM.UserPWD);
////////////////////////////////////////////////////////////////////////////////

  order:='';

  {
  BtnView.Visible := True;
  btnAdd.Visible := True;
  btnDelete.Visible := True;
  btnEdit.Visible := True;
 }

{$IFDEF FSLOSHP}
  btnBack.Caption := 'ปิดโปรแกรม';
  btnBack.Visible := True;
{$ELSE}
  btnBack.Visible := False;
{$ENDIF}

end;

procedure TfrmRp43Export.UniFormShow(Sender: TObject);
var k:integer;
    yyyy,mm,dd:word;
    _yyyy,yyyy_th:integer;
begin
  lbDownload.Caption:='';

  cmbMonth.Items.Clear;
  cmbMonth.Items.AddObject('มกราคม',TString.Create('1'));
  cmbMonth.Items.AddObject('กุมภาพันธ์',TString.Create('2'));
  cmbMonth.Items.AddObject('มีนาคม',TString.Create('3'));
  cmbMonth.Items.AddObject('เมษายน',TString.Create('4'));
  cmbMonth.Items.AddObject('พฤษภาคม',TString.Create('5'));
  cmbMonth.Items.AddObject('มิถุนายน',TString.Create('6'));
  cmbMonth.Items.AddObject('กรกฎาคม',TString.Create('7'));
  cmbMonth.Items.AddObject('สิงหาคม',TString.Create('8'));
  cmbMonth.Items.AddObject('กันยายน',TString.Create('9'));
  cmbMonth.Items.AddObject('ตุลาคม',TString.Create('10'));
  cmbMonth.Items.AddObject('พฤศจิกายน',TString.Create('11'));
  cmbMonth.Items.AddObject('ธันวาคม',TString.Create('12'));
  cmbMonth.ItemIndex:=0;

  DecodeDate(now,yyyy,mm,dd);
  _yyyy:=yyyy;


  if yyyy<2500 then yyyy_th := yyyy+543 else yyyy_th := yyyy;

  cmbYear.Items.Clear;
  for k:=0 to 4 do
  begin
    cmbYear.Items.AddObject(inttostr(yyyy_th-k),TString.Create(inttostr(yyyy_th-k)));
  end;

  cmbYear.ItemIndex:=0;


  dtFrom.DateTime := EncodeDate(yyyy,mm-1,1);
  dtTo.DateTime := EndOfAMonth(yyyy,mm-1);


 // load batch dropdown list
 FDM.cdsGetBathList.close;
 fdm.getBatchList;
 FDM.cdsGetBathList.Open;


 fdm.loadBatchItems(cmbBatchCode.Items, '9999',true);
 cmbBatchCode.ItemIndex:=0;






end;


end.
