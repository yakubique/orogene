FROM node:20.5.0-alpine3.17
LABEL authors="Vladimir <opa_oz> Levin"

RUN apk upgrade --update-cache --available && \
    apk add openssl && \
    rm -rf /var/cache/apk/*

RUN npm install -g orogene@0.3.26
RUN oro ping

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]