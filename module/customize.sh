# Error on < Android 8
if [ "$API" -lt 26 ]; then
    abort "!!! You can't use this module on Android < 8.0"
fi

# Remove safetynet-fix module if installed
if [ -d /data/adb/modules/safetynet-fix ]; then
    touch /data/adb/modules/safetynet-fix/remove
    ui_print "- 'safetynet-fix' module will be removed on next reboot"
fi

# Clean up any leftover files from previous deprecated methods
rm -f /data/data/com.google.android.gms/cache/pif.prop /data/data/com.google.android.gms/pif.prop
rm -f /data/data/com.google.android.gms/cache/pif.json /data/data/com.google.android.gms/pif.json
