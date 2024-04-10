## qemu alpine
- Use `setup-alpine`
- Enable the community repository for `apk`, `nano /etc/apk/repositories`
- Install `qemu-guestagent` then add it the boot runlevel, `rc-update add qemu-guest-agent boot`
- Enable serial terminal / xterm.js support using [this alpinelinux wiki entry](https://wiki.alpinelinux.org/wiki/Enable_Serial_Console_on_Boot#How_to_Enable_the_Serial_Console_on_Boot_(1.10.x)) and [this proxmox wiki entry](https://pve.proxmox.com/wiki/Serial_Terminal#Configuration_on_the_host)

## k3s
- Create `/etc/rancher/k3s/config.yaml`
- Install k3s `curl -sfL https://get.k3s.io | sh`
- Grab our kubeconfig from `/etc/rancher/k3s/k3s.yaml`
