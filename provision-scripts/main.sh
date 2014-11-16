#!/bin/bash

apt-get -y update
sudo apt-get install build-essential dos2unix git

# make bashrc and prompt usable in Linux
dos2unix /home/vagrant/.bashrc
dos2unix /home/vagrant/.prompt

# install ruby-install
wget -O ruby-install-0.5.0.tar.gz https://github.com/postmodern/ruby-install/archive/v0.5.0.tar.gz
tar -xzvf ruby-install-0.5.0.tar.gz
cd ruby-install-0.5.0/
sudo make install

# install ruby
ruby-install ruby 2.1.4

# install chruby
wget -O chruby-0.3.8.tar.gz https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
tar -xzvf chruby-0.3.8.tar.gz
cd chruby-0.3.8/
sudo make install