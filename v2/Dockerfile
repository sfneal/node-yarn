FROM alpine:3.12
LABEL org.opencontainers.image.authors="stephen@stephenneal.net"

WORKDIR /var/www

# Update OS
# Install bash & NPM
# Install Yarn using NPM
RUN apk update \
	&& apk add \
		bash \
	    npm \
    && npm install -g yarn