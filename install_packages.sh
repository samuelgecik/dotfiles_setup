#!/bin/bash

source detect_os.sh

install_packages() {
    if [ -f "PackagesList" ]; then
        while read p; do
            if [ -n "$p" ]; then
                $INSTALL_CMD $p
            fi
        done < PackagesList
    else
        echo "Package list file not found: PackagesList"
        exit 1
    fi
}

install_packages
