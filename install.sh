#!/bin/sh

# A simple script to install few important pieces I use day to day

PKG_MGR="yum"
OS="Fedora"

if [ -f /etc/debian_version ]; then
	OS="Ubuntu"
fi
echo "OS detected is $OS"

if [ "$OS" = "Ubuntu" ]; then
	PKG_MGR="apt-get"
fi

$PKG_MGR -y install tmux
$PKG_MGR -y install mosh
$PKG_MGR -y install gdb
$PKG_MGR -y install fish
chsh -s /usr/bin/fish
mosh-server

./vim-helper/setup-vim

