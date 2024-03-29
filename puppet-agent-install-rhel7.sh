#!/bin/bash
# Purpose: Puppet Agent Installation on Rocky Linux 8 script.
# Version: 1.0
# Created Date: 8-Aug-2022
# Modified Date: 6-March-2023
# Author : Vallabh Darole

### Install puppet repository ###

rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm

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
