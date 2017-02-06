#!/bin/bash
sudo apt-get install build-essential git cmake libboost1.55-all-dev
stop xmadcoind
rm xmdcoind
rm simplewallet
rm -rf .xmdcoin
rm -rf xmdcoin
rm /home/azureuser/xmdcoin/build/release/src/xmdcoind
rm /home/azureuser/xmdcoin/build/release/src/simplewallet
rm /etc/init/xmadcoind.conf
git clone https://github.com/upggr/xmd-coin.git xmdcoin
cd xmdcoin
cp xmadcoind.conf /etc/init/xmadcoind.conf
make
cd build
cd release
cd src
chmod +x xmdcoind
cp /home/azureuser/xmdcoin/build/release/src/xmdcoind /home/azureuser/xmdcoind
cp /home/azureuser/xmdcoin/build/release/src/simplewallet /home/azureuser/simplewallet
start xmadcoind
