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

# Captive Portal Launcher
#pm disable com.amazon.cpl

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
#pm disable com.amazon.storm.lightning.services
#pm disable com.amazon.storm.lightning.tutorial
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
#pm disable com.amazon.whisperlink.core.android
#pm disable com.amazon.whisperplay.contracts
#pm disable com.amazon.whisperplay.service.install

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

# Disable Factory Reset Option
#pm disable com.amazon.tv.settings/com.amazon.tv.settings.tv.FactoryResetActivity





clear
echo "Deleting Amazon Bloat...."
echo ""
echo ""

mount -o rw,remount /system


#rm -r /system/priv-app/amazon.jackson-19/
#rm -r /system/priv-app/AmazonKKWebViewLib/
rm -r /system/priv-app/AmazonNetworkMonitor/
#rm -r /system/priv-app/BackupRestoreConfirmation/

# Captive Portal Launcher
#rm -r /system/priv-app/CaptivePortalLauncher/

rm -r /system/priv-app/com.amazon.ags.app/
rm -r /system/priv-app/com.amazon.avod/
rm -r /system/priv-app/com.amazon.bueller.music/
rm -r /system/priv-app/com.amazon.bueller.photos/
#rm -r /system/priv-app/com.amazon.communication/
#rm -r /system/priv-app/com.amazon.communication.discovery/
#rm -r /system/priv-app/com.amazon.device.bluetoothdfu/
rm -r /system/priv-app/com.amazon.device.sync/
rm -r /system/priv-app/com.amazon.device.sync.sdk.internal/
rm -r /system/priv-app/com.amazon.dp.logger/
#rm -r /system/priv-app/com.amazon.fireinputdevices/
rm -r /system/priv-app/com.amazon.identity.auth.device.authorization/
#rm -r /system/priv-app/com.amazon.imp/
rm -r /system/priv-app/com.amazon.kindle.cms-service/
rm -r /system/priv-app/com.amazon.kindle.devicecontrols/
#rm -r /system/priv-app/com.amazon.kindleautomatictimezone/
rm -r /system/priv-app/com.amazon.kso.blackbird/
#rm -r /system/priv-app/com.amazon.metrics.api/
rm -r /system/priv-app/com.amazon.ods.kindleconnect/
rm -r /system/priv-app/com.amazon.parentalcontrols/
rm -r /system/priv-app/com.amazon.precog/
#rm -r /system/priv-app/com.amazon.securitysyncclient/
#rm -r /system/priv-app/com.amazon.sharingservice.android.client.proxy.release/
rm -r /system/priv-app/com.amazon.shoptv.client/
#rm -r /system/priv-app/com.amazon.storm.lightning.services/
#rm -r /system/priv-app/com.amazon.storm.lightning.tutorial/
rm -r /system/priv-app/com.amazon.tcomm/
rm -r /system/priv-app/com.amazon.tmm.tutorial/
rm -r /system/priv-app/com.amazon.tv.aiv.support/
#rm -r /system/priv-app/com.amazon.tv.csapp/
#rm -r /system/priv-app/com.amazon.tv.ime/
#rm -r /system/priv-app/com.amazon.tv.launcher/
rm -r /system/priv-app/com.amazon.tv.legal.notices/
rm -r /system/priv-app/com.amazon.tv.oobe/
rm -r /system/priv-app/com.amazon.tv.parentalcontrols/
#rm -r /system/priv-app/com.amazon.tv.settings/
rm -r /system/priv-app/com.amazon.venezia/
rm -r /system/priv-app/com.amazon.videoads.app/
rm -r /system/priv-app/com.amazon.visualonawv/
#rm -r /system/priv-app/com.amazon.vizzini/
#rm -r /system/priv-app/ConnectivityDiag/
#rm -r /system/priv-app/ContentSupportProvider/
#rm -r /system/priv-app/CrashManager/
#rm -r /system/priv-app/DefaultContainerService/
#rm -r /system/priv-app/DeviceClientPlatformContractsFramework/
#rm -r /system/priv-app/DeviceMessagingAndroid/
#rm -r /system/priv-app/DeviceMessagingAndroidInternalSDK/
#rm -r /system/priv-app/DeviceMessagingAndroidSDK/
rm -r /system/priv-app/DeviceSoftwareOTA/
#rm -r /system/priv-app/DeviceSoftwareOTAContracts/
rm -r /system/priv-app/DeviceSoftwareOTAIdleOverride/
#rm -r /system/priv-app/DownloadProvider/
#rm -r /system/priv-app/DownloadProviderUi/
#rm -r /system/priv-app/ExternalStorageProvider/
#rm -r /system/priv-app/FireApplicationCompatibilityEnforcer/
#rm -r /system/priv-app/FireApplicationCompatibilityEnforcerSDK/
#rm -r /system/priv-app/FireOsMiddlewareDebugApp/
#rm -r /system/priv-app/FireRecessProxy/
#rm -r /system/priv-app/FireTVDefaultMediaReceiver/
#rm -r /system/priv-app/FireTvNotificationService/
#rm -r /system/priv-app/FireTVSystemUI/
#rm -r /system/priv-app/FusedLocation/
rm -r /system/priv-app/LogManager/
#rm -r /system/priv-app/ManagedProvisioning/
#rm -r /system/priv-app/marketplace_service_receiver/
#rm -r /system/priv-app/MediaProvider/
#rm -r /system/priv-app/MetricsApi/
#rm -r /system/priv-app/MetricsService/
#rm -r /system/priv-app/OneTimeInitializer/
#rm -r /system/priv-app/ProxyHandler/
#rm -r /system/priv-app/RemoteSettingsAndroid/
#rm -r /system/priv-app/RemoteSettingsInternalSDK/
#rm -r /system/priv-app/SettingsProvider/
#rm -r /system/priv-app/SharedStorageBackup/
#rm -r /system/priv-app/Shell/
#rm -r /system/priv-app/shipmode/
#rm -r /system/priv-app/sync-provider_ipc-release/
#rm -r /system/priv-app/sync-service-fireos-release/
#rm -r /system/priv-app/SystemStatusMonitor/
#rm -r /system/priv-app/SystemUpdatesUI/
#rm -r /system/priv-app/UnifiedShareActivityChooser/
#rm -r /system/priv-app/VpnDialogs/
#rm -r /system/priv-app/WallpaperCropper/
#rm -r /system/priv-app/WhisperCastConnect/
#rm -r /system/priv-app/WhisperlinkSdk/
#rm -r /system/priv-app/WhisperplayCore/
#rm -r /system/priv-app/WhisperplayInstall/



# Preserve ADB Settings
cp /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml /sdcard/


#rm -r /data/data/amazon.jackson-19/
#rm -r /data/data/AmazonKKWebViewLib/
rm -r /data/data/AmazonNetworkMonitor/
#rm -r /data/data/BackupRestoreConfirmation/

# Captive Portal Launcher
#rm -r /data/data/CaptivePortalLauncher/

rm -r /data/data/com.amazon.ags.app/
rm -r /data/data/com.amazon.avod/
rm -r /data/data/com.amazon.bueller.music/
rm -r /data/data/com.amazon.bueller.photos/
#rm -r /data/data/com.amazon.communication/
#rm -r /data/data/com.amazon.communication.discovery/
#rm -r /data/data/com.amazon.device.bluetoothdfu/
rm -r /data/data/com.amazon.device.sync/
rm -r /data/data/com.amazon.device.sync.sdk.internal/
rm -r /data/data/com.amazon.dp.logger/
#rm -r /data/data/com.amazon.fireinputdevices/
rm -r /data/data/com.amazon.identity.auth.device.authorization/
#rm -r /data/data/com.amazon.imp/
rm -r /data/data/com.amazon.kindle.cms-service/
rm -r /data/data/com.amazon.kindle.devicecontrols/
#rm -r /data/data/com.amazon.kindleautomatictimezone/
rm -r /data/data/com.amazon.kso.blackbird/
#rm -r /data/data/com.amazon.metrics.api/
rm -r /data/data/com.amazon.ods.kindleconnect/
rm -r /data/data/com.amazon.parentalcontrols/
rm -r /data/data/com.amazon.precog/
#rm -r /data/data/com.amazon.securitysyncclient/
#rm -r /data/data/com.amazon.sharingservice.android.client.proxy.release/
rm -r /data/data/com.amazon.shoptv.client/
#rm -r /data/data/com.amazon.storm.lightning.services/
#rm -r /data/data/com.amazon.storm.lightning.tutorial/
rm -r /data/data/com.amazon.tcomm/
rm -r /data/data/com.amazon.tmm.tutorial/
rm -r /data/data/com.amazon.tv.aiv.support/
#rm -r /data/data/com.amazon.tv.csapp/
#rm -r /data/data/com.amazon.tv.ime/
#rm -r /data/data/com.amazon.tv.launcher/
rm -r /data/data/com.amazon.tv.legal.notices/
rm -r /data/data/com.amazon.tv.oobe/
rm -r /data/data/com.amazon.tv.parentalcontrols/
#rm -r /data/data/com.amazon.tv.settings/
rm -r /data/data/com.amazon.venezia/
rm -r /data/data/com.amazon.videoads.app/
rm -r /data/data/com.amazon.visualonawv/
#rm -r /data/data/com.amazon.vizzini/
#rm -r /data/data/ConnectivityDiag/
#rm -r /data/data/ContentSupportProvider/
#rm -r /data/data/CrashManager/
#rm -r /data/data/DefaultContainerService/
#rm -r /data/data/DeviceClientPlatformContractsFramework/
#rm -r /data/data/DeviceMessagingAndroid/
#rm -r /data/data/DeviceMessagingAndroidInternalSDK/
#rm -r /data/data/DeviceMessagingAndroidSDK/
rm -r /data/data/DeviceSoftwareOTA/
#rm -r /data/data/DeviceSoftwareOTAContracts/
rm -r /data/data/DeviceSoftwareOTAIdleOverride/
#rm -r /data/data/DownloadProvider/
#rm -r /data/data/DownloadProviderUi/
#rm -r /data/data/ExternalStorageProvider/
#rm -r /data/data/FireApplicationCompatibilityEnforcer/
#rm -r /data/data/FireApplicationCompatibilityEnforcerSDK/
#rm -r /data/data/FireOsMiddlewareDebugApp/
#rm -r /data/data/FireRecessProxy/
#rm -r /data/data/FireTVDefaultMediaReceiver/
#rm -r /data/data/FireTvNotificationService/
#rm -r /data/data/FireTVSystemUI/
#rm -r /data/data/FusedLocation/
rm -r /data/data/LogManager/
#rm -r /data/data/ManagedProvisioning/
#rm -r /data/data/marketplace_service_receiver/
#rm -r /data/data/MediaProvider/
#rm -r /data/data/MetricsApi/
#rm -r /data/data/MetricsService/
#rm -r /data/data/OneTimeInitializer/
#rm -r /data/data/ProxyHandler/
#rm -r /data/data/RemoteSettingsAndroid/
#rm -r /data/data/RemoteSettingsInternalSDK/
#rm -r /data/data/SettingsProvider/
#rm -r /data/data/SharedStorageBackup/
#rm -r /data/data/Shell/
#rm -r /data/data/shipmode/
#rm -r /data/data/sync-provider_ipc-release/
#rm -r /data/data/sync-service-fireos-release/
#rm -r /data/data/SystemStatusMonitor/
#rm -r /data/data/SystemUpdatesUI/
#rm -r /data/data/UnifiedShareActivityChooser/
#rm -r /data/data/VpnDialogs/
#rm -r /data/data/WallpaperCropper/
#rm -r /data/data/WhisperCastConnect/
#rm -r /data/data/WhisperlinkSdk/
#rm -r /data/data/WhisperplayCore/
#rm -r /data/data/WhisperplayInstall/




# Restoring ADB Settings
mkdir /data/data/com.amazon.tv.settings
mkdir /data/data/com.amazon.tv.settings/shared_prefs
cp /sdcard/com.amazon.tv.settings_preferences.xml /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml



