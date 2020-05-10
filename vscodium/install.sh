#!/bin/sh

# Ensure script is run as root (sudo)
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Create needed directories
mkdir -p /opt/vscodium /usr/local/bin /usr/local/share/applications

# Download vscodium tar and place it in /opt/vscodium
curl -L https://github.com/VSCodium/vscodium/releases/download/1.45.0/VSCodium-linux-x64-1.45.0.tar.gz | tar -xzf - -C /opt/vscodium

# Create a desktop gnome app that links to vscodium
cp vscodium.desktop /usr/local/share/applications

# Symlink to binary to launch from terminal
ln -s /opt/vscodium/bin/codium /usr/local/bin/codium

# Fix fonts issue
ln -s /usr/share/defaults/fonts /etc

