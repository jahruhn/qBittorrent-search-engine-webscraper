#!/bin/bash

lynx -dump https://github.com/qbittorrent/search-plugins/wiki/Unofficial-search-plugins#plugins-for-public-sites | awk '/py/{print $2}' > qbittorrent-search-engine.txt && wget -i qbittorrent-search-engine.txt

