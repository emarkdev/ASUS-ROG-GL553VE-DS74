#!/bin/bash
# Enable Edimax Wireless USB Adapter drivers
# By Emarkdev

PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"

spctl -a -vv -t install ./OC/Kexts/RtWlanU.kext
Sleep 1
spctl -a -vv -t install ./OC/Kexts/RtWlanU1827.kext
Sleep 1
spctl kext-consent status

