FROM ubuntu:14.04
MAINTAINER Rufus Linke <mail@rufuslinke.de>

# install steamcmd dependencies
RUN apt-get update && apt-get -y install lib32gcc1 lib32stdc++6 nano wget

# install steamcmd
RUN mkdir -p /steam/steamcmd
COPY steam_install.sh /steam/steamcmd
WORKDIR /steam/steamcmd
RUN /bin/bash ./steam_install.sh

# install half-life dedicated server
# for some reason we have to run app_update twice to be succesful, the first install fails with "app state 0x6"
RUN ./steamcmd.sh +login anonymous +force_install_dir /steam/hlds +app_update 90 validate +app_update 90 validate +quit

# fixes/workarounds
RUN mkdir -p ~/.steam
RUN ln -s /steam/steamcmd/linux32 ~/.steam/sdk32

# expose ports
# VAC
EXPOSE 26900/udp
# Game data
EXPOSE 27015/udp 
# RCON
EXPOSE 27015
# HLTV
EXPOSE 27020/udp

# run half-life dedicated server
WORKDIR /steam/hlds
CMD ["./hlds_run", "-game", "valve"]
