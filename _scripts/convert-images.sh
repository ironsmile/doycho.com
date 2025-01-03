#!/usr/bin/env bash

set -e

mkdir -p "${1}/out"

convertImage () {
    dname=$(dirname "${1}")
    fname=$(basename --suffix .JPG "${1}")
    convert "${1}" \
            -resize 2016x \
            -sampling-factor 4:2:0 \
            -strip \
            -quality 85 \
            -interlace JPEG \
            -colorspace sRGB \
            -auto-orient \
            "${dname}/out/${fname}.jpeg"
}

createThumbnail () {
    dname=$(dirname "${1}")
    fname=$(basename --suffix .JPG "${1}")
    convert "${1}" \
            -resize 403x \
            -sampling-factor 4:2:0 \
            -strip \
            -quality 85 \
            -interlace JPEG \
            -colorspace sRGB \
            -auto-orient \
            "${dname}/out/${fname}-thumb.jpeg"
}

export -f convertImage
export -f createThumbnail

find "$1" -maxdepth 1 -type f -iname '*.jpg' -exec \
    bash -c 'convertImage "$0"' {} \;

find "$1" -maxdepth 1 -type f -iname '*.jpg' -exec \
    bash -c 'createThumbnail "$0"' {} \;
