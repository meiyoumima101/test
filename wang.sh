#!/bin/bash
cd /etc/sysconfig/network-scripts/
cat   >ifcfg-eth0<<ok
DEVICE="eth0"      
ONBOOT="yes"        
NM_CONTROLLED="no"   
TYPE="Ethernet"       
BOOTPROTO="static"     
IPADDR="192.168.1.$1"   
NETMASK="255.255.255.0"  
GATEWAY="192.168.1.254" 
ok
growpart /dev/vda 1
xfs_growfs /
systemctl restart  network
