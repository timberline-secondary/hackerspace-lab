# hackerspace-lab
configs and scripts for management of the Hackerspace's computer lab

##General Server Installation

### Server Network Config
/etc/network/interfaces:
iface eth0 inet static
```
address 192.168.3.3
netmask 255.255.255.0
gateway 192.168.3.1
dns-search example.com
dns-nameservers 192.168.3.45
```
