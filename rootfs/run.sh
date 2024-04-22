#!/bin/bash


/socat-start.sh &

exec /usr/local/bin/dockerd-entrypoint.sh
