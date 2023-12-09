#!/bin/bash

detect_and_update() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        OS=$NAME
        case $OS in
            "Ubuntu"|"Debian GNU/Linux")
                INSTALL_CMD="sudo apt install -y"
                sudo apt update && sudo apt upgrade -y
                ;;
            "Fedora")
                INSTALL_CMD="sudo dnf install -y"
                sudo dnf upgrade -y
                ;;
            "Arch Linux")
                INSTALL_CMD="sudo pacman -S --noconfirm"
                sudo pacman -Syu --noconfirm
                ;;
            "openSUSE Leap"|"openSUSE Tumbleweed")
                INSTALL_CMD="sudo zypper install -y"
                sudo zypper up
                ;;
            *)
                echo "Unsupported OS: $OS"
                exit 1
                ;;
        esac
    else
        echo "Cannot detect the OS."
        exit 1
    fi
}

detect_and_update
