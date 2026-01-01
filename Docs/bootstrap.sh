#!/bin/bash

git clone https://github.com/chyld/docs THECODE
cd THECODE
./scripts/build-docker-image.sh
cp compose.yml ..
cp scripts/st* ..

