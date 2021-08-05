FROM alpine:3
MAINTAINER Stephen Neal <stephen@stephenneal.net>

WORKDIR /var/www

# Update OS
# Install bash & NPM
# Install Yarn using NPM
RUN apk update \
	&& apk add \
		bash \
	    npm \
    && npm install -g yarn