#!/bin/bash

sudo sed -i "s/^wifi.powersave =.*/wifi.powersave = 2/g" /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf
sudo systemctl restart NetworkManager
echo "Sleeping 10 seconds and waiting for NetworkManager to wake up..."
sleep 10
