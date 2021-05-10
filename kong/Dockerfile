FROM kong:2.2.1-alpine

LABEL description="Alpine + Kong 2.2.1 + kong-oidc plugin"

USER root
RUN apk update && apk add git unzip luarocks
RUN luarocks install kong-oidc

USER kong