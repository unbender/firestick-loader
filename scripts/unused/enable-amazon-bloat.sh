#!/bin/sh

# Part of The FireStick Loader

# esc0rtd3w 2016


adb="$PWD/bin/adb.linux"

pull="$PWD/bin/adb.linux" pull
push="$PWD/bin/adb.linux" push
shell="$PWD/bin/adb.linux" shell

temp="/tmp"

sdcard="sdcard"
#sdcard="external_sd"
#sdcard="extSdCard"


clear
echo "Disabling Amazon Bloatware...."
echo ""
echo ""

$shell "su -c pm enable com.amazon.ags.app"
$shell "su -c pm enable com.amazon.avod"
$shell "su -c pm enable com.amazon.bueller.music"
$shell "su -c pm enable com.amazon.bueller.photos"
$shell "su -c pm enable com.amazon.client.metrics"
$shell "su -c pm enable com.amazon.connectivitydiag"
$shell "su -c pm enable com.amazon.dcp"
$shell "su -c pm enable com.amazon.device.crashmanager"
$shell "su -c pm enable com.amazon.device.logmanager"
$shell "su -c pm enable com.amazon.device.messaging"
#$shell "su -c pm enable com.amazon.device.software.ota"
#$shell "su -c pm enable com.amazon.device.services"
$shell "su -c pm enable com.amazon.identity.auth.device.authorization"
$shell "su -c pm enable com.amazon.imp"
$shell "su -c pm enable com.amazon.kindle.cms"
$shell "su -c pm enable com.amazon.kso.blackbird"
$shell "su -c pm enable com.amazon.ods.kindleconnect"
$shell "su -c pm enable com.amazon.platform.fdrw"
$shell "su -c pm enable com.amazon.precog"
$shell "su -c pm enable com.amazon.securitysyncclient"
$shell "su -c pm enable com.amazon.sharingservice.android.client.proxy"
$shell "su -c pm enable com.amazon.shoptv.client"
$shell "su -c pm enable com.amazon.ssm"
$shell "su -c pm enable com.amazon.storm.lightning.services"
$shell "su -c pm enable com.amazon.storm.lightning.tutorial"
$shell "su -c pm enable com.amazon.sync.provider.ipc"
$shell "su -c pm enable com.amazon.sync.service"
$shell "su -c pm enable com.svox.pico"
$shell "su -c pm enable com.amazon.tcomm"
$shell "su -c pm enable com.amazon.tmm.tutorial"
#$shell "su -c pm enable com.amazon.tv.aiv.support"
$shell "su -c pm enable com.amazon.tv.csapp"
$shell "su -c pm enable com.amazon.tv.fw.metrics"
#$shell "su -c pm enable com.amazon.tv.launcher"
$shell "su -c pm enable com.amazon.tv.legal.notices"
$shell "su -c pm enable com.amazon.tv.oobe"
$shell "su -c pm enable com.amazon.tv.parentalcontrols"
$shell "su -c pm enable com.amazon.unifiedshare.actionchooser"
$shell "su -c pm enable com.amazon.venezia"
$shell "su -c pm enable com.amazon.videoads.app"
$shell "su -c pm enable com.amazon.visualonawv"
$shell "su -c pm enable com.amazon.vizzini"
$shell "su -c pm enable com.amazon.whisperlink.core.android"



