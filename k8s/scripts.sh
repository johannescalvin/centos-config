if [ ! -f "/etc/yum.repos.d/kubernetes.repo" ];then
    wget https://raw.githubusercontent.com/johannescalvin/centos-config/master/k8s/kubernetes.repo -O /etc/yum.repos.d/kubernetes.repo
else
    echo "etc/yum.repos.d/kubernetes.repo already exists!"
fi

yum -y install kubelet kubeadm kubectl

yum -y install docker etcd

systemctl start docker
systemctl enable docker

systemctl start kubelet.service
systemctl enable kubelet.service

# systemctl start etcd
# systemctl enable etcd

systemctl top firewalld
systemctl disable firewalld

swapoff -a

text=`cat /proc/sys/vm/swappiness`
if [ 0 -ne $text ]; then 
	# 尽量不使用交换分区，注意不是禁用
	echo "vm.swappiness = 0" >> /etc/sysctl.conf     

	# 刷新SWAP
	# 将SWAP里的数据转储回内存，并清空SWAP里的数据）

	swapoff -a && swapon -a

	# 使其生效，不用重启)
sysctl -p  
fi



