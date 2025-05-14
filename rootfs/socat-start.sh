#!/bin/sh

until [ -S /var/run/docker.sock ]; do
	echo "INFO: Waiting for Docker daemon has completed initialization.."
	sleep 1
done

echo "INFO: Docker daemon started."

# fork        Allow more than 1 connection
# reuseaddr   Allows other sockets to bind to an address even if parts of it (e.g. the local port) are already in use by socat.
#             Example: https://stackoverflow.com/a/75118838
socat -d TCP-LISTEN:2375,fork,reuseaddr UNIX-CONNECT:/var/run/docker.sock
