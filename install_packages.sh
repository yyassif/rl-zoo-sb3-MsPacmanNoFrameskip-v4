#!/bin/bash

install_packages() {
    # Check if the system is Ubuntu or Debian
    if command -v apt &>/dev/null; then
        sudo apt update
        sudo apt install -y swig cmake ffmpeg python-opengl xvfb

    # Check if the system is Arch Linux
    elif command -v pacman &>/dev/null; then
        sudo pacman -Syu --noconfirm
        sudo pacman -S --noconfirm swig cmake ffmpeg python-opengl xvfb

    # Check if the system is Fedora
    elif command -v dnf &>/dev/null; then
        sudo dnf install -y swig cmake ffmpeg python-opengl xorg-x11-server-Xvfb

    # Check if the system is openSUSE
    elif command -v zypper &>/dev/null; then
        sudo zypper install -y swig cmake ffmpeg python-opengl xvfb

    # Check if the system is CentOS/RHEL
    elif command -v yum &>/dev/null; then
        sudo yum install -y swig cmake ffmpeg python-opengl xorg-x11-server-Xvfb

    # Check if the system is Manjaro
    elif command -v pamac &>/dev/null; then
        sudo pamac install -y swig cmake ffmpeg python-opengl xvfb

    else
        echo "Unsupported distribution. Please figure out a way to install the following packages manually: (swig cmake ffmpeg python-opengl xvfb)."
        exit 1
    fi
}

install_packages
