#!/bin/sh

# Ensure script is run as root (sudo)
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Create needed directories
mkdir -p /usr/local/share/applications

# Register policy to enable GUI after password prompt
cp xampp.policy /usr/share/polkit-1/actions

# Create xampp gnome desktop app
cp xampp.desktop /usr/local/share/applications

