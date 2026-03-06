#!/bin/sh
# Copyright 2026 dah4k
# SPDX-License-Identifier: EPL-2.0

sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get update  --quiet=2 --assume-yes --no-install-recommends
sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install --quiet=2 --assume-yes --no-install-recommends lightdm xrdp xfce4

sudo adduser xrdp ssl-cert
echo "export XAUTHORITY=~/.Xauthority" >> ~/.profile

sudo systemctl set-default graphical.target
sudo systemctl enable lightdm xrdp
sudo systemctl start lightdm xrdp

#sudo reboot now
