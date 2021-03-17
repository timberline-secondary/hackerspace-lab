IP: 192.168.#.6
hostname: puppet

### Setup

https://puppet.com/docs/puppet/7.5/system_requirements.html

* sudo apt install ntp
* sudo ufw allow ssh
* sudo ufw enable
* sudo ufw allow from 192.168.#.0/24 to any port 8140  # Allow our subnet to connect on the port puppet uses

### Install puppet

https://puppet.com/docs/puppet/7.5/install_puppet.html

* Logout after installing puppetserver before running it (otherwise it won't be in your PATH and will say not installed)

## Control Repo

https://github.com/timberline-secondary/hackerspace-control-repo

## Puppet Master Setup

    curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
    sudo dpkg -i puppetlabs-release-pc1-xenial.deb
    sudo apt-get update
    
    sudo apt-get install -y puppetserver nano git
    
    nano /etc/default/puppetserver
    # Change to 4 GB RAM
    # JAVA_ARGS="-Xms4g -Xmx4g -XX:MaxPermSize=256m"
    
    systemctl start puppetserver
    systemctl enable puppetserver
    
    nano /etc/puppetlabs/puppet/puppet.conf
    # append with: 
       [agent]
       server = puppet
       
    nano ~/.profile
    
    # append with:
       PATH=$PATH:/opt/puppetlabs/puppet/bin
       export PATH
       
    # have changes take effect   
    source .profile
    
    gem install r10k
    
    #test
    puppet agent -t
    
## Version Control and Github

Create this file in: `/etc/puppetlabs/r10k/r10k.yaml`
```
---
:cachedir: '/var/cache/r10k'

:sources:
   :hackerspace:
      remote: 'https://github.com/timberline-secondary/hackerspace-control-repo$
      basedir: '/etc/puppetlabs/code/environments'
```

Deploy the repo

    r10k deploy environment -p
    cd /etc/puppetlabs/code/environments
    ls
    cd production
    

## Puppet Environments
https://github.com/timberline-secondary/hs-puppet-environments

##Jet Brains License Server
https://www.jetbrains.com/help/license_server/requirements.html

##Puppet Manifests and Modules:
See https://github.com/timberline-secondary/hs-puppet-environments
