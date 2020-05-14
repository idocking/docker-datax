#!/bin/bash -e

# update && install require packages
export DEBIAN_FRONTEND=noninteractive
#sed -i "s/http:\/\/archive\.ubuntu\.com/http:\/\/mirrors\.aliyun\.com/g" /etc/apt/sources.list
apt-get update
apt-get upgrade -y
apt-get install -y --no-install-recommends wget openjdk-8-jre-headless python iproute2

wget -q http://datax-opensource.oss-cn-hangzhou.aliyuncs.com/datax.tar.gz
tar -zxvf datax.tar.gz
mv datax /opt/
rm datax.tar.gz

apt-get purge -y wget
apt-get autoremove -y
rm -rf /var/lib/apt/lists/*

chmod +x /docker-jvm-opts.sh