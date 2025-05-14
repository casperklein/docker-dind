FROM	docker:dind AS build

ARG	PACKAGES="socat"

# Install packages
RUN	apk upgrade --no-cache \
&&	apk add --no-cache $PACKAGES

# Copy root filesystem
COPY	rootfs /

# get rid of: VOLUME /var/lib/docker
FROM scratch

COPY    --from=build / /

ENTRYPOINT ["/bin/sh", "run.sh"]

EXPOSE	2375
