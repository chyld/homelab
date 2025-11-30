#!/bin/bash

for pid in $(pgrep -f java); do
    echo "stop" | sudo tee /proc/$pid/fd/0
done

