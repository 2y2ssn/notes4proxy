## 一键安装代理脚本

1. [fhs-install-v2ray](https://github.com/v2fly/fhs-install-v2ray)
  
  ```
# 安装可执行文件和 .dat 数据文件
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)

# 安装最新发行的 geoip.dat 和 geosite.dat
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-dat-release.sh)

# 移除 V2Ray
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh) --remove
```

2. [H31105|基于 Docker 容器架构的 Trojan/VLESS/VMess TCP/WS TLS 分流部署&管理脚本](https://github.com/h31105/deployX.sh)

  ```
  wget -N --no-check-certificate -q https://raw.githubusercontent.com/h31105/deployX.sh/master/deploy.sh && \
chmod +x deploy.sh && bash deploy.sh
  ```
  
3. [Phlinhng|VLESS / VMess / Trojan-Go / Shadowsocks 万能脚本](https://github.com/phlinhng/v2ray-tcp-tls-web)
4. [Mack-a|（VLESS+TCP+TLS/VLESS+TCP+XTLS/VLESS+WS+TLS/VMess+TCP+TLS/VMess+WS+TLS/Trojan/Trojan-Go WS）+伪装博客](https://github.com/mack-a/v2ray-agent)
5. [Johnrosen1|一键安装Trojan-GFW代理,Hexo博客,Nextcloud等應用程式](https://github.com/johnrosen1/vpstoolbox) 
6. [jinwyp|一键安装trojan v2ray xray. Install v2ray / xray (VLESS) and trojan (trojan-go) script](https://github.com/jinwyp/one_click_script)
7. [ProxySU|Windows下Xray,V2ray，Trojan，NaiveProxy, Trojan-Go, ShadowsocksR(SSR),Shadowsocks-libev及相关插件,MTProto+TLS 一键安装工具](https://github.com/proxysu/ProxySU)
8. [kirin10000|(Xray-TCP+XTLS)+（Xray-WebSocket+TLS）+Web 搭建/管理脚本](https://github.com/kirin10000/Xray-script)
9. [Wulabing|Xray 基于 Nginx 的 VLESS + XTLS 一键安装脚本](https://github.com/wulabing/Xray_onekey)
10. [Wulabing|V2Ray Nginx+vmess+ws+tls/ http2 over tls 一键安装脚本](https://github.com/wulabing/V2Ray_ws-tls_bash_onekey)

  ```
  wget -N --no-check-certificate -q -O install.sh "https://raw.githubusercontent.com/wulabing/V2Ray_ws-tls_bash_onekey/master/install.sh" && chmod +x install.sh && bash install.sh
  ```
  
11. [Jrohy|trojan多用户管理部署程序, 支持web页面管理](https://github.com/Jrohy/trojan)
12. [Jrohyv2ray/xray多用户管理部署程序](https://github.com/Jrohy/multi-v2ray)


## 教程

1. [自建梯子教程 --Trojan版本](https://trojan-tutor.github.io/2019/04/10/p41.html#more)
2. [XRay 小小白白话文](https://xtls.github.io/documents/level-0/)
