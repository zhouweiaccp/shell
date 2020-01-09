set -x
#备份/etc/apt/sources.list
#备份
dt=`date "+%y%m%d%M%S"`
cp /etc/apt/sources.list /etc/apt/sources.list.bak${dt}

#rm -f /etc/apt/sources.list
cat >/etc/apt/sources.list << efo
#文件前面添加如下条目
#添加阿里源
deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
efo


#最后执行如下命令更新源
##更新
sudo apt-get update
sudo apt-get upgrade
cat /etc/apt/sources.list
#另外其他几个国内源如下： 
#中科大源
###中科大源
#deb https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
#deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
#deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
#deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
#deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
#deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
#deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
#deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
#deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
#deb-src https://mirrors.ustc.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
#
#163源
###163源
#deb http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse
#deb http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse
#deb http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse
#deb http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse
#deb http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse
#deb-src http://mirrors.163.com/ubuntu/ bionic main restricted universe multiverse
#deb-src http://mirrors.163.com/ubuntu/ bionic-security main restricted universe multiverse
#deb-src http://mirrors.163.com/ubuntu/ bionic-updates main restricted universe multiverse
#deb-src http://mirrors.163.com/ubuntu/ bionic-proposed main restricted universe multiverse
#deb-src http://mirrors.163.com/ubuntu/ bionic-backports main restricted universe multiverse
#
#清华源
###清华源
#deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
#deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse
#deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
#deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
#deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
#deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
#deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
#deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
#deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse
#deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-proposed main restricted universe multiverse

#上面的内容注释                  
#deb: 是指定要下载安装deb包。
#deb-src : 是指定要下载安装deb的源码包，这里不需要
#file:// 、ftp://、http://   : 这是支持的协议
#/media/ubuntu/: 这是URL部分.
#xenial : ubuntu的版本号名称。
#main ： 安装ubuntu的主要包
#restricted: 即驱动相关的包。
