#!/bin/bash

sudo apt install -y wireshark
sudo usermod -aG wireshark `whoami`
