#!/bin/bash

# run dockerfile, label image as my_serv, build without the cache
docker build -t my_serv --no-cache .

# run "my_serv" image, build container named teamspeak, run in detached state and expose those ports to the host
docker run -d --name teamspeak --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 my_serv 

# show logs from container to verify server is running
docker logs teamspeak

#download and install teamspeak client
cd ~/Desktop
wget https://files.teamspeak-services.com/releases/client/3.3.0/TeamSpeak3-Client-macosx-3.3.0.dmg
open TeamSpeak3-Client-macosx-3.3.0.dmg
read -p "Press enter after you've agreed to the license and the dmg window has opened."
cd /Volumes/TeamSpeak\ 3\ Client
cp -R TeamSpeak\ 3\ Client.app ~/Desktop
cd ~/Desktop
open TeamSpeak\ 3\ Client.app 

# to show the admin privilege key for copy paste
docker logs teamspeak

sleep 20
# eject the mounted dmg
diskutil eject /Volumes/TeamSpeak\ 3\ Client

# delete the downloaded dmg
rm TeamSpeak3-Client-macosx-3.3.0.dmg

# to poke around inside the container:
# docker exec -it teamspeak bash

# to connect to the server:
# go to Connections->Connect
# enter IP of the VM (NOT the container) -- to get IP of VM, run docker-machine ip <VM name>