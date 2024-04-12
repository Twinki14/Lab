#!/bin/sh
apt install qemu-guest-agent -y
apt install nano -y
apt autoremove --purge snapd -y
apt-mark hold snapd

# Enable xterm.js / serial console (proxmox)
systemctl enable serial-getty@ttyS0.services
systemctl start serial-getty@ttyS0.service

# Init /etc/rancher/k3s/config.yaml from source
wget https://raw.githubusercontent.com/Twinki14/CozyLab/main/k3s/config.yaml --force-directories -O /etc/rancher/k3s/config.yaml

# Install k3s
curl -sfL https://get.k3s.io | sh

# Reboot
reboot