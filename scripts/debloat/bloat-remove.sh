#!/system/bin/sh

clear
echo "Deleting Amazon Bloat...."
echo ""
echo ""

#mount -o rw,remount /system


#rm -rf /system/priv-app/amazon.jackson-19
#rm -rf /system/priv-app/AmazonKKWebViewLib
#rm -rf /system/priv-app/AmazonNetworkMonitor
#rm -rf /system/priv-app/BackupRestoreConfirmation
rm -rf /system/priv-app/CaptivePortalLauncher
#rm -rf /system/priv-app/com.amazon.ags.app
#rm -rf /system/priv-app/com.amazon.avod
#rm -rf /system/priv-app/com.amazon.bueller.music
#rm -rf /system/priv-app/com.amazon.bueller.photos
#rm -rf /system/priv-app/com.amazon.communication
#rm -rf /system/priv-app/com.amazon.communication.discovery
#rm -rf /system/priv-app/com.amazon.device.bluetoothdfu
rm -rf /system/priv-app/com.amazon.device.sync
rm -rf /system/priv-app/com.amazon.device.sync.sdk.internal
#rm -rf /system/priv-app/com.amazon.dp.logger
#rm -rf /system/priv-app/com.amazon.fireinputdevices
#rm -rf /system/priv-app/com.amazon.identity.auth.device.authorization
#rm -rf /system/priv-app/com.amazon.imp
#rm -rf /system/priv-app/com.amazon.kindle.cms-service
#rm -rf /system/priv-app/com.amazon.kindle.devicecontrols
#rm -rf /system/priv-app/com.amazon.kindleautomatictimezone
#rm -rf /system/priv-app/com.amazon.kso.blackbird
#rm -rf /system/priv-app/com.amazon.metrics.api
#rm -rf /system/priv-app/com.amazon.ods.kindleconnect
#rm -rf /system/priv-app/com.amazon.parentalcontrols
#rm -rf /system/priv-app/com.amazon.precog
#rm -rf /system/priv-app/com.amazon.securitysyncclient
#rm -rf /system/priv-app/com.amazon.sharingservice.android.client.proxy.release
#rm -rf /system/priv-app/com.amazon.shoptv.client
#rm -rf /system/priv-app/com.amazon.storm.lightning.services
#rm -rf /system/priv-app/com.amazon.storm.lightning.tutorial
#rm -rf /system/priv-app/com.amazon.tcomm
#rm -rf /system/priv-app/com.amazon.tmm.tutorial
#rm -rf /system/priv-app/com.amazon.tv.aiv.support
#rm -rf /system/priv-app/com.amazon.tv.csapp
#rm -rf /system/priv-app/com.amazon.tv.ime
#rm -rf /system/priv-app/com.amazon.tv.launcher
#rm -rf /system/priv-app/com.amazon.tv.legal.notices
#rm -rf /system/priv-app/com.amazon.tv.oobe
#rm -rf /system/priv-app/com.amazon.tv.parentalcontrols
#rm -rf /system/priv-app/com.amazon.tv.settings
#rm -rf /system/priv-app/com.amazon.venezia
#rm -rf /system/priv-app/com.amazon.videoads.app
#rm -rf /system/priv-app/com.amazon.visualonawv
#rm -rf /system/priv-app/com.amazon.vizzini
#rm -rf /system/priv-app/ConnectivityDiag
#rm -rf /system/priv-app/ContentSupportProvider
#rm -rf /system/priv-app/CrashManager
#rm -rf /system/priv-app/DefaultContainerService
#rm -rf /system/priv-app/DeviceClientPlatformContractsFramework
rm -rf /system/priv-app/DeviceMessagingAndroid
rm -rf /system/priv-app/DeviceMessagingAndroidInternalSDK
rm -rf /system/priv-app/DeviceMessagingAndroidSDK
rm -rf /system/priv-app/DeviceSoftwareOTA
rm -rf /system/priv-app/DeviceSoftwareOTAContracts
rm -rf /system/priv-app/DeviceSoftwareOTAIdleOverride
#rm -rf /system/priv-app/DownloadProvider
#rm -rf /system/priv-app/DownloadProviderUi
#rm -rf /system/priv-app/ExternalStorageProvider
rm -rf /system/priv-app/FireApplicationCompatibilityEnforcer
rm -rf /system/priv-app/FireApplicationCompatibilityEnforcerSDK
#rm -rf /system/priv-app/FireOsMiddlewareDebugApp
#rm -rf /system/priv-app/FireRecessProxy
#rm -rf /system/priv-app/FireTVDefaultMediaReceiver
#rm -rf /system/priv-app/FireTvNotificationService
#rm -rf /system/priv-app/FireTVSystemUI
#rm -rf /system/priv-app/FusedLocation
rm -rf /system/priv-app/LogManager
#rm -rf /system/priv-app/ManagedProvisioning
#rm -rf /system/priv-app/marketplace_service_receiver
#rm -rf /system/priv-app/MediaProvider
#rm -rf /system/priv-app/MetricsApi
#rm -rf /system/priv-app/MetricsService
#rm -rf /system/priv-app/OneTimeInitializer
#rm -rf /system/priv-app/ProxyHandler
rm -rf /system/priv-app/RemoteSettingsAndroid
rm -rf /system/priv-app/RemoteSettingsInternalSDK
#rm -rf /system/priv-app/SettingsProvider
#rm -rf /system/priv-app/SharedStorageBackup
#rm -rf /system/priv-app/Shell
#rm -rf /system/priv-app/shipmode
#rm -rf /system/priv-app/sync-provider_ipc-release
#rm -rf /system/priv-app/sync-service-fireos-release
#rm -rf /system/priv-app/SystemStatusMonitor
#rm -rf /system/priv-app/SystemUpdatesUI
#rm -rf /system/priv-app/UnifiedShareActivityChooser
#rm -rf /system/priv-app/VpnDialogs
#rm -rf /system/priv-app/WallpaperCropper
rm -rf /system/priv-app/WhisperCastConnect
rm -rf /system/priv-app/WhisperlinkSdk
rm -rf /system/priv-app/WhisperplayCore
rm -rf /system/priv-app/WhisperplayInstall

#mount -o ro,remount /system




# Preserve ADB Settings
cp /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml /sdcard/


rm -rf /data/dataamazon.jackson-19
rm -rf /data/dataAmazonKKWebViewLib
rm -rf /data/dataAmazonNetworkMonitor
rm -rf /data/dataBackupRestoreConfirmation
rm -rf /data/dataCaptivePortalLauncher
rm -rf /data/datacom.amazon.ags.app
rm -rf /data/datacom.amazon.avod
rm -rf /data/datacom.amazon.bueller.music
rm -rf /data/datacom.amazon.bueller.photos
rm -rf /data/datacom.amazon.communication
rm -rf /data/datacom.amazon.communication.discovery
rm -rf /data/datacom.amazon.device.bluetoothdfu
rm -rf /data/datacom.amazon.device.sync
rm -rf /data/datacom.amazon.device.sync.sdk.internal
rm -rf /data/datacom.amazon.dp.logger
rm -rf /data/datacom.amazon.fireinputdevices
rm -rf /data/datacom.amazon.identity.auth.device.authorization
rm -rf /data/datacom.amazon.imp
rm -rf /data/datacom.amazon.kindle.cms-service
rm -rf /data/datacom.amazon.kindle.devicecontrols
rm -rf /data/datacom.amazon.kindleautomatictimezone
rm -rf /data/datacom.amazon.kso.blackbird
rm -rf /data/datacom.amazon.metrics.api
rm -rf /data/datacom.amazon.ods.kindleconnect
rm -rf /data/datacom.amazon.parentalcontrols
rm -rf /data/datacom.amazon.precog
rm -rf /data/datacom.amazon.securitysyncclient
rm -rf /data/datacom.amazon.sharingservice.android.client.proxy.release
rm -rf /data/datacom.amazon.shoptv.client
rm -rf /data/datacom.amazon.storm.lightning.services
rm -rf /data/datacom.amazon.storm.lightning.tutorial
rm -rf /data/datacom.amazon.tcomm
rm -rf /data/datacom.amazon.tmm.tutorial
rm -rf /data/datacom.amazon.tv.aiv.support
rm -rf /data/datacom.amazon.tv.csapp
rm -rf /data/datacom.amazon.tv.ime
rm -rf /data/datacom.amazon.tv.launcher
rm -rf /data/datacom.amazon.tv.legal.notices
rm -rf /data/datacom.amazon.tv.oobe
rm -rf /data/datacom.amazon.tv.parentalcontrols
rm -rf /data/datacom.amazon.tv.settings
rm -rf /data/datacom.amazon.venezia
rm -rf /data/datacom.amazon.videoads.app
rm -rf /data/datacom.amazon.visualonawv
rm -rf /data/datacom.amazon.vizzini
rm -rf /data/dataConnectivityDiag
rm -rf /data/dataContentSupportProvider
rm -rf /data/dataCrashManager
rm -rf /data/dataDefaultContainerService
rm -rf /data/dataDeviceClientPlatformContractsFramework
rm -rf /data/dataDeviceMessagingAndroid
rm -rf /data/dataDeviceMessagingAndroidInternalSDK
rm -rf /data/dataDeviceMessagingAndroidSDK
rm -rf /data/dataDeviceSoftwareOTA
rm -rf /data/dataDeviceSoftwareOTAContracts
rm -rf /data/dataDeviceSoftwareOTAIdleOverride
rm -rf /data/dataDownloadProvider
rm -rf /data/dataDownloadProviderUi
rm -rf /data/dataExternalStorageProvider
rm -rf /data/dataFireApplicationCompatibilityEnforcer
rm -rf /data/dataFireApplicationCompatibilityEnforcerSDK
rm -rf /data/dataFireOsMiddlewareDebugApp
rm -rf /data/dataFireRecessProxy
rm -rf /data/dataFireTVDefaultMediaReceiver
rm -rf /data/dataFireTvNotificationService
rm -rf /data/dataFireTVSystemUI
rm -rf /data/dataFusedLocation
rm -rf /data/dataLogManager
rm -rf /data/dataManagedProvisioning
rm -rf /data/datamarketplace_service_receiver
rm -rf /data/dataMediaProvider
rm -rf /data/dataMetricsApi
rm -rf /data/dataMetricsService
rm -rf /data/dataOneTimeInitializer
rm -rf /data/dataProxyHandler
rm -rf /data/dataRemoteSettingsAndroid
rm -rf /data/dataRemoteSettingsInternalSDK
rm -rf /data/dataSettingsProvider
rm -rf /data/dataSharedStorageBackup
rm -rf /data/dataShell
rm -rf /data/datashipmode
rm -rf /data/datasync-provider_ipc-release
rm -rf /data/datasync-service-fireos-release
rm -rf /data/dataSystemStatusMonitor
rm -rf /data/dataSystemUpdatesUI
rm -rf /data/dataUnifiedShareActivityChooser
rm -rf /data/dataVpnDialogs
rm -rf /data/dataWallpaperCropper
rm -rf /data/dataWhisperCastConnect
rm -rf /data/dataWhisperlinkSdk
rm -rf /data/dataWhisperplayCore
rm -rf /data/dataWhisperplayInstall




# Restoring ADB Settings
mkdir /data/data/com.amazon.tv.settings
mkdir /data/data/com.amazon.tv.settings/shared_prefs
cp /sdcard/com.amazon.tv.settings_preferences.xml /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml

