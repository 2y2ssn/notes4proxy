
```
$ vim /etc/sysctl.conf
$ sysctl -p
# net.ipv4.ip_forward=0
net.ipv4.ip_forward=1
```
```
$ apt install iptables -y
$ ifconfig
```


### 单端口转发
#### 同一端口

```
iptables -t nat -A PREROUTING -p tcp --dport [本地端口] -j DNAT --to-destination [目标IP:目标端口]
iptables -t nat -A PREROUTING -p udp --dport [本地端口] -j DNAT --to-destination [目标IP:目标端口]
iptables -t nat -A POSTROUTING -p tcp -d [目标IP] --dport [目标端口] -j SNAT --to-source [本地服务器主网卡绑定IP]
iptables -t nat -A POSTROUTING -p udp -d [目标IP] --dport [目标端口] -j SNAT --to-source [本地服务器主网卡绑定IP]
```
#### 不同端口
```
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 10000 -j DNAT --to-destination 2.2.2.2:10000
iptables -t nat -A PREROUTING -p udp -m udp --dport 10000 -j DNAT --to-destination 2.2.2.2:10000
iptables -t nat -A POSTROUTING -d 1.1.1.1 -p tcp -m tcp --dport 10000 -j SNAT --to-source 1.1.1.1
iptables -t nat -A POSTROUTING -d 1.1.1.1 -p udp -m udp --dport 10000 -j SNAT --to-source 1.1.1.1
```



```
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 10000 -j DNAT --to-destination 2.2.2.2:30000
iptables -t nat -A PREROUTING -p udp -m udp --dport 10000 -j DNAT --to-destination 2.2.2.2:30000
iptables -t nat -A POSTROUTING -d 1.1.1.1 -p tcp -m tcp --dport 30000 -j SNAT --to-source 1.1.1.1
iptables -t nat -A POSTROUTING -d 1.1.1.1 -p udp -m udp --dport 30000 -j SNAT --to-source 1.1.1.1
```

### 多端口转发

#### 同端口

将中转服务器` 2.2.2.2` 的` 10000~30000 `端口转发至目标IP为` 1.1.1.1 `的 ` 10000~30000 `端口

```
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 10000:30000 -j DNAT --to-destination 1.1.1.1:10000-30000
iptables -t nat -A PREROUTING -p udp -m udp --dport 10000:30000 -j DNAT --to-destination 1.1.1.1:10000-30000
iptables -t nat -A POSTROUTING -d 1.1.1.1 -p tcp -m tcp --dport 10000:30000 -j SNAT --to-source 2.2.2.2
iptables -t nat -A POSTROUTING -d 1.1.1.1 -p udp -m udp --dport 10000:30000 -j SNAT --to-source 2.2.2.2
```

#### 不同端口

将中转服务器` 2.2.2.2 `的 ` 10000~20000 ` 端口转发至**目标IP(被中转服务器)**为` 1.1.1.1 `的` 30000~40000 `端口

```
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 10000:20000 -j DNAT --to-destination 1.1.1.1:30000-40000
iptables -t nat -A PREROUTING -p udp -m udp --dport 10000:20000 -j DNAT --to-destination 1.1.1.1:30000-40000
iptables -t nat -A POSTROUTING -d 1.1.1.1 -p tcp -m tcp --dport 30000:40000 -j SNAT --to-source 2.2.2.2
iptables -t nat -A POSTROUTING -d 1.1.1.1 -p udp -m udp --dport 30000:40000 -j SNAT --to-source 2.2.2.2
```



#### 删除路由规则

```
# 查看 iptables 规则
$ iptables -t nat -vnL POSTROUTING
$ iptables -t nat -vnL PREROUTING
# 删除 iptables-Routing 规则
$ iptables -t nat -D POSTROUTING {rule-number-here}
$ iptables -t nat -D POSTROUTING 1
$ iptables -t nat -D PREROUTING {rule-number-here}
$ iptables -t nat -D PREROUTING 1
```
