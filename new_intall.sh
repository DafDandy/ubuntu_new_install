#!/bin/bash 
echo "Update configuration file"
sudo sed -i -e '$amax_parallel_downloads=10' /etc/dnf/dnf.conf
sudo sed -i -e '$afastestmirror=True' /etc/dnf/dnf.conf
sudo dnf update && sudo dnf upgrade -y
echo "Updating OS"
sudo dnf groupinstall "KDE Plasma Workspaces"
sudo dnf install steam
sudo dnf install lutris
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf makecache
sudo dnf install akmod-nvidia
sudo dnf install xorg-x11-drv-nvidia-cuda

