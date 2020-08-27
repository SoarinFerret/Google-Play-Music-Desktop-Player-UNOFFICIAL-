#!/bin/bash

# use the following command to build:


echo "make sure to mount /app/dist to get the deb file"

sleep 3

# Install Modules
npm install && npm cache clean

# Build Deb
npm run build
npm run make:deb:64