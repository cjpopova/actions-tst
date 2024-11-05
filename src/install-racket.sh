#!/bin/bash

VERSION=$1

INSTALLER="racket-${VERSION}-x86_64-linux-cs.sh"
wget "https://mirror.racket-lang.org/installers/${VERSION}/$INSTALLER"
chmod u+x ./$INSTALLER
./$INSTALLER <<EOF
no
1
export PATH="/usr/racket/bin:$PATH"