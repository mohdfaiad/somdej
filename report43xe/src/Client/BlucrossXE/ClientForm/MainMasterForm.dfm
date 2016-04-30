object MasterForm: TMasterForm
  Left = 0
  Top = 0
  Caption = 'Master Form'
  ClientHeight = 243
  ClientWidth = 527
  Color = clBtnFace
  OldCreateOrder = False
  Position = poDefaultPosOnly
  Script.Strings = (
    'document.oncontextmenu=new Function("return false;")')
  ClientEvents.ExtEvents.Strings = (
    
      '0-OnActivate=function window.OnActivate(sender, eOpts)'#13#10'{'#13#10'  //w' +
      'indow.curWindow = sender; '#13#10'  var el = FSMainMenusForm.pnAppFram' +
      'e.getPositionEl();'#13#10'  sender.setPosition(1, el.getTop(true)+1);'#13 +
      #10'  sender.setSize(FSMainMenusForm.pnAppFrame.getWidth()-1, FSMai' +
      'nMenusForm.pnAppFrame.getHeight()-1);'#13#10'}')
  MonitoredKeys.Keys = <>
  RTL = False
  PixelsPerInch = 96
  TextHeight = 13
end
