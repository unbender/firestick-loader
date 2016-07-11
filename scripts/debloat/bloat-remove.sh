#!/system/bin/sh

clear
echo "Deleting Amazon Bloat...."
echo ""
echo ""

#mount -o rw,remount /system


rm -rf /system/priv-app/amazon.jackson19
rm -rf /system/priv-app/android.amazon.perm
rm -rf /system/priv-app/com.amazon.acos.providers.UnifiedSettingsProvider
rm -rf /system/priv-app/com.amazon.ags.app
rm -rf /system/priv-app/com.amazon.android.marketplace
rm -rf /system/priv-app/com.amazon.android.service.networkmonitor
rm -rf /system/priv-app/com.amazon.application.compatibility.enforcer
rm -rf /system/priv-app/com.amazon.application.compatibility.enforcer.sdk.library
rm -rf /system/priv-app/com.amazon.avod
rm -rf /system/priv-app/com.amazon.awvflingreceiver
rm -rf /system/priv-app/com.amazon.bueller.music
rm -rf /system/priv-app/com.amazon.bueller.notification
rm -rf /system/priv-app/com.amazon.bueller.photos
rm -rf /system/priv-app/com.amazon.client.metrics
rm -rf /system/priv-app/com.amazon.client.metrics.api
rm -rf /system/priv-app/com.amazon.communication.discovery
rm -rf /system/priv-app/com.amazon.connectivitydiag
rm -rf /system/priv-app/com.amazon.cpl
rm -rf /system/priv-app/com.amazon.dcp
rm -rf /system/priv-app/com.amazon.dcp.contracts.framework.library
rm -rf /system/priv-app/com.amazon.dcp.contracts.library
#rm -rf /system/priv-app/com.amazon.device.bluetoothdfu
#rm -rf /system/priv-app/com.amazon.device.controllermanager
rm -rf /system/priv-app/com.amazon.device.crashmanager
rm -rf /system/priv-app/com.amazon.device.logmanager
#rm -rf /system/priv-app/com.amazon.device.lowstoragemanager
rm -rf /system/priv-app/com.amazon.device.messaging
rm -rf /system/priv-app/com.amazon.device.messaging.sdk.internal.library
rm -rf /system/priv-app/com.amazon.device.messaging.sdk.library
rm -rf /system/priv-app/com.amazon.device.settings
rm -rf /system/priv-app/com.amazon.device.settings.sdk.internal.library
rm -rf /system/priv-app/com.amazon.device.software.ota
rm -rf /system/priv-app/com.amazon.device.software.ota.override
rm -rf /system/priv-app/com.amazon.device.sync
rm -rf /system/priv-app/com.amazon.device.sync.sdk.internal
rm -rf /system/priv-app/com.amazon.devicecontrol
rm -rf /system/priv-app/com.amazon.dp.logger
#rm -rf /system/priv-app/com.amazon.fireinputdevices
rm -rf /system/priv-app/com.amazon.identity.auth.device.authorization
rm -rf /system/priv-app/com.amazon.imp
rm -rf /system/priv-app/com.amazon.kindle.cms
rm -rf /system/priv-app/com.amazon.kindle.devicecontrols
#rm -rf /system/priv-app/com.amazon.kindleautomatictimezone
rm -rf /system/priv-app/com.amazon.kso.blackbird
rm -rf /system/priv-app/com.amazon.metrics.api
rm -rf /system/priv-app/com.amazon.ods.kindleconnect
rm -rf /system/priv-app/com.amazon.parentalcontrols
rm -rf /system/priv-app/com.amazon.platform.fdrw
rm -rf /system/priv-app/com.amazon.precog
rm -rf /system/priv-app/com.amazon.providers
rm -rf /system/priv-app/com.amazon.providers.contentsupport
rm -rf /system/priv-app/com.amazon.recess
rm -rf /system/priv-app/com.amazon.securitysyncclient
rm -rf /system/priv-app/com.amazon.settings.systemupdates
rm -rf /system/priv-app/com.amazon.sharingservice.android.client.proxy
rm -rf /system/priv-app/com.amazon.shoptv.client
rm -rf /system/priv-app/com.amazon.shpm
rm -rf /system/priv-app/com.amazon.ssm
rm -rf /system/priv-app/com.amazon.storm.lightning.services
rm -rf /system/priv-app/com.amazon.storm.lightning.tutorial
rm -rf /system/priv-app/com.amazon.sync.provider.ipc
rm -rf /system/priv-app/com.amazon.sync.service
rm -rf /system/priv-app/com.amazon.tcomm
rm -rf /system/priv-app/com.amazon.tcomm.client
rm -rf /system/priv-app/com.amazon.tmm.tutorial
rm -rf /system/priv-app/com.amazon.tv.csapp
rm -rf /system/priv-app/com.amazon.tv.fw.metrics
#rm -rf /system/priv-app/com.amazon.tv.ime
rm -rf /system/priv-app/com.amazon.tv.intentsupport
#rm -rf /system/priv-app/com.amazon.tv.launcher
rm -rf /system/priv-app/com.amazon.tv.legal.notices
rm -rf /system/priv-app/com.amazon.tv.oobe
pm disable com.amazon.tv.parentalcontrols
#rm -rf /system/priv-app/com.amazon.tv.resolutioncycler
#rm -rf /system/priv-app/com.amazon.tv.settings
rm -rf /system/priv-app/com.amazon.tv.support
rm -rf /system/priv-app/com.amazon.tz.webcryptotzservice
#rm -rf /system/priv-app/com.amazon.unifiedshare.actionchooser
rm -rf /system/priv-app/com.amazon.venezia
rm -rf /system/priv-app/com.amazon.videoads.app
rm -rf /system/priv-app/com.amazon.visualonawv
rm -rf /system/priv-app/com.amazon.vizzini
rm -rf /system/priv-app/com.amazon.wcast.sink
rm -rf /system/priv-app/com.amazon.webview
rm -rf /system/priv-app/com.amazon.whisperlink.core.android
rm -rf /system/priv-app/com.amazon.whisperplay.contracts
rm -rf /system/priv-app/com.amazon.whisperplay.service.install

rm -rf /system/priv-app/com.svox.pico
rm -rf /system/priv-app/com.android.captiveportallogin


rm -rf /system/priv-app/AmazonKKWebViewLib
rm -rf /system/priv-app/AmazonNetworkMonitor
rm -rf /system/priv-app/ConnectivityDiag
rm -rf /system/priv-app/DeviceSoftwareOTA
rm -rf /system/priv-app/DeviceSoftwareOTAContracts
rm -rf /system/priv-app/DeviceSoftwareOTAIdleOverride
rm -rf /system/priv-app/WhisperCastConnect
rm -rf /system/priv-app/WhisperCastConnect
rm -rf /system/priv-app/WhisperlinkSdk
rm -rf /system/priv-app/WhisperplayCore
rm -rf /system/priv-app/WhisperplayInstall
rm -rf /system/priv-app/amazon.jackson-19
rm -rf /system/priv-app/com.amazon.kindle.cms-service
rm -rf /system/priv-app/com.amazon.sharingservice.android.client.proxy.release
rm -rf /system/priv-app/com.amazon.tv.aiv.support
rm -rf /system/priv-app/com.amazon.tv.parentalcontrols
rm -rf /system/priv-app/marketplace_service_receiver




rm -rf /data/data/amazon.jackson19
rm -rf /data/data/android.amazon.perm
rm -rf /data/data/com.amazon.acos.providers.UnifiedSettingsProvider
rm -rf /data/data/com.amazon.ags.app
rm -rf /data/data/com.amazon.android.marketplace
rm -rf /data/data/com.amazon.android.service.networkmonitor
rm -rf /data/data/com.amazon.application.compatibility.enforcer
rm -rf /data/data/com.amazon.application.compatibility.enforcer.sdk.library
rm -rf /data/data/com.amazon.avod
rm -rf /data/data/com.amazon.awvflingreceiver
rm -rf /data/data/com.amazon.bueller.music
rm -rf /data/data/com.amazon.bueller.notification
rm -rf /data/data/com.amazon.bueller.photos
rm -rf /data/data/com.amazon.client.metrics
rm -rf /data/data/com.amazon.client.metrics.api
rm -rf /data/data/com.amazon.communication.discovery
rm -rf /data/data/com.amazon.connectivitydiag
rm -rf /data/data/com.amazon.cpl
rm -rf /data/data/com.amazon.dcp
rm -rf /data/data/com.amazon.dcp.contracts.framework.library
rm -rf /data/data/com.amazon.dcp.contracts.library
#rm -rf /data/data/com.amazon.device.bluetoothdfu
#rm -rf /data/data/com.amazon.device.controllermanager
rm -rf /data/data/com.amazon.device.crashmanager
rm -rf /data/data/com.amazon.device.logmanager
#rm -rf /data/data/com.amazon.device.lowstoragemanager
rm -rf /data/data/com.amazon.device.messaging
rm -rf /data/data/com.amazon.device.messaging.sdk.internal.library
rm -rf /data/data/com.amazon.device.messaging.sdk.library
rm -rf /data/data/com.amazon.device.settings
rm -rf /data/data/com.amazon.device.settings.sdk.internal.library
rm -rf /data/data/com.amazon.device.software.ota
rm -rf /data/data/com.amazon.device.software.ota.override
rm -rf /data/data/com.amazon.device.sync
rm -rf /data/data/com.amazon.device.sync.sdk.internal
rm -rf /data/data/com.amazon.devicecontrol
rm -rf /data/data/com.amazon.dp.logger
#rm -rf /data/data/com.amazon.fireinputdevices
rm -rf /data/data/com.amazon.identity.auth.device.authorization
rm -rf /data/data/com.amazon.imp
rm -rf /data/data/com.amazon.kindle.cms
rm -rf /data/data/com.amazon.kindle.devicecontrols
#rm -rf /data/data/com.amazon.kindleautomatictimezone
rm -rf /data/data/com.amazon.kso.blackbird
rm -rf /data/data/com.amazon.metrics.api
rm -rf /data/data/com.amazon.ods.kindleconnect
rm -rf /data/data/com.amazon.parentalcontrols
rm -rf /data/data/com.amazon.platform.fdrw
rm -rf /data/data/com.amazon.precog
rm -rf /data/data/com.amazon.providers
rm -rf /data/data/com.amazon.providers.contentsupport
rm -rf /data/data/com.amazon.recess
rm -rf /data/data/com.amazon.securitysyncclient
rm -rf /data/data/com.amazon.settings.systemupdates
rm -rf /data/data/com.amazon.sharingservice.android.client.proxy
rm -rf /data/data/com.amazon.shoptv.client
rm -rf /data/data/com.amazon.shpm
rm -rf /data/data/com.amazon.ssm
rm -rf /data/data/com.amazon.storm.lightning.services
rm -rf /data/data/com.amazon.storm.lightning.tutorial
rm -rf /data/data/com.amazon.sync.provider.ipc
rm -rf /data/data/com.amazon.sync.service
rm -rf /data/data/com.amazon.tcomm
rm -rf /data/data/com.amazon.tcomm.client
rm -rf /data/data/com.amazon.tmm.tutorial
rm -rf /data/data/com.amazon.tv.csapp
rm -rf /data/data/com.amazon.tv.fw.metrics
#rm -rf /data/data/com.amazon.tv.ime
rm -rf /data/data/com.amazon.tv.intentsupport
#rm -rf /data/data/com.amazon.tv.launcher
rm -rf /data/data/com.amazon.tv.legal.notices
rm -rf /data/data/com.amazon.tv.oobe
pm disable com.amazon.tv.parentalcontrols
#rm -rf /data/data/com.amazon.tv.resolutioncycler
#rm -rf /data/data/com.amazon.tv.settings
rm -rf /data/data/com.amazon.tv.support
rm -rf /data/data/com.amazon.tz.webcryptotzservice
#rm -rf /data/data/com.amazon.unifiedshare.actionchooser
rm -rf /data/data/com.amazon.venezia
rm -rf /data/data/com.amazon.videoads.app
rm -rf /data/data/com.amazon.visualonawv
rm -rf /data/data/com.amazon.vizzini
rm -rf /data/data/com.amazon.wcast.sink
rm -rf /data/data/com.amazon.webview
rm -rf /data/data/com.amazon.whisperlink.core.android
rm -rf /data/data/com.amazon.whisperplay.contracts
rm -rf /data/data/com.amazon.whisperplay.service.install

rm -rf /data/data/com.svox.pico



rm -rf /data/data/AmazonKKWebViewLib
rm -rf /data/data/AmazonNetworkMonitor
rm -rf /data/data/ConnectivityDiag
rm -rf /data/data/DeviceSoftwareOTA
rm -rf /data/data/DeviceSoftwareOTAContracts
rm -rf /data/data/DeviceSoftwareOTAIdleOverride
rm -rf /data/data/WhisperCastConnect
rm -rf /data/data/WhisperCastConnect
rm -rf /data/data/WhisperlinkSdk
rm -rf /data/data/WhisperplayCore
rm -rf /data/data/WhisperplayInstall
rm -rf /data/data/amazon.jackson-19
rm -rf /data/data/com.amazon.kindle.cms-service
rm -rf /data/data/com.amazon.sharingservice.android.client.proxy.release
rm -rf /data/data/com.amazon.tv.aiv.support
rm -rf /data/data/com.amazon.tv.parentalcontrols
rm -rf /data/data/marketplace_service_receiver


#mount -o ro,remount /system
