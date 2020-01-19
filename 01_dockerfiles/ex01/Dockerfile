FROM debian:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget bzip2 -y
# find the latest link here: https://www.teamspeak.com/en/downloads/#server
RUN wget https://files.teamspeak-services.com/releases/server/3.11.0/teamspeak3-server_linux_amd64-3.11.0.tar.bz2
RUN tar xfvj teamspeak3-server_linux_amd64-3.11.0.tar.bz2
# RUN rm teamspeak3-server_linux_amd64-3.11.0.tar.bz2
# RUN cd teamspeak3-server_linux_amd64
# RUN ~/teamspeak3-server_linux_amd64$ ./ts3server_startscript.sh start

EXPOSE 9987/udp 30033/tcp 10011/tcp 41144/tcp 

# CMD ["sh", "teamspeak3-server_linux_amd64/ts3server_minimal_runscript.sh"]