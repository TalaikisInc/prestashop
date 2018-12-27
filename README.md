# Prestashop tools

## Build

```bash
chmod +x build.sh
# Install
./build.sh install
# Create initial:
./build.sh create sitename
```

## Certificates

```bash
chmod +x docker_install.sh
./docker_install.sh
# Request
chmod +x certs_request.sh
./certs_request.sh host my#email.com
# Renew
chmod +x certs_renew.sh
./certs_renew.sh host my@email.com
```
