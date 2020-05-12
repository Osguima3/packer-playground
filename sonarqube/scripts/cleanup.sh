#!/bin/sh
 
set -e
 
echo 'Cleaning up after bootstrapping...'
sudo apt-get autoremove -y
sudo apt-get clean -y
sudo rm -rf /tmp/*
cat /dev/null > ~/.bash_history
exit
