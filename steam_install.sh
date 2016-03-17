#!/bin/bash
set -o errexit
set -o nounset

# install steamcmd
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar xvzf steamcmd_linux.tar.gz
rm steamcmd_linux.tar.gz
./steamcmd.sh +quit
