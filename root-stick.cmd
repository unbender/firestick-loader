@echo off

:reset

title Amazon FireStick/FireTV Automatic Rooting and Downgrade Script  [esc0rtd3w]

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


:: Launch Different Apps
set launchSuperSU=%shell% am start -a android.intent.action.MAIN -n com.koushikdutta.superuser/.MainActivity
set launchAceStream=%shell% am start -a android.intent.action.MAIN -n org.acestream cmp=org.acestream/.player.gui.MainActivity
set launchSopCast=%shell% am start -a android.intent.action.MAIN -n org.acestream cmp=org.acestream/.player.gui.MainActivity

set suRequest=%shell% am start -a android.intent.action.MAIN -n com.android.internal.os.RuntimeInit uid 0


set cleanPackages=%shell% "su -c dumpsys package"


set returnTo=menu


:menu

::%adbKill%
::%adbStart%

%_color% 0e

set dgchoice=m

if %firstCheck%==0 goto checkCanRoot

cls
echo Rooting/Downgrade Menu [FireTV Stick]
echo.
echo.
echo.
%_color% 0a
echo Press Y To Use Full Automatic Mode
::if %rootable%==0 %_color% 0c
::if %rootable%==1 %_color% 0a
::echo Device is currently %rootableText%
%_color% 0e
echo.
echo.
echo Press I to install kingroot
echo.
echo Press R to root
echo.
echo Press S to issue an "su" request to the device
echo.
echo Press D to downgrade to stock 5.0.5
echo.
echo Press B to install busybox
echo.
echo Press A to disable Amazon Bloatware
::echo Press E to remove Amazon Bloatware
echo.
echo Press C to clear caches on device
echo.
echo Press U to unroot
echo.
echo Press P to replace kingroot with SuperSU
echo.
::echo Press F to launch firestopper
echo Press F to run fixes and tweaks
echo.
echo Press Z to directly invoke Amazon Settings menu items
echo.
echo Press X to exit
echo.
echo.
echo Make a choice and press ENTER....
echo.

set /p dgchoice=

if %dgchoice%==B goto busybox
if %dgchoice%==b goto busybox
::if %dgchoice%==F goto launchFS
::if %dgchoice%==f goto launchFS
if %dgchoice%==F goto fixesMenu
if %dgchoice%==f goto fixesMenu
if %dgchoice%==U goto unrootKing
if %dgchoice%==u goto unrootKing
if %dgchoice%==I goto installRoot
if %dgchoice%==i goto installRoot
if %dgchoice%==D goto downgrade
if %dgchoice%==d goto downgrade
if %dgchoice%==R goto root
if %dgchoice%==r goto root
if %dgchoice%==S goto doSU
if %dgchoice%==s goto doSU
if %dgchoice%==A set bloatAction=disable&&goto bloatBuster
if %dgchoice%==a set bloatAction=disable&&goto bloatBuster
::if %dgchoice%==E set bloatAction=enable&&goto bloatBuster
::if %dgchoice%==e set bloatAction=enable&&goto bloatBuster
if %dgchoice%==E goto bloatRemover
if %dgchoice%==e goto bloatRemover
if %dgchoice%==C goto clearCaches
if %dgchoice%==c goto clearCaches
if %dgchoice%==P goto superSU
if %dgchoice%==p goto superSU
if %dgchoice%==Z goto invoke
if %dgchoice%==z goto invoke
if %dgchoice%==Y goto fullAuto
if %dgchoice%==y goto fullAuto
if %dgchoice%==X goto end
if %dgchoice%==x goto end
if %dgchoice%==M goto menu
if %dgchoice%==m goto menu

:: Fix Amazon Android Remote App (Only if loaded from 20160802 and earlier builds)
::if %dgchoice%==V goto fixRemote
::if %dgchoice%==v goto fixRemote

goto menu


:invoke

%_color% 0e

set ichoice=y

cls
echo Direct Activity Invoker Menu [FireTV Stick]
echo.
echo.
if %rootable%==0 %_color% 0c
if %rootable%==1 %_color% 0a
echo Device is currently %rootableText%
%_color% 0e
echo.
echo.
echo Press S to Show Settings -- Main Window
echo.
echo Press D to Show Settings -- Display Window
echo.
echo Press P to Show Settings -- Parental Controls Window
echo.
echo Press C to Show Settings -- Controllers and Bluetooth Window
echo.
echo Press A to Show Settings -- Applications Window
echo.
echo Press S to Show Settings -- System Window
echo.
echo Press M to Show Settings -- My Account Window
echo.
echo.
echo Press Z to open advanced direct activies
echo.
echo Press B to go back to previous page
echo.
echo Press X to exit
echo.
echo.
echo Make a choice and press ENTER....
echo.

set /p ichoice=

if %ichoice%==S %showSettingsMain%
if %ichoice%==s %showSettingsMain%
if %ichoice%==D %showSettingsDisplay%
if %ichoice%==d %showSettingsDisplay%
if %ichoice%==P %showSettingsParental%
if %ichoice%==p %showSettingsParental%
if %ichoice%==C %showSettingsControllers%
if %ichoice%==c %showSettingsControllers%
if %ichoice%==A %showSettingsApplications%
if %ichoice%==a %showSettingsApplications%
if %ichoice%==S %showSettingsSystemMain%
if %ichoice%==s %showSettingsSystemMain%
if %ichoice%==M %showSettingsMyAccount%
if %ichoice%==m %showSettingsMyAccount%
if %ichoice%==Z goto advInvoke
if %ichoice%==z goto advInvoke
if %ichoice%==B goto menu
if %ichoice%==b goto menu
if %ichoice%==X goto end
if %ichoice%==x goto end
if %ichoice%==Y goto invoke
if %ichoice%==y goto invoke

goto invoke


:advInvoke

%_color% 0e

set achoice=y

cls
echo Advanced Direct Activity Invoker Menu [FireTV Stick]
echo.
echo.
if %rootable%==0 %_color% 0c
if %rootable%==1 %_color% 0a
echo Device is currently %rootableText%
%_color% 0e
echo.
echo.
echo Press A to Show Settings -- Applications -- Manage Window
echo.
echo Press R to Show Settings -- Controllers -- Add Amazon Remote
echo.
echo Press G to Show Settings -- Controllers -- Add Gamepad
echo.
echo Press H to Show Settings -- Controllers -- Add Bluetooth Device
echo.
echo Press D to Show Settings -- System -- Developer Options Window
echo.
echo Press F to Show Settings -- System -- Factory Reset Window
echo.
echo Press N to Show Device Notifications
echo.
echo.
echo Press B to go back to previous page
echo.
echo Press X to exit
echo.
echo.
echo Make a choice and press ENTER....
echo.

set /p achoice=

if %achoice%==A %showSettingsApplicationsManage%
if %achoice%==a %showSettingsApplicationsManage%
if %achoice%==D %showSettingsSystemDeveloper%
if %achoice%==d %showSettingsSystemDeveloper%
if %achoice%==F %showSettingsSystemFactoryReset%
if %achoice%==f %showSettingsSystemFactoryReset%
if %achoice%==R %showControllersAmazonRemote%
if %achoice%==r %showControllersAmazonRemote%
if %achoice%==G %showControllersFindGamepad%
if %achoice%==g %showControllersFindGamepad%
if %achoice%==H %showControllersFindBluetooth%
if %achoice%==h %showControllersFindBluetooth%
if %achoice%==N %showDeviceNotifications%
if %achoice%==n %showDeviceNotifications%
if %achoice%==B goto invoke
if %achoice%==b goto invoke
if %achoice%==X goto end
if %achoice%==x goto end
if %ichoice%==Y goto advInvoke
if %ichoice%==y goto advInvoke

goto advInvoke



:fixesMenu

%_color% 0e

set fchoice=y

cls
echo Fixes and Tweaks Menu [FireTV Stick]
echo.
echo.
echo.
echo 1) Fix Connectivity To Android FireTV Remote App
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo Press B to go back to previous page
echo.
echo Press X to exit
echo.
echo.
echo Make a choice and press ENTER....
echo.

set /p fchoice=

if %fchoice%==1 goto fixRemote
if %fchoice%==1 goto fixRemote
if %fchoice%==B goto menu
if %fchoice%==b goto menu
if %fchoice%==X goto end
if %fchoice%==x goto end

goto fixesMenu



:doSU

%shell% am start -a android.intent.action.MAIN -n com.kingroot.kinguser/.activitys.SliderMainActivity

%sleep% 5

::%shell% "su"
%runShellTerminate% ""%~dp0bin\adb.exe" shell "su""

cls
echo Find the new open window!
echo.
echo It should display a hash symbol [#]
echo.
echo If a dollar sign [$] is shown or an error occurs, restart device and try again
echo.
echo.
echo.
echo.
echo If the hash is displayed, you may close the window and continue
echo.
echo.
echo.
echo.
echo Press ENTER when you are ready to continue....
echo.
echo.

pause>nul

:: Root Authorization Button
::%tap% 100 1100

%keyHome%

goto menu


:checkCanRoot

set firstCheck=1

%pull% %buildDotProp% "%temp%"

findstr 5.0.5.1 "%temp%\build.prop"
if errorlevel 0 set rootable=1
if errorlevel 0 set rootableText=EXPLOITABLE (May Require Several Attempts)

findstr 5.2.1.0 "%temp%\build.prop"
if errorlevel 0 set rootable=1
if errorlevel 0 set rootableText=EXPLOITABLE

goto menu



:installRoot
cls
%_color% 0c
echo DO NOT TOUCH ANY KEYS ON THE FIRESTICK REMOTE UNTIL FINISHED!!!
echo.
echo.
%_color% 0e

:: Install KingoRoot
set apk="rooting\kingroot.apk"
set app=KingRoot
cls
echo Installing %app%....
echo.
echo.

%install% %apk%

%sleep% 8

goto menu


:root

cls
%_color% 0c
echo DO NOT TOUCH ANY KEYS ON THE FIRESTICK REMOTE UNTIL FINISHED!!!
echo.
echo.
%_color% 0e

%shell% am start -a android.intent.action.MAIN -n com.kingroot.kinguser/.activitys.SliderMainActivity

if %firstTimeRootAttempt%==1 (

	%sleep% 10
)

if %firstTimeRootAttempt%==0 (

	%sleep% 5
)


cls
%_color% 0c
echo DO NOT TOUCH ANY KEYS ON THE FIRESTICK REMOTE UNTIL FINISHED!!!
echo.
echo.
%_color% 0e

:: Swipe 1st Page Up
if %firstTimeRootAttempt%==1 (

	%swipeUp%
	%sleep% 5
)

:: Swipe 2nd Page Up
if %firstTimeRootAttempt%==1 (

	%swipeUp%
	%sleep% 5
)

:: Tab over to button
if %firstTimeRootAttempt%==1 (

	%keyTab%
	%sleep% 2
)

:: Press ENTER on button
if %firstTimeRootAttempt%==1 (

	%keyEnter%
)

:: Wait for app to load
if %firstTimeRootAttempt%==1 (

	%sleep% 15
)

:: Wait for app to load
if %firstTimeRootAttempt%==0 (

	%sleep% 5
)

:: Tab over to button
%keyTab%
%sleep% 2

:: Press ENTER on button
%keyEnter%
%sleep% 2


set firstTimeRootAttempt=0

set check=0
cls
%_color% 0e
echo KingRoot should be rooting device!
echo.
echo.
echo When you see the "Security Index 78" screen, press ENTER....
echo.
echo.
echo If this is not the case, close script and any active apps, then re-run script!
echo.
echo.
%_color% 0c
echo *** IF IT REBOOTS, DO NOT CONTINUE UNTIL A PASS/FAIL MESSAGE IS SEEN!! ***
echo.
echo.
echo *** IF THE ROOTING FAILS, OR GETS STUCK, 
echo PRESS ENTER TO RETURN TO MENU AND TRY AGAIN ***
echo.
echo.
echo *** YOU MAY SPAWN A NEW CMD WINDOW AND ISSUE AN 
echo "ADB SHELL" and "SU" COMMAND AROUND 27%% TO SPEED THINGS UP***
echo.
echo.
%_color% 0e

set /p check=

::if %check%==0 goto menu
::goto downgrade

::%keyBack%
%keyHome%

:: Removing Purify
%uninstall% com.kingstudio.purify

%sleep% 3

%keyHome%

%adbKill%

goto menu



:superSU

:: Install SuperSuMe
set apk="rooting\king2su\Superuser.apk"
set app=SuperSU

cls
echo Installing %app%....
echo.
echo.

%push% "%~dp0rooting\king2su\busybox" /data/local/tmp/
%push% "%~dp0rooting\king2su\su" /data/local/tmp/
%push% "%~dp0rooting\king2su\superuser.apk" /data/local/tmp/


%shell% "su -c rm /data/local/tmp/king2su.sh"
%push% "%~dp0rooting\king2su\king2su.sh" /data/local/tmp/
%shell% "su -c chmod 755 /data/local/tmp/king2su.sh"
%shell% "su -c sh /data/local/tmp/king2su.sh"

pause

%sleep% 3

%adb% reboot

::%shell% am start -a android.intent.action.MAIN -n darkslide.com.supersumepro/.MainActivity

::%shell% am start -a android.intent.action.MAIN -n eu.chainfire.supersu/eu.chainfire.supersu.MainActivity

::%sleep% 10

::%keyEnter%

::%sleep% 3

::%keyEnter%

goto menu



:killTheKing

%shell% "su -c rm /data/local/tmp/killking.sh"
%push% "%~dp0rooting\king2su\killking.sh" /data/local/tmp/
%shell% "su -c chmod 755 /data/local/tmp/killking.sh"
%shell% "su -c sh /data/local/tmp/killking.sh"

goto %returnTo%



:OLDsuperSU

:: Install SuperSU
set apk="rooting\king2su\superuser.apk"
set app=SuperSU
cls
echo Removing KingRoot and Installing %app%....
echo.
echo.

%mountRW%

:: Killing King Processes
::%killSuper% com.kingroot.RushRoot"
::%killSuper% com.kingroot.kinguser"

:: Uninstalling King Packages
%uninstall% com.kingroot.RushRoot
%uninstall% com.kingroot.kinguser

:: Removing King Files
%rmSuper% /system/app/Kinguser.apk"
%rmSuper% /system/app/Kinguser"


%killSuper% com.kingroot.master"
%uninstall% com.kingroot.master


:: Modify King Attributes
%shell% "su -c chattr -ia /system/xbin/ku.sud"
%rmSuper% /system/xbin/ku.sud"
%shell% "su -c chattr -ia /system/xbin/kugote"
%rmSuper% /system/xbin/kugote"
%shell% "su -c chattr -ia /system/xbin/su"
%rmSuper% /system/xbin/su"
%shell% "su -c chattr -ia /system/xbin/supolicy"
%rmSuper% /system/xbin/supolicy"
%shell% "su -c chattr -ia /system/xbin/supolicy"
%rmSuper% /system/xbin/supolicy"
%shell% "su -c chattr -ia /system/xbin/pidof"
%rmSuper% /system/xbin/pidof"

pause

:: Push king2su folder to sdcard
%push% %~dp0rooting\king2su /%sdcard%/king2su


%sleep% 2

%shell% "su -c mv /%sdcard%/king2su/su /system/xbin/su"
%shell% "su -c mv /%sdcard%/king2su/su /system/xbin/daemonsu"
%shell% "su -c mv /%sdcard%/king2su/su /system/xbin/sugote"
%shell% "su -c mv /system/bin/sh /system/xbin/sugote-mksh"

%shell% "su -c chown 0.0 /system/xbin/su"
%shell% "su -c chmod 6755 /system/xbin/su"
%shell% "su -c chown 0.0 /system/xbin/sugote"
%shell% "su -c chmod 0755 /system/xbin/sugote"
%shell% "su -c chown 0.0 /system/xbin/sugote-mksh"
%shell% "su -c chmod 0755 /system/xbin/sugote-mksh"
%shell% "su -c chown 0.0 /system/xbin/daemonsu"
%shell% "su -c chmod 0755 /system/xbin/daemonsu"

:: Remove leftover King files and packages
%shell% "su -c rm -r /data/app/com.kingroot.RushRoot-1"
%shell% "su -c rm -r /data/data/com.kingroot.RushRoot"
%shell% "su -c rm -r /data/data-lib/com.kingroot.RushRoot"
%shell% "su -c rm -r /data/app/com.kingroot.kinguser-1"
%shell% "su -c rm -r /data/data/com.kingroot.kinguser"
%shell% "su -c rm -r /data/data-lib/com.kingroot.kinguser"
%shell% "su -c rm -r /data/app/com.kingroot.master-1"
%shell% "su -c rm -r /data/data/com.kingroot.master"
%shell% "su -c rm -r /data/data-lib/king"



%shell% "su -c chattr -ia /system/bin/.usr/.ku"
%rmSuper% /system/bin/.usr/.ku"
%shell% "su -c chattr -ia /system/bin/rt.sh"
%rmSuper% /system/bin/rt.sh"
%shell% "su -c chattr -ia /system/bin/su"
%rmSuper% /system/bin/su"
%shell% "su -c chattr -ia /system/bin/ddexe-ku.bak"
%rmSuper% /system/bin/ddexe-ku.bak"
%shell% "su -c chattr -ia /system/bin/ddexe"
%rmSuper% /system/bin/ddexe"
%shell% "su -c chattr -ia /system/bin/ddexe_real"
%rmSuper% /system/bin/ddexe_real"
%shell% "su -c chattr -ia /system/bin/install-recovery.sh"
%rmSuper% /system/bin/install-recovery.sh"
%shell% "su -c chattr -ia /system/bin/install-recovery.sh-ku.bak"
%rmSuper% /system/bin/install-recovery.sh-ku.bak"

:: Remove any old SuperSU instances
%uninstall% eu.chainfire.supersu

%sleep% 2

:: Install SuperSU APK
%shell% "su -c mkdir /system/app/SuperSU"
%shell% "su -c cat /%sdcard%/king2su/superuser.apk > /system/app/SuperSU/base.apk"
::%shell% "su -c chown 0.0 /system/app/SuperSU/base.apk"
%shell% "su -c chmod 0644 /system/app/SuperSU/base.apk"
::%install% %apk%

%sleep% 2



:: Cleaning up leftover files
%shell% "su -c chattr -ia /system/usr/iku/isu"
%rmSuper% /system/usr/iku/isu"

%rmSuper% /dev/reportroot"

%shell% "su -c chattr -ia /system/etc/install-recovery.sh"
%rmSuper% /system/etc/install-recovery.sh"
%shell% "su -c chattr -ia /system/etc/install_recovery.sh"

%rmSuper% /system/app/Kinguser"
%rmSuper% /data/data-lib/king"
%rmSuper% /%sdcard%/Kingroot"
%rmSuper% /%sdcard%/kr-stock-conf"


%sleep% 2

:: Launch SuperSU
%shell% am start -a android.intent.action.MAIN -n eu.chainfire.supersu/.MainActivity


goto menu



:downgrade
cls
echo Preparing Downgrade Files....
echo.
echo.
%_color% 0c
echo *** BE SURE TO ALLOW SU PERMISSIONS WHEN REQUESTED FOR ADB ***
echo.
echo.
echo.
%_color% 0e

%sleep% 2

:: Extract update.bin RAR files
md "%temp%\firestick-loader\downgrade\stick"
%extractRAR% "%~dp0downgrade\stick\firestick-downgrade-505.split" "%temp%\firestick-loader\downgrade\stick"



:: Push update.bin to stick
cls
echo Pushing Downgrade files to device....
echo.
echo.
%_color% 0c
echo *** BE SURE TO ALLOW SU PERMISSIONS WHEN REQUESTED FOR ADB ***
echo.
echo.
echo.
%_color% 0e

%push% "%temp%\firestick-loader\downgrade\stick\update-kindle-montoya-54.5.3.7_user_537174420.bin" /%sdcard%/update.bin

%sleep% 10

%rm% "%temp%\firestick-loader\downgrade\stick"

:: Clear cache
cls
echo Cleaning current local cache....
echo.
echo.
%_color% 0c
echo *** BE SURE TO ALLOW SU PERMISSIONS WHEN REQUESTED FOR ADB ***
echo.
echo.
echo.
%_color% 0e

%shell% "su -c rm -f /cache/*.bin"
%shell% "su -c rm -f /cache/*.zip"
%shell% "su -c rm -f /cache/recovery/command"

::pause

%sleep% 1


:: Copy update.bin to cache
::cls
::echo Follow these steps (NO QUOTES):
::echo.
::echo.
::echo *** OPEN A NEW COMMAND WINDOW (Hold Shift+Rt-Click) ***
::echo.
::echo.
::echo 1) Type "adb shell" and press ENTER
::echo.
::echo 2) Type "su" and press ENTER (Allow on device)
::echo.
::echo 3) Type "mv /sdcard/update.bin /cache/" and press ENTER
::echo.
::echo 4) Type "echo --update_package=/cache/update.bin > /cache/recovery/command" and press ENTER
::echo.
::echo 5) Type "reboot recovery" at #: prompt and press ENTER
::echo.
::echo.

::pause

cls
echo Moving update.bin into local cache....
echo.
echo.
%_color% 0c
echo *** BE SURE TO ALLOW SU PERMISSIONS WHEN REQUESTED FOR ADB ***
echo.
echo.
echo.
%_color% 0e

%shell% "su -c mv /%sdcard%/update.bin /cache/"

::pause

cls
echo Creating update file to trigger during recovery....
echo.
echo.
%_color% 0c
echo *** BE SURE TO ALLOW SU PERMISSIONS WHEN REQUESTED FOR ADB ***
echo.
echo.
echo.
%_color% 0e

::%shell% "su -c echo --update_package=/cache/update.bin > /cache/recovery/command"

echo --update_package=/cache/update.bin>"%temp%\tmpShit.txt"
%push% "%temp%\tmpShit.txt" /%sdcard%/command
%shell% "su -c mv /%sdcard%/command /cache/recovery/command"
%shell% "su -c rm -f /%sdcard%/command"

::pause

::%shell% mv /sdcard/update.bin /cache/

::pause

%sleep% 1

:: Write file for recovery to load
::%shell% echo --update_package=/cache/update.bin > /cache/recovery/command

::pause

%shell% reboot recovery


cls
echo Rebooting....
echo.
echo.

%sleep% 5


cls
%_color% 0e
echo The Downgrade Process Should Be Happening!
echo.
echo The TV screen should be on the Amazon Install screen.
echo.
echo.
%_color% 0c
echo *** If this is not the case, try restarting the device and script. ***
echo.
echo *** If you are at the Android Recovery Screen, unplug and re-plug device ***
echo.
echo.
echo *** DO NOT PRESS ANY KEYS ON THE REMOTE OR UNPLUG THE DEVICE ***
echo.
echo.
echo.
%_color% 0e
echo Script will continue when device is at the Optimizing System Storage screen....
echo.
echo.

%sleep% 5

%adbWait%

%sleep% 30

::%adbWait%

cls
%_color% 0a
echo The Downgrade Process Should Have Been Successful!
echo.
echo.
%_color% 0e
echo The TV screen should be on the Optimizing System Storage screen.
echo.
echo.
%_color% 0c
echo *** If this is not the case, try restarting the device and script. ***
echo.
echo.
echo.
echo.
echo *** DO NOT PRESS ANY KEYS ON THE REMOTE OR UNPLUG THE DEVICE ***
echo.
echo.
echo.
%_color% 0e
echo When device is back at HOME screen, press ENTER....
echo.
echo.

pause

%sleep% 5

::%keyBack%
%keyHome%

cls
echo The device is now on version 5.0.5 and needs to reboot again to continue!
echo.
echo.
echo.
echo.
echo Rebooting one last time in 10 seconds....
echo.
echo.

%sleep% 10

%adb% reboot

cls
echo Rebooting....
echo.
echo.

%sleep% 10

%adbWait%

cls
echo Waiting For Boot Animation....
echo.
echo.

%sleep% 15

cls
echo Waiting For Home Screen To Finish Loading....
echo.
echo.
echo.
echo.
echo If the Home Screen is ready now, please wait a few moments!
echo.
echo.

%sleep% 20

cls
echo The device should now be at the HOME screen!
echo.
echo.
echo.
echo.
echo.
echo The device is now on stock firmware and needs rooted again to continue!
echo.
echo.
echo.
echo Press ENTER to continue with the rooting process....
echo.
echo.

pause>nul

%keyHome%

%sleep% 5

goto root


:noOTA
:: Disable Amazon Updates
cls
echo Disabling Amazon OTA Update Service....
echo.
echo.
::echo Follow these steps (NO QUOTES):
::echo.
::echo.
::echo *** OPEN A NEW COMMAND WINDOW (Hold Shift+Rt-Click) ***
::echo.
::echo.
::echo 1) Type "adb shell" and press ENTER
::echo.
::echo 2) Type "su" and press ENTER (Allow on device)
::echo.
::echo 3) Type "pm disable com.amazon.device.software.ota" and press ENTER
::echo.
::echo.

%sleep% 2

%shell% "su -c pm disable com.amazon.device.software.ota"
%shell% "su -c pm disable com.amazon.dcp"
%shell% "su -c pm disable com.amazon.device.software.ota.override"
%shell% "su -c pm disable com.amazon.settings.systemupdates"
%shell% "su -c pm disable com.amazon.settings.systemupdates/.OTAEventReceiver"

%sleep% 5

goto menu



:busybox

set app=Busybox

cls
echo Installing %app%....
echo.
echo.

%sleep% 3

::%shell% "su -c mount -o remount,rw /system"

%push% "%~dp0rooting\king2su\busybox" /data/local/tmp/
%push% "%~dp0scripts\install-busybox.sh" /data/local/tmp/
%shell% "su -c chmod 755 /data/local/tmp/install-busybox.sh"
%shell% "su -c sh /data/local/tmp/install-busybox.sh"

::%shell% "su -c mount -o remount,ro /system"

%sleep% 5

goto menu



:oldbusybox
:: Install Busybox
set apk="rooting\busybox.apk"
set app=Busybox
cls
echo Installing %app%....
echo.
echo.
echo.
%_color% 0c
echo *** IF DEVICE REBOOTS, CLOSE SCRIPT AND RUN AGAIN ***
echo.
echo.
echo.
echo *** BE SURE TO ALLOW SU PERMISSIONS UPON LAUNCH ***
echo.
echo.
%_color% 0e

%install% %apk%

%sleep% 2

%shell% am start -a android.intent.action.MAIN -n stericson.busybox/.Activity.MainActivity

cls
%_color% 0e
echo The Busybox installer should be open!
echo.
echo.
%_color% 0c
echo *** BE SURE TO ALLOW SU PERMISSIONS UPON LAUNCH ***
echo.
echo.
echo.
%_color% 0e
echo Once BusyBox is open, click BACK on the remote!
echo.
echo.
echo.
echo.
echo After you have finished these steps, press ENTER to continue....
echo.
echo.

pause

::%sleep% 2

::%keyBack%
%sleep% 2
%keyArrowDown%
%sleep% 1
%keyArrowDown%
%sleep% 1
%keyArrowDown%
%sleep% 1
%keyArrowDown%
%sleep% 1
%keyEnter%
%sleep% 1

cls
echo Once BusyBox installation is finished, press ENTER to continue....
echo.
echo.

pause

%keyBack%
%keyHome%
%sleep% 1
%uninstall% stericson.busybox

goto menu


:launchFS

cls
echo Launching FireStopper....
echo.
echo.

%shell% am start -a de.belu.firestopper/.gui.MainActivity -n de.belu.firestopper/.gui.MainActivity

goto menu


:unrootKing

set teamViewerSuRequest=0
set removeTeamViewer=0

cls
echo Preparing Files....
echo.
echo.

%uninstall% com.teamviewer.quicksupport.market
%sleep% 1
%install% "%~dp0apps\web\teamviewer.apk"

%sleep% 1

taskkill /f /im TeamViewer.exe
taskkill /f /im TeamViewer_Desktop.exe
taskkill /f /im tv_w32.exe
taskkill /f /im tv_x64.exe

%teamviewer%

%sleep% 3

:retryTV

if %removeTeamViewer%==1 %uninstall% com.teamviewer.quicksupport.market
if %removeTeamViewer%==1 %sleep% 3
if %removeTeamViewer%==1 %install% "%~dp0apps\web\teamviewer.apk"
if %removeTeamViewer%==1 taskkill /f /im TeamViewer.exe
if %removeTeamViewer%==1 taskkill /f /im TeamViewer_Desktop.exe
if %removeTeamViewer%==1 taskkill /f /im tv_w32.exe
if %removeTeamViewer%==1 taskkill /f /im tv_x64.exe
set removeTeamViewer=0
set teamViewerSuRequest=0

%shell% am start -a android.intent.action.MAIN -n com.teamviewer.quicksupport.market/com.teamviewer.quicksupport.ui.QSActivity

%sleep% 3


%teamviewer%

:: Launch Teamviewer
cls
%_color% 0e
echo Teamviewer on PC and FireStick should be open!
echo.
echo IF YOU GET A "Some Files Could Not Be Created" ERROR, CLICK OK AND CLOSE!
echo.
echo.
echo.
%_color% 0c
echo *** YOU MUST ACT FAST TO ALLOW SU PERMISSIONS ***
echo.
echo *** YOU WILL NEED TO PRESS RIGHT AND ENTER TO ALLOW PERMISSIONS ***
echo.
echo.
echo *** IF TEAMVIEWER GETS DENIED SU PERMISSIONS, PRESS R TO RETRY ***
echo.
echo.
echo.
%_color% 0e
echo Login to FireStick from PC, press Allow for Client and then SU Request
echo.
echo Once you have remote control access, press ENTER to continue....
echo.
echo.

set /p teamViewerSuRequest=

if %teamViewerSuRequest%==R set removeTeamViewer=1
if %teamViewerSuRequest%==r set removeTeamViewer=1

if %teamViewerSuRequest%==R goto retryTV
if %teamViewerSuRequest%==r goto retryTV



cls
echo Loading KingRoot....
echo.

%shell% am start -a android.intent.action.MAIN -n com.kingroot.kinguser/.activitys.SliderMainActivity

::%sleep% 3
::%swipeUp%
::%sleep% 2
::%swipeUp%
::%sleep% 2
::%keyTab%
%sleep% 2
::%keyEnter%

cls
%_color% 0e
echo KingRoot should be open!
echo.
echo.
%_color% 0c
echo *** IF THE PC TEAMVIEWER REMOTE SCREEN GOES BLANK, TRY RECONNECTING ***
echo.
echo.
echo *** TRY DIRECTLY CLICKING THE REMOTE VIEWER WINDOW ON FIRESTICK SCREEN ***
echo.
echo.
echo.
%_color% 0e
echo Use TeamViewer to select the top-right menu and click "General Settings"
echo.
echo.
echo.
echo Then click "Uninstall KingRoot" option and press CONTINUE, then OK on dialogs
echo.
echo.
%_color% 0c
echo *** IF TEAMVIEWER GETS DENIED SU PERMISSIONS, PRESS R TO RETRY ***
echo.
echo.
%_color% 0e
echo When unrooting is finished, press ENTER....
echo.
echo.

set /p teamViewerSuRequest=

if %teamViewerSuRequest%==R set removeTeamViewer=1
if %teamViewerSuRequest%==r set removeTeamViewer=1

if %teamViewerSuRequest%==R goto retryTV
if %teamViewerSuRequest%==r goto retryTV


taskkill /f /im TeamViewer.exe
taskkill /f /im TeamViewer_Desktop.exe
taskkill /f /im tv_w32.exe
taskkill /f /im tv_x64.exe

goto menu


:bloatBuster

cls
echo Making sure FireStarter is installed as a HOME Menu....
echo.
echo.
echo.
echo.
%_color% 0c
echo *** BE SURE TO ALLOW SU PERMISSIONS IF REQUESTED ***
%_color% 0e
echo.
echo.

%install% "%~dp0apps\system\firestopper.apk"


%shell% "su -c rm /data/local/tmp/bloat-disable.sh"

cls
%push% "%~dp0scripts\debloat\bloat-disable.sh" /data/local/tmp/
%shell% "su -c chmod 755 /data/local/tmp/bloat-disable.sh"
%shell% "su -c sh /data/local/tmp/bloat-disable.sh"

goto menu


:bloatRemover

cls
echo Making sure FireStarter is installed as a HOME Menu....
echo.
echo.
echo.
echo.
%_color% 0c
echo *** BE SURE TO ALLOW SU PERMISSIONS IF REQUESTED ***
%_color% 0e
echo.
echo.

%install% "%~dp0apps\system\firestopper.apk"


%shell% "su -c rm /data/local/tmp/full-debloat.sh"

cls
%push% "%~dp0scripts\debloat\full-debloat.sh" /data/local/tmp/
%shell% "su -c chmod 755 /data/local/tmp/full-debloat.sh"
%shell% "su -c sh /data/local/tmp/full-debloat.sh"

goto menu


:bloatBusterOld

cls
if %bloatAction%==disable echo Disabling Amazon Bloatware....
if %bloatAction%==enable echo Enabling Amazon Bloatware....
echo.
echo.

%shell% "su -c pm %bloatAction% amazon.jackson19"
%shell% "su -c pm %bloatAction% android.amazon.perm"
%shell% "su -c pm %bloatAction% com.amazon.acos.providers.UnifiedSettingsProvider"
%shell% "su -c pm %bloatAction% com.amazon.ags.app"
%shell% "su -c pm %bloatAction% com.amazon.android.marketplace"
%shell% "su -c pm %bloatAction% com.amazon.android.service.networkmonitor"
%shell% "su -c pm %bloatAction% com.amazon.application.compatibility.enforcer"
%shell% "su -c pm %bloatAction% com.amazon.application.compatibility.enforcer.sdk.library"
%shell% "su -c pm %bloatAction% com.amazon.avod"
%shell% "su -c pm %bloatAction% com.amazon.awvflingreceiver"
%shell% "su -c pm %bloatAction% com.amazon.bueller.music"
%shell% "su -c pm %bloatAction% com.amazon.bueller.notification"
%shell% "su -c pm %bloatAction% com.amazon.bueller.photos"
%shell% "su -c pm %bloatAction% com.amazon.client.metrics"
%shell% "su -c pm %bloatAction% com.amazon.client.metrics.api"
%shell% "su -c pm %bloatAction% com.amazon.communication.discovery"
%shell% "su -c pm %bloatAction% com.amazon.connectivitydiag"
%shell% "su -c pm %bloatAction% com.amazon.cpl"
%shell% "su -c pm %bloatAction% com.amazon.dcp"
%shell% "su -c pm %bloatAction% com.amazon.dcp.contracts.framework.library"
%shell% "su -c pm %bloatAction% com.amazon.dcp.contracts.library"
::%shell% "su -c pm %bloatAction% com.amazon.device.bluetoothdfu"
::%shell% "su -c pm %bloatAction% com.amazon.device.controllermanager"
%shell% "su -c pm %bloatAction% com.amazon.device.crashmanager"
%shell% "su -c pm %bloatAction% com.amazon.device.logmanager"
::%shell% "su -c pm %bloatAction% com.amazon.device.lowstoragemanager"
%shell% "su -c pm %bloatAction% com.amazon.device.messaging"
%shell% "su -c pm %bloatAction% com.amazon.device.messaging.sdk.internal.library"
%shell% "su -c pm %bloatAction% com.amazon.device.messaging.sdk.library"
%shell% "su -c pm %bloatAction% com.amazon.device.settings"
%shell% "su -c pm %bloatAction% com.amazon.device.settings.sdk.internal.library"
%shell% "su -c pm %bloatAction% com.amazon.device.software.ota"
%shell% "su -c pm %bloatAction% com.amazon.device.software.ota.override"
%shell% "su -c pm %bloatAction% com.amazon.device.sync"
%shell% "su -c pm %bloatAction% com.amazon.device.sync.sdk.internal"
%shell% "su -c pm %bloatAction% com.amazon.devicecontrol"
%shell% "su -c pm %bloatAction% com.amazon.dp.logger"
::%shell% "su -c pm %bloatAction% com.amazon.fireinputdevices"
%shell% "su -c pm %bloatAction% com.amazon.identity.auth.device.authorization"
%shell% "su -c pm %bloatAction% com.amazon.imp"
%shell% "su -c pm %bloatAction% com.amazon.kindle.cms"
%shell% "su -c pm %bloatAction% com.amazon.kindle.devicecontrols"
::%shell% "su -c pm %bloatAction% com.amazon.kindleautomatictimezone"
%shell% "su -c pm %bloatAction% com.amazon.kso.blackbird"
%shell% "su -c pm %bloatAction% com.amazon.metrics.api"
%shell% "su -c pm %bloatAction% com.amazon.ods.kindleconnect"
%shell% "su -c pm %bloatAction% com.amazon.parentalcontrols"
%shell% "su -c pm %bloatAction% com.amazon.platform.fdrw"
%shell% "su -c pm %bloatAction% com.amazon.precog"
%shell% "su -c pm %bloatAction% com.amazon.providers"
%shell% "su -c pm %bloatAction% com.amazon.providers.contentsupport"
%shell% "su -c pm %bloatAction% com.amazon.recess"
%shell% "su -c pm %bloatAction% com.amazon.securitysyncclient"
%shell% "su -c pm %bloatAction% com.amazon.settings.systemupdates"
%shell% "su -c pm %bloatAction% com.amazon.sharingservice.android.client.proxy"
%shell% "su -c pm %bloatAction% com.amazon.shoptv.client"
%shell% "su -c pm %bloatAction% com.amazon.shpm"
%shell% "su -c pm %bloatAction% com.amazon.ssm"
%shell% "su -c pm %bloatAction% com.amazon.storm.lightning.services"
%shell% "su -c pm %bloatAction% com.amazon.storm.lightning.tutorial"
%shell% "su -c pm %bloatAction% com.amazon.sync.provider.ipc"
%shell% "su -c pm %bloatAction% com.amazon.sync.service"
%shell% "su -c pm %bloatAction% com.amazon.tcomm"
%shell% "su -c pm %bloatAction% com.amazon.tcomm.client"
%shell% "su -c pm %bloatAction% com.amazon.tmm.tutorial"
%shell% "su -c pm %bloatAction% com.amazon.tv.csapp"
%shell% "su -c pm %bloatAction% com.amazon.tv.fw.metrics"
::%shell% "su -c pm %bloatAction% com.amazon.tv.ime"
::%shell% "su -c pm %bloatAction% com.amazon.tv.intentsupport"
::%shell% "su -c pm %bloatAction% com.amazon.tv.launcher"
%shell% "su -c pm %bloatAction% com.amazon.tv.legal.notices"
%shell% "su -c pm %bloatAction% com.amazon.tv.oobe"
//%shell% "su -c pm %bloatAction% com.amazon.tv.parentalcontrols"
::%shell% "su -c pm %bloatAction% com.amazon.tv.resolutioncycler"
::%shell% "su -c pm %bloatAction% com.amazon.tv.settings"
::%shell% "su -c pm %bloatAction% com.amazon.tv.support"
%shell% "su -c pm %bloatAction% com.amazon.tz.webcryptotzservice"
::%shell% "su -c pm %bloatAction% com.amazon.unifiedshare.actionchooser"
%shell% "su -c pm %bloatAction% com.amazon.venezia"
%shell% "su -c pm %bloatAction% com.amazon.videoads.app"
%shell% "su -c pm %bloatAction% com.amazon.visualonawv"
%shell% "su -c pm %bloatAction% com.amazon.vizzini"
%shell% "su -c pm %bloatAction% com.amazon.wcast.sink"
%shell% "su -c pm %bloatAction% com.amazon.webview"
%shell% "su -c pm %bloatAction% com.amazon.whisperlink.core.android"
%shell% "su -c pm %bloatAction% com.amazon.whisperplay.contracts"
%shell% "su -c pm %bloatAction% com.amazon.whisperplay.service.install"

%shell% "su -c pm %bloatAction% com.svox.pico"
%shell% "su -c pm %bloatAction% com.android.captiveportallogin"

:: Home may kill enough by itself (untested)
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.HomeActivity"

%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.ItemLoadingActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.primefreetrial.PrimeFreeTrialActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.purchase.OffDeviceSubscriptionActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.Channel1DActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.TVActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.SearchMenuActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.MoviesActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.YoursToWatchActivity"

%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.ReleaseNotesActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ui.purchase.VideoItemPurchaseActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.content.ComradeReceiver"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.demo.DemoPackageAddedReceiver"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.ads.AdRefreshReceiver"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.util.CategorySearchReceiver"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.util.LauncherPreloaderReceiver"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/.parentalcontrols.PCONPermissionsReceiver"
%shell% "su -c pm %bloatAction% com.amazon.tv.launcher/com.amazon.tv.mediabrowse.service.MediaBrowseServiceImpl"

%shell% "su -c pm %bloatAction% com.amazon.tv.settings/.blackcurtain.BlackCurtainActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.settings/.blackcurtain.AdultContentPrefsActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.settings/.tv.ThingsToTrySettingsActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.settings/.tv.AmazonAccountSettingsActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.settings/.tv.BuellerAccountSettingsActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.settings/.tv.AlexaSettingsActivity"
%shell% "su -c pm %bloatAction% com.amazon.tv.settings/.auth.BuellerSettingsMAPInformationProvider"

:: Disable Sleep Screen (Hold HOME Button)
::pm disable com.amazon.tv.settings/.hud.HomeLongPressReceiver

::pm disable com.amazon.tv.settings/.tv.usb.AppScanReceiver
::pm disable com.amazon.tv.settings.tv.usb.PackageMovedLocation

%shell% "su -c pm %bloatAction% com.amazon.settings.systemupdates/.OTAEventReceiver"

:: Disable Factory Reset Option
::%shell% "su -c pm %bloatAction% com.amazon.tv.settings/com.amazon.tv.settings.tv.FactoryResetActivity

%sleep% 3

%keyHome%
%keyArrowDown%
%sleep% 1
%keyArrowDown%
%sleep% 1
%keyHome%
%sleep% 1
%keyArrowDown%
%sleep% 1

%cleanPackages%

goto menu


:clearCaches

cls
echo Clearing Device Caches....
echo.
echo.
echo.
%_color% 0c
echo *** THE DEVICE WILL REBOOT WHEN FINISHED TO REBUILD DALVIK CACHES ***
%_color% 0e
echo.
echo.

%shell% "su -c rm -r /data/dalvik-cache"
%shell% "su -c rm -r /cache/dalvik-cache"
%shell% "su -c rm -f /cache/*.apk"
%shell% "su -c rm -f /cache/*.bin"
%shell% "su -c rm -f /cache/signed_com.amazon.kso.blackbird-1550000810.apk"

%sleep% 5

%adb% reboot

goto menu



:fullAuto





goto menu


:fixRemote

cls
%push% "%~dp0scripts\fixes\fix-amazon-android-remote-app.sh" /data/local/tmp/
%shell% "su -c chmod 755 /data/local/tmp/fix-amazon-android-remote-app.sh"
%shell% "su -c sh /data/local/tmp/fix-amazon-android-remote-app.sh"

goto fixesMenu



:end

%adbKill%



