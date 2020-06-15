#!/bin/sh

# Ensure script is run as root (sudo)
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Create needed directories
mkdir -p /opt/typora /usr/local/bin /usr/local/share/applications

# Download tar and place it in /opt/typora
curl -L https://typora.io/linux/Typora-linux-x64.tar.gz | tar -xzf - -C /opt/typora

# Create the desktop gnome app icon link
cp typora.desktop /usr/local/share/applications

# Symlink to binary to launch from terminal
ln -s /opt/typora/bin/Typora-linux-x64/Typora /usr/local/bin/typora

