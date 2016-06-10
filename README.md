# hackerspace-lab
configs and scripts for management of the Hackerspace's computer lab

##General Server Installation

### Server Network Config
Update settings in `/etc/network/interfaces` and notify IT Dept to add to DNS \n
NOTE: The default comment at the top of the file has a second line that isn't commented that may cause an error.
```
iface eth0 inet static
address 192.168.3.3
netmask 255.255.255.0
gateway 192.168.3.1
dns-search example.com
dns-nameservers 192.168.3.45
```
### LDAP
[LDAP Authentication](https://help.ubuntu.com/lts/serverguide/openldap-server.html#openldap-auth-config)
```
sudo apt install libnss-ldap
sudo dpkg-reconfigure ldap-auth-config
sudo auth-client-config -t nss -p lac_ldap
sudo pam-auth-update
```

