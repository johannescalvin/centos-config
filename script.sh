# 安装chrome
wget https://raw.githubusercontent.com/johannescalvin/centos-config/master/chrome/google-chrome.repo -O /etc/yum.repos.d/google-chrome.repo
yum install -y  google-chrome-stable --nogpgcheck

sh k8s/scripts.sh

