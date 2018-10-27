#!/bin/sh

#This script will shutdown wlan0, kill any conflicting wifi processes and 
# then set the card to high power.  It will then put the card in monitor 
# mode manually.  It will then bring the interface back up.
#This script is specifically designed for the Alfa AC1200 USB-connected wifi
# cards with the RTL8812AU chipset.  Tested with Kali Linux 2018.3
# --Oct 2018 ML--

ifconfig wlan0 down
airmon-ng check kill
sudo iw wlan0 set txpower fixed 3000
iwconfig wlan0 mode monitor
ifconfig wlan0 up
