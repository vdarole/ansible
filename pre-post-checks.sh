#!/bin/bash
# Purpose: Pre and Post Check before performing any change on system
# Version: 1.0
# Created Date: 
# Modified Date: 
# Author : 
###############START OF SCRIPT#######################
echo
echo "1. Pre-checks"
echo "2. Post-checks"
echo "3. Quit"
echo "Please select the option:"
read OPT
ROOT_DIR=/root/Patch_`date +"%B-%Y"`
PRE_DIR=$ROOT_DIR/Pre/
POST_DIR=$ROOT_DIR//Post/
BOND_FILE=/proc/net/bonding/bond0
prechecks()
{
if [ -d "$ROOT_DIR" ]; then
echo "$PRE_DIR already exists!!, Please rename it before executing the script"
exit
fi
mkdir $ROOT_DIR
mkdir $PRE_DIR
#Files to be backed up
cp -p /etc/redhat-release $PRE_DIR
cp -p /etc/fstab $PRE_DIR
cp -p /etc/grub2-efi.cfg $PRE_DIR
if [ -f "$BOND_FILE" ]; then
cp -p /proc/net/bonding/bond0 $PRE_DIR/bond0.txt
fi
#Outputs of Important commands
for i in `ip r | grep kernel | cut -d " " -f3 | sort -u`;
do
ethtool $i > $PRE_DIR/ethtool_$i.txt;
done
uname -a > $PRE_DIR/uname.txt
ip a > $PRE_DIR/ifconfig_all.txt
netstat -rn > $PRE_DIR/routing_table.txt
mount | wc -l> $PRE_DIR/mount.txt
df -PTh | egrep 'xfs|ext4|ext3|nfs/cifs' > $PRE_DIR/df.txt
sysctl -a | sort  > $PRE_DIR/sysctl
cat /proc/mounts | egrep 'nfs|cifs'  | grep -v sunrpc > $PRE_DIR/nfs.txt
netstat -nuatp | grep LIST | awk -F "/" '{ print $2 }' | sort -u > $PRE_DIR/services.txt
rpm -qa | sort > $PRE_DIR/rpm.txt
echo "Required files and command outputs copied to $PRE_DIR.."
}
postchecks()
{
if [ -d "$POST_DIR" ]; then
echo "$POST_DIR already exists!!, Please rename it before executing the script"
exit
fi
if [ ! -d "$PRE_DIR" ]; then
echo "Precheck Directory $PRE_DIR does not exist, please perform Prechecks first"
exit
fi
mkdir $POST_DIR
#Files to be backed up
cp -p /etc/redhat-release $POST_DIR
cp -p /etc/fstab $POST_DIR
cp -p /etc/grub2-efi.cfg $PRE_DIR
if [ -f "$BOND_FILE" ]; then
cp /proc/net/bonding/bond0 $POST_DIR/bond0.txt
fi
#Outputs of Important commands
for i in `ip r | grep kernel | cut -d " " -f3 | sort -u`;
do
ethtool $i > $POST_DIR/ethtool_$i.txt;
done
uname -a > $POST_DIR/uname.txt
ip a > $POST_DIR/ifconfig_all.txt
netstat -rn > $POST_DIR/routing_table.txt
mount | wc -l> $POST_DIR/mount.txt
df -PTh | egrep 'xfs|ext4|ext3|nfs/cifs' > $POST_DIR/df.txt
sysctl -a | sort  > $POST_DIR/sysctl
cat /proc/mounts | egrep 'nfs|cifs'  | grep -v sunrpc > $POST_DIR/nfs.txt
netstat -nuatp | grep LIST | awk -F "/" '{ print $2 }' | sort -u > $POST_DIR/services.txt
rpm -qa | sort > $POST_DIR/rpm.txt
for i in `ls -l $POST_DIR | grep ^- | awk '{print $9}'`
do
echo >> $POST_DIR/DIFFERENCES.TXT
echo $i >> $POST_DIR/DIFFERENCES.TXT
echo "--------" >> $POST_DIR/DIFFERENCES.TXT
diff -y --suppress-common-lines $PRE_DIR/$i $POST_DIR/$i >> $POST_DIR/DIFFERENCES.TXT
echo >> $POST_DIR/DIFFERENCES.TXT
echo >> $POST_DIR/DIFFERENCES.TXT
done
echo
echo "Post Patching Checks done, please check $POST_DIR/DIFFERENCES.TXT for important differences"
HOSTNAME=`hostname`
# echo "$HOSTNAME" | mailx -s "Post-Checks of $RHOSTNAME" -a "$POST_DIR/DIFFERENCES.TXT"
}
case $OPT in
"1") prechecks
;;
"2") postchecks
;;
"3") exit
;;
*) echo "$OPT is not a valid option"
;;
esac
###############END OF SCRIPT#######################
