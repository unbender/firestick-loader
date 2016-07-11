#!/system/bin/sh

#echo ---------------------------------------
#echo ---------- Made By : Mr.W0lf ----------
#echo ---- Thanks @Chainfire for SuperSU ----
#echo ---------------------------------------



# Updated by esc0rtd3w for Amazon FireStick/FireTV


mount -o rw,remount /system

chattr -ia /system/bin/.usr/.ku
rm -rf /system/bin/.usr/.ku
chattr -ia /system/bin/rt.sh
rm -rf /system/bin/rt.sh
#chattr -ia /system/bin/su
#rm -rf /system/bin/su
chattr -ia /system/bin/ddexe-ku.bak
rm -rf /system/bin/ddexe-ku.bak
chattr -ia /system/bin/ddexe
rm -rf /system/bin/ddexe
chattr -ia /system/bin/ddexe_real
rm -rf /system/bin/ddexe_real
chattr -ia /system/bin/install-recovery.sh
rm -rf /system/bin/install-recovery.sh

mv /system/bin/install-recovery.sh-ku.bak /system/bin/install-recovery.sh

mv /system/bin/install-recovery.sh-ku.bak /system/etc/install-recovery.sh

chmod 0755 /system/bin/install-recovery.sh
chmod 0755 /system/etc/install-recovery.sh

chattr -ia /system/bin/install-recovery.sh-ku.bak
rm -rf /system/bin/install-recovery.sh-ku.bak

chattr -ia /system/usr/iku/isu
rm -rf -rf /system/usr/iku
rm -rf -rf /dev/reportroot

rm -rf -rf /system/app/Kinguser
rm -rf -rf /data/data-lib/king
rm -rf -rf /sdcard/Kingroot
rm -rf /sdcard/kr-stock-conf


rm -rf -rf /data/app/com.kingroot.RushRoot-1
rm -rf -rf /data/data/com.kingroot.RushRoot
rm -rf -rf /data/data-lib/com.kingroot.RushRoot
rm -rf -rf /data/app/com.kingroot.kinguser-1
rm -rf -rf /data/data/com.kingroot.kinguser
rm -rf -rf /data/data-lib/com.kingroot.kinguser
rm -rf -rf /data/app/com.kingroot.master-1
rm -rf -rf /data/data/com.kingroot.master
rm -rf -rf /data/data-lib/king



echo ""
echo ""
echo ""
echo "*** Try Uninstalling KingRoot APK Manually Now! ***"
echo ""
echo ""
echo ""
echo "Press ENTER when finished...."
echo ""
echo ""
read pause


chattr -ia /system/xbin/ku.sud
rm -rf /system/xbin/ku.sud
chattr -ia /system/xbin/kugote
rm -rf /system/xbin/kugote
chattr -ia /system/xbin/supolicy
rm -rf /system/xbin/supolicy
chattr -ia /system/xbin/pidof
rm -rf /system/xbin/pidof
chattr -ia /system/xbin/su
rm -rf /system/xbin/su


am kill com.kingroot.RushRoot
pm uninstall com.kingroot.RushRoot
read pause
am kill com.kingroot.kinguser
pm uninstall com.kingroot.kinguser

rm -rf /system/app/Kinguser.apk
rm -rf -rf /system/app/Kinguser

am kill com.kingroot.master
pm uninstall com.kingroot.master


sleep 2

echo ""
echo ""
echo ""
echo "Done! Check For Errors!"
echo ""
echo ""
echo ""
echo "Press ENTER when finished...."
echo ""
echo ""
read pause
