
Request puppet update from client:
`sudo /opt/puppetlabs/bin/puppet agent -t`

Modules location:
`/opt/puppetlabs/puppet/modules/`

Environments and Manifests:
`/etc/puppetlabs/code/environments/`

Confdir
`/etc/puppetlabs/puppet`

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


