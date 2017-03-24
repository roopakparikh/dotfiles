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
chsh -s /usr/bin/fish
mosh-server

./vim-helper/setup-vim
