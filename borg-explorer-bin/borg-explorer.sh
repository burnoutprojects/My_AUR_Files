#!/bin/bash
_ELECTRON=/usr/bin/electron22
_ASAR="/opt/borg-explorer/borg-explorer.asar"
if [[ $EUID -ne 0 ]] || [[ $ELECTRON_RUN_AS_NODE ]]; then
    exec ${_ELECTRON} ${_ASAR} "$@"
else
    exec ${_ELECTRON} ${_ASAR} --no-sandbox "$@"
fi