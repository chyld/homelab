#!/bin/bash

# you can run it in interactive mode, then "detach" when done.
DUID=$(id -u) DGID=$(id -g) docker compose up

