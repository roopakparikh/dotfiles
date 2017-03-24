#!/bin/sh

# A simple script to install few important pieces I use day to day

PKG_MGR="yum"
OS="Fedora"

$PKG_MGR -y install wget
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm
rpm -ivh epel-release-7-9.noarch.rpm
$PKG_MGR -y install tmux
$PKG_MGR -y install mosh
$PKG_MGR -y install gdb
$PKG_MGR -y install fish
$PKG_MGR -y install vim
$PKG_MGR -y install python-pip python-devel openssl-devel
$PKG_MGR -y groupinstall 'Development Tools'
$PKG_MGR -y install yum-utils
yum-config-manager --add-repo \
                    https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum install docker
pip install --upgrade pip
pip install awscli
chsh -s /usr/bin/fish
mosh-server

./vim-helper/setup-vim
