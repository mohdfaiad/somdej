unit MainMenusForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uniGUIForm, uniGUIFrame, uniGUITypes, StdCtrls, Buttons, UniBitBtn,
  pngimage, ExtCtrls, UniImage, UniLabel, UniPanel, ComCtrls, UniTreeView,
  OleCtrls, SHDocVw, UniURLFrame, UniSplitter, UniStatusBar,
  MainModuleEx, uniButton, uniGUIClasses,
  uniGUIAbstractClasses, uniGUIBaseClasses, uniScreenMask, MainMasterForm,
  Vcl.Imaging.GIFImg;

type
   TMenus = packed record
    ItemIndex: Integer;
    SelfRecID: Int64;
    ParentRecID: Int64;
    TreeViewNode: TUniTreeNode;
    AppName: String;
    FormName: String;
    ParamList: String;
    AppDesc: String;
    AppForm: TUniForm;
    AppOnClose: TCloseEvent;
    IsEnabled: Boolean;
    IsVisibled: Boolean;
  end;

  TfrmMainMenus = class(TUniForm)
    pnAppFrame: TUniPanel;
    pnTitle: TUniPanel;
    imgLogo: TUniImage;
    lbLastSignedOnDateEx: TUniLabel;
    lbUserNameEx: TUniLabel;
    lbUserIDEx: TUniLabel;
    scmMenusLoading: TUniScreenMask;
    tvMenus: TUniTreeView;
    PicHeader: TUniImage;
    stbFooter: TUniStatusBar;
    procedure tvMenusClick(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
  private
    FCurrentAppForm: TUniForm;
    FCurrentAppIndex: Integer;
    FFSLOSURLList: array of TMenus;

    FMenusCreating: Boolean;
    procedure InternalInitForm();
    procedure CreateAppForm(AppIndex: Integer);

  public
    { Public declarations }
  end;

function frmMainMenus: TfrmMainMenus;

implementation

{$R *.dfm}

uses
  uniGUIVars, StCodeForm;

function frmMainMenus: TfrmMainMenus;
begin
  Result := TfrmMainMenus(UniMainModule.GetFormInstance(TfrmMainMenus));
end;

procedure TfrmMainMenus.InternalInitForm();
var
  I: Integer;
begin

  SetLength(FFSLOSURLList, 0);
  try
    UniMainModule.PanelLeft := 0;
    UniMainModule.PanelTop := PicHeader.Height;
  except
  end;

  FCurrentAppForm := nil;
end;

procedure TfrmMainMenus.CreateAppForm(AppIndex: Integer);
begin
  try
    if (Assigned(FCurrentAppForm)) then
    try
      FCurrentAppForm.Visible := False;
      FreeAndNil(FFSLOSURLList[FCurrentAppIndex].AppForm);
      FCurrentAppForm := nil;
    except
    end;

    FFSLOSURLList[FCurrentAppIndex].AppForm := nil;
    FCurrentAppIndex := AppIndex;
    try
      if (Assigned(FFSLOSURLList[FCurrentAppIndex].AppForm)) then
        FreeAndNil(FFSLOSURLList[FCurrentAppIndex].AppForm);

      FFSLOSURLList[FCurrentAppIndex].AppForm := nil;
    except
    end;

    try

     UniMainModule.UniGUIApp := UniApplication;
      if (not Assigned(FFSLOSURLList[FCurrentAppIndex].AppForm)) then
      begin
        FCurrentAppForm := nil;
        if AppIndex = 3 then
          FFSLOSURLList[FCurrentAppIndex].AppForm := TfrmStCode.Create(UniApplication) // TfrmPersonal.Create(UniApplication)
        else
        begin
          try
            FFSLOSURLList[FCurrentAppIndex].AppForm :=
              TUniForm(FindClass(FFSLOSURLList[FCurrentAppIndex].FormName).NewInstance).Create(UniApplication);
            TMasterForm(FFSLOSURLList[FCurrentAppIndex].AppForm).SetParamList(
              FFSLOSURLList[FCurrentAppIndex].ParamList);
          except
            FFSLOSURLList[FCurrentAppIndex].AppForm := nil;
          end;
        end;
      end;

      FCurrentAppForm := FFSLOSURLList[FCurrentAppIndex].AppForm;
    except
      FFSLOSURLList[FCurrentAppIndex].AppForm := nil;
      FCurrentAppForm := nil;
    end;

    if (Assigned(FCurrentAppForm)) then
    begin
      FCurrentAppForm.Parent := pnAppFrame;
      FCurrentAppForm.Align := alNone;
      FCurrentAppForm.BorderStyle := bsNone;
      FCurrentAppForm.Left := pnAppFrame.Left;
      FCurrentAppForm.Top := pnTitle.Height;
      FCurrentAppForm.Height := pnAppFrame.Height;
      FCurrentAppForm.Width := pnAppFrame.Width;

      if (WebMode) then
      begin
        FCurrentAppForm.WebForm.ExtWindow.Draggable := False;
        FCurrentAppForm.WebForm.ExtWindow.Resizable := False;
      end;

      // FCurrentAppForm.MonitorScreenResize := True;
      FCurrentAppForm.Show();
      FCurrentAppForm.BringToFront();
    end;
  finally
    FMenusCreating := False;
    // LeaveCriticalSection(MenusCS);
  end;
end;


procedure TfrmMainMenus.tvMenusClick(Sender: TObject);
begin
  if (not FMenusCreating) then
  begin
    CreateAppForm(tvMenus.Selected.AbsoluteIndex);
  end
  else
  begin

    ShowMessage('กำลังเปิดโปรแกรม ' + tvMenus.Items[FCurrentAppIndex].Text +
      ' อยู่ กรุณารอสักครู่');
  end;
end;

procedure TfrmMainMenus.UniFormCreate(Sender: TObject);
begin
  InternalInitForm();
  FMenusCreating := False;

end;

initialization
 RegisterMainFormClass(TfrmMainMenus);

end.
