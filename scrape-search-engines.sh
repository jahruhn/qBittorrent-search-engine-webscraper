#!/bin/bash

# Fetch the wiki page and extract only valid .py URLs
lynx -dump "https://github.com/qbittorrent/search-plugins/wiki/Unofficial-search-plugins#plugins-for-public-sites" |
awk '/http.*\.py/{print $2}' |
grep -Eo 'https?://[^[:space:]]+\.py' > qbittorrent-search-engine-py.txt

# Download the .py files
wget -i qbittorrent-search-engine-py.txt
