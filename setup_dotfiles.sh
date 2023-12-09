#!/bin/bash

setup_dotfiles() {
    git clone https://github.com/samuelgecik/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ./install
}

setup_dotfiles
