## 1. 安装 Docker
```

# Install using the convenience script
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Upgrade Docker after using the convenience script
## sudo apt-get purge docker-ce docker-ce-cli containerd.io
## sudo rm -rf /var/lib/docker
## sudo rm -rf /var/lib/containerd
## Rerun the script
```

## 2. Pull the image

```
docker pull teddysun/shadowsocks-rust
```
## 3. create a shadowsocks-rust configuration file
```
mkdir -p /etc/shadowsocks-rust
```
```
cat > /etc/shadowsocks-rust/config.json <<EOF
{
    "server":"0.0.0.0",
    "server_port":25565,
    "password":"password",
    "timeout":300,
    "method":"aes-256-gcm",
    "nameserver":"1.1.1.1",
    "mode":"tcp_and_udp"
}
EOF
```
## 4. Start a container
```
docker run -d -p 25565:25565 -p 25565:25565/udp --name ss-rust --restart=always -v /etc/shadowsocks-rust:/etc/shadowsocks-rust teddysun/shadowsocks-rust
```

## 参考
1. [Install Docker Engine](https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script)
2. [teddysun/shadowsocks-rust](https://hub.docker.com/r/teddysun/shadowsocks-rust/)
3. [teddysun/go-shadowsocks2 - Docker Image](https://hub.docker.com/r/teddysun/go-shadowsocks2)
