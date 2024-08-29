#!/bin/bash
# Purpose: Puppet Agent Installation script for Ubuntu 20.
# Version: 1.0
# Created Date: 28-Aug-2022
# Modified Date:
# Author : Vallabh Darole

### Install puppet repository ###

wget https://apt.puppetlabs.com/puppet7-release-bionic.deb
dpkg -i puppet7-release-bionic.deb

apt update
### Install puppet agent ###
apt install -y puppet-agent

### Update the configuration file ###
cat >  /etc/puppetlabs/puppet/puppet.conf <<EOF
[main]
certname = `hostname`
server = pup01.darole.org
environment = production
runinterval = 1h
EOF

### Starting and Enabling puppet agent ###
systemctl enable puppet.service
systemctl start puppet.service

### Registering the puppet agent ###
/opt/puppetlabs/bin/puppet agent --test

