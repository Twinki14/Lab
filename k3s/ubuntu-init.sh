#!/bin/sh
apt install qemu-guest-agent -y
apt install nano -y
apt autoremove --purge snapd -y
apt-mark hold snapd

# Enable xterm.js / serial console
systemctl enable serial-getty@ttyS0.service
systemctl start serial-getty@ttyS0.service

# Create /etc/rancher/k3s/config.yaml
wget https://raw.githubusercontent.com/Twinki14/CozyLab/main/k3s/config.yaml /etc/rancher/k3s/config.yaml