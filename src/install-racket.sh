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
4

EOF

# Add Racket to PATH
WR=$(which racket)
echo "$WR"

echo "$HOME/racket/bin/" >> "$GITHUB_PATH"