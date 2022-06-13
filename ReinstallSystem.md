# Reinstall system scripts

## 萌咖一键网络重装 Debian / Ubuntu / CentOS 系统及dd方式安装系统

```
$ wget --no-check-certificate -O AutoReinstall.sh https://raw.githubusercontent.com/hiCasper/Shell/master/AutoReinstall.sh && bash AutoReinstall.sh
```
```
$ bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub/Note/master/InstallNET.sh') -d 11 -v 64 -p "密码" -port "端口"
```

**萌咖 DD Guide**

```
$ apt install net-tools
$ ifconfig -a   (查看本机公网IP地址)
$ route -n   (查看网关地址)
# 以 Debian10 为例
$ bash <(wget --no-check-certificate -qO- 'https://moeclub.org/attachment/LinuxShell/InstallNET.sh') -d 10 -v 64 -a --ip-addr 194.87.xxx.xxx(改成ifconfig获取到的) --ip-gate 194.87.xxx.xxx(改成route获取到的) --ip-mask 255.255.xxx.xxx(改成你获取到的)
# 默认密码是 MoeClub.org

# 使用自定义镜像全自动安装
$ bash InstallNET.sh -c 6.10 -v 64 -a --mirror 'http://mirror.centos.org/centos'
# 以下示例中,将X.X.X.X替换为自己的网络参数.
# --ip-addr :IP Address/IP地址
# --ip-gate :Gateway   /网关
# --ip-mask :Netmask   /子网掩码
# 使用自定义镜像全自动安装
$ bash InstallNET.sh -u 9 -v 64 -a --mirror 'http://mirrors.ustc.edu.cn/debian/'

```

## ylx2016/Linux-NetSpeed 优化

```
$ apt install ca-certificates wget -y && update-ca-certificates
$ wget -N --no-check-certificate "https://github.com/ylx2016/Linux-NetSpeed/raw/master/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh
```
```
# 不卸载内核版本
$ wget -N "https://raw.githubusercontent.com/ylx2016/Linux-NetSpeed/master/tcpx.sh" && chmod +x tcpx.sh && ./tcpx.sh
# 卸载内核版本
$ wget -N "https://raw.githubusercontent.com/ylx2016/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
```

## netboot.xyz

```
https://github.com/netbootxyz/netboot.xyz
```

## Install openSUSE on your VPS, no matter what's the current OS.

```
$ curl -OL https://raw.githubusercontent.com/U2FsdGVkX1/vps2suse/main/vps2suse # or use https://cdn.jsdelivr.net/gh/U2FsdGVkX1/vps2suse@main/vps2suse
$ chmod +x vps2suse
$ sudo ./vps2suse #[OPTIONS]
```

## Other

### 一键网络重装系统 - cxthhhhh 魔改版
```
$ wget --no-check-certificate -qO ~/Network-Reinstall-System-Modify.sh 'https://www.cxthhhhh.com/CXT-Library/Network-Reinstall-System-Modify/Network-Reinstall-System-Modify.sh' && chmod a+x ~/Network-Reinstall-System-Modify.sh && bash ~/Network-Reinstall-System-Modify.sh -UI_Options
```
**对于Microsoft Windows，默认的用户名是：Administrator，默认的密码是：cxthhhhh.com**
**对于Linux，默认的用户名是：root，默认的密码是：cxthhhhh.com**

### qiushui
```
$ wget -qO DebianNET.sh qiu.sh/dd && bash DebianNET.sh -d 11 -v 64 -a -p password
```

## References
1. [Linux常用的网络加速--ylx2016-Linux-NetSpeed](https://github.com/ylx2016/Linux-NetSpeed)
2. [MoeClub/Note](https://github.com/MoeClub/Note)
3. [Linux Auto Reinstall](https://github.com/hiCasper/Shell)
4. [Network-Reinstall-System-Modify](https://github.com/MeowLove/Network-Reinstall-System-Modify)
5. [Reinstall your VPS to minimal Debian](https://github.com/bohanyang/debi)
6. [VPS2SUSE](https://github.com/U2FsdGVkX1/vps2suse)
7. [netboot.xyz](https://github.com/netbootxyz/netboot.xyz)
