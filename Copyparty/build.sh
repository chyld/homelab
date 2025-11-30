#!/bin/bash


docker build --no-cache --network=host -t copyparty .
docker image prune -f

