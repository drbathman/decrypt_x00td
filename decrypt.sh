#!/sbin/sh
PATH=/sbin:/system/bin:/system/xbin

OUTFD=$2

ui_print() {
echo -n -e "ui_print $1\n" > /proc/self/fd/$OUTFD
echo -n -e "ui_print\n" > /proc/self/fd/$OUTFD
}

ui_print " "
ui_print " "
ui_print "================================================="
ui_print "-decrypt for pie ROMs for x00td "
ui_print "================================================="
ui_print " "

mount /system
mount /vendor
mount /data
ui_print " "

#================================================

sed -i 's/forceencrypt/encryptable/g' /vendor/etc/fstab.qcom

#================================================

ui_print " "
umount /system
umount /vendor
umount /data
ui_print " "
ui_print "-encryption disabled successfully! "
ui_print "- Enjoy! "
ui_print " "
ui_print "================================================="
ui_print " "
ui_print " "


