#!/bin/bash

echo "HandleLidSwitch=poweroff" | sudo tee -a /etc/systemd/logind.conf
