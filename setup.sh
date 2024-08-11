
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package list again and install Docker
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Add current user to the docker group
sudo usermod -aG docker $USER

# Install Docker Compose
DOCKER_COMPOSE_VERSION="2.22.0"
sudo curl -L "https://github.com/docker/compose/releases/download/v$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Apply executable permissions to the Docker Compose binary
sudo chmod +x /usr/local/bin/docker-compose

# Verify the installations
docker --version
docker-compose --version

echo "Docker and Docker Compose have been installed successfully."
echo "You may need to log out and log back in for the changes to take effect."


## lazy dock

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash

# Add lazydocker to PATH by updating ~/.profile
LAZYDOCKER_PATH="$HOME/bin"
mkdir -p $LAZYDOCKER_PATH
mv $HOME/.lazydocker/bin/lazydocker $LAZYDOCKER_PATH

# Ensure $HOME/bin is in the PATH
if [[ ":$PATH:" != *":$LAZYDOCKER_PATH:"* ]]; then
    echo "export PATH=\$PATH:$LAZYDOCKER_PATH" >> ~/.profile
fi

# Apply the changes to the current session
source ~/.profile

# Verify the installation
lazydocker --version

echo "lazydocker has been installed and added to your PATH."

