#!/usr/bin/bash
# 安装工具包

yum install epel-release
yum install -y gcc ncurses-devel wget libzip bzip2 git  binutils python-devel cmake unzip zlib* perl-devel perl-ExtUtils-Embed lrzsz 
yum groupinstall "Development Tools"

#编译 安装 python3
wget https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tgz
tar zxvf Python-3.6.0.tgz
cd ./Python-3.6.0/
./configure  --enable-shared 
make -j 2
make install

#编译安装vim8
wget ftp://ftp.vim.org/pub/vim/unix/vim-8.0.tar.bz2
#export PATH=$PATH:/usr/local/python3/bin
export LD_LIBRARY_PATH=/usr/local/lib
tar -jxvf  vim-8.0.tar.bz2
cd ./vim80
./configure --prefix=/opt/vim8 \
--enable-fail-if-missing \
--enable-python3interp \
--enable-multibyte \
--enable-fontset \
--with-features=huge \
#--with-python3-config-dir=/usr/local/python3/lib/python3.6/config-3.6m-x86_64-linux-gnu

make -j 2
make install
# download Vundle
mkdir -p /opt/vim8/bundle
cd /opt/vim8/bundle
git clone https://github.com/VundleVim/Vundle.vim.git 

# vimrc 文件 位置 /opt/vim8/share/vim 目录下
wget -O ~/YouCompleteMe.tar.gz "http://ohpunyak1.bkt.clouddn.com/YouCompleteMe.tar.gz?v=9999"
# 解压编译安装 ycm
# export PATH=$PATH:/usr/local/python3/bin
# export LD_LIBRARY_PATH=/usr/local/python3/lib
# git submodule update --init --recursive
# python3 install.py

