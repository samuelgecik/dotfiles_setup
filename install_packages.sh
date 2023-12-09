#!/bin/bash

source detect_and_update.sh

install_packages() {
    if [ -f "$PKG_FILE" ]; then
        while read p; do
            $INSTALL_CMD $p
        done < $PKG_FILE
    else
        echo "Package list file not found: $PKG_FILE"
        exit 1
    fi
}

install_packages
