#!/bin/bash
docker run -d -v /home/chyld/Applications/Jellyfin/config:/config -v /home/chyld/Applications/Jellyfin/cache:/cache -v /mnt/Media:/media --net=host jellyfin/jellyfin:latest

