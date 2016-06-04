#!/usr/bin/env bash
# Bootstrap by first setting up ansible locally
# Instructions are for CentOS 7
# Run as root
# These instructions will modify the main python installation (pip and setuptools anyway, plus ansible)
# Installed ansible version as of the time of this writing is 2.1

# Make sure system is up-to-date
yum update -y

# Install ansible dependencies
yum groupinstall "Development Tools" -y
yum install python-pip python-devel libffi-devel openssl-devel -y

# Update python tools
pip install --upgrade pip
pip install --upgrade setuptools

# Install ansible
pip install ansible

# Make ssh keypair if not already present
if [ ! -f ~/.ssh/id_rsa ]; then
    ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -q -N ""
fi
