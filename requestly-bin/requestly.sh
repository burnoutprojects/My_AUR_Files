#!/bin/bash
APPDIR=/usr/lib/requestly
export PATH="${APPDIR}:${PATH}"
export LD_LIBRARY_PATH="${APPDIR}/lib:${LD_LIBRARY_PATH}"
_ASAR="${APPDIR}/app.asar"
if [[ $EUID -ne 0 ]] || [[ $ELECTRON_RUN_AS_NODE ]]; then
    cd "$APPDIR"
    exec electron@electronversion@ ${_ASAR} "$@"
else
    cd "$APPDIR"
    exec electron@electronversion@ ${_ASAR} --no-sandbox "$@"
fi