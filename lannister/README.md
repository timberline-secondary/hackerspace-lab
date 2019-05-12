# Lannister: LDAP and PXE install server

## LDAP

slapd connections? `pidof slapd | xargs lsof -a -p | wc -l`

Restart slapd:  `sudo systemctl restart slapd.service`

Use: https://github.com/timberline-secondary/hs-ldap
 

## PXE Installation

### DHCP
DHCP server (PFSense; IP * * * .10) points to Lannister at `/pxelinux.0`

### tftp
tftp config file: `/etc/default/tftp-hpa`
sets TFTP_DIRECTORY root to: `/var/lib/tftpboot/`

#### PXE Boot Menu
`pxelinux.cfg -> ubuntu-installer/amd64/pxelinux.cfg`
`amd64/pxelinux.cfg -> boot-screens/syslinux.cfg`

`/var/lib/tftboot/ubuntu-installer/amd64/boot-screens/txt.cfg`

#### NFS Root
`/srv/install/

#### Preseed Files
/var/www/html/preseeds/ubuntu-desktop.seed
