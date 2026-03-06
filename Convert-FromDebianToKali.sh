#!/bin/sh
# Copyright 2026 dah4k
# SPDX-License-Identifier: EPL-2.0

sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get update  --quiet=2 --assume-yes --no-install-recommends
sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install --quiet=2 --assume-yes --no-install-recommends ca-certificates curl dirmngr gnupg2
sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC curl https://archive.kali.org/archive-keyring.gpg --output /usr/share/keyrings/kali-archive-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/kali-archive-keyring.gpg] https://http.kali.org/kali kali-rolling main non-free contrib' | sudo tee --append /etc/apt/sources.list
sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get update  --quiet=2 --assume-yes --no-install-recommends
sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get full-upgrade --quiet=2 --assume-yes --no-install-recommends -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" --fix-broken
sudo DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get install --quiet=2 --assume-yes --no-install-recommends -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew" --fix-broken kali-defaults kali-linux-headless
