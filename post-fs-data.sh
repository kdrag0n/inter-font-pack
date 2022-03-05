#!/system/bin/sh

MODDIR=${0%/*}

sed 's/<\/familyset>//g' /system/etc/fonts.xml | cat - $MODDIR/fallback.xml > $MODDIR/system/etc/fonts.xml
sed -i 's/<axis tag="ital" stylevalue="1" \/>/<axis tag="ital" stylevalue="1" \/>\n<axis tag="slnt" stylevalue="-10" \/>/g' $MODDIR/system/etc/fonts.xml

if getprop ro.product.system.manufacturer | grep -qE -e "^samsung"; then
		sed 's/<\/familyset>//g' /system/etc/fonts_additional.xml | cat - $MODDIR/fallback.xml > $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/Clock2019L-RM.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts.xml
		sed -i 's/Clock2021.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts.xml
		sed -i 's/Clock2021_Fixed.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts.xml
		sed -i 's/SECNum-3L.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts.xml
		sed -i 's/SECNum-3R.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts.xml
		sed -i 's/ postScriptName="Clock2019L-RM_v1.0"//g' $MODDIR/system/etc/fonts.xml
		sed -i 's/ postScriptName="Clock2021-Regular"//g' $MODDIR/system/etc/fonts.xml
		sed -i 's/ postScriptName="Clock2021_Fixed-Regular"//g' $MODDIR/system/etc/fonts.xml
		sed -i 's/to="sec"/to="sans-serif"/g' $MODDIR/system/etc/fonts.xml
		sed -i 's/name="sec">/lang="ko">/g' $MODDIR/system/etc/fonts.xml
		sed -i 's/name="sec-roboto-light">/lang="ko">/g' $MODDIR/system/etc/fonts.xml
		sed -i 's/ postScriptName="SEC-Regular_SamsungKoreanR"//g' $MODDIR/system/etc/fonts.xml
		sed -i 's/ postScriptName="SEC-Medium_SamsungKoreanM"//g' $MODDIR/system/etc/fonts.xml
		sed -i 's/Clock2019L-RM.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/Clock2021.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/Clock2021_Fixed.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/SECNum-3L.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/SECNum-3R.ttf/Clock-Inter.ttf/g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/ postScriptName="Clock2019L-RM_v1.0"//g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/ postScriptName="Clock2021-Regular"//g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/ postScriptName="Clock2021_Fixed-Regular"//g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/to="sec"/to="sans-serif"/g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/name="sec">/lang="ko">/g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/name="sec-roboto-light">/lang="ko">/g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/ postScriptName="SEC-Regular_SamsungKoreanR"//g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/ postScriptName="SEC-Medium_SamsungKoreanM"//g' $MODDIR/system/etc/fonts_additional.xml
		sed -i 's/<axis tag="ital" stylevalue="1" \/>/<axis tag="ital" stylevalue="1" \/>\n<axis tag="slnt" stylevalue="-10" \/>/g' $MODDIR/system/etc/fonts_additional.xml
fi
