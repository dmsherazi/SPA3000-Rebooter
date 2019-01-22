# SPA3000-Rebooter
Script that will remotely (within same LAN) reboot SPA3000 ATA device. This script can be run from a cron to schedule auto maintain reboots of SPA3000

### ARP for looking up the IPs
This script utilizes  `arp` utility to get IPs of CiscoLinksys devices. This is helpful when the ATA is set to use DHCP.
The script will find such devices and send a reboot request to them.

The script serches for cisco lynksis OUI 00:18:f8 ,00:18:39 and 00:14:bf

### Device with static IP address
If a device is using a static IP adress it can be rebooted by the hitting the following url
`http://<ip_address>/admin/reboot`


### Password protected devices
 This script should work with paswword protected SPA3000 as well
 
### Device compatibilty
Tested with SPA 3000 with the following Software & Hardware versions
 ``` 
 Software Version:	3.1.20(GW)	
 Hardware Version:	3.5.1(1448)
 
 ```
