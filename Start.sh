#!/bin/bash

# Install dbus-x11
sudo apt install dbus-x11

# Install XFCE and XFCE terminal
sudo apt-get install xfce4 xfce4-terminal

# Update package information
sudo apt-get update

# Install any pending dependencies
sudo apt-get install -f

# Install Firefox ESR
sudo apt install firefox-esr

# Install Google Chrome
sudo dpkg -i chrome*

# Add VSCode repository
sudo sh -c 'echo "deb [arch=amd64] http://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

# Add Microsoft GPG key
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

# Add chrome desktop
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb

# Update package information after adding new repository
sudo apt-get update

# Install VSCode
sudo apt-get install code

# Prompt user for a command
read -p "Enter the command you want to run: " USER_COMMAND

# Running the user-provided command using CRD_TOKEN
echo "$CRD_TOKEN" | sudo -S bash -c "$USER_COMMAND"￼Enter
