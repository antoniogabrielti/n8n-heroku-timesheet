ARG N8N_VERSION="1.51.1"

FROM n8nio/n8n:${N8N_VERSION}

USER root

# Define variáveis de ambiente
ENV N8N_SECURE_COOKIE=false
ENV NODE_ENV=production
ENV N8N_RELEASE_TYPE=stable
ENV DB_POSTGRESDB_DATABASE=${DB_NAME}
ENV DB_POSTGRESDB_HOST=${DB_HOST}
ENV DB_POSTGRESDB_PASSWORD=${DB_PASSWORD}
ENV DB_POSTGRESDB_PORT=${DB_PORT}
ENV DB_POSTGRESDB_USER=${DB_USER}
ENV DB_TYPE=postgresdb
ENV GENERIC_TIMEZONE=America/Sao_Paulo
ENV N8N_ENCRYPTION_KEY=${N8N_ENCRIPT_KEY}
ENV TZ=America/Sao_Paulo

COPY ./entrypoint.sh /docker-entrypoint.sh

RUN chown node:node /docker-entrypoint.sh && \
    chmod +x /docker-entrypoint.sh

USER node

EXPOSE 5000/tcp

ENTRYPOINT ["/docker-entrypoint.sh"]