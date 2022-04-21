!#/bin/bash

#linux  批量化分区自动化，挂载 v.01
#  dockercore

 ansible  dev-test        -m shell -a 'parted -s /dev/vdb mklabel gpt'
 ansible  dev-test        -m shell -a 'parted -s /dev/vdb mkpart primary 1 100%'
 ansible  dev-test        -m shell -a 'parted -s /dev/vdb print'
 ansible  dev-test        -m shell -a 'mkfs -t ext4 /dev/vdb1'
 ansible  dev-test        -m shell -a 'mkdir /data'
 ansible  dev-test        -m shell -a 'mount /dev/vdb1 /data'
 ansible  dev-test        -m shell -a 'df -TH'
 ansible  dev-test        -m copy  -a 'src=mount.sh dest=/tmp/mount.sh'
 ansible  dev-test        -m shell -a 'bash /tmp/mount.sh'
 ansible  dev-test        -m shell -a 'cat /etc/fstab'
