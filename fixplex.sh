rmdir /mnt/NAS/$LOCATION/Download
rmdir /mnt/NAS/$LOCATION/Books
rmdir /mnt/NAS/$LOCATION
sshfs -o allow_other $USER@$IP:/ /mnt/NAS
docker-compose restart plex
