FROM alpine:3.11
LABEL org.opencontainers.image.authors="stephen@stephenneal.net"

WORKDIR /var/www

# Update OS and install Yarn client
RUN apk update && apk add \
    bash \
    yarn