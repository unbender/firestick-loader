@echo off

:reset

title Amazon FireStick/FireTV Super Script                 [esc0rtd3w]

mode con lines=36

color 0e

set runShellNoTerminateAndWait=cmd /k
set runShellNoTerminate=start cmd /k
set runShellWaitNoTerminate=start /wait cmd /k
set runShellTerminateAndWait=cmd /c
set runShellTerminate=start cmd /c
set runShellWaitTerminate=start /wait cmd /c

set _color="%cd%\bin\cocolor.exe"

set extractRAR="%~dp0bin\rar.exe" -y x
set extractZIP="%~dp0bin\unzip.exe" -o

set teamviewer="%~dp0bin\teamviewer.exe"

set sleep="%~dp0bin\wait.exe"
set rm=rmdir /s /q

set adb="%~dp0bin\adb.exe"
set adbKill="%~dp0bin\adb.exe" kill-server
set adbStart="%~dp0bin\adb.exe" start-server
set adbWait=%adb% wait-for-device

set appName=0
set choice=2

set install=%adb% install
set uninstall=%adb% uninstall
set push=%adb% push
set pull=%adb% pull
set shell=%adb% shell

set tap=%adb% shell input tap
set swipe=%shell% input swipe
set key=%shell% input keyevent

set swipeUp=%shell% input swipe 200 900 200 300
set keyEnter=%shell% input keyevent 66
set keyOk=%shell% input keyevent 23
set keyTab=%shell% input keyevent 61
set keyArrowUp=%shell% input keyevent 19
set keyArrowDown=%shell% input keyevent 20
set keyArrowLeft=%shell% input keyevent 21
set keyArrowRight=%shell% input keyevent 22

set keyBack=%shell% input keyevent 3
set keyHome=%shell% input keyevent 4

set bloatAction=disable


set sdcard=sdcard
::set sdcard=external_sd
::set sdcard=extSdCard

set fireOsVersion=0.0.0.0

set buildDotProp=/system/build.prop

set rootable=0
set rootableText=NOT EXPLOITABLE
set firstCheck=0
set firstTimeRootAttempt=1


set mountRW=%shell% "su -c mount -o rw,remount /system"
set mountRO=%shell% "su -c mount -o ro,remount /system"

set kill=%shell% am kill

:: Must use double quotes after process/package for Super Kill
set killSuper=%shell% "su -c am kill

:: Must use double quotes after process/package for Super Kill
set rmSuper=%shell% "su -c rm


:: Direct Invoking

:: Settings -> Main
set showSettingsMain=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.launcher/.ui.SettingsActivity

:: Settings -> Display & Sounds
set showSettingsDisplay=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.BuellerDisplayAndSoundsSettingsActivity

:: Settings -> Parental Controls
set showSettingsParental=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.parentalcontrols/.PCONSettingsActivity

:: Settings -> Controllers and Bluetooth Devices
set showSettingsControllers=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.BuellerControllersSettingsActivity

:: Find Amazon Remote
set showControllersAmazonRemote=%shell% "su -c am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.devices.BuellerRemoteDiscoveryActivity"

:: Find Gamepad
set showControllersFindGamepad=%shell% "su -c am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.devices.BuellerGamepadDiscoveryActivity"

:: Find Bluetooth Device
set showControllersFindBluetooth=%shell% "su -c am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.devices.BuellerInputDeviceDiscoveryActivity"

:: Settings -> Applications
set showSettingsApplications=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.BuellerApplicationsSettingsActivity
set showSettingsApplicationsManage=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.AllApplicationsSettingsActivity

:: Settings -> System
set showSettingsSystemMain=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.BuellerSystemSettingsActivity
set showSettingsSystemDeveloper=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.BuellerDevelopmentSettingsActivity
set showSettingsSystemFactoryReset=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.FactoryResetActivity
::set showSettingsSystemFactoryResetNow=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.FactoryResetActivity

:: Settings -> My Account
set showSettingsMyAccount=%shell% am start -a android.intent.action.MAIN -n com.amazon.tv.settings/.tv.BuellerAccountSettingsActivity

:: Misc Invokes
set showDeviceNotifications=%shell% am start -a android.intent.action.MAIN -n com.amazon.bueller.notification/com.amazon.bueller.notification.BuellerDeviceService

set cwmSU=%shell% am start -a android.intent.action.MAIN -n com.koushikdutta.superuser/.MainActivity


set cleanPackages=%shell% "su -c dumpsys package"


set returnTo=menu


:menu

::%adbKill%
::%adbStart%

%_color% 0e

set dgchoice=m

if %firstCheck%==0 goto checkCanRoot

cls
echo Amazon FireStick/FireTV Super Script
echo.
echo.
if %rootable%==0 %_color% 0c
if %rootable%==1 %_color% 0a
echo Device is currently %rootableText%
%_color% 0e
echo.
echo.
echo.
echo Press X to exit
echo.
echo.
echo Make a choice and press ENTER....
echo.

set /p dgchoice=

if %dgchoice%==X goto end
if %dgchoice%==x goto end
if %dgchoice%==M goto menu
if %dgchoice%==m goto menu

goto menu


:end

::%adbKill%



