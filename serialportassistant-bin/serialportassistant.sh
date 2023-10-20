#!/bin/bash
set -e
_APPDIR=/opt/serialportassistant
export LD_LIBRARY_PATH="${_APPDIR}":"${_APPDIR}/lib":"${_APPDIR}/lib/x86_64-linux-gnu":$LD_LIBRARY_PATH
export PATH="${_APPDIR}":"${_APPDIR}/bin":"${PATH}"
"${_APPDIR}/bin/SerialPortAssistant" $*