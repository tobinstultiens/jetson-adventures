## Plex
The goal is to have GPU enabled transcoding, but so far no luck.
The container used refuses to detect the gpu.

Install essentials for setting up Plex using docker. 
```
./setup.sh
```

Start docker compose for plex
```
docker-compose -d
```

Customize the setEnvs.sh file to suit your needs.
```
vim setEnvs.sh
```

Mount the PLEX directory and restart docker compose.
```
sudo ./fixplex.sh
```

## Other attempts
Attempt 1
```
docker run -d --name=plex --hostname=jetson --runtime=nvidia --gpus all --restart=unless-stopped -e VERSION=latest -e PUID=1000 -e PGID=1000 -e NVIDIA_VISIBLE_DEVICES=all -e NVIDIA_DRIVER_CAPABILITIES=compute,video,utility -v $HOME/.config/PLEX:/config -v /mnt/PLEX:/storage -p 32400:32400 ghcr.io/linuxserver/plex
```
