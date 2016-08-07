@echo off

set adb="%~dp0bin\adb.exe"


:loop

%adb% logcat

::goto loop

