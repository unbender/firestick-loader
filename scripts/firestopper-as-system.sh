#!/system/bin/sh

mount -o rw,remount /system

mkdir /system/app/FireStopper/
mkdir /system/app/FireStopper/arm

cat /data/local/tmp/FireStopper.apk > /system/app/FireStopper/FireStopper.apk

chown 0.0 /system/priv-app/FireStopper/FireStopper.apk
chmod 0644 /system/priv-app/FireStopper/FireStopper.apk


