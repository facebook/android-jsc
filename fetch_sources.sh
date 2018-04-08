#!/bin/bash

# Copyright 2004-present Facebook. All Rights Reserved.

set -e

cd "$(dirname "$0")"

echo "Downloading ICU"
curl -o icu4c.tar.gz https://android.googlesource.com/platform/external/icu/+archive/e25a54101b72d27b345934e1574aa314c1899969/icu4c/source.tar.gz

echo "Extracting ICU"
tar -zxf icu4c.tar.gz -C icu

echo "set JSC"
cp -r /webkit/Source/JavaScriptCore jsc
cp -r /webkit/Source/WTF jsc

