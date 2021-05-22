#!/bin/sh
# cleans up mount info
sudo umount /mnt/PLEX

sudo rmdir --ignore-fail-on-non-empty /mnt/PLEX/Download
sudo rmdir --ignore-fail-on-non-empty /mnt/PLEX/Books

. ./setEnvs.sh

# mounts endpoint
sudo sshfs -o allow_other,IdentityFile=$SSH_KEY $MOUNT_USER@$MOUNT_ENDPOINT:$MOUNT_LOCATION /mnt/PLEX

# restart docker compose
docker-compose restart plex
