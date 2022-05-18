
## For Debian/Ubuntu
```
## If migrating from prior bintray install instructions please first...
# sudo rm /etc/apt/sources.list.d/speedtest.list
# sudo apt-get update
# sudo apt-get remove speedtest

## Other non-official binaries will conflict with Speedtest CLI
# Example how to remove using apt-get
# sudo apt-get remove speedtest-cli

$ sudo apt-get install curl
$ curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
$ sudo apt-get install speedtest
```

```
speedtest -s serverid
speedtest -L
# https://sparanoid.com/lab/speedtest-list/
```
## For CentOS/Fedora
```
## If migrating from prior bintray install instructions please first...
# sudo rm /etc/yum.repos.d/bintray-ookla-rhel.repo
# sudo yum remove speedtest
## Other non-official binaries will conflict with Speedtest CLI
# Example how to remove using yum
# rpm -qa | grep speedtest | xargs -I {} sudo yum -y remove {}
$ curl -s https://install.speedtest.net/app/cli/install.rpm.sh | sudo bash
$ sudo yum install speedtest
```

|      server     |   id  |    server    | id  |  server   |   id  |
| :--------------- | ----- | ---------- | ----- | ---------- | ----- |
| 上海电信         | 3633  | 北京电信5G | 27377 | 广州电信5G | 27594 |
| 上海联通5G       | 24447 | 北京联通   | 5145  | 广州联通5G | 26678 |
| 上海移动5G       | 25637 | 北京移动   | 25858 | 广州移动   | 6611  |




[Speedtest CLI: Internet speed test for the command line](https://www.speedtest.net/apps/cli)
