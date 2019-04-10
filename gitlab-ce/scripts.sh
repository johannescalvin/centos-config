if [ ! -f "/etc/yum.repos.d/kubernetes.repo" ];then
    wget https://raw.githubusercontent.com/johannescalvin/centos-config/master/gitlab-ce/gitlab-ce.repo -O /etc/yum.repos.d/gitlab-ce.repo
else
    echo "etc/yum.repos.d/gitlab-ce.repo already exists!"
fi

yum install -y gitlab-ce
