#!/bin/bash

set -euo pipefail

VER_DIR="$1"

if ! [[ -z "$VER_DIR" ]]; then
    pushd "release/$VER_DIR"
        echo ""
        openssl md5 *
        echo ""
        openssl sha1 *
        echo ""
        openssl sha256 *
        echo ""
    popd
fi
