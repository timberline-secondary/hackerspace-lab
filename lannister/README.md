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

##### /var/lib/tftpboot/pxelinux.cfg
`
# D-I config version 2.0
# search path for the c32 support libraries (libcom32, libutil etc.)
path boot-screens/
include boot-screens/menu.cfg
default boot-screens/vesamenu.c32
prompt 0
timeout 0
`

#### NFS Root
`/srv/install/`

#### Preseed Files
`/var/www/html/preseeds/ubuntu-desktop.seed`
