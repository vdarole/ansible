create database zabbix character set utf8 collate utf8_bin;
create user 'zabbix'@'localhost' identified BY 'redhat';
grant all privileges on zabbix.* to zabbix@localhost ;
