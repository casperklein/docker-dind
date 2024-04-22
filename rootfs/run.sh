#!/bin/bash

/socat-start.sh &

# exec /usr/local/bin/dockerd-entrypoint.sh

# https://hub.docker.com/_/docker --> TLS: To disable this image behavior, simply override the container command or entrypoint to run 'dockerd' directly
# no tcp sockets
exec /usr/local/bin/dockerd
