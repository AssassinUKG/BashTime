#!/bin/bash
#Created by Ac1d

if [ ${#@} -lt 1 ]; then
    banner
    printf "Give a ASCII ART file ...,Exiting..."
    exit;
fi

banner() {
    asciiart=$(base64 -d <<< "H4sIAAAAAAAAA21RwRHDMAj7ewo9+zIbdBJdWcTDF4HtOLlwTiAgZEEAuAwP6+7dT+tPxGULgs3V
AIsPgLucDsM9DieMmbgEnMgkkFmGQ6cpMqd4q2ymN0cBZouNcCC9BBxI0PKalc8ub4oUIpvUKm0h
NbM2x4xbGHeziHwjRU7xpLBE/+KxlmOOnKVG+rLcsYSkUvIzp74j16aMc0dawtJjLw636itkI1eg
n4L2B8ZvFjwKAgAA" | gunzip)
    echo  "$asciiart"
}

usage() {
    echo -e "\nUsage:\n1. save asciii art to file (nano)\n2. ./ascii2base64.sh file\n"
}


banner
usage

art1=$(cat "$1" | gzip -cf | base64)
echo -e "\nCommand:\nasciiart=\$(base64 -d <<< \"$art1\" | gunzip) \n\nOutput:\n"
asciiDecode=$(base64 -d <<< "$art1" | gunzip)
echo "$asciiDecode"

