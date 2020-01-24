#!/bin/bash

black=`tput setaf 0`
mint=`tput setaf 10`
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`

# build base image
docker build -t ft-rails:on-build -f parent/Dockerfile .
# build child
docker build -t rubyserver .
# run the container
docker run -itd --name ruby_container --rm -p 3000:3000 rubyserver
# wait for the container to load up
sleep 2
# go to the url using the ip of your docker machine
open http://$(docker-machine ip Char):3000