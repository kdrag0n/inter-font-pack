#!/system/bin/sh

MODPATH="/data/adb/modules/inter-font"

sed 's/<\/familyset>//g' /system/etc/fonts.xml | cat - $MODPATH/fallback.xml > $MODPATH/system/etc/fonts.xml
