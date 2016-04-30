object UniServerModule: TUniServerModule
  OldCreateOrder = False
  AutoCoInitialize = False
  FilesFolder = 'files\'
  TempFolder = 'temp\'
  ExtRoot = 'ext-x.y.z\'
  SessionTimeout = 600000
  Port = 8086
  Title = 'Report 43 System Center'
  BGColor = 8404992
  CharSet = 'utf-8'
  StandAloneServer = False
  FaviconOptions = [foVisible, foLocalCache]
  AjaxTimeout = 600000
  DefaultImageFormat = cfPNG
  UseGlobalImageCache = True
  SuppressErrors = [errObjectNotFound, errAjax]
  UnavailableErrMsg = #3648#3595#3636#3629#3619#3660#3615#3648#3623#3629#3619#3660#3651#3594#3657#3591#3634#3609#3652#3617#3656#3652#3604#3657' '#3585#3619#3640#3603#3634#3621#3629#3591#3651#3627#3617#3656#3629#3637#3585#3588#3619#3633#3657#3591
  LoadingMessage = #3585#3635#3621#3633#3591#3650#3627#3621#3604#3627#3609#3657#3634#3648#3617#3609#3641' ...'
  Bindings = <>
  MainFormDisplayMode = mfPage
  CustomFiles.Strings = (
    'files/disablebackspace.js'
    'files/lang-th.js')
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">'#3617#3637#3586#3657#3629#3612#3636#3604#3614#3621#3634#3604#3648#3585#3636#3604#3586#3638#3657#3609#3651 +
      #3609' Application Center:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>'#3648#3619#3636#3656#3617#3605#3657#3609#3585#3634#3619#3607#3635#3591#3634#3609#3651#3627#3617#3656'</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>'#3648#3619#3636#3656#3617#3585#3634#3619#3607#3635#3591#3634#3609' Application Center '#3609#3637#3657#3651#3627#3617#3656'</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>'#3648#3619#3636#3656#3617#3585#3634#3619#3607#3635#3591#3634#3609' Application Center '#3609#3637#3657#3651#3627#3617#3656'</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 
    #3648#3595#3626#3594#3633#3656#3609#3652#3617#3656#3606#3641#3585#3605#3657#3629#3591#3652#3617#3656#3626#3634#3617#3634#3619#3606#3651#3594#3657#3591#3634#3609#3652#3604#3657#3627#3619#3639#3629#3627#3617#3604#3648#3623#3621#3634#3651#3609#3585#3634#3619#3648#3594#3639#3656#3629#3617#3605#3656#3629' (Ti' +
    'meOut)'
  ServerMessages.TerminateMessage = #3648#3595#3626#3594#3633#3656#3609#3585#3634#3619#3607#3635#3591#3634#3609#3586#3629#3591' Web Application Center '#3626#3636#3657#3609#3626#3640#3604#3585#3634#3619#3607#3635#3591#3634#3609
  ExtLocale = '[Auto]'
  Compression.MinTextSize = 512
  OnBeforeInit = UniGUIServerModuleBeforeInit
  Height = 150
  Width = 215
end
