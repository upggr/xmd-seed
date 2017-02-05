#!/bin/bash
sudo apt-get install build-essential git cmake libboost1.55-all-dev
stop xmadcoind
rm -rf .xmdcoin
rm -rf xmdcoin
rm /etc/init/xmadcoind.conf
git clone https://github.com/upggr/xmd-coin.git xmdcoin
cd xmdcoin
cp xmadcoind.conf /etc/init/xmadcoind.conf
make -j
cd build
cd release
cd src
chmod +x xmdcoind
start xmadcoind
