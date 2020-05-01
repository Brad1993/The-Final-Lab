#!/bin/bash

echo "User"
echo “$USER” 
echo ""
echo "Hostname"
echo “$HOSTNAME”
echo ""
cat /proc/cpuinfo | grep 'model name' | uniq 
echo""
echo "CPU speed"  
lscpu |awk -F : '($1=="CPU MHz") {printf "%3.2fGHz\n", $2/1000}'
echo ""
echo "Memory + Swap"
free -m
echo ""
echo "Partition"
df -T -h | grep 'ext4'
echo ""
echo "IP address" 
ifconfig | grep 'inet' | grep -v 'inet6'
