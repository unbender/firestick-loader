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
echo Uninstalling Amazon Bloatware....
echo.
echo.




%shell% "su -c am kill com.amazon.ags.app"
%shell% "su -c am kill com.amazon.avod"
%shell% "su -c am kill com.amazon.bueller.music"
%shell% "su -c am kill com.amazon.bueller.photos"
%shell% "su -c am kill com.amazon.client.metrics"
::%shell% "su -c am kill com.amazon.communication"
%shell% "su -c am kill com.amazon.communication.discovery"
%shell% "su -c am kill com.amazon.connectivitydiag"
%shell% "su -c am kill com.amazon.dcp"
%shell% "su -c am kill com.amazon.device.crashmanager"
%shell% "su -c am kill com.amazon.device.logmanager"
%shell% "su -c am kill com.amazon.device.messaging"
%shell% "su -c am kill com.amazon.device.software.ota"
::%shell% "su -c am kill com.amazon.device.services"
%shell% "su -c am kill com.amazon.identity.auth.device.authorization"
%shell% "su -c am kill com.amazon.imp"
%shell% "su -c am kill com.amazon.kindle.cms"
%shell% "su -c am kill com.amazon.kso.blackbird"
%shell% "su -c am kill com.amazon.ods.kindleconnect"
%shell% "su -c am kill com.amazon.platform.fdrw"
%shell% "su -c am kill com.amazon.precog"
%shell% "su -c am kill com.amazon.securitysyncclient"
%shell% "su -c am kill com.amazon.sharingservice.android.client.proxy"
%shell% "su -c am kill com.amazon.shoptv.client"
%shell% "su -c am kill com.amazon.ssm"
%shell% "su -c am kill com.amazon.storm.lightning.services"
%shell% "su -c am kill com.amazon.storm.lightning.tutorial"
%shell% "su -c am kill com.amazon.sync.provider.ipc"
%shell% "su -c am kill com.amazon.sync.service"
%shell% "su -c am kill com.svox.pico"
%shell% "su -c am kill com.amazon.tcomm"
%shell% "su -c am kill com.amazon.tmm.tutorial"
::%shell% "su -c am kill com.amazon.tv.aiv.support"
%shell% "su -c am kill com.amazon.tv.csapp"
%shell% "su -c am kill com.amazon.tv.fw.metrics"
::%shell% "su -c am kill com.amazon.tv.launcher"
%shell% "su -c am kill com.amazon.tv.legal.notices"
%shell% "su -c am kill com.amazon.tv.oobe"
%shell% "su -c am kill com.amazon.tv.parentalcontrols"
%shell% "su -c am kill com.amazon.unifiedshare.actionchooser"
%shell% "su -c am kill com.amazon.venezia"
%shell% "su -c am kill com.amazon.videoads.app"
%shell% "su -c am kill com.amazon.visualonawv"
%shell% "su -c am kill com.amazon.vizzini"
%shell% "su -c am kill com.amazon.whisperlink.core.android"


%uninstall% com.amazon.ags.app
%uninstall% com.amazon.avod
%uninstall% com.amazon.bueller.music
%uninstall% com.amazon.bueller.photos
%uninstall% com.amazon.client.metrics
::%uninstall% com.amazon.communication
%uninstall% com.amazon.communication.discovery
%uninstall% com.amazon.connectivitydiag
%uninstall% com.amazon.dcp
%uninstall% com.amazon.device.crashmanager
%uninstall% com.amazon.device.logmanager
%uninstall% com.amazon.device.messaging
%uninstall% com.amazon.device.software.ota
::%uninstall% com.amazon.device.services
%uninstall% com.amazon.identity.auth.device.authorization
%uninstall% com.amazon.imp
%uninstall% com.amazon.kindle.cms
%uninstall% com.amazon.kso.blackbird
%uninstall% com.amazon.ods.kindleconnect
%uninstall% com.amazon.platform.fdrw
%uninstall% com.amazon.precog
%uninstall% com.amazon.securitysyncclient
%uninstall% com.amazon.sharingservice.android.client.proxy
%uninstall% com.amazon.shoptv.client
%uninstall% com.amazon.ssm
%uninstall% com.amazon.storm.lightning.services
%uninstall% com.amazon.storm.lightning.tutorial
::%uninstall% com.amazon.sync.provider.ipc
%uninstall% com.amazon.sync.service
%uninstall% com.svox.pico
%uninstall% com.amazon.tcomm
%uninstall% com.amazon.tmm.tutorial
::%uninstall% com.amazon.tv.aiv.support
%uninstall% com.amazon.tv.csapp
%uninstall% com.amazon.tv.fw.metrics
::%uninstall% com.amazon.tv.launcher
%uninstall% com.amazon.tv.legal.notices
%uninstall% com.amazon.tv.oobe
%uninstall% com.amazon.tv.parentalcontrols
%uninstall% com.amazon.unifiedshare.actionchooser
%uninstall% com.amazon.venezia
%uninstall% com.amazon.videoads.app
%uninstall% com.amazon.visualonawv
%uninstall% com.amazon.vizzini
%uninstall% com.amazon.whisperlink.core.android



%shell% "su -c rm -rf /system/priv-app/com.amazon.ags.app"
%shell% "su -c rm -rf /system/priv-app/com.amazon.avod"
%shell% "su -c rm -rf /system/priv-app/com.amazon.bueller.music"
%shell% "su -c rm -rf /system/priv-app/com.amazon.bueller.photos"
%shell% "su -c rm -rf /system/priv-app/com.amazon.client.metrics"
::%shell% "su -c rm -rf /system/priv-app/com.amazon.communication"
%shell% "su -c rm -rf /system/priv-app/com.amazon.communication.discovery"
%shell% "su -c rm -rf /system/priv-app/com.amazon.connectivitydiag"
%shell% "su -c rm -rf /system/priv-app/com.amazon.dcp"
%shell% "su -c rm -rf /system/priv-app/com.amazon.dp.logger"
%shell% "su -c rm -rf /system/priv-app/com.amazon.device.crashmanager"
%shell% "su -c rm -rf /system/priv-app/com.amazon.device.logmanager"
%shell% "su -c rm -rf /system/priv-app/com.amazon.device.messaging"
%shell% "su -c rm -rf /system/priv-app/com.amazon.device.software.ota"
::%shell% "su -c rm -rf /system/priv-app/com.amazon.device.services"
%shell% "su -c rm -rf /system/priv-app/com.amazon.identity.auth.device.authorization"
%shell% "su -c rm -rf /system/priv-app/com.amazon.imp"
%shell% "su -c rm -rf /system/priv-app/com.amazon.kindle.cms"
%shell% "su -c rm -rf /system/priv-app/com.amazon.kindle.cms-service"
%shell% "su -c rm -rf /system/priv-app/com.amazon.kso.blackbird"
%shell% "su -c rm -rf /system/priv-app/com.amazon.ods.kindleconnect"
%shell% "su -c rm -rf /system/priv-app/com.amazon.platform.fdrw"
%shell% "su -c rm -rf /system/priv-app/com.amazon.precog"
%shell% "su -c rm -rf /system/priv-app/com.amazon.securitysyncclient"
%shell% "su -c rm -rf /system/priv-app/com.amazon.sharingservice.android.client.proxy"
%shell% "su -c rm -rf /system/priv-app/com.amazon.shoptv.client"
%shell% "su -c rm -rf /system/priv-app/com.amazon.ssm"
%shell% "su -c rm -rf /system/priv-app/com.amazon.storm.lightning.services"
%shell% "su -c rm -rf /system/priv-app/com.amazon.storm.lightning.tutorial"
%shell% "su -c rm -rf /system/priv-app/com.amazon.sync.provider.ipc"
%shell% "su -c rm -rf /system/priv-app/com.amazon.sync.service"
%shell% "su -c rm -rf /system/priv-app/com.svox.pico"
%shell% "su -c rm -rf /system/priv-app/com.amazon.tcomm"
%shell% "su -c rm -rf /system/priv-app/com.amazon.tmm.tutorial"
::%shell% "su -c rm -rf /system/priv-app/com.amazon.tv.aiv.support"
%shell% "su -c rm -rf /system/priv-app/com.amazon.tv.csapp"
%shell% "su -c rm -rf /system/priv-app/com.amazon.tv.fw.metrics"
::%shell% "su -c rm -rf /system/priv-app/com.amazon.tv.launcher"
%shell% "su -c rm -rf /system/priv-app/com.amazon.tv.legal.notices"
%shell% "su -c rm -rf /system/priv-app/com.amazon.tv.oobe"
%shell% "su -c rm -rf /system/priv-app/com.amazon.tv.parentalcontrols"
%shell% "su -c rm -rf /system/priv-app/com.amazon.unifiedshare.actionchooser"
%shell% "su -c rm -rf /system/priv-app/com.amazon.venezia"
%shell% "su -c rm -rf /system/priv-app/com.amazon.videoads.app"
%shell% "su -c rm -rf /system/priv-app/com.amazon.visualonawv"
%shell% "su -c rm -rf /system/priv-app/com.amazon.vizzini"
%shell% "su -c rm -rf /system/priv-app/com.amazon.whisperlink.core.android"

%shell% "su -c rm -rf /system/priv-app/DeviceSoftwareOTA"
%shell% "su -c rm -rf /system/priv-app/DeviceSoftwareOTAContracts"
%shell% "su -c rm -rf /system/priv-app/DeviceSoftwareOTAIdleOverride"

