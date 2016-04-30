echo off
echo Compressing binary files...
copy FSLOSAppServer.LARP64.exe FSLOSAppServer.exe
copy FSLOSAppServerService.LARP64.exe FSLOSAppServerService.exe
copy FSLOSAppServerCtrlPanel.LARP64.exe FSLOSAppServerCtrlPanel.exe

del FSLOSAppServer.LARP64.exe
del FSLOSAppServerService.LARP64.exe
del FSLOSAppServerCtrlPanel.LARP64.exe

echo deploying to 10.17.200.21...
copy FSLOSAppServer.exe \\10.17.200.21\klang\bin\appserver\
copy FSLOSAppServerService.exe \\10.17.200.21\klang\bin\appserver\
copy FSLOSAppServerCtrlPanel.exe \\10.17.200.21\klanf\bin\appserver\

copy Dbxadapter.dll \\10.17.200.21\klang\bin\appserver\
copy Dbxfb.dll \\10.17.200.21\fslos\klang\appserver\
copy Dbxmss.dll \\10.17.200.21\klang\bin\appserver\