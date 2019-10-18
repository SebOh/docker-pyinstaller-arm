#!/usr/bin/env bash

# Fail on errors
set -e

# Allows to change the CI to change the default work dir
WORKDIR=${SRCDIR:-/app}

cd $WORKDIR

# Install Requirements if found
if [ -f requirements.txt ]; then
    pip install -r requirements.txt
fi

if [[ "$@" == "build" ]]; then
    pyinstaller --clean -y --dist ./dist/linux --workpath /tmp *.spec
    chown -R --reference=. ./dist/linux
else
    sh -c "$@"
fi # [[ "$@" == "" ]]