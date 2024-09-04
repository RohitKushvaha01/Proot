#!/bin/bash

# Define color codes
GREEN='\033[0;32m'
BOLD='\033[1m'
RESET='\033[0m'

echo -e "${BOLD}${GREEN}Installing compiler... (~150MB) ${RESET}"

pkg i clang make -y

echo -e "${BOLD}${GREEN}Cleaning...${RESET}"
sleep 1
# Clean previous build artifacts
make clean

echo -e "${BOLD}${GREEN}Starting the build and packaging process...${RESET}"
sleep 2
# Build the project
make

# Rename and organize files and directories
mv proot p
mkdir proot
mv p proot/proot
mkdir proot/loader
mv loader/loader proot/loader
mkdir proot/lib

# Copy the required library file and create a symlink
cd proot/lib
cp -r /data/data/com.termux/files/usr/lib/libtalloc.so.2.4.2 .
ln -s libtalloc.so.2.4.2 libtalloc.so.2

# Return to the root directory
cd ../..

# Make all files in the 'proot' directory executable
chmod -R +x proot


echo -e "${BOLD}${GREEN}Creating tar archive...${RESET}"
sleep 1
# Create a tarball archive of the 'proot' directory
tar -czvf proot.tar.gz proot

# Remove the 'proot' directory after archiving
rm -rf proot
AARCH=$(uname -m)

echo -e "${BOLD}${GREEN}This Proot is built for $AARCH ${RESET}"
