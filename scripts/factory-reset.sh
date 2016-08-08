#!/system/bin/sh

#clear
echo "Factory Resetting...."
echo ""
echo ""


mount -o rw,remount /data


# Preserve ADB Settings
cp /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml /sdcard/

# Preserve KingRoot Settings
cp /data/data/com.kingroot.kinguser/shared_prefs/Access_Preferences.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/actionStats.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/ADSDKProperties.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/auto_start_statistic_manager_setting.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/common_setting.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/ImmediaDataStats.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/LOCKERSDKProperties.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/PermDataStats.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/RootManagerSetting.xml /sdcard/
cp /data/data/com.kingroot.kinguser/shared_prefs/switchStats.xml /sdcard/


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

cp /sdcard/com.amazon.tv.settings_preferences.xml /data/data/com.amazon.tv.settings/shared_prefs/com.amazon.tv.settings_preferences.xml


# Restoring KingRoot Settings
mkdir /data/data/com.kingroot.kinguser/
mkdir /data/data/com.kingroot.kinguser/shared_prefs/

cp /sdcard/Access_Preferences.xml /data/data/com.kingroot.kinguser/shared_prefs/Access_Preferences.xml
cp /sdcard/actionStats.xml /data/data/com.kingroot.kinguser/shared_prefs/actionStats.xml
cp /sdcard/ADSDKProperties.xml /data/data/com.kingroot.kinguser/shared_prefs/ADSDKProperties.xml
cp /sdcard/auto_start_statistic_manager_setting.xml /data/data/com.kingroot.kinguser/shared_prefs/auto_start_statistic_manager_setting.xml
cp /sdcard/common_setting.xml /data/data/com.kingroot.kinguser/shared_prefs/common_setting.xml
cp /sdcard/ImmediaDataStats.xml /data/data/com.kingroot.kinguser/shared_prefs/ImmediaDataStats.xml
cp /sdcard/LOCKERSDKProperties.xml /data/data/com.kingroot.kinguser/shared_prefs/LOCKERSDKProperties.xml
cp /sdcard/PermDataStats.xml /data/data/com.kingroot.kinguser/shared_prefs/PermDataStats.xml
cp /sdcard/RootManagerSetting.xml /data/data/com.kingroot.kinguser/shared_prefs/RootManagerSetting.xml
cp /sdcard/switchStats.xml /data/data/com.kingroot.kinguser/shared_prefs/switchStats.xml



# Clearing Dalvik Cache
#rm -rf /data/dalvik-cache
#rm -rf /cache/dalvik-cache

# Clearing Cache
rm -rf /cache/
mkdir /cache/

# Reinstall KingRoot APK
pm install /sdcard/kingroot.apk

#reboot

