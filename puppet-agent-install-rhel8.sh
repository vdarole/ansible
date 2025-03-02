#!/bin/bash
# Purpose: Puppet Agent Installation on Rocky Linux 8 script.
# Version: 1.0
# Created Date: 28-Aug-2024
# Modified Date: 28-March-2024
# Author : Vallabh Darole

### Install puppet repository ###

dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
dnf -y install https://yum.puppetlabs.com/puppet-release-el-8.noarch.rpm


### Install puppet agent ###
yum install -y puppet-agent

### Update the configuration file ###
cat >  /etc/puppetlabs/puppet/puppet.conf <<EOF
[main]
certname = `hostname`
server = pup01.darole.org
environment = production
runinterval = 1h
EOF

### Starting and Enabling puppet agent ###
/opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

sleep 10
### Registering the puppet agent ###
/opt/puppetlabs/bin/puppet agent --test
