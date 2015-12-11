
# Installation
```
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install lib32gcc1 lib32stdc++6 libcurl4-gnutls-dev:i386

sudo adduser --disabled-password dst
sudo su - dst
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
mkdir server_dst

./steamcmd.sh \
  +login anonymous \
  +force_install_dir /home/dst/server_dst \
  +app_update 343050 validate \
  +quit
```