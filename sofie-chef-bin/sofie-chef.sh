#!/bin/bash
_ELECTRON=/usr/bin/electron20
_ASAR="/opt/sofie-chef/sofie-chef.asar"
if [[ $EUID -ne 0 ]] || [[ $ELECTRON_RUN_AS_NODE ]]; then
    exec ${_ELECTRON} ${_ASAR} "$@"
else
    exec ${_ELECTRON} ${_ASAR} --no-sandbox "$@"
fi