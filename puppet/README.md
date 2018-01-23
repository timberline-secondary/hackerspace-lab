192.X.X.6

    curl -O https://apt.puppetlabs.com/puppetlabs-release-pc1-xenial.deb
    sudo dpkg -i puppetlabs-release-pc1-xenial.deb
    sudo apt-get update
    
    sudo apt-get install -y puppetserver nano git
    
    nano /etc/default/puppetserver
    # Change to 4 GB RAM
    # JAVA_ARGS="-Xms4g -Xmx4g -XX:MaxPermSize=256m"


## Puppet Environments
https://github.com/timberline-secondary/hs-puppet-environments

##Jet Brains License Server
https://www.jetbrains.com/help/license_server/requirements.html

##Puppet Manifests and Modules:
See https://github.com/timberline-secondary/hs-puppet-environments
