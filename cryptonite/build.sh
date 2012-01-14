#! /bin/bash

if test -n $1; then
    if [ "$1" = "1" ]; then
        ./jni-build.sh
    fi
fi

rm -rf bin/*
ant debug
adb uninstall csh.cryptonite
adb install bin/cryptonite-debug.apk
