set apk=%1

@echo off

color 0e


set adb="%~dp0bin\adb.exe"


set install=%adb% install



cls


%install% %apk%





:end



