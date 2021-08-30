## CloudFlare 添加域名解析记录
IPv4 设置如下图，类型选择 A，名称填写你想要的二级域名（图示为 proxy），内容填 IPv4 地址（119.119.119.119），TTL 自动，代理状态不点亮。
以购买的域名为 example.com，购买的服务器地址为 119.119.119.119 为例，此时二级域名 proxy.example.com 指向 119.119.119.119 这个地址。


（如若为 IPv6，类型选择 AAAA，内容填 IPv6 地址）

![cloudflare IPv4 设置](https://github.com/nobody1919/NoteSomething/blob/main/image/cloudflare.png)
