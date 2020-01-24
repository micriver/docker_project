#!/bin/bash

black=`tput setaf 0`
mint=`tput setaf 10`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`

docker build -t ft-rails:on-build -f parent/Dockerfile .
docker build -t rubyserver .
echo "${red}Copy paste the ip of the running docker virtual machine into the address bar of your browser:${mint}"
docker-machine ip Char
docker run -itd --name ruby_container --rm -p 3000:3000 rubyserver

# TO TEST : visit http://[machine ip]:3000