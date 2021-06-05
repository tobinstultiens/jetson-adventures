# Clustering
This is our jetson adventure when it comes to clustering together jetson nano devices
source https://medium.com/jit-team/building-a-gpu-enabled-kubernets-cluster-for-machine-learning-with-nvidia-jetson-nano-7b67de74172a

## Setup
Each node in the cluster needs to have swap turned off.
```
sudo swapoff -a
```

You can verify if swap is turned off by running the following command and checking whether swap returns 0B.
```
free -h
```

The GUI mode should be disabled since it consumes a lot of resources.
```
sudo systemctl set-default multi-user.target
```

Also, it is imperative that the jetson nanos are running in high power mode.
```
sudo nvpmodel -m 0
```

The NVIDIA runtime should be the default runtime in Docker. Update the /etc/docker/daemon.json file to look like this:
```
{
  "default-runtime": "nvidia",
  "runtimes": {
    "nvidia": {
      "path": "nvidia-container-runtime",
      "runtimeArgs": []
     }
   }
}
```

The current user should also be added to the docker group to use docker commands without sudo without relogging.
```
sudo usermod -aG docker $USER
newgrp docker
```

Let's also make sure that everything is up to date.
```
sudo apt-get update
sudo apt-get dist-upgrade
```

