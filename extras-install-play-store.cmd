@echo off

set _color="%cd%\bin\cocolor.exe"

set extractRAR="%~dp0bin\rar.exe" -y x
set extractZIP="%~dp0bin\unzip.exe" -o

set sleep="%~dp0bin\wait.exe"
set rm=rmdir /s /q

set adb="%~dp0bin\adb.exe"
set adbWait=%adb% wait-for-device

set appName=0
set choice=2

set install=%adb% install
set uninstall=%adb% uninstall
set push=%adb% push
set pull=%adb% pull
set shell=%adb% shell


goto new


cls
echo Installing Google Account Manager...
echo.
%adb% install "gapps\GoogleAccountManager4.0.3-239410.apk"
%adb% reboot
%adb% wait-for-device
echo.
echo.
echo Wait for reboot to finish and press ENTER
pause


echo.
echo.
echo Installing Google Play Services...
echo.
%adb% install "gapps\GooglePlayServices6.5.99.apk"
%adb% reboot
%adb% wait-for-device
echo.
echo.
echo Wait for reboot to finish and press ENTER
pause


echo.
echo.
echo Installing Google Play Store...
echo.
%adb% install "gapps\GooglePlayStore5.1.11.apk"



echo.
echo.
echo Installing Google Play Services Framework...
echo.
%adb% install "gapps\GoogleServicesFramework.apk"


echo.
echo.
echo Setting Google Services Permissions...
echo.
%adb% shell pm grant com.google.android.gms android.permission.INTERACT_ACROSS_USERS
::%adb% shell pm grant com.google.android.gms com.google.android.gms.INITIALIZE
::%adb% shell pm grant com.google.android.providers.gsf.permission.READ_GSERVICES


goto end



:new

cls
echo Pushing Google Play Store APK To Device...
echo.
echo.

%push% "gapps\GooglePlayStore5.10.31-Leanback-Resigned.apk" /sdcard/PhoneSky.apk


cls
echo Follow these steps (NO QUOTES):
echo.
echo.
echo *** OPEN A NEW COMMAND WINDOW (Hold Shift+Rt-Click) ***
echo.
echo.
echo 1) Type "adb shell" and press ENTER
echo.
echo 2) Type "su" and press ENTER (Allow on device)
echo.
echo 3) Type "mount -o remount,rw /system" and press ENTER
echo.
echo 4) Type "rm -rf /system/priv-app/Phonesky/Phonesky.apk" and press ENTER
echo.
echo 5) Type "cp /sdcard/Phonesky.apk /system/priv-app/Phonesky/" and press ENTER
echo.
echo 6) Type "chmod 644 /system/priv-app/Phonesky/Phonesky.apk" and press ENTER
echo.
echo 7) Type "rm -rf /sdcard/Phonesky.apk" and press ENTER
echo.
echo 8) Type "exit" and press ENTER at # prompt
echo.
echo 9) Type "exit" and press ENTER Again at $ prompt
echo.
echo.

pause


%adb% reboot
%adb% wait-for-device


cls
echo Follow these steps (NO QUOTES):
echo.
echo.
echo *** OPEN A NEW COMMAND WINDOW (Hold Shift+Rt-Click) ***
echo.
echo.
echo 1) Type "adb shell" and press ENTER
echo.
echo 2) Type "su" and press ENTER (Allow on device)
echo.
echo 3) Type "mount -o remount,ro /system" and press ENTER
echo.
echo 4) Type "exit" and press ENTER at # prompt
echo.
echo 5) Type "exit" and press ENTER Again at $ prompt
echo.
echo.

pause


goto end


set playItForward=l
cls
echo Open the Play Store and if you cannot get past login page press L and ENTER
echo.
echo.

set /p playItForward=

if %playItForward%==L %shell% input tap 1800 1000
if %playItForward%==l %shell% input tap 1800 1000


::%adb% reboot
::%adb% wait-for-device



::/dev/block/platform/sdhci.1/by-name/system




:end





