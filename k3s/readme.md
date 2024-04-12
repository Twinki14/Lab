## Ubuntu k3s node setup
- Install qemu-guest-agent, `sudo apt-get install qemu-guest-agent`
- Remove snapd from ubuntu server minimal, `sudo apt autoremove --purge snapd` `sudo apt-mark hold snapd`
- Enable xterm.js https://gist.github.com/edisonlee55/7fdd61ea9ed9aba68e2dd02f6ff4814a
- Create `/etc/rancher/k3s/config.yaml`
- Install k3s `curl -sfL https://get.k3s.io | sh`
- Grab our kubeconfig from `/etc/rancher/k3s/k3s.yaml`
