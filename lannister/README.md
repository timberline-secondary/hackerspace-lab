# Lannister: LDAP and PXE install server

## LDAP

slapd connections? `pidof slapd | xargs lsof -a -p | wc -l`

Restart slapd:  `sudo systemctl restart slapd.service`

Use: https://github.com/timberline-secondary/hs-ldap
 

## PXE Installation

# Live Server Install (since 20.04)

https://ubuntu.com/server/docs/install/autoinstall-quickstart

https://ubuntu.com/server/docs/install/autoinstall

https://ubuntu.com/server/docs/install/autoinstall-reference

### Updating Ubuntu
Since downloading from link, Ubuntu updates break our download since they remove the old link (e.g. 20.04.1 to 20.04.2).  So when that happens we need to update some files on the server:

```
wget http://releases.ubuntu.com/20.04/ubuntu-20.04.X-live-server-amd64.iso (replace X)
sudo mkdir /var/lib/tftpboot/installers/ubuntu/20.04.X
sudo mount -r ubuntu-20.04.X-live-server-amd64.iso /mnt 
sudo cp /mnt/casper/ /var/lib/tftpboot/installers/ubuntu/20.04.2/
sudo cp /mnt/casper/vmlinuz/initrd /var/lib/tftpboot/installers/ubuntu/20.04.2/

```

And update the boot instructions:

`sudo nano /var/lib/tftpboot/boot-screens/txt.cfg`

Change these lines:

        menu label Ubuntu 20.04.X
        menu default
        kernel installers/ubuntu/20.04.X/vmlinuz
        initrd installers/ubuntu/20.04.X/initrd
        append root=/dev/ram0 ramdisk_size=1500000 ip=dhcp url=http://releases.ubuntu.com/20.04/ubuntu-20.04.X-live-server-amd64.iso autoinstall auto=true interface=auto ds=nocloud-net;s=http://192.168.43.3/preseeds/20.04/



### DHCP
DHCP server (PFSense; IP * * * .10) points to Lannister at `/pxelinux.0`

### tftp
tftp config file: `/etc/default/tftp-hpa`
sets TFTP_DIRECTORY root to: `/var/lib/tftpboot/`

#### PXE Boot Menu
`/var/lib/tftpboot/boot-screens/txt.cfg`

#### Image locations
`/var/lib/tftpboot/installers`

#### Preseed Files
`/var/www/html/preseeds/ubuntu-desktop.seed`

#### NFS Root (not used anymore?)
`/srv/install/`


