#!/bin/bash

sudo sed -i "s/^GRUB_TIMEOUT_STYLE=.*/GRUB_TIMEOUT_STYLE=menu/g" /etc/default/grub
sudo sed -i "s/^GRUB_TIMEOUT=.*/GRUB_TIMEOUT=0/g" /etc/default/grub
sudo update-grub
