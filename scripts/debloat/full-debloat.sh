#!/system/bin/sh


clear
echo "Disabling Amazon Bloat...."
echo ""
echo ""


pm disable amazon.jackson19
pm disable android.amazon.perm
pm disable com.amazon.acos.providers.UnifiedSettingsProvider
pm disable com.amazon.ags.app
pm disable com.amazon.android.marketplace
pm disable com.amazon.android.service.networkmonitor
pm disable com.amazon.application.compatibility.enforcer
pm disable com.amazon.application.compatibility.enforcer.sdk.library
pm disable com.amazon.avod
pm disable com.amazon.awvflingreceiver
pm disable com.amazon.bueller.music
pm disable com.amazon.bueller.notification
pm disable com.amazon.bueller.photos
pm disable com.amazon.client.metrics
pm disable com.amazon.client.metrics.api
pm disable com.amazon.communication.discovery
pm disable com.amazon.connectivitydiag
pm disable com.amazon.cpl
pm disable com.amazon.dcp
pm disable com.amazon.dcp.contracts.framework.library
pm disable com.amazon.dcp.contracts.library
#pm disable com.amazon.device.bluetoothdfu
#pm disable com.amazon.device.controllermanager
pm disable com.amazon.device.crashmanager
pm disable com.amazon.device.logmanager
#pm disable com.amazon.device.lowstoragemanager
pm disable com.amazon.device.messaging
pm disable com.amazon.device.messaging.sdk.internal.library
pm disable com.amazon.device.messaging.sdk.library
pm disable com.amazon.device.settings
pm disable com.amazon.device.settings.sdk.internal.library
pm disable com.amazon.device.software.ota
pm disable com.amazon.device.software.ota.override
pm disable com.amazon.device.sync
pm disable com.amazon.device.sync.sdk.internal
pm disable com.amazon.devicecontrol
pm disable com.amazon.dp.logger
#pm disable com.amazon.fireinputdevices
pm disable com.amazon.identity.auth.device.authorization
pm disable com.amazon.imp
pm disable com.amazon.kindle.cms
pm disable com.amazon.kindle.devicecontrols
#pm disable com.amazon.kindleautomatictimezone
pm disable com.amazon.kso.blackbird
pm disable com.amazon.metrics.api
pm disable com.amazon.ods.kindleconnect
pm disable com.amazon.parentalcontrols
pm disable com.amazon.platform.fdrw
pm disable com.amazon.precog
pm disable com.amazon.providers
pm disable com.amazon.providers.contentsupport
pm disable com.amazon.recess
pm disable com.amazon.securitysyncclient
pm disable com.amazon.settings.systemupdates
pm disable com.amazon.sharingservice.android.client.proxy
pm disable com.amazon.shoptv.client
pm disable com.amazon.shpm
pm disable com.amazon.ssm
pm disable com.amazon.storm.lightning.services
pm disable com.amazon.storm.lightning.tutorial
pm disable com.amazon.sync.provider.ipc
pm disable com.amazon.sync.service
pm disable com.amazon.tcomm
pm disable com.amazon.tcomm.client
pm disable com.amazon.tmm.tutorial
pm disable com.amazon.tv.csapp
pm disable com.amazon.tv.fw.metrics
#pm disable com.amazon.tv.ime
#pm disable com.amazon.tv.intentsupport
#pm disable com.amazon.tv.launcher
pm disable com.amazon.tv.legal.notices
pm disable com.amazon.tv.oobe
pm disable com.amazon.tv.parentalcontrols
#pm disable com.amazon.tv.resolutioncycler
#pm disable com.amazon.tv.settings
pm disable com.amazon.tv.support
pm disable com.amazon.tz.webcryptotzservice
#pm disable com.amazon.unifiedshare.actionchooser
pm disable com.amazon.venezia
pm disable com.amazon.videoads.app
pm disable com.amazon.visualonawv
pm disable com.amazon.vizzini
pm disable com.amazon.wcast.sink
pm disable com.amazon.webview
pm disable com.amazon.whisperlink.core.android
pm disable com.amazon.whisperplay.contracts
pm disable com.amazon.whisperplay.service.install

pm disable com.svox.pico
pm disable com.android.captiveportallogin

# Home may kill enough by itself (untested)
pm disable com.amazon.tv.launcher/.ui.HomeActivity

pm disable com.amazon.tv.launcher/.ui.ItemLoadingActivity
pm disable com.amazon.tv.launcher/.primefreetrial.PrimeFreeTrialActivity
pm disable com.amazon.tv.launcher/.ui.purchase.OffDeviceSubscriptionActivity
pm disable com.amazon.tv.launcher/.ui.Channel1DActivity
pm disable com.amazon.tv.launcher/.ui.TVActivity
pm disable com.amazon.tv.launcher/.ui.SearchMenuActivity
pm disable com.amazon.tv.launcher/.ui.MoviesActivity
pm disable com.amazon.tv.launcher/.ui.YoursToWatchActivity

pm disable com.amazon.tv.launcher/.ui.ReleaseNotesActivity
pm disable com.amazon.tv.launcher/.ui.purchase.VideoItemPurchaseActivity
pm disable com.amazon.tv.launcher/.content.ComradeReceiver
pm disable com.amazon.tv.launcher/.demo.DemoPackageAddedReceiver
pm disable com.amazon.tv.launcher/.ads.AdRefreshReceiver
pm disable com.amazon.tv.launcher/.util.CategorySearchReceiver
pm disable com.amazon.tv.launcher/.util.LauncherPreloaderReceiver
pm disable com.amazon.tv.launcher/.parentalcontrols.PCONPermissionsReceiver
pm disable com.amazon.tv.launcher/com.amazon.tv.mediabrowse.service.MediaBrowseServiceImpl

pm disable com.amazon.tv.settings/.blackcurtain.BlackCurtainActivity
pm disable com.amazon.tv.settings/.blackcurtain.AdultContentPrefsActivity
pm disable com.amazon.tv.settings/.tv.ThingsToTrySettingsActivity
pm disable com.amazon.tv.settings/.tv.AmazonAccountSettingsActivity
pm disable com.amazon.tv.settings/.tv.BuellerAccountSettingsActivity
pm disable com.amazon.tv.settings/.tv.AlexaSettingsActivity
pm disable com.amazon.tv.settings/.auth.BuellerSettingsMAPInformationProvider
pm disable com.amazon.tv.settings/.PCONPermissionsReceiver

# Disable Sleep Screen (Hold HOME Button)
#pm disable com.amazon.tv.settings/.hud.HomeLongPressReceiver

#pm disable com.amazon.tv.settings/.tv.usb.AppScanReceiver
#pm disable com.amazon.tv.settings.tv.usb.PackageMovedLocation

pm disable com.amazon.settings.systemupdates/.OTAEventReceiver

# Disable Factory Rest Option
#pm disable com.amazon.tv.settings/com.amazon.tv.settings.tv.FactoryResetActivity





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




# Preserve ADB Settings
cp /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml /sdcard/


rm -rf /data/data/amazon.jackson-19
rm -rf /data/data/AmazonKKWebViewLib
rm -rf /data/data/AmazonNetworkMonitor
rm -rf /data/data/BackupRestoreConfirmation
rm -rf /data/data/CaptivePortalLauncher
rm -rf /data/data/com.amazon.ags.app
rm -rf /data/data/com.amazon.avod
rm -rf /data/data/com.amazon.bueller.music
rm -rf /data/data/com.amazon.bueller.photos
rm -rf /data/data/com.amazon.communication
rm -rf /data/data/com.amazon.communication.discovery
rm -rf /data/data/com.amazon.device.bluetoothdfu
rm -rf /data/data/com.amazon.device.sync
rm -rf /data/data/com.amazon.device.sync.sdk.internal
rm -rf /data/data/com.amazon.dp.logger
rm -rf /data/data/com.amazon.fireinputdevices
rm -rf /data/data/com.amazon.identity.auth.device.authorization
rm -rf /data/data/com.amazon.imp
rm -rf /data/data/com.amazon.kindle.cms-service
rm -rf /data/data/com.amazon.kindle.devicecontrols
rm -rf /data/data/com.amazon.kindleautomatictimezone
rm -rf /data/data/com.amazon.kso.blackbird
rm -rf /data/data/com.amazon.metrics.api
rm -rf /data/data/com.amazon.ods.kindleconnect
rm -rf /data/data/com.amazon.parentalcontrols
rm -rf /data/data/com.amazon.precog
rm -rf /data/data/com.amazon.securitysyncclient
rm -rf /data/data/com.amazon.sharingservice.android.client.proxy.release
rm -rf /data/data/com.amazon.shoptv.client
rm -rf /data/data/com.amazon.storm.lightning.services
rm -rf /data/data/com.amazon.storm.lightning.tutorial
rm -rf /data/data/com.amazon.tcomm
rm -rf /data/data/com.amazon.tmm.tutorial
rm -rf /data/data/com.amazon.tv.aiv.support
rm -rf /data/data/com.amazon.tv.csapp
rm -rf /data/data/com.amazon.tv.ime
rm -rf /data/data/com.amazon.tv.launcher
rm -rf /data/data/com.amazon.tv.legal.notices
rm -rf /data/data/com.amazon.tv.oobe
rm -rf /data/data/com.amazon.tv.parentalcontrols
rm -rf /data/data/com.amazon.tv.settings
rm -rf /data/data/com.amazon.venezia
rm -rf /data/data/com.amazon.videoads.app
rm -rf /data/data/com.amazon.visualonawv
rm -rf /data/data/com.amazon.vizzini
rm -rf /data/data/ConnectivityDiag
rm -rf /data/data/ContentSupportProvider
rm -rf /data/data/CrashManager
rm -rf /data/data/DefaultContainerService
rm -rf /data/data/DeviceClientPlatformContractsFramework
rm -rf /data/data/DeviceMessagingAndroid
rm -rf /data/data/DeviceMessagingAndroidInternalSDK
rm -rf /data/data/DeviceMessagingAndroidSDK
rm -rf /data/data/DeviceSoftwareOTA
rm -rf /data/data/DeviceSoftwareOTAContracts
rm -rf /data/data/DeviceSoftwareOTAIdleOverride
rm -rf /data/data/DownloadProvider
rm -rf /data/data/DownloadProviderUi
rm -rf /data/data/ExternalStorageProvider
rm -rf /data/data/FireApplicationCompatibilityEnforcer
rm -rf /data/data/FireApplicationCompatibilityEnforcerSDK
rm -rf /data/data/FireOsMiddlewareDebugApp
rm -rf /data/data/FireRecessProxy
rm -rf /data/data/FireTVDefaultMediaReceiver
rm -rf /data/data/FireTvNotificationService
rm -rf /data/data/FireTVSystemUI
rm -rf /data/data/FusedLocation
rm -rf /data/data/LogManager
rm -rf /data/data/ManagedProvisioning
rm -rf /data/data/marketplace_service_receiver
rm -rf /data/data/MediaProvider
rm -rf /data/data/MetricsApi
rm -rf /data/data/MetricsService
rm -rf /data/data/OneTimeInitializer
rm -rf /data/data/ProxyHandler
rm -rf /data/data/RemoteSettingsAndroid
rm -rf /data/data/RemoteSettingsInternalSDK
rm -rf /data/data/SettingsProvider
rm -rf /data/data/SharedStorageBackup
rm -rf /data/data/Shell
rm -rf /data/data/shipmode
rm -rf /data/data/sync-provider_ipc-release
rm -rf /data/data/sync-service-fireos-release
rm -rf /data/data/SystemStatusMonitor
rm -rf /data/data/SystemUpdatesUI
rm -rf /data/data/UnifiedShareActivityChooser
rm -rf /data/data/VpnDialogs
rm -rf /data/data/WallpaperCropper
rm -rf /data/data/WhisperCastConnect
rm -rf /data/data/WhisperlinkSdk
rm -rf /data/data/WhisperplayCore
rm -rf /data/data/WhisperplayInstall




# Restoring ADB Settings
mkdir /data/data/com.amazon.tv.settings
mkdir /data/data/com.amazon.tv.settings/shared_prefs
cp /sdcard/com.amazon.tv.settings_preferences.xml /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml



