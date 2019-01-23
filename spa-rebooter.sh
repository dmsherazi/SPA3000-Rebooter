#!/bin/bash

#developed by Dost Muhammad Shah
# github.com/dmsherazi 
 
# Reboots spa3000 by finding them using arp-sacn 
# the script serches for cisco lynksis OUI 00:18:f8 ,00:18:39 and 00:14:bf
# This script should work with paswword protected SPA3000 as well.
# Tested with SPA 3000 with the following Software & Hardware versions
# Software Version:	3.1.20(GW)	Hardware Version:	3.5.1(1448)

# This file is subject to the terms and conditions defined in
# file 'LICENSE.txt', which is part of this source code package.

PRE="http://"
SUFF="/admin/reboot"
cat /proc/net/arp |egrep '00:18:f8|00:18:39|00:14:bf'| {
  while read line
  do
  	IP=`echo "$line" | awk '{ print $1 }'`
  	wget $PRE$IP$SUFF
  done
 }



