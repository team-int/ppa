#!/bin/bash
set -e
set -v
(
    set -e
    set -v
    cd ./deb/
    dpkg-scanpackages --multiversion . > Packages
    gzip -k -f Packages
    gpg --default-key "mswgen02@gmail.com" -abs -o - Release > Release.gpg
    gpg --default-key "mswgen02@gmail.com" --clearsign -o - Release > InRelease
    git add .
    git commit -m update
    git push origin main
)