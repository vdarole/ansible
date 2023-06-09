#!/bin/bash
# Purpose: Zabbix Agent Installation script.
# Version: 1.0
# Created Date: 2-Sept-2022
# Modified Date:
# Author : Vallabh Darole

### Install Zabbix 4 repository ###
wget https://repo.zabbix.com/zabbix/4.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.0-2+bionic_all.deb

### Install zabbix agent ###
sudo dpkg -i zabbix-release_4.0-2+bionic_all.deb
sudo apt update
sudo apt install zabbix-agent

### Taking backup of configuration file ###
cp /etc/zabbix/zabbix_agentd.conf /etc/zabbix/zabbix_agentd.conf-backup

### Update the configuration file ###
sed -i 's/Server=127.0.0.1/Server=192.168.2.212/g' /etc/zabbix/zabbix_agentd.conf 
sed -i 's/ServerActive=127.0.0.1/ServerActive=192.168.2.212/g' /etc/zabbix/zabbix_agentd.conf 
sed -i 's/Hostname=Zabbix server/Hostname='`'hostname'`'/g' /etc/zabbix/zabbix_agentd.conf
sed -i 's/# HostMetadata=/HostMetadata=LinuxServer/g' /etc/zabbix/zabbix_agentd.conf 

### Starting and Enabling zabbix agent ###
systemctl restart zabbix-agent
systemctl enable zabbix-agent
