#!/bin/bash   
# Post install script for setting up ubuntu-based distros
# Custom tailored to personal needs
# Author JME/GenDufour
RED='\033[0;31m'
if (( $UID != 0 ));
then
 echo "Execute with root or sudo"
 exit 1
fi

echo "Got sudo or root"

# Update packet lists
sudo apt update -y

# Upgrade the system
sudo apt upgrade -y

# Install OpenSSH
sudo apt install openssh-server -y

# Enable firewall
sudo ufw enable

# Disable root login
echo "PermitRootLogin no" >> /etc/ssh/sshd_config
echo "PermitEmptyPasswords no " >> /etc/ssh/sshd_config
