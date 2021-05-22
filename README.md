# Jetson Nano Adventures
Welcome to the Jetson Nano Adventures repository.

## Plex
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