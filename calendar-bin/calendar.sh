#!/bin/sh
set -e
_APPDIR="/opt/@appname@"
_RUNNAME="${_APPDIR}/bin/@apprunname@"
export PATH="${_APPDIR}:${_APPDIR}/bin:${PATH}"
export LD_LIBRARY_PATH="${_APPDIR}/bin:${_APPDIR}/lib:${_APPDIR}/bin:${_APPDIR}/lib/x86_64-linux-gnu:${LD_LIBRARY_PATH}"
cd "${_APPDIR}" 
exec "${_RUNNAME}" "$@" | exit