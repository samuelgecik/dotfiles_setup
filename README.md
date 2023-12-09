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
