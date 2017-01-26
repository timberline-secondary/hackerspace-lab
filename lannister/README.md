#Lannister: LDAP and PXE install server

##LDAP

slapd connections? `pidof slapd | xargs lsof -a -p | wc -l`

Restart slapd:  `sudo systemctl restart slapd.service`

Use: https://github.com/timberline-secondary/hs-ldap
 

##PXE Installation
`/var/lib/tftpboot/`

#### PXE Boot Menu
`/var/lib/tftboot/ubuntu-installer/amd64/boot-screens/txt.cfg`

#### NFS Root
`/srv/install/

## ldap compiled without wrappers
http://www.openldap.org/doc/admin24/install.html`
