#!/bin/bash

git clone https://github.com/chyld/docs CODE
cd CODE/00-frontend
./scripts/build-docker-container.sh
cd ../01-backend
./scripts/build-docker-container.sh
cd ..
cp compose.yml ..
cd ..
rm -rf CODE

