FROM node:20.5.0-slim
LABEL authors="Vladimir <opa_oz> Levin"

RUN npm install -g orogene@0.3.26
RUN oro ping

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]