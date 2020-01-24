FROM debian
LABEL maintainer="mirivera@student.42.us.org"

# variable needed to make sure server can start
ENV TS3SERVER_LICENSE=accept

# will need to be manually run with <docker run> command
EXPOSE 9987/udp 30033/tcp 10011/tcp 41144/tcp

# makes sure debian has all the necessary packages to download and unzip server
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget bzip2 -y

# find the latest link here: https://www.teamspeak.com/en/downloads/#server
# download server
RUN wget https://files.teamspeak-services.com/releases/server/3.11.0/teamspeak3-server_linux_amd64-3.11.0.tar.bz2

# decompress server download
RUN tar xfvj teamspeak3-server_linux_amd64-3.11.0.tar.bz2

# remove compressed file
RUN rm teamspeak3-server_linux_amd64-3.11.0.tar.bz2

# set the working directory to where the start server script lives
WORKDIR /teamspeak3-server_linux_amd64

# start the server with the entrypoint cmd which cannot be overwritten like CMD can
ENTRYPOINT sh ts3server_minimal_runscript.sh

# docker run -it -p 9987/udp -p 30033/tcp -p 10011/tcp -p 41144/tcp --env TS3SERVER_LICENSE=accept --name teamspeak <container id from docker build> bash