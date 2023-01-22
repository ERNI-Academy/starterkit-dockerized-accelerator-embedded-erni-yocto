#!/bin/bash

set -e
currentPath="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

source ./checkFunctions.sh

## Script entry
if [ -z "${INSIDE_DOCKER}" ]
then
    echo "Not needed vscode inside docker. Skiping!"
    check_vscode
fi

## Sudo is used in case non root user
SUDO=""
if [ "$(id -u)" -ne "0" ]
then
    SUDO="sudo"
fi
"$SUDO" apt install -y \
    gawk wget git-core diffstat unzip \
    texinfo build-essential chrpath \
    socat cpio python3 python3-pip zstd \
    libsdl1.2-dev

pip3 install kas==3.0.2
