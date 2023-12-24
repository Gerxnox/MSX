#!/bin/bash

# Check if script is run with sudo privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run the script with sudo or as root."
    exit 1
fi

# Update package list
echo "Updating package list..."
sudo apt update -y

# Upgrade installed packages
echo "Upgrading installed packages..."
sudo apt upgrade -y

echo "System update and upgrade complete."
