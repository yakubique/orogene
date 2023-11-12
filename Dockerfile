FROM node:20.5.0-bullseye-slim
LABEL authors="Vladimir <opa_oz> Levin"

RUN apt-get update \
    && apt-get install -y ca-certificates

RUN npm install -g orogene@0.3.25
RUN oro ping

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]