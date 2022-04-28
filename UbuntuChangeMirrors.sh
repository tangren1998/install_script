#!/bin/bash
# 使用root或者sudo运行脚本

new_sources='mirrors.aliyun.com'

echo "Backup sources.list..."
cp /etc/apt/sources.list /etc/apt/sources.list.bak

echo "Set up a new mirror source..."
sed -i s/archive.ubuntu.com/$new_sources/g /etc/apt/sources.list
sed -i s/security.ubuntu.com/$new_sources/g /etc/apt/sources.list

# Ubuntu的中国源
sed -i s/cn.archive.ubuntu.com/$new_sources/g /etc/apt/sources.list

# ARM的Ubuntu源
sed -i s/ports.ubuntu.com/$new_sources/g /etc/apt/sources.list

echo "Check for system updates..."
apt update

echo "Upgrade system..."
apt upgrade -y