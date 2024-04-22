#!/bin/bash


/socat-start.sh &

# exec /usr/local/bin/dockerd-entrypoint.sh

# no tcp sockets
exec /usr/local/bin/dockerd
