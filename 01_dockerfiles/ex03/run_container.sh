#!/bin/bash

black=`tput setaf 0`
mint=`tput setaf 10`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
bold=`tput bold`
# tput sgr0 turns off all attributes
NC=`tput sgr0`

# allocate more memory to virtual machine running Docker
docker-machine stop Char
echo ''
echo "${green}Stopping the docker-machine and allocating more memory to make the container setup faster..."
echo ''
VBoxManage modifyvm Char --memory 4096
echo ''
echo "${bold}SUCCESS!${bold}${NC}"
echo ''
docker-machine start Char

# show docker-machine memory usage
VBoxManage showvminfo Char | grep Memory

# build base image
docker build --no-cache -t flying_saucer .
# go to the url using the ip of your docker machine
# open http://$(docker-machine ip Char):8080
open http://$(docker-machine ip Char):8080
# run the container, and publish ports to the host machine. Privileged flag will give container access to host devices
docker run -it --name gitlab_container --rm -p 8443:443 -p 8080:80 -p 8022:22 --privileged flying_saucer

# The container will remain running in the background because of tail command

# Once in the web client:
# You username is "root"
# Open a new project and then name it "test"
# Then copy paste and run the commands for a new repo with a readme