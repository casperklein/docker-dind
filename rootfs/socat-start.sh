#!/bin/sh

until [ -S /var/run/docker.sock ]; do
	echo "INFO: Waiting for Docker daemon has completed initialization.."
	sleep 1
done

echo "INFO: Docker daemon started."
socat -d TCP-LISTEN:2375,fork UNIX-CONNECT:/var/run/docker.sock
