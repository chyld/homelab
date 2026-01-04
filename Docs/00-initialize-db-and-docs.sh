#!/bin/bash

wget https://raw.githubusercontent.com/chyld/docs/refs/heads/dev/01-backend/scripts/schema.sql
mkdir db docs
docker run --rm -v $(pwd):/data alpine:latest sh -c "apk add --no-cache sqlite && sqlite3 /data/db/docs.db < /data/schema.sql"
sudo chown chyld:chyld db/docs.db
rm schema.sql

