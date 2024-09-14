FROM ubuntu:20.04

# Install wetty for web-based SSH access and OpenSSH server
RUN apt-get update && apt-get install -y \
    openssh-server \
    curl \
    sudo \
    nodejs \
    npm \
    git

# Install wetty (web-based SSH terminal)
RUN npm install -g wetty

# Expose Wetty port
EXPOSE 3000

# Create a user for SSH login
RUN useradd -m -s /bin/bash jumpuser && echo "jumpuser:password" | chpasswd

# Grant sudo privileges
RUN echo "jumpuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Start SSH and wetty
CMD ["bash", "-c", "service ssh start && wetty --ssh-host=localhost --ssh-port=22"]
