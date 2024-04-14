# Bootstrapping

## k3s node on Ubuntu
- `wget https://raw.githubusercontent.com/Twinki14/CozyLab/main/k3s/ubuntu-init.sh init.sh`
- `sudo sh ./init.sh`

## Flux
```
export GITHUB_TOKEN=<github pat with repo scope>
```

```bash
flux bootstrap github \
  --components-extra=image-reflector-controller,image-automation-controller \
  --token-auth \
  --owner=Twinki14 \
  --repository=CozyLab \
  --branch=main \
  --path=flux/ \
  --personal
```