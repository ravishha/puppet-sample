#Puppet Master:-

sudo wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb

sudo dpkg -i puppetlabs-release-trusty.deb

sudo apt-get update

sudo apt-get install -y puppetserver

sudo apt-get update

sudo puppet resource package puppet ensure=latest