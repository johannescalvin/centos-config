# 安装chrome
if [ ! -f "/etc/yum.repos.d/google-chrome.repo" ];then
    wget https://raw.githubusercontent.com/johannescalvin/centos-config/master/chrome/google-chrome.repo -O /etc/yum.repos.d/google-chrome.repo
else
    echo "/etc/yum.repos.d/google-chrome.repo already exists!"
fi

yum install -y  google-chrome-stable --nogpgcheck
