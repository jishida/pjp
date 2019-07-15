#!/bin/sh

cd "$(dirname "$0")/.."

. tools/common

uninstall

[ -f "$INSTALL_PJP_FILE" ] || [ -f "$INSTALL_PJP_SRC_FILE" ] || [ -f "$INSTALL_PJP_LEGACY_SRC_FILE" ] && abort 'Failed to uninstall.'

echo 'Successfully uninstalled.'

exit 0
