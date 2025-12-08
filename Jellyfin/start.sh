#!/bin/bash
docker run -d -v /home/chyld/homelab/Jellyfin/config:/config -v /home/chyld/homelab/Jellyfin/cache:/cache -v /mnt/Media:/media --net=host jellyfin/jellyfin:latest

