#!/bin/bash

VERSION_STRING=(`grep ELECTRUM_VERSION lib/version.py`)
ELECTRUM_ZCL_VERSION=${VERSION_STRING[2]}
ELECTRUM_ZCL_VERSION=${ELECTRUM_ZCL_VERSION#\'}
ELECTRUM_ZCL_VERSION=${ELECTRUM_ZCL_VERSION%\'}
DOTS=`echo $ELECTRUM_ZCL_VERSION |  grep -o "\." | wc -l`
if [[ $DOTS -lt 3 ]]; then
    ELECTRUM_ZCL_APK_VERSION=$ELECTRUM_ZCL_VERSION.0
else
    ELECTRUM_ZCL_APK_VERSION=$ELECTRUM_ZCL_VERSION
fi
export ELECTRUM_ZCL_VERSION
export ELECTRUM_ZCL_APK_VERSION
