#!/bin/sh

cd "$(dirname "$0")/.."

. tools/common

[ -f "$PJP_FILE" ] || abort "'$PJP_FILE' not found."
[ -f "$PJP_SRC_FILE" ] || abort "'$PJP_SRC_FILE' not found."
[ -f "$PJP_LEGACY_SRC_FILE" ] || abort "'$PJP_LEGACY_SRC_FILE' not found."

[ -f "$INSTALL_PJP_FILE" ] && abort "'$INSTALL_PJP_FILE' exists. Execute 'sudo make uninstall'."
[ -f "$INSTALL_PJP_SRC_FILE" ] && abort "'$INSTALL_PJP_SRC_FILE' exists. Execute 'sudo make uninstall'."
[ -f "$INSTALL_PJP_LEGACY_SRC_FILE" ] && abort "'$INSTALL_PJP_LEGACY_SRC_FILE' exists. Execute 'sudo make uninstall'."

install || (
    uninstall >/dev/null 2>&1
    abort 'Failed to install.'
)

echo 'Successfully installed.'

exit 0
