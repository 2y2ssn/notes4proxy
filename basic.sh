apt update && apt upgrade -y
apt install -y vim zip unzip screen tmux git
apt install -y htop aria2 curl wget tree sudo
apt install -y fail2ban dnsutils net-tools
apt autoremove -y && apt autoclean -y

# Edit Timezone
sudo timedatectl set-timezone Asia/Shanghai
