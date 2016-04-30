unit frmMainMenusForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUIFrame, uniGUITypes, StdCtrls, Buttons, UniBitBtn,
  pngimage, ExtCtrls, UniImage, UniLabel, UniPanel, ComCtrls, UniTreeView,
  OleCtrls, SHDocVw, UniURLFrame, UniSplitter, UniStatusBar,
  MainModuleEx, uniButton, uniGUIClasses,
  uniGUIAbstractClasses, uniGUIBaseClasses, uniScreenMask,
  Vcl.Imaging.GIFImg, Vcl.Imaging.jpeg, uniHTMLFrame, uniTimer, uniEdit,
  uniSpeedButton, Vcl.ImgList, uniGroupBox, FS.UniGUI.Region.Panel,MainDataFormClass;

var
  _APP_NAME_LIST_: array of String;

type


  TfrmMainMemus = class(TUniForm)
    pnLayOut: TUniPanel;
    pnTitle: TUniPanel;
    pnFooter: TUniPanel;
    pnAppFrame: TUniRegionPanel;
    imgBackground: TUniImage;
    pnMenus: TUniRegionPanel;
    tvMenus: TUniTreeView;
    pnSearchMenus: TUniPanel;
    edMenusSearch: TUniEdit;
    btnMenusSearch: TUniBitBtn;
    UniImage2: TUniImage;
    UniLabel11: TUniLabel;
    UniLabel12: TUniLabel;
    UniPanel3: TUniPanel;
    UniPanel1: TUniPanel;
    procedure tvMenusDblClick(Sender: TObject);
  private
  FCurrentAppForm: TUniForm;
  procedure showweb;
  public
  end;

  function frmMainMemus: TfrmMainMemus;


implementation

{$R *.dfm}

uses uniguivars, uRegisterNewPatient,  Unit1;


function frmMainMemus: TfrmMainMemus;
begin
  Result := TfrmMainMemus(UniMainModule.GetFormInstance(TfrmMainMemus));
end;


procedure TfrmMainMemus.showweb();
begin
      if (Assigned(FCurrentAppForm)) then
    begin

      FCurrentAppForm.WindowState := wsNormal;
      //   FCurrentAppForm.Parent := pnAppFrame;
      FCurrentAppForm.Align := alNone;
      FCurrentAppForm.BorderStyle := bsSingle;
      //   FCurrentAppForm.BorderStyle := bsSizeable;
      FCurrentAppForm.Left := 0;//pnAppFrame.Left;
      FCurrentAppForm.Top := pnTitle.Height;
      //   FCurrentAppForm.Height := pnMainBody.Height + pnFooter.Height + stbFooter.Height;
      FCurrentAppForm.Height := pnAppFrame.Height +  pnFooter.Height;
      FCurrentAppForm.Width := pnAppFrame.Width ;

      if (WebMode) then
      begin
        FCurrentAppForm.WebForm.ExtWindow.Draggable := False;
        FCurrentAppForm.WebForm.ExtWindow.Resizable := False;
      end;

      FCurrentAppForm.Show();
      FCurrentAppForm.BringToFront();
      //FCurrentAppForm.Show();

    end;
end;

procedure TfrmMainMemus.tvMenusDblClick(Sender: TObject);
var frmRegisterNewPatient:TfrmRegisterPatient;
begin
  //FCurrentAppForm :=TfrmRegisterNewPatient.Create(UniApplication); //UniApplication
  FCurrentAppForm :=TUniForm1.Create(UniApplication); //UniApplication
  //FCurrentAppForm.Show();
  //FCurrentAppForm :=TfrmRegisterPatient.Create(UniApplication); //UniApplication
  showweb;

  // UniForm1.show;
end;

initialization
  RegisterMainFormClass(TfrmMainMemus);
end.
