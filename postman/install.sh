#!/bin/sh

# Ensure script is run as root (sudo)
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Create needed directories
mkdir -p /usr/local/bin /usr/local/share/applications

# Download postman tar
curl -L https://dl.pstmn.io/download/latest/linux64 | tar -xzf - -C /opt/

# Create desktop app
cp postman.desktop /usr/local/share/applications
