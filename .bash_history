ssh-copy-id pup01
#1737644173
ssh pup01
#1737644273
ls
#1737644761
scp puppet-agent-install-rhel8.sh root@zap01:/root
#1737644775
scp puppet-agent-install-rhel8.sh root@jen01:/root
#1737644790
scp puppet-agent-install-rhel8.sh root@lamp01:/root
#1737644811
scp puppet-agent-install-rhel8.sh root@web01:/root
#1737644822
scp puppet-agent-install-rhel8.sh root@db01:/root
#1737644851
scp puppet-agent-install-rhel8.sh vallabh@@dock01:/tmp
#1737644913
scp puppet-agent-install-ubuntu20.sh  vallabh@@dock01:/tmp
#1737644931
scp puppet-agent-install-ubuntu20.sh  vallabh@dock01:/tmp
#1737644945
scp puppet-agent-install-ubuntu20.sh  vallabh@kub01:/tmp
#1737644961
scp puppet-agent-install-ubuntu20.sh  vallabh@kub02:/tmp
#1737644993
scp puppet-agent-install-ubuntu20.sh  vallabh@tomd01:/tmp
#1737645004
scp puppet-agent-install-ubuntu20.sh  vallabh@tomp01:/tmp
#1737645027
ssh root@zap01
#1737645174
ssh root@jen01
#1737645345
ssh root@lamp01
#1737645623
ssh root@web01
#1737645950
ssh root@db01
#1737646238
ssh vallabh@dock01
#1737646360
ssh vallabh@kub01
#1737646472
ssh vallabh@kub02
#1737646622
ssh vallabh@tomd01
#1737646740
ssh vallabh@tomp01
#1737646882
ssh pup01
#1737646976
ssh root@zap01
#1737647039
ssh root@jen01
#1737647054
ssh root@lamp01
#1737647066
ssh root@web01
#1737647096
ssh root@db01
#1737647133
ssh vallabh@dock01
#1737647159
ssh vallabh@kub01
#1737647179
ssh vallabh@kub02
#1737647200
ssh vallabh@tomd01
#1737647222
ssh vallabh@tomp01
#1737647243
sudo su -
#1737724630
ssh lamp01
#1737724643
ssh web01
#1737724653
ssh db01
#1737724678
cd  /home/ansible/lamp01
#1737724682
ls
#1737724691
cd ..
#1737724692
ls
#1737724700
cat inventory.txt 
#1737724712
cp inventory.txt lamp01/
#1737724716
cd lamp01/
#1737724724
ansible-playbook webserver-installation.yml -i inventory.txt
#1737724798
ansible-playbook mariadb-installation.yml -i inventory.txt
#1737724890
ansible-playbook php-installation.yml -i inventory.txt
#1737724951
ansible-playbook create-database.yml -e "dbname=jobsearch" -i inventory.txt
#1737724976
 ansible-playbook create-table.yml  -i inventory.txt
#1737724983
ansible-playbook copy-web-pages.yml  -i inventory.txt
#1737725035
ansible-playbook webserver-installation.yml --tags "Restart Webservice"  -i inventory.txt
#1737725041
ansible-playbook data-update.yml -i inventory.txt
#1737725144
ssh lamp01
#1737727546
ssh db01
#1737730083
ssh kub02
#1737732703
ssh kub02
#1737727518
ssh web01
#1737729062
ssh dock01
#1737730012
ssh kub01
#1737731912
ssh kub01
#1737732928
ssh pup01
#1737736781
ssh ans01
#1737735833
ssh pup01
#1737736686
ansible redhat -a "shutdown -h" -b   -i inventory.txt
#1737736714
ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1737736802
ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1737736820
ansible-playbook win-shutdown.yml  -i inventory.txt
#1737784795
ssh web01
#1737784829
vi inventory.txt 
#1737784851
history 
#1737784858
ansible-playbook win-shutdown.yml  -i inventory.txt
#1737784898
vi inventory.txt 
#1737784907
vi /etc/hosts
#1737784926
sudo su -
#1737784950
ansible-playbook win-shutdown.yml  -i inventory.txt
#1737784961
ping win01
#1737785110
pip install pywinrm
#1737785124
ansible -i inventory windows -m win_ping
#1737785135
ansible -i inventory.txt win01 -m win_ping
#1737785190
vi inventory.txt 
#1737785202
history 
#1737785214
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1737785287
vi inventory.txt 
#1737785365
New-NetFirewallRule -Name "AllowWinRMHTTP" -DisplayName "Allow WinRM HTTP" -Protocol TCP -LocalPort 5985 -Action Allow
#1737785376
telnet win01 5985
#1737785507
telnet win01 
#1737785682
telnet win01 5985
#1737785697
ansible -i inventory windows -m win_ping
#1737785704
ansible -i inventory.txt win01 -m win_ping
#1737785723
ansible-playbook win-shutdown.yml  -i inventory.txt
#1737785731
sudo su -
#1737813427
ssh zap01
#1737819176
ssh pup01
#1737820074
uname -a
#1737820085
cat /etc/os-release 
#1737820904
sudo su -
#1737820992
ssh kub01
#1737818791
ls
#1737818805
cat puppet-agent-install-rhel8.sh
#1737818828
ls
#1737818839
cd zabbix-6/
#1737818840
ls
#1737818863
cat zabbix-rhel8-agent.yml 
#1737819071
vi zabbix-rhel8-agent.yml 
#1737819110
cat zabbix-rhel8-agent.yml
#1737819246
vi zabbix-rhel8-agent.yml
#1737819663
cat zabbix-rhel8-agent.yml
#1737819689
ansible-playbook zabbix-rhel8-agent.yml
#1737819710
cd ..
#1737819722
cp inventory.txt zabbix-6/
#1737819727
cd zabbix-6/
#1737819735
ansible-playbook zabbix-rhel8-agent.yml -i inventory.txt 
#1737819968
ls
#1737819976
vi zabbix-ubuntu20-agent.yml
#1737820465
ansible-playbook zabbix-ubuntu20-agent.yml -i inventory.txt 
#1737821013
vi zabbix-ubuntu20-agent.yml
#1737821061
vi zabbix-ubuntu20-agent.yml
#1737821086
ansible-playbook zabbix-ubuntu20-agent.yml -i inventory.txt  
#1737821253
vi zabbix-ubuntu20-agent.yml
#1737821274
ansible-playbook zabbix-ubuntu20-agent.yml -i inventory.txt 
#1737821520
cd 
#1737821527
history 
#1737821543
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1737821688
sudo su -
#1737900170
ssh pup01
#1737893874
ansible linux -a uptime -i inventory.txt 
#1737893963
ansible win -a uptime -i inventory.txt 
#1737894002
cat inventory.txt 
#1737894020
ansible win -m ping -i inventory.txt 
#1737894059
ansible win -a uptime -i inventory.txt 
#1737894086
ssh web01
#1737894316
ssh dock01
#1737895798
ssh kub01
#1737898944
ssh zap01
#1737899354
ssh pup01
#1737899612
ssh zap01
#1737900646
ssh zap01
#1737901575
ssh tomd01
#1737906524
ssh tomp01
#1737907141
ssh tomd01
#1737907517
ssh tomp01
#1737907831
ssh jen01
#1737913501
ssh lamp01
#1737914524
ssh lamp01 -l vallabh@darole.org
#1737914564
history 
#1737914573
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1737914892
history | grep win
#1737914898
ansible-playbook win-shutdown.yml  -i inventory.txt
#1737914949
sudo su -
#1737965160
history 
#1737965166
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1737965180
ls
#1737965188
cd windows/
#1737965189
ls
#1737965193
vi win_ping.yml 
#1737965204
vi win_ping.yml 
#1737965224
rm -rf .win_ping.yml.swp 
#1737965226
vi win_ping.yml 
#1737965259
ansible-playbook win_ping.yml -i inventory.txt 
#1737965266
cat win_ping.yml 
#1737965366
sudo su -
#1737965496
ansible-playbook win_ping.yml -i inventory.txt 
#1737965504
ansible-playbook win_ping.yml -i inventory.txt  --vvv
#1737965509
ansible-playbook win_ping.yml -i inventory.txt  -vvv
#1737965648
vi win_ping.yml 
#1737965680
ansible-playbook win_ping.yml -i inventory.txt  -syntax-check
#1737965685
ansible-playbook win_ping.yml -i inventory.txt --syntax-check
#1737965690
ansible-playbook win_ping.yml -i inventory.txt
#1737965707
cd 
#1737965720
ansible-playbook win-shutdown.yml  -i inventory.txt
#1737965802
sudo su -
#1737963299
ls
#1737963311
mkdir windows
#1737963321
cp inventory.txt windows/
#1737963327
cd windows/
#1737963335
vi win_ping.yml
#1737963468
ansible-playbook win_ping.yml -i inventory.txt --syntax-check
#1737963473
vi win_ping.yml
#1737963483
ansible-playbook win_ping.yml -i inventory.txt --syntax-check
#1737963495
vi win_ping.yml
#1737963509
ansible-playbook win_ping.yml -i inventory.txt --syntax-check
#1737963539
vi win_ping.yml
#1737963566
ansible-playbook win_ping.yml -i inventory.txt --syntax-check
#1737963573
vi win_ping.yml
#1737963589
ansible-playbook win_ping.yml -i inventory.txt --syntax-check
#1737963591
vi win_ping.yml
#1737963600
ansible-playbook win_ping.yml -i inventory.txt --syntax-check
#1737963603
vi win_ping.yml
#1737981935
ansible linux -a uptime -i inventory.txt 
#1737981985
ssh pup01
#1737982130
ssh lamp01 -l vallabh@darole.org
#1737982159
ssh lamp01
#1737989317
ssh lamp01
#1737989347
ssh web01
#1737989777
ssh dock01
#1737990462
ssh kub01
#1737990520
ssh kub02
#1737990547
ssh kub01
#1737990626
ssh kub02
#1737990648
ssh kub01
#1737990772
ssh tomd01
#1737990899
ssh tomp01
#1737991073
ssh kub01
#1737993206
ssh dock01
#1737994361
history 
#1737994369
history 
#1737994380
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1737994435
sudo su -
#1738403061
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt 
#1738403203
ssh web01
#1738403211
ssh db01
#1738403215
sudo su -
#1738403255
history | grep win
#1738403264
ansible-playbook win-shutdown.yml  -i inventory.txt
#1738403372
sudo su -
#1738560497
ansible linux -a uptime -i inventory.txt 
#1738566756
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt 
#1738567094
ansible-playbook win-shutdown.yml  -i inventory.txt ; sudo init 0 
#1738755554
ansible linux -a uptime -i inventory.txt
#1738755619
ssh pup01
#1738755868
ssh web01
#1738755973
ssh dock01
#1738773483
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt 
#1738773692
sudo su -
#1738820453
ssh db01
#1738821448
ssh lamp01 -l vallabh@darole.org
#1738821457
ssh db01 -l vallabh@darole.org
#1738850112
ssh kub02
#1738850779
ssh kub02
#1738852370
ssh kub02
#1738853187
ssh kub02
#1738853326
ssh kub02
#1738818908
ansible linux -a uptime -i inventory.txt
#1738818957
ssh pup01
#1738819211
ssh web01
#1738819269
ssh lamp01
#1738819650
ssh lamp01
#1738820394
ssh lamp01 -l vallabh@darole.org
#1738820414
ssh web01
#1738820763
ssh lamp01 -l vallabh@darole.org
#1738821927
ssh web01 -l vallabh@darole.org
#1738822227
ssh dock01
#1738823320
ssh tomd01
#1738823656
ssh tomp01
#1738823924
ssh kub01
#1738849647
ssh kub02
#1738849668
ssh kub01
#1738849690
ssh kub01
#1738850018
ssh kub01
#1738850768
ssh kub01
#1738852352
ssh kub01
#1738853005
ssh kub01
#1738853320
ssh kub01
#1738853344
ssh kub01
#1738854593
ssh zap01
#1738854669
ssh dock01
#1738854711
ssh zap01
#1738856632
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt 
#1738856836
sudo su -
#1738903060
ansible linux -a uptime -i inventory.txt
#1738904031
ssh pup01
#1738904137
ssh web01 -l vallabh@darole.org
#1738904297
ssh dock01
#1738904913
ssh kub01
#1738905687
ssh tomd01
#1738905853
ssh tomp01
#1738905980
ssh dock01
#1738934806
history 
#1738934815
 ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1738934900
sudo su -
#1739076986
ansible linux -a uptime -i inventory.txt
#1739077200
ssh pup01
#1739077378
ssh web01 -l vallabh@darole.org
#1739078410
ssh dock01
#1739079407
kubectl create deployment apache --image=httpd
#1739079421
ssh kub01
#1739080653
ssh tomd01
#1739080859
ssh tomp01
#1739082330
ssh dock01
#1739091619
ssh jen0101
#1739091621
ssh jen01
#1739092094
ssh dock01
#1739101489
history 
#1739101496
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1739101545
 sudo su -
#1739286143
ls -l /tmp/precheck.log
#1739286169
ssh lamp01
#1739286455
ssh dock01
#1739288780
ssh lamp01
#1739288925
ssh lamp01
#1739290344
ssh lamp01
#1739290718
ssh dock01
#1739292602
ssh lamp01
#1739292900
ssh lamp01
#1739284221
 ansible linux -a uptime -i inventory.txt
#1739284270
ssh pup01
#1739285816
ssh lamp01
#1739285988
vi redhat-patching.yml
#1739286029
ansible-playbook -i inventory.txt  redhat-patching.yml 
#1739286091
ansible-playbook -i inventory.txt  redhat-patching.yml 
#1739286107
vi redhat-patching.yml 
#1739286223
ansible-playbook -i inventory.txt  redhat-patching.yml 
#1739290447
vi redhat-patching.yml 
#1739290582
ansible-playbook -i inventory.txt  redhat-patching.yml  
#1739292731
ansible-playbook -i inventory.txt  redhat-patching.yml  
#1739292842
cat redhat-patching.yml 
#1739292967
ansible-playbook -i inventory.txt  redhat-patching.yml  
#1739293334
history 
#1739293343
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1739293526
sudo su -
#1739343993
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt 
#1739344050
sudo su -
#1739379635
ansible linux -a uptime -i inventory.txt
#1739379693
ssh pu01
#1739379697
ssh pup01
#1739380718
ssh lamp01
#1739379774
ssh pup01
#1739382135
ssh web01
#1739382144
ssh db01
#1739382154
ssh lamp01
#1739382175
ssh zap01 "sudo init 0"
#1739382187
ssh lamp01 "sudo init 0"
#1739382196
ssh jen01 "sudo init 0"
#1739382204
ssh tomd01 "sudo init 0"
#1739382212
ssh tomp01 "sudo init 0"
#1739382222
ssh kub01 "sudo init 0"
#1739382230
ssh kub02 "sudo init 0"
#1739382258
sudo init 0
#1739537094
ssh pup01
#1739515813
ansible linux -a uptime -i inventory.txt
#1739515883
ssh pup01
#1739516040
ssh web01 -l vallabh@darole.org
#1739516156
ssh dock01
#1739516859
ssh kub01
#1739517573
ssh tomd01
#1739517721
ssh tomp01
#1739536793
ssh lamp01
#1739536844
history 
#1739536856
ansible-playbook -i inventory.txt  redhat-patching.yml
#1739536885
cat redhat-patching.yml 
#1739536889
ssh lamp01
#1739536920
ansible-playbook -i inventory.txt  redhat-patching.yml
#1739539330
ssh lamp01
#1739553359
ssh web01 -l vallabh@darole.org
#1739553417
ssh dock01
#1739553478
ssh tomd01
#1739553518
ssh tomp01
#1739553562
ssh kub01
#1739553633
ssh kub02
#1739553726
ssh zap01
#1739553776
ssh pup01
#1739553781
sudo su -
#1739861621
ansible linux -a uptime -i inventory.txt
#1739861686
ssh pup01
#1739861719
ssh web01 -l vallabh@darole.org
#1739861860
ssh dock01
#1739863029
ssh kub01
#1739864030
ssh tomd01
#1739864728
ssh tomp01
#1739886759
ssh lamp01
#1739888545
ssh dock01
#1739861958
cat inventory.txt 
#1739862012
ls
#1739862020
cat redhat-patching.yml
#1739862053
ssh web01:
#1739862069
ssh web01 "touch /tmp/precheck.log"
#1739862078
ssh db01 "touch /tmp/precheck.log"
#1739862098
ssh zap01 "touch /tmp/precheck.log"
#1739862110
ssh pup01 "touch /tmp/precheck.log"
#1739862120
ssh jen01 "touch /tmp/precheck.log"
#1739862137
ssh web01 "touch /tmp/postcheck.log"
#1739862146
ssh db01 "touch /tmp/postcheck.log"
#1739862163
ssh zap01 "touch /tmp/postcheck.log"
#1739862172
ssh pup01 "touch /tmp/postcheck.log"
#1739862181
ssh jen01 "touch /tmp/postcheck.log"
#1739862193
ssh lamp01
#1739862276
vi pre-post-checks.sh
#1739862303
ls
#1739862321
scp pre-post-checks.sh web01:/tmp/
#1739862328
scp pre-post-checks.sh db01:/tmp/
#1739862340
scp pre-post-checks.sh lamp01:/tmp/
#1739862348
scp pre-post-checks.sh zap01:/tmp/
#1739862355
scp pre-post-checks.sh pup01:/tmp/
#1739862365
scp pre-post-checks.sh jen01:/tmp/
#1739862643
ssh web01
#1739862669
ssh db01
#1739862698
ssh lamp01
#1739862742
ssh zap01 "sudo sh /tmp/pre-post-checks.sh"
#1739862752
ls
#1739862767
ssh pup01
#1739862793
ssh jen01
#1739862826
vi redhat-patching.yml 
#1739862851
history | grep redhat-patching.yml
#1739862860
ansible-playbook -i inventory.txt  redhat-patching.yml
#1739878456
ansible linux -a uptime -i inventory.txt
#1739878505
ssh db01
#1739884616
ls
#1739884623
cat inventory.txt 
#1739884717
ssh web01
#1739884832
ssh db01
#1739884935
ssh lamp01
#1739884989
ssh zap01
#1739885071
ssh pup01
#1739885161
ssh jen01
#1739885614
ssh web01 -l vallabh@darole.org
#1739885999
ls
#1739886523
ssh pup01
#1739888879
cp redhat-patching.yml ubuntu-patching.yml
#1739888884
vi ubuntu-patching.yml
#1739888995
vi ubuntu-patching.yml
#1739889108
vi ubuntu-patching.yml
#1739889140
ansible-playbook ubuntu-patching.yml -i inventory.txt 
#1739889162
vi ubuntu-patching.yml
#1739889268
ansible-playbook ubuntu-patching.yml -i inventory.txt 
#1739889275
vi ubuntu-patching.yml
#1739889295
ansible-playbook ubuntu-patching.yml -i inventory.txt  --syntax-checks
#1739889297
ansible-playbook ubuntu-patching.yml -i inventory.txt  --syntax-check
#1739889309
vi ubuntu-patching.yml
#1739889327
ansible-playbook ubuntu-patching.yml -i inventory.txt  --syntax-check
#1739889337
vi ubuntu-patching.yml
#1739889390
cat inventory.txt 
#1739889407
ansible-playbook ubuntu-patching.yml -i inventory.txt 
#1739889440
vi ubuntu-patching.yml
#1739889468
ansible-playbook ubuntu-patching.yml -i inventory.txt 
#1739889486
vi ubuntu-patching.yml
#1739889524
cat ubuntu-patching.yml 
#1739889826
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt 
#1739889857
sudo su -
#1740056482
ansible linux -a uptime -i inventory.txt
#1740056565
ssh pup01
#1740056752
chronyc sources -v
#1740056783
sudo su -
#1740057749
ssh dock01
#1740063708
vi redhat-patching.yml 
#1740063772
ansible-playbook redhat-patching.yml -i inventory.txt 
#1740058773
ssh lamp01
#1740059854
sudo su -
#1740063644
ssh dock01
#1740064986
history 
#1740065008
 ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1740065061
ssh zap01
#1740065077
sudo su -
#1740131091
 ansible linux -a uptime -i inventory.txt
#1740131169
ssh pup01
#1740131194
chronyc sources -v
#1740131230
date
#1740131366
sudo ln -s /usr/share/zoneinfo/Asia/Kolkata /etc/localtime
#1740131370
date
#1740131379
sudo su -
#1740131467
ssh web01 -l vallabh@darole.org
#1740131801
vi redhat-patching.yml 
#1740132615
ssh jen01
#1740133182
ssh dock01
#1740135175
ssh jen01
#1740135658
ssh dock01
#1740137264
history 
#1740137269
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1740137304
sudo su -
#1740205916
ssh jen01
#1740205772
ssh dock01
#1740208597
history 
#1740208616
ansible-playbook redhat-patching.yml -i inventory.txt
#1740209650
ssh dock01
#1740210388
history 
#1740210393
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1740210434
sudo su -
#1740294476
ansible linux -a uptime -i inventory.txt
#1740294628
ssh pup01
#1740294857
 ssh web01 -l vallabh@darole.org
#1740295612
ssh dock01
#1740296942
ssh dock01
#1740296975
ssh kub01
#1740297893
ssh tomd01
#1740297989
ssh tomp01
#1740298702
ansible-playbook redhat-patching.yml -i inventory.txt 
#1740299729
history 
#1740299738
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt
#1740299762
sudo su -
#1740323276
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt 
#1740323780
sudo su -
#1740375372
ssh dock01
#1740374123
ansible linux -a uptime -i inventory.txt
#1740375062
ansible linux -a uptime -i inventory.txt
#1740375096
ssh pup01
#1740375124
ssh web01 -l vallabh@darole.org
#1740376109
ssh dock01
#1740376944
ssh kub01
#1740376949
ssh kub01
#1740377920
ssh tomd01
#1740378005
ssh tomp01
#1740379002
history 
#1740379017
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt ; sudo init 0 
#1740494977
ssh jen01
#1740497767
ansible redhat -a "shutdown -h" -b   -i inventory.txt ; ansible ubuntu -a "shutdown -h" -b  -i inventory.txt ; sudo init 0  
#1740675485
ssh web01
#1740675653
ssh web01
#1740676392
ssh web01
