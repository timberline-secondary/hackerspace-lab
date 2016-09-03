
Request puppet update from client:
`sudo /opt/puppetlabs/bin/puppet agent -t`

Modules location:
`/opt/puppetlabs/puppet/modules/`

Environments and Manifests:
`/etc/puppetlabs/code/environments/`

Confdir
`/etc/puppetlabs/puppet`

## Certificates
List all signed certs:
`sudo /opt/puppetlabs/bin/puppet cert --list`

Remove from client:
`sudo find /etc/puppetlabs/puppet/ssl -name hostname.hackerspace.tbl.pem -delete`

Revoke a cert (via puppet server):
if problems, `sudo su` and then don't need puppet path
`sudo /opt/puppetlabs/bin/puppet cert clean hostname.hackerspace.tbl`


##New Module
```
mkdir -p hs_new_module/manifests
# if files 
mkdir hs_new_module/files
sudo nano hs_new_module/manifests/init.pp
```
###Example Contents of init.pp
```
class new_module {

  file { 'printers.conf':
    path    => '/etc/cups/printers.conf',
    ensure  => file,
    source  => "puppet:///modules/new_module/printers.conf",
  }

}

```


