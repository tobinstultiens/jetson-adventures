# Add current user to the docker group
sudo usermod -a -G docker $USER

# Install docker-compose
sudo apt install docker-compose

# Install sshfs
sudo apt install sshfs

# Install curl
sudo apt install curl

# Install nvidia-docker2
sudo apt-get update
sudo apt-get install -y nvidia-docker2
# Restart docker
sudo systemctl restart docker
