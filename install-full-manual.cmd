@echo off

set _color="%cd%\bin\cocolor.exe"

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

set kodiBuild=default

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

set fsContinue=0

cls
%_color% 0e
set appName=FireStarter
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Home Replacement App
echo.
set /p choice=


if %choice%==1 (
		echo.
		echo.
		echo Installing %appName%...
		echo.

		%install% "apps\system\firestopper.apk"
		%push% "apps\system\sdcard\FireStarterBackup.zip" /sdcard/
)


	
cls
%_color% 0e
set appName=Kodi
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: XBMC: XBOX Media Center
echo.
set /p choice=
if %choice%==1 (
	echo.
	echo.
	echo Installing %appName%...
	echo.

	md "%temp%\firestick-loader\apps\media\kodi"

	%extractRAR% "%~dp0apps\media\kodi.apk.split" "%temp%\firestick-loader\apps\media"
	%sleep% 3
	%install% "%temp%\firestick-loader\apps\media\kodi.apk"

	%rm% "%temp%\firestick-loader\apps\media\kodi"
)


cls
set kodiBuildSelect=2
%_color% 0e
set appName=Kodi Data
set apk=
echo Select Type of Kodi Data To Transfer and Press ENTER (Default 2):
echo.
echo 1) None   2) Default   3) No Sports
echo.
echo.
%_color% 0b
echo Requirements: Kodi
echo.
echo Info: Kodi Addon and User Data
echo.
set /p kodiBuildSelect=

if %kodiBuildSelect%==1 (

	cls
	echo.

)

if %kodiBuildSelect%==2 (

	set kodiBuild=default

	echo.
	echo.
	echo Installing %appName% / %kodiBuild%...
	echo.


	md "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%"

	%extractRAR% "%~dp0apps\media\kodi\data\%kodiBuild%\kodi-data.split" "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%"
	%push% "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%\addons" "/%sdcard%/%pathAndroid%/addons"
	%push% "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%\userdata" "/%sdcard%/%pathAndroid%/userdata"

	%rm% "%temp%\firestick-loader\apps\media\kodi"
)

if %kodiBuildSelect%==3 (

	set kodiBuild=no-sports

	echo.
	echo.
	echo Installing %appName% / %kodiBuild%...
	echo.


	md "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%"

	%extractRAR% "%~dp0apps\media\kodi\data\%kodiBuild%\kodi-data.split" "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%"
	%push% "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%\addons" "/%sdcard%/%pathAndroid%/addons"
	%push% "%temp%\firestick-loader\apps\media\kodi\data\%kodiBuild%\userdata" "/%sdcard%/%pathAndroid%/userdata"

	%rm% "%temp%\firestick-loader\apps\media\kodi"
)


cls
%_color% 0e
set appName=XBMC Launcher
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: Kodi (XBMC)
echo.
echo Info: Use Kodi as a HOME Replacement
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.

%install% "apps\system\xbmclauncher.apk"
)


cls
%_color% 0e
set appName=SopCast
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: Kodi Uses This App
echo.
echo Info: Torrent Streaming App
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.

%install% "apps\media\sopcast.apk"
)


cls
%_color% 0e
set appName=AceStream
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: Kodi Uses This App
echo.
echo Info: Torrent Streaming App
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.

%install% "apps\media\acestream.apk"
)


cls
%_color% 0e
set appName=Mobdro
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Live TV App
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.

%install% "apps\media\mobdro.apk"
)


cls
%_color% 0e
set appName=NetFlix
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Media Streaming Service
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.

%install% "apps\media\netflix.apk"
)


cls
%_color% 0e
set appName=Hulu
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Media Streaming Service
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.

%install% "apps\media\hulu.apk"
)


cls
%_color% 0e
set appName=Movian
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Showtime Media Player
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\movian.apk"
)


cls
%_color% 0e
set appName=Popcorn Time
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: MOUSE/KEYBOARD
echo.
echo Info: NONE
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%extractRAR% "%~dp0apps\media\popcorntime.apk.split" "%temp%\firestick-loader\apps\media"
%sleep% 3
%install% "%temp%\firestick-loader\apps\media\popcorntime.apk"
)


cls
%_color% 0e
set appName=VLC TV
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Open Source Multimedia Player
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\media\vlc-tv-arm.apk"
)


cls
%_color% 0e
set appName=UC Browser Mini
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Lightweight Web Browser
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\web\ucmini.apk"
)


cls
%_color% 0e
set appName=Servers Ultimate
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Run HTTP, FTP, more from FireStick
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\system\serversultimate.apk"
)


cls
%_color% 0e
set appName=Terminal
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE/KEYBOARD?
echo.
echo Info: Run terminal commands
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\system\terminal.apk"
)


cls
%_color% 0e
set appName=Root Explorer
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: File Manager
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\system\rootexplorer.apk"
)


cls
%_color% 0e
set appName=Teamviewer
set apk=
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Remote Control Over Network for Android
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%install% "apps\web\teamviewer.apk"
)


:instWP
cls
%_color% 0e
set appName=Wallpaper
echo Install %appName%?
echo.
echo 1) Yes   2) No
echo.
echo.
%_color% 0b
echo Requirements: NONE
echo.
echo Info: Various Wallpapers
echo.
set /p choice=
if %choice%==1 (
echo.
echo.
echo Installing %appName%...
echo.
%push% "wallpaper" "/%sdcard%/wallpaper"
)


goto end

:end



