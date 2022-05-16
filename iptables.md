## 1.开启转发
```
$ vim /etc/sysctl.conf
$ sysctl -p
```

```
# net.ipv4.ip_forward=0
net.ipv4.ip_forward=1
```

#### 同端口
```
iptables -t nat -A PREROUTING -p tcp --dport [ 端口号 ] -j DNAT --to-destination [ 目标 IP]
iptables -t nat -A PREROUTING -p udp --dport [ 端口号 ] -j DNAT --to-destination [ 目标 IP]
iptables -t nat -A POSTROUTING -p tcp -d [ 目标 IP] --dport [ 端口号 ] -j SNAT --to-source [ 本地服务器 IP]
iptables -t nat -A POSTROUTING -p udp -d [ 目标 IP] --dport [ 端口号 ] -j SNAT --to-source [ 本地服务器 IP]
```

#### 非同端口号修改方案：（使用本地服务器的 60000 端口来转发目标 IP 为 1.1.1.1 的 50000 端口）
```
iptables -t nat -A PREROUTING -p tcp -m tcp --dport 60000 -j DNAT --to-destination 1.1.1.1:50000
iptables -t nat -A PREROUTING -p udp -m udp --dport 60000 -j DNAT --to-destination 1.1.1.1:50000
iptables -t nat -A POSTROUTING -d 1.1.1.1/32 -p tcp -m tcp --dport 50000 -j SNAT --to-source [ 本地服务器 IP]
iptables -t nat -A POSTROUTING -d 1.1.1.1/32 -p udp -m udp --dport 50000 -j SNAT --to-source [ 本地服务器 IP]
```

#### 多端口转发修改方案： ( 将本地服务器的 50000~65535 转发至目标 IP 为 1.1.1.1 的 50000~65535 端口 )
```
-A PREROUTING -p tcp -m tcp --dport 50000:65535 -j DNAT --to-destination 1.1.1.1
-A PREROUTING -p udp -m udp --dport 50000:65535 -j DNAT --to-destination 1.1.1.1
-A POSTROUTING -d 1.1.1.1/32 -p tcp -m tcp --dport 50000:65535 -j SNAT --to-source [ 本地服务器 IP]
-A POSTROUTING -d 1.1.1.1/32 -p udp -m udp --dport 50000:65535 -j SNAT --to-source [ 本地服务器 IP]
```

#### 删除路由规则
```
# 列出pretrouting规则
$ sudo iptables -t nat -v -L -n --line-number
$ sudo iptables -t nat -v -L PREROUTING -n --line-number
```
```
-t nat：选择nat表。
-v：查看详细信息。
-L：列出所选链中的所有规则。这里是显示在nat表中的所有规则。
-L PREROUTING–仅在PREROUTING链中显示规则。
-n：IP地址和端口号将以数字格式打印。
--line-number：在每个规则的开头添加行号，因为我们需要使用行号才能删除nat规则。
```

```
# 删除iptables中预路由nat规则
$ sudo iptables -t nat -D PREROUTING {rule-number-here}
$ sudo iptables -t nat -D PREROUTING 1
# 或者
$ sudo iptables -t nat --delete PREROUTING 1
```


```
service iptables save
service iptables restart
```
