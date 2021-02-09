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


