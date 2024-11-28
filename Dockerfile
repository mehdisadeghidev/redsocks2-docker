FROM alpine:3.20

ARG VERSION=0.70

RUN apk add --no-cache \
    curl

RUN curl -fsSL -o redsocks2 "https://github.com/semigodking/redsocks/releases/download/release-${VERSION}/redsocks2-x86_64-release-${VERSION}"

RUN chmod +x redsocks2

RUN mv redsocks2 /usr/local/bin/

ENTRYPOINT [ "redsocks2" ]