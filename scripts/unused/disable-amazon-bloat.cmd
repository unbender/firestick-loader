@echo off

:reset

color 0e

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

set swipeUp=%shell% input swipe 200 900 200 300
set keyEnter=%shell% input keyevent 66
set keyTab=%shell% input keyevent 61


set sdcard=sdcard
::set sdcard=external_sd
::set sdcard=extSdCard



cls
echo Disabling Amazon Bloatware....
echo.
echo.

%shell% "su -c pm disable com.amazon.ags.app"
%shell% "su -c pm disable com.amazon.avod"
%shell% "su -c pm disable com.amazon.bueller.music"
%shell% "su -c pm disable com.amazon.bueller.photos"
%shell% "su -c pm disable com.amazon.client.metrics"
::%shell% "su -c pm disable com.amazon.communication"
%shell% "su -c pm disable com.amazon.communication.discovery"
%shell% "su -c pm disable com.amazon.connectivitydiag"
%shell% "su -c pm disable com.amazon.dcp"
%shell% "su -c pm disable com.amazon.device.crashmanager"
%shell% "su -c pm disable com.amazon.device.logmanager"
%shell% "su -c pm disable com.amazon.device.messaging"
%shell% "su -c pm disable com.amazon.device.software.ota"
::%shell% "su -c pm disable com.amazon.device.services"
%shell% "su -c pm disable com.amazon.identity.auth.device.authorization"
%shell% "su -c pm disable com.amazon.imp"
%shell% "su -c pm disable com.amazon.kindle.cms"
::%shell% "su -c pm disable com.amazon.kindle.cms-service"
%shell% "su -c pm disable com.amazon.kso.blackbird"
%shell% "su -c pm disable com.amazon.ods.kindleconnect"
%shell% "su -c pm disable com.amazon.platform.fdrw"
%shell% "su -c pm disable com.amazon.precog"
%shell% "su -c pm disable com.amazon.securitysyncclient"
%shell% "su -c pm disable com.amazon.sharingservice.android.client.proxy"
%shell% "su -c pm disable com.amazon.shoptv.client"
%shell% "su -c pm disable com.amazon.ssm"
%shell% "su -c pm disable com.amazon.storm.lightning.services"
%shell% "su -c pm disable com.amazon.storm.lightning.tutorial"
%shell% "su -c pm disable com.amazon.sync.provider.ipc"
%shell% "su -c pm disable com.amazon.sync.service"
%shell% "su -c pm disable com.svox.pico"
%shell% "su -c pm disable com.amazon.tcomm"
%shell% "su -c pm disable com.amazon.tmm.tutorial"
::%shell% "su -c pm disable com.amazon.tv.aiv.support"
%shell% "su -c pm disable com.amazon.tv.csapp"
%shell% "su -c pm disable com.amazon.tv.fw.metrics"
::%shell% "su -c pm disable com.amazon.tv.launcher"
%shell% "su -c pm disable com.amazon.tv.legal.notices"
%shell% "su -c pm disable com.amazon.tv.oobe"
%shell% "su -c pm disable com.amazon.tv.parentalcontrols"
%shell% "su -c pm disable com.amazon.unifiedshare.actionchooser"
%shell% "su -c pm disable com.amazon.venezia"
%shell% "su -c pm disable com.amazon.videoads.app"
%shell% "su -c pm disable com.amazon.visualonawv"
%shell% "su -c pm disable com.amazon.vizzini"
%shell% "su -c pm disable com.amazon.whisperlink.core.android"