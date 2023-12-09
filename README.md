# Linux Setup Automation Scripts

## Overview
This repository contains a set of scripts designed to automate the setup of new Linux machines. The scripts are tailored to work across various Linux distributions, handling package installations, system updates, and dotfiles setup.

## Scripts
- `detect_and_update.sh`: Detects the Linux distribution and performs system updates.
- `install_packages.sh`: Installs a list of predefined packages based on the detected distribution.
- `setup_dotfiles.sh`: Sets up user-specific dotfiles.
- `setup_script.sh`: Main script that orchestrates the setup process.

## Usage
1. Clone the repository to your local machine.
2. Navigate to the script directory.
3. Run the main setup script:
   ```bash
   ./setup_script.sh

## Customization

Customizing the setup scripts allows you to tailor the installation process to fit your specific needs. Below are the ways you can customize each part of the setup:

### Package List
Modify the PackagesList file to include the packages you want installed. This file contains a list of packages that will be attempted to install on any distribution. Ensure that the package names are consistent across the distributions you intend to use.

#### Example for Aptfile:
```
# Basic utilities
git
curl
vim

# Development tools
build-essential
python3
python3-pip

# Other software
vlc
gimp
```
