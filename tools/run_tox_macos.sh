#!/bin/bash
set -euo pipefail

LDFLAGS="-L/opt/homebrew/opt/openldap/lib -L/opt/homebrew/lib" \
CFLAGS="-I/opt/homebrew/opt/openldap/include -I/opt/homebrew/include" \
CPPFLAGS="-I/opt/homebrew/opt/openldap/include -I/opt/homebrew/include" \
TOX_CONSTRAINTS_FILE="local-upper-constraints.txt" \
tox "${@}"