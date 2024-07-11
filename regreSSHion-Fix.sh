#!/bin/bash

# Update package lists and install dependencies
sudo apt update
sudo apt install -y build-essential zlib1g-dev libssl-dev wget

# Download OpenSSH 9.8p1 source code
wget https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.8p1.tar.gz
tar -xzf openssh-9.8p1.tar.gz
cd openssh-9.8p1

# Configure, compile, and install OpenSSH
./configure
make
sudo make install

# Backup the current OpenSSH binaries
sudo mv /usr/bin/ssh /usr/bin/ssh.bak
sudo mv /usr/sbin/sshd /usr/sbin/sshd.bak

# Copy the newly compiled binaries to the correct locations
sudo cp /usr/local/bin/ssh /usr/bin/ssh
sudo cp /usr/local/sbin/sshd /usr/sbin/sshd

# Restart the SSH service to apply the new version
sudo systemctl restart ssh

# Verify the new version
ssh -V
