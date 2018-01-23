192.X.X.6

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
    

## Puppet Environments
https://github.com/timberline-secondary/hs-puppet-environments

##Jet Brains License Server
https://www.jetbrains.com/help/license_server/requirements.html

##Puppet Manifests and Modules:
See https://github.com/timberline-secondary/hs-puppet-environments
