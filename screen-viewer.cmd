@echo off


:: Screen Capture Script for Amazon Firestick

:: esc0rtd3w / 2015

set wait="%~dp0bin\wait.exe"

set adb="%~dp0bin\adb.exe"

set capDevice=/sdcard/cap.png

set tempHost=%temp%
set capHost="%temp%\cap.png"

set waitTime=1

cls
echo Set wait timer (in seconds) and press ENTER:
echo.
echo.

set /p waitTime=

goto loop


:loop
cls
echo Capturing Device Screen....
echo.
echo.
echo.
echo.
echo *** USE CTRL+C AND SELECT N TO BREAK CURRENT OPERATION ***
echo.
echo.

%adb% shell screencap %capDevice%

%adb% pull %capDevice% %tempHost%

start "" %capHost%

%wait% %waitTime%


goto loop