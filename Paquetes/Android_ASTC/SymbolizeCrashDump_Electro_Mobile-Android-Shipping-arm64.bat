@echo off
IF %1.==. GOTO NoArgs
setlocal
set NDK_ROOT=%ANDROID_NDK_ROOT%
if "%ANDROID_NDK_ROOT%"=="" set NDK_ROOT="C:\NVPACK\android-ndk-r18b"
set NDKSTACK=%NDK_ROOT%\ndk-stack.cmd

%NDKSTACK% -sym Electro_Mobile_Symbols_v1/Electro_Mobilearm64 -dump "%1" > Electro_Mobile_SymbolizedCallStackOutput.txt

goto:eof


:NoArgs
echo.
echo Required argument missing, pass a dump of adb crash log. (SymboliseCallStackDump C:\adbcrashlog.txt)
pause
