#!/bin/bash

setup_dotfiles() {
    # Ask the user for the URL of their dotfiles repository
    echo "Please enter the URL of your dotfiles repository:"
    read DOTFILES_REPO_URL

    # Validate if the URL is not empty
    if [ -z "$DOTFILES_REPO_URL" ]; then
        echo "No URL entered. Dotfiles setup skipped."
        return
    fi

    # Clone the dotfiles repository
    git clone "$DOTFILES_REPO_URL" ~/.dotfiles

    # Check if the repository was cloned successfully
    if [ -d "~/dotfiles" ]; then
        # Navigate to the dotfiles directory and run the installation script
        cd ~/.dotfiles
        if [ -f "./install" ]; then
            ./install_dotfiles.sh
        else
            echo "No install_dotfiles.sh script found in the repository."
        fi
    else
        echo "Failed to clone the repository. Check the URL and try again."
    fi
}

setup_dotfiles
 