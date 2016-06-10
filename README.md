# hackerspace-lab
configs and scripts for management of the Hackerspace's computer lab

##General Server Installation

### Server Network Config
Update settings in `/etc/network/interfaces` and notify IT Dept to add to DNS
```
iface eth0 inet static
address 192.168.3.3
netmask 255.255.255.0
gateway 192.168.3.1
dns-search example.com
dns-nameservers 192.168.3.45
```
### LDAP
[https://help.ubuntu.com/lts/serverguide/openldap-server.html#openldap-auth-config](LDAP Authentication)


