@echo off

color 0e

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
set shell=%adb% shell

set dd=%shell% dd

set swipeUp=%shell% input swipe 200 900 200 300
set keyEnter=%shell% input keyevent 66
set keyTab=%shell% input keyevent 61


set sdcard=sdcard
::set sdcard=external_sd
::set sdcard=extSdCard

set fireOsVersion==5.2.1.0

set buildDotProp=/system/build.prop



cls
echo Dumping Partitions....
echo.
echo.

%dd% if=/dev/block/platform/sdhci.1/by-name/boot of=/sdcard/boot.img
%pull% %sdcard%/boot.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/boot.img

%dd% if=/dev/block/platform/sdhci.1/by-name/cache of=/sdcard/cache.img
%pull% %sdcard%/cache.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/cache.img

%dd% if=/dev/block/platform/sdhci.1/by-name/custom-cert of=/sdcard/custom-cert.img
%pull% %sdcard%/custom-cert.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/custom-cert.img

%dd% if=/dev/block/platform/sdhci.1/by-name/diag of=/sdcard/diag.img
%pull% %sdcard%/diag.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/diag.img

%dd% if=/dev/block/platform/sdhci.1/by-name/dt-blob of=/sdcard/dt-blob.img
%pull% %sdcard%/dt-blob.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/dt-blob.img

%dd% if=/dev/block/platform/sdhci.1/by-name/fbi of=/sdcard/fbi.img
%pull% %sdcard%/fbi.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/fbi.img

%dd% if=/dev/block/platform/sdhci.1/by-name/goldpersist of=/sdcard/goldpersist.img
%pull% %sdcard%/goldpersist.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/goldpersist.img

%dd% if=/dev/block/platform/sdhci.1/by-name/gpt of=/sdcard/gpt.img
%pull% %sdcard%/gpt.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/gpt.img

%dd% if=/dev/block/platform/sdhci.1/by-name/loader of=/sdcard/loader.img
%pull% %sdcard%/loader.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/loader.img

%dd% if=/dev/block/platform/sdhci.1/by-name/misc of=/sdcard/misc.img
%pull% %sdcard%/misc.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/misc.img

%dd% if=/dev/block/platform/sdhci.1/by-name/mobicore of=/sdcard/mobicore.img
%pull% %sdcard%/mobicore.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/mobicore.img

%dd% if=/dev/block/platform/sdhci.1/by-name/persist of=/sdcard/persist.img
%pull% %sdcard%/persist.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/persist.img

%dd% if=/dev/block/platform/sdhci.1/by-name/recovery of=/sdcard/recovery.img
%pull% %sdcard%/recovery.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/recovery.img

%dd% if=/dev/block/platform/sdhci.1/by-name/system of=/sdcard/system.img
%pull% %sdcard%/system.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/system.img

%dd% if=/dev/block/platform/sdhci.1/by-name/u-boot of=/sdcard/u-boot.img
%pull% %sdcard%/u-boot.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/u-boot.img

%dd% if=/dev/block/platform/sdhci.1/by-name/u-boot-env of=/sdcard/u-boot-env.img
%pull% %sdcard%/u-boot-env.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/u-boot-env.img

%dd% if=/dev/block/platform/sdhci.1/by-name/userdata of=/sdcard/userdata.img
%pull% %sdcard%/userdata.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/userdata.img

%dd% if=/dev/block/platform/sdhci.1/by-name/vc-firmware of=/sdcard/vc-firmware.img
%pull% %sdcard%/vc-firmware.img "%temp%\firestick-loader\partitions-dump"
%shell% rm %sdcard%/vc-firmware.img




start "" explorer "%temp%\firestick-loader\partitions-dump"


:end



