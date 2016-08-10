@echo off

set _color="%~dp0bin\cocolor.exe"

set extractRAR="%~dp0bin\rar.exe" -y x
set extractZIP="%~dp0bin\unzip.exe" -o

set sleep="%~dp0bin\wait.exe"
set rm=rmdir /s /q

set adb="%~dp0bin\adb.exe"

set appName=0
set choice=2

set install=%adb% install
set uninstall=%adb% uninstall
set push=%adb% push
set pull=%adb% pull

set pathAndroid=Android/data/org.xbmc.kodi/files/.kodi
set pathIOS=private/var/mobile/Library/Preferences/Kodi
set pathMac=Users/USER_NAME_HERE/Library/Application Support/Kodi
set pathLinux=~/.kodi
set pathWindows=%AppData%\Kodi

set apk=

set sdcard=sdcard
::set sdcard=external_sd
::set sdcard=extSdCard

set fireOsVersion==0.0.0.0

::set baddieStringOne="ro.build.version.name=Fire OS 5.0.5.1 (537175520)"
::set baddieStringTwo="ro.build.version.incremental=54.5.3.7_user_537175520"
::set baddieStringThree="ro.build.version.fireos=5.0.5.1"
set baddieStringOne=537175520
set baddieStringTwo=54.5.3.7_user_537175520
set baddieStringThree=5.0.5.1

:: Set This Flag To "0" For Original FireStarter (pre 5.0.5.1)
:: Set This Flag To "1" For New Firestopper (post 5.0.5.1)
set baddieFlagOne=0
set baddieFlagTwo=0

:: Set This Flag To "0" For Original Firestarter
set baddieFlagActive=0

set buildDotProp=/system/build.prop

cls
%_color% 0e
set appName=FireStarter
set apk=
echo Installing %appName%...
echo.
%install% "apps\system\firestopper.apk"
::%install% "apps\system\firestarter.apk"
%push% "apps\system\sdcard\FireStarterBackup.zip" /sdcard/


cls
%_color% 0e
set appName=Kodi
set apk=
echo.
echo.
echo Installing %appName%...
echo.

set kodiBuild=default

md "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%"
%extractRAR% "%~dp0apps\media\kodi.apk.split" "%temp%\firestick-loader\apps\media"
%sleep% 3
%install% "%temp%\firestick-loader\apps\media\kodi.apk"

%extractRAR% "%~dp0apps\media\kodi\data\%kodiBuild%\kodi-data.split" "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%"

%sleep% 5

call "%~dp0apps\media\kodi\clean-kodi-sports-alt.cmd"

%sleep% 5

%push% "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%\addons" "/%sdcard%/%pathAndroid%/addons"
%push% "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%\userdata" "/%sdcard%/%pathAndroid%/userdata"

%rm% "%temp%\firestick-loader\apps\media\kodi"


::cls
::%_color% 0e
::set appName=XBMC Launcher
::set apk=
::echo.
::echo.
::echo Installing %appName%...
::echo.
::%install% "apps\system\xbmclauncher.apk"


cls
%_color% 0e
set appName=SopCast
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\sopcast.apk"


cls
%_color% 0e
set appName=AceStream
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\acestream.apk"


cls
%_color% 0e
set appName=Mobdro
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\mobdro.apk"


cls
%_color% 0e
set appName=NetFlix
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\netflix.apk"


cls
%_color% 0e
set appName=Hulu
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\hulu.apk"


::cls
::%_color% 0e
::set appName=Amazon Underground
::set apk=
::echo.
::echo.
::echo Installing %appName%...
::echo.
::%install% "apps\media\amazon-underground.apk"


::cls
::%_color% 0e
::set appName=Amazon Video
::set apk=
::echo.
::echo.
::echo Installing %appName%...
::echo.
::%install% "apps\media\amazon-video.apk"


cls
%_color% 0e
set appName=Movian
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\movian.apk"


cls
%_color% 0e
set appName=Popcorn Time
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%extractRAR% "%~dp0apps\media\popcorntime.apk.split" "%temp%\firestick-loader\apps\media"
%sleep% 3
%install% "%temp%\firestick-loader\apps\media\popcorntime.apk"


cls
%_color% 0e
set appName=VLC TV
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\vlc-tv-arm.apk"


::cls
::%_color% 0e
::set appName=Firefox
::set apk=
::echo.
::echo.
::echo Installing %appName%...
::echo.
::%install% "apps\web\firefox.apk"


cls
%_color% 0e
set appName=YouTube -No Play Services-
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\web\youtube.apk"


cls
%_color% 0e
set appName=Opera Mini
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\web\opera.apk"


::cls
::%_color% 0e
::set appName=Terminal Emulator
::set apk=
::echo.
::echo.
::echo Installing %appName%...
::echo.
::%install% "apps\system\terminal.apk"


cls
%_color% 0e
set appName=Root Explorer
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\system\rootexplorer.apk"


cls
%_color% 0e
set appName=Teamviewer
set apk=
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\web\teamviewer.apk"


cls
%_color% 0e
set appName=Wallpaper
echo.
echo.
echo Installing %appName%...
echo.
%push% "wallpaper" "/%sdcard%/wallpaper"


cls
%_color% 0e
set appName=Custom Boot Animation
echo.
echo.
echo Installing %appName%...
echo.

%shell% "rm /data/local/tmp/bootanimation.zip"
%push% "%~dp0bootanimation\stock-blue\bootanimation.zip" /data/local/tmp/
%push% "%~dp0scripts\replace-bootanimation.sh" /data/local/tmp/
%shell% "su -c chmod 755 /data/local/tmp/replace-bootanimation.sh"
%shell% "su -c sh /data/local/tmp/replace-bootanimation.sh"



goto end

:end



