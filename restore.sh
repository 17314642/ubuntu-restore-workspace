#!/bin/bash

set -e

# Update listings before installing additional programs
sudo apt update && sudo apt -y upgrade

for script_name in restore.d/*.sh; do
    echo "[+] Executing \"$script_name\"."
    if bash -e $script_name; then
        echo -e "[+] \"$script_name\" successfully finished.\n"
    else
        echo -e "[-] \"$script_name\" failed. Check log.\n"
        exit -1
    fi
done

xz -d -T 4 rootfs.tar.xz
sudo tar xfv rootfs.tar -C /
