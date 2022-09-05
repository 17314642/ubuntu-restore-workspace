#!/bin/bash

sudo apt install -y curl

curl -sS "https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg" | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update && sudo apt install -y spotify-client

sudo wget -O /usr/local/lib/spotify-adblock.so https://github.com/abba23/spotify-adblock/releases/download/v1.0.2/spotify-adblock.so
sudo sed -i "s/^Exec=.*/Exec=env LD_PRELOAD=\/usr\/local\/lib\/spotify-adblock.so spotify %U/g" /usr/share/applications/spotify.desktop
sudo mkdir -p /etc/spotify-adblock
sudo wget -O /etc/spotify-adblock/config.toml "https://raw.githubusercontent.com/abba23/spotify-adblock/main/config.toml"
