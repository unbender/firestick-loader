#!/system/bin/sh

#clear
echo "Factory Resetting...."
echo ""
echo ""


mount -o rw,remount /data


# Preserve ADB Settings
cat /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml /sdcard/com.amazon.tv.settings_preferences.xml

# Preserve KingRoot Settings
cat /data/data/com.kingroot.kinguser/shared_prefs/Access_Preferences.xml /sdcard/Access_Preferences.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/actionStats.xml /sdcard/actionStats.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/ADSDKProperties.xml /sdcard/ADSDKProperties.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/auto_start_statistic_manager_setting.xml /sdcard/auto_start_statistic_manager_setting.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/common_setting.xml /sdcard/common_setting.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/ImmediaDataStats.xml /sdcard/ImmediaDataStats.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/LOCKERSDKProperties.xml /sdcard/LOCKERSDKProperties.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/PermDataStats.xml /sdcard/PermDataStats.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/RootManagerSetting.xml /sdcard/RootManagerSetting.xml
cat /data/data/com.kingroot.kinguser/shared_prefs/switchStats.xml /sdcard/switchStats.xml


#<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
#<map>
#    <string name="countryOfResidence">US</string>
#    <boolean name="whisperplay_settings_key" value="false" />
#    <boolean name="enable_unknown_sources_key" value="true" />
#    <boolean name="enable_adb_key" value="true" />
#    <boolean name="notifications_settings_key" value="false" />
#    <boolean name="report_usage" value="false" />
#    <string name="preferredMarketplace">ATVPDKIKX0DER</string>
#</map>

# Removing /data/
#rm -rf /data/app/
#rm -rf /data/data/
rm -rf /data/

# Rebuilding empty /data/
mkdir /data/
mkdir /data/app/
#mkdir /data/app/mcRegistry
#mkdir /data/app/mcRegistry/TbStorage
mkdir /data/data/

# Restoring ADB Settings
mkdir /data/data/com.amazon.tv.settings
mkdir /data/data/com.amazon.tv.settings/shared_prefs

cat /sdcard/com.amazon.tv.settings_preferences.xml /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml


# Restoring KingRoot Settings
mkdir /data/data/com.kingroot.kinguser/
mkdir /data/data/com.kingroot.kinguser/shared_prefs/

cat /sdcard/Access_Preferences.xml /data/data/com.kingroot.kinguser/shared_prefs/Access_Preferences.xml
cat /sdcard/actionStats.xml /data/data/com.kingroot.kinguser/shared_prefs/actionStats.xml
cat /sdcard/ADSDKProperties.xml /data/data/com.kingroot.kinguser/shared_prefs/ADSDKProperties.xml
cat /sdcard/auto_start_statistic_manager_setting.xml /data/data/com.kingroot.kinguser/shared_prefs/auto_start_statistic_manager_setting.xml
cat /sdcard/common_setting.xml /data/data/com.kingroot.kinguser/shared_prefs/common_setting.xml
cat /sdcard/ImmediaDataStats.xml /data/data/com.kingroot.kinguser/shared_prefs/ImmediaDataStats.xml
cat /sdcard/LOCKERSDKProperties.xml /data/data/com.kingroot.kinguser/shared_prefs/LOCKERSDKProperties.xml
cat /sdcard/PermDataStats.xml /data/data/com.kingroot.kinguser/shared_prefs/PermDataStats.xml
cat /sdcard/RootManagerSetting.xml /data/data/com.kingroot.kinguser/shared_prefs/RootManagerSetting.xml
cat /sdcard/switchStats.xml /data/data/com.kingroot.kinguser/shared_prefs/switchStats.xml



# Clearing Dalvik Cache
#rm -rf /data/dalvik-cache
#rm -rf /cache/dalvik-cache

# Clearing Cache
rm -rf /cache/
mkdir /cache/

# Reinstall KingRoot APK
pm install /sdcard/kingroot.apk

#reboot

