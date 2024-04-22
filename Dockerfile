FROM	docker:dind

ARG	PACKAGES="socat"

# Install packages
RUN	apk upgrade --no-cache \
&&	apk add --no-cache $PACKAGES

# Copy root filesystem
COPY	rootfs /

ENTRYPOINT ["/bin/sh", "run.sh"]


