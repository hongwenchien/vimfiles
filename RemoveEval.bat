::
:: Remove Ultraedit
:: 
reg delete HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{9b4c79e8-d476-48e1-ad17-2253d0531ebb} /f
reg delete HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{bf2611c5-cf99-4e19-be15-83e593688709} /f
reg delete HKCU\SOFTWARE\Classes\WOW6432Node\CLSID\{c0bf323d-faa8-4b16-bdc9-92c6acb76dc1} /f

del "C:\ProgramData\IDMComp\UltraEdit\license\*.spl"

::
:: Remove Beyond Compare
::
reg delete "HKCU\Software\Scooter Software\Beyond Compare 4" /v CacheID /f
