#!/usr/bin/env bash
set -e

if [ ! -f NotoSans-hinted.zip ]
then
  wget https://noto-website-2.storage.googleapis.com/pkgs/NotoSans-hinted.zip
fi

unzip -o NotoSans-hinted.zip -d src
rm src/*Condensed*.ttf
rm src/*Italic*.ttf

mkdir -p dist
ls src/*.ttf | xargs -I x woff2_compress x
mv src/*.woff2 dist
cp src/LICENSE_OFL.txt dist