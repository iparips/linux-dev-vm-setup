#!/bin/bash

# break on error, verbose
set -e -x

user_home=/home/vagrant 

# apt-get -y update
sudo apt-get -y install build-essential dos2unix git

# make bashrc and prompt usable in Linux
dos2unix ${user_home}/.bashrc
dos2unix ${user_home}/.prompt

# install ruby-install
wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz
tar -xzvf ruby-install-0.5.0.tar.gz
cd ruby-install-0.5.0/
sudo make install

# install ruby
rm -rf ${user_home}/.rubies 
mkdir ${user_home}/.rubies  
ruby-install -r ${user_home}/.rubies ruby 2.1.5

# install chruby
wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
tar -xzvf chruby-0.3.8.tar.gz
cd chruby-0.3.8/
sudo make install

# install sublime text
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get install sublime-text 