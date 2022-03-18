# Some scripts

### 萌咖一键网络重装 Debian / Ubuntu / CentOS 系统及dd方式安装系统

```
wget --no-check-certificate -O AutoReinstall.sh https://git.io/AutoReinstall.sh && bash AutoReinstall.sh
```
```
bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub/Note/master/InstallNET.sh') -d 11 -v 64 -p "密码" -port "端口"
```
```
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -d 10 -v 64 -a -firmware -p password
```

#### 萌咖 DD Guide

```
apt install net-tools
ifconfig -a   (查看本机公网IP地址)
route -n   (查看网关地址)

# 以 Debian10 为例
bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -d 10 -v 64 -a --ip-addr 194.87.xxx.xxx(改成ifconfig获取到的) --ip-gate 194.87.xxx.xxx(改成route获取到的) --ip-mask 255.255.xxx.xxx(改成你获取到的)

# 默认密码是 MoeClub.org
```


### 一键网络重装系统 - cxthhhhh 魔改版
```
wget --no-check-certificate -qO ~/Network-Reinstall-System-Modify.sh 'https://www.cxthhhhh.com/CXT-Library/Network-Reinstall-System-Modify/Network-Reinstall-System-Modify.sh' && chmod a+x ~/Network-Reinstall-System-Modify.sh && bash ~/Network-Reinstall-System-Modify.sh -UI_Options

# 对于Microsoft Windows，默认的用户名是：Administrator，默认的密码是：cxthhhhh.com
# 对于Linux，默认的用户名是：root，默认的密码是：cxthhhhh.com
```

#### ylx2016/Linux-NetSpeed 优化
```
wget -N --no-check-certificate "https://github.com/ylx2016/Linux-NetSpeed/raw/master/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh
```
```
# 不卸载内核版本
wget -N "https://github.000060000.xyz/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh
# 卸载内核版本
wget -N "https://github.000060000.xyz/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
```

#### Other
```
wget -qO DebianNET.sh qiu.sh/dd && bash DebianNET.sh -d 11 -v 64 -a -p password
```
```
bash <(curl -L mcnb.top/dd.sh)
```
```
wget -N --no-check-certificate https://raw.githubusercontent.com/veip007/dd/master/dd-gd.sh && chmod +x dd-gd.sh && ./dd-gd.sh
```




## References
1. [Linux常用的网络加速 - https://github.000060000.xyz/ ](https://github.com/ylx2016/Linux-NetSpeed)
2. [MoeClub/Note](https://github.com/MoeClub/Note)
3. [Linux Auto Reinstall](https://github.com/hiCasper/Shell)
4. [Linux Auto Reinstall](https://github.com/jiuqi9997/Shell)
5. [Network-Reinstall-System-Modify](https://github.com/MeowLove/Network-Reinstall-System-Modify)
6. [Debian Network Reinstall Script](https://github.com/bohanyang/debi)
7. [Cloudflare WARP 一键配置脚本](https://github.com/P3TERX/warp.sh)
8. [Linux VPS工具箱](https://github.com/Misaka-blog/MisakaLinuxToolbox)

