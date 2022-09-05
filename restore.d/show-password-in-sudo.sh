#!/bin/bash

echo "Defaults pwfeedback" | sudo tee /etc/sudoers.d/show-password
sudo chmod 0440 /etc/sudoers.d/show-password
