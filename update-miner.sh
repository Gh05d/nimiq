#!/bin/bash
# Go to home directory
cd
# Change into the projects directory
cd core
# Make sure to be on the correct branch
git checkout master
# Download the newest version
git pull

npm install

npm run build
