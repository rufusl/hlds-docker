#!/bin/bash
set -o errexit
set -o nounset

tar xvzf addons_maps.tar.gz
tar xvzf config.tar.gz

rm addons_maps.tar.gz
rm config.tar.gz
