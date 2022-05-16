## 1.开启转发
```
$ vim /etc/sysctl.conf
$ sysctl -p
```

```
# net.ipv4.ip_forward=0
net.ipv4.ip_forward=1
```

```
iptables -t nat -A PREROUTING -p tcp --dport [ 端口号 ] -j DNAT --to-destination [ 目标 IP]
iptables -t nat -A PREROUTING -p udp --dport [ 端口号 ] -j DNAT --to-destination [ 目标 IP]
iptables -t nat -A POSTROUTING -p tcp -d [ 目标 IP] --dport [ 端口号 ] -j SNAT --to-source [ 本地服务器 IP]
iptables -t nat -A POSTROUTING -p udp -d [ 目标 IP] --dport [ 端口号 ] -j SNAT --to-source [ 本地服务器 IP]
```

```
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 60000 -j DNAT --to-destination 1.1.1.1:50000
iptables -t nat -A PREROUTING -p udp -m udp --dport 60000 -j DNAT --to-destination 1.1.1.1:50000
iptables -t nat -A POSTROUTING -d 1.1.1.1/32 -p tcp -m tcp --dport 50000 -j SNAT --to-source [ 本地服务器 IP]
iptables -t nat -A POSTROUTING -d 1.1.1.1/32 -p udp -m udp --dport 50000 -j SNAT --to-source [ 本地服务器 IP]
```

```
service iptables save
service iptables restart
```
