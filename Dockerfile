FROM rufusl/hlds:latest
MAINTAINER Rufus Linke <mail@rufuslinke.de>

EXPOSE 26900/udp
EXPOSE 27015/udp 

WORKDIR /steam/hlds
CMD ["./hlds_run", "-game", "valve"]
