#!/system/bin/sh

#clear
echo "Factory Resetting...."
echo ""
echo ""


mount -o rw,remount /cache
mount -o rw,remount /data
mount -o rw,remount /system


cp /data/local/tmp/kingroot.apk /data/local/tmp/kingroot.apk

# Preserve ADB Settings
mkdir /data/local/tmp/com.amazon.tv.settings/
mkdir /data/local/tmp/com.amazon.tv.settings/shared_prefs/
cp -Rp /data/local/tmp/com.amazon.tv.settings/shared_prefs/ /data/local/tmp/shared_prefs/

# Preserve KingRoot Settings
mkdir /data/local/tmp/com.kingroot.kinguser/
mkdir /data/local/tmp/com.kingroot.kinguser/shared_prefs/
cp -Rp /data/local/tmp/com.kingroot.kinguser/shared_prefs/ /data/local/tmp/com.kingroot.kinguser/shared_prefs/


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
rm -R -- /data/*/
#rm -rf /data/app/
#rm -rf /data/data/
#rm -rf /data/

# Rebuilding empty /data/
#mkdir /data/
#mkdir /data/app/
#mkdir /data/app/mcRegistry
#mkdir /data/app/mcRegistry/TbStorage
#mkdir /data/data/
#mkdir /data/local/
#mkdir /data/local/tmp/

#chmod 0755 /data/

# Restoring ADB Settings
mkdir /data/data/com.amazon.tv.settings
mkdir /data/data/com.amazon.tv.settings/shared_prefs

cp -Rp /data/local/tmp/shared_prefs/ /data/local/tmp/com.amazon.tv.settings/shared_prefs/


# Restoring KingRoot Settings
mkdir /data/data/com.kingroot.kinguser/
mkdir /data/data/com.kingroot.kinguser/shared_prefs/

cp -Rp /data/local/tmp/com.kingroot.kinguser/shared_prefs/ /data/local/tmp/com.kingroot.kinguser/shared_prefs/



# Clearing Dalvik Cache
#rm -rf /data/dalvik-cache
#rm -rf /cache/dalvik-cache

# Clearing Cache
rm -R -- /cache/*/
#rm -rf /cache/
#mkdir /cache/

# Reinstall KingRoot APK
pm install /data/local/tmp/kingroot.apk

#reboot

