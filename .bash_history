vi puppet-agent-install-rhel7.sh
hostname -s
hostname 
vi puppet-agent-install-rhel7.sh
vi puppet-agent-install-ubuntu18.sh
scp /home/ansible/puppet-agent-install-rhel7.sh lamp01:/root
ssh lamp01
cd web-db/
ls
cd source/
ls
mkdir data-update
cd web-pages/
ls
ll
ls -l
mv table-data-update.sh /home/ansible/web-db/source/data-update/
mv user-data /home/ansible/web-db/source/data-update/
cd /home/ansible/web-db/source/data-update/
ls
cd user-data/
ls
cd ..
ls
vi table-data-update.sh 
pwd
ls
cat user-data/
cat user-data/details 
ssh-keygen 
ssh-copy-id pup0101
ssh-copy-id pup01
ssh lamp01
sudo su -
ls
cd lamp01/
ls
ansible-playbook webserver-installation.yml 
ls
ansible-playbook webserver-installation.yml -i inventory.txt 
ansible-playbook mariadb-installation.yml -i inventory.txt 
ansible-playbook php-installation.yml -i inventory.txt 
ansible-playbook create-database.yml -e "dbname=jobsearch"  -i inventory.txt 
ansible-playbook create-table.yml -i inventory.txt 
ansible-playbook copy-web-pages.yml -i inventory.txt 
 ansible-playbook webserver-installation.yml --tags "Restart Webservice" -i inventory.txt 
cat create-table.yml 
ls
ls -lrt
cat inventory.txt 
vi data-update.yml
ansible-playbook data-update.yml --syntax-check
ansible-playbook data-update.yml -i inventory.txt --syntax-check 
ansible-playbook data-update.yml -i inventory.txt \
ansible-playbook data-update.yml -i inventory.txt 
cat data-update.yml 
cd 
ls
ls
cd lamp01/
ls
cat win-shutdown.yml
cat inventory.txt
sudo cat inventory.txt >> /etc/ansible/hosts 
cat inventory.txt >> /etc/ansible/hosts 
sudo su
cd ..
cd web-db/
ls
ansible-playbook webserver-installation.yml 
ssh web01
ssh db01
ansible-playbook webserver-installation.yml 
ansible-playbook mariadb-installation.yml 
ansible-playbook php-installation.yml 
ansible-playbook create-database.yml -e "dbname=jobsearch" 
ansible-playbook create-table.yml 
vi copy-web-pages.yml 
ansible-playbook copy-web-pages.yml --syntax-check
vi copy-web-pages.yml 
ansible-playbook copy-web-pages.yml --syntax-check
vi copy-web-pages.yml 
ansible-playbook copy-web-pages.yml 
ansible-playbook webserver-installation.yml --tags "Restart Webservice"
ssh web01
ssh web01
ssh web01
ssh db01
ssh dock01
ansible centos -a "shutdown -h" -b
ssh zap01
ansible centos -a "shutdown -h" -b
ansible ubuntu -a "shutdown -h" -b
ssh dock01
ansible ubuntu -a "shutdown -h" -b
ssh ans01
ssh-copy-id ans01
ansible ubuntu -a "shutdown -h" -b
ansible-playbook win-shutdown.yml
ls
cd lamp01/
vi win-shutdown.yml 
sudo shutdown -c
sudo vi /etc/ansible/hosts
ansible-playbook win-shutdown.yml
sudo vi /etc/ansible/hosts
ansible-playbook win-shutdown.yml
sudo init 0
ssh pup01
ssh vallabh@kub02
ssh web01
ssh dock01
ls
scp puppet-agent-install-ubuntu18.sh vallabh@kub01:/tmp
scp puppet-agent-install-ubuntu18.sh vallabh@kub02:/tmp
ping -c 1 kub02
ping -c 1 kub02
ping -c 1 kub02
ping -c 1 kub02
ping -c 1 kub02
scp puppet-agent-install-ubuntu18.sh vallabh@kub02:/tmp
ssh vallabh@kub01
scp /etc/hosts vallabh@kub02:/tmp
scp /etc/hosts vallabh@kub01:/tmp
ping -c 1 kub02
ssh vallabh@kub01
ssh vallabh@kub02
ssh vallabh@kub01
cd zabbix-5/
ansible-playbook zabbix-installation.yml
ansible-playbook mariadb-installation.yml
ansible-playbook create-db-table.yml
ansible-playbook zabbix-service.yml
ls
cd ..
ls
cd script/
ls
ls
cat zabbix-Centos-installation.sh
cd ..
ls
cat zabbix-centos-agent.yml
ls
mv zabbix-centos-agent.yml zabbix-ubuntu-agent.yml zabbix-5
cd zabbix-5/
 ansible-playbook zabbix-centos-agent.yml
ansible-playbook zabbix-ubuntu-agent.yml
vi /etc/zabbix/zabbix_server.conf 
ssh dock01
ssh zap01
ssh dock01
ssh zap01
ansible linux -a uptime
ansible centos -a "shutdown -h" -b
ansible-playbook win-shutdown.yml
cd 
ls
sudo su -
cd lamp01/
ls
ansible-playbook win-shutdown.yml
ansible ubuntu -a "shutdown -h" -b
ansible linux -a uptime
ansible centos -a "shutdown -h" -b
ansible ubuntu -a "shutdown -h" -b
cd lamp01/
 ansible-playbook win-shutdown.yml
ssh kub01
ssh web01
ssh dock01
ansible linux -a uptime
ssh web01
ssh dock01
ssh kub01
sudo su -
ansible centos -a "shutdown -h" -b
cd lamp01/
ls
cat win-shutdown.yml
mv win-shutdown.yml inventory.txt /home/ansible/
cd 
ls
vi win-shutdown.yml 
sudo vi /etc/ansible/hosts
 ansible-playbook win-shutdown.yml
ansible ubuntu -a "shutdown -h" -b
ssh dock01
ssh web01
ssh db01
ssh lamp01
ls
ls
ansible-playbook win-shutdown.yml 
ansible-playbook win-shutdown.yml 
ansible-playbook win-shutdown.yml -vvv
ansible-playbook win-shutdown.yml -vvv
ping win01
sudo su -
ping win01
sudo su -
ping win01
ansible-playbook win-shutdown.yml -vvv
ss -tuln | grep ':80'
ss -tuln 
ss -tuln | grep 22
man ip
ip -d
ip -r
ip d
ip r
ip r
ip a
uptime
ssh web01
ssh user1@web01
ssh dock01
ssh web01
ssh lamp01
ssh win-user1@lamp01
ssh lamp01
ssh web01
ansible centos -a "shutdown -h" -b
ansible ubuntu -a "shutdown -h" -b
ansible centos -a uptime
ansible linux -a uptime
ansible linux -a uptime
ssh web01
ssh dock01
ssh kub01
ssh pup01
ansible centos -a "shutdown -h" -b
ansible ubuntu -a "shutdown -h" -b
ansible-playbook win-shutdown.yml
sudo su -
ssh lamp01
ssh zap01
ansible linux -a uptime
sudo su -
ssh web01
ssh web01
ssh lamp01
ssh user1@lamp01
ssh lamp01
ssh user1@lamp01
ssh lamp01
ssh lamp01
ssh user2@lamp01
ssh user2@lamp01
ssh user2@lamp01
ssh user3@lamp01
sudo su -
ssh zap01
ssh web01
ssh db01
ssh kub01
ssh kub02
sudo su -
ssh lamp01
ssh pup01
cat /etc/os-release 
ssh lamp01
ssh pup01
sudo su -
ssh lamp01
ssh win-user1@lamp01
ssh lamp01
cat /etc/shells 
ssh lamp01
ssh pup01
ssh lamp01
ssh pup01
sudo init 0
ping web01
ping pup01
ping dock01
ansible linux -a uptime
ansible linux -a uptime
ssh web01
ssh lamp01
ssh web01
ssh lamp01
ssh web01
ssh web01
ssh lamp01
 ansible centos -a "shutdown -h" -b
date
 ansible ubuntu -a "shutdown -h" -b
ansible-playbook win-shutdown.yml
sudo su -
sudo su -
ssh lamp01
ssh pup01
ssh pup01
ssh dock01
ssh dock01
ssh web01
ssh db01
sudo su -
ansible linux -a uptime
ssh db01
ssh lamp01
ssh lamp01
ssh lamp01
ssh lamp01
ssh lamp01
ssh 18.232.176.209
ssh lamp01
ssh lamp01
ssh web01
ssh lamp01
ssh lamp01
ssh lamp01
telnet lamp01:22
telnet 172.16.1.211:22
sudo su -
sudo su -
ssh lamp01
ssh root@lamp01
sudo su -
ssh web01
ansible linux -a uptime
ansible all -m ping -o
ansible all -a " systemctl restart rsyslog"
ansible centos -a " systemctl restart rsyslog" -b
ls
cd web-db
ls
cat webserver-installation.yml
ansible linux -m shell -a 'dmidecode | grep -A5 "System Information"' -b
dmidecode 
sudo dmidecode 
ssh lamp01
ssh web01
ssh lamp01
ping lamp01
ping lamp01
ssh lamp01
ansible centos -a "shutdown -h" -b
ansible ubuntu -a "shutdown -h" -b
ansible-playbook win-shutdown.yml
ansible linux -a uptime
ansible linux -a uptime
ansible linux -a uptime
ansible linux -a uptime
ansible linux -a uptime
ansible linux -a uptime
ansible linux -a uptime
ansible linux -a uptime
ssh web01
ssh zap01
ssh zap01
ssh zap01
ssh zap01
ssh zap01
ssh dock01
ssh kub01
ssh lamp-1
ssh lamp01
ssh lamp01
ansible centos -a "shutdown -h" -b
ansible-playbook win-shutdown.yml
ansible ubuntu -a "shutdown -h" -b
ansible linux -a ping 
ansible linux -m ping 
ansible linux -a uptime
ansible linux -s "systemctl status rsyslog" -b
ansible linux -a "systemctl status rsyslog" -b
ansible linux -a "systemctl status puppet-agent" -b
sudo su -
ansible linux -a "systemctl status puppet" -b
ansible linux -a "systemctl status zabbix-agent2" -b
ansible linux -a uptime
ansible linux -m ping -o
ssh web01
ssh lamp01
ssh dock01
ansible centos -a "shutdown -h" -b
ansible linux -m ping -o
ansible linux -m ping
ansible web01 -m ping
ansible-playbook win-shutdown.yml
 ansible ubuntu -a "shutdown -h" -b
ansible linux -m ping
ansible linux -m ping -o
ansible linux -a uptime -o
ansible linux -a uptime -o
ansible linux -a uptime -o
ssh 172.208.18.215
ssh 20.81.251.221
ssh lamp01
ssh lamp01
ssh lamp01
ssh zap01
ssh web01
ssh db01
ssh kub01
ssh kub02
ssh pup01
ssh dock01
sudo su -
ssh pup01
ssh pup01
ssh pup01
ssh zap01
ssh root@zap01
