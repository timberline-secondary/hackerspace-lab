# hackerspace-lab
configs and scripts for management of the Hackerspace's computer lab

## Recovering lost Unity Launchers...
ssh into Tyrell and:
```
sudo rm -r /nfshome/9912345/.cache
```

## General Server Installation
TODO: Do this via puppet....

### Server Network Config
Update settings in `/etc/network/interfaces` and notify IT Dept to add to DNS 

NOTE: The default comment at the top of the file has a second line that isn't commented that can cause an error.
```
iface ens32 inet static
address 192.168.3.3 # This server's IP
netmask 255.255.255.0
gateway 192.168.3.1
dns-search hackerspace.tbl sd72.bc.ca
dns-nameservers 192.168.3.10
```
After changing, restart the network interface: `sudo ifdown ens32 && sudo ifup ens32`
### LDAP
[LDAP Authentication](https://help.ubuntu.com/lts/serverguide/openldap-server.html#openldap-auth-config)
```
sudo apt install libnss-ldap
sudo dpkg-reconfigure ldap-auth-config
sudo auth-client-config -t nss -p lac_ldap
sudo pam-auth-update
```

### Auto Starting Virtual Servers
https://kb.vmware.com/selfservice/microsites/search.do?language=en_US&cmd=displayKC&externalId=850

### Setup SSH Keys (from Lannister)
[Open SSH Keys](https://help.ubuntu.com/community/SSH/OpenSSH/Keys)

Relax the security on server: Change the /etc/ssh/sshd_conf file to have password authentication while you're adding ssh keys
```ssh-copy-id <username>@<host>```

### Full boot drives

-Check space: `df-h`
-http://ubuntuhandbook.org/index.php/2016/05/remove-old-kernels-ubuntu-16-04/

### Unnattended Upgrades
/etc/apt/apt.conf.d/50unattended-upgrades

Change these settings:

* Unattended-Upgrade::Remove-Unused-Dependencies "true";
* Unattended-Upgrade::Automatic-Reboot "true";
* Unattended-Upgrade::Automatic-Reboot-Time "03:00";  # 2am is default for student computers




