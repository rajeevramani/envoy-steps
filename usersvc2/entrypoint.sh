#!/bin/sh

python3 /application/service.py &
envoy -c /application/envoy.yaml
