# 备份
cp /etc/fstab /etc/fstab.bak
#  加入重启配置

echo `blkid /dev/vdb1 | awk '{print $2}' | sed 's/\"//g'` /data  ext4 defaults 0 0 >> /etc/fstab
