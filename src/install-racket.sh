#!/bin/bash

VARIANT=$1
VERSION=$2

INSTALLER="racket-${VERSION}-x86_64-linux-${VARIANT,,}.sh" # variant must be converted to lowercase
wget "https://mirror.racket-lang.org/installers/${VERSION}/$INSTALLER"
chmod u+x ./$INSTALLER
./$INSTALLER <<EOF
no
1

# there MUST be a newline after the previous command to finish the racket installation
export PATH="/usr/racket/bin:$PATH"