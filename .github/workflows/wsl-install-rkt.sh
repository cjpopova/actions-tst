#!/bin/bash

# Collect command line arguments
VARIANT=$1
VERSION=$2

# Install Racket
INSTALLER="racket-${VERSION}-x86_64-linux-${VARIANT,,}.sh" # variant must be converted to lowercase
wget "https://mirror.racket-lang.org/installers/${VERSION}/$INSTALLER"
chmod u+x ./$INSTALLER
./$INSTALLER <<EOF
no
3

EOF