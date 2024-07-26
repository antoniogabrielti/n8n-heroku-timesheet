#!/bin/sh

# check if port variable is set or go with default
if [ -z ${PORT+x} ]; then echo "PORT variable not defined, leaving N8N to default port."; else export N8N_PORT="$PORT"; echo "N8N will start on '$PORT'"; fi

export N8N_SECURE_COOKIE=false
export N8N_RELEASE_TYPE=stable
export DB_POSTGRESDB_DATABASE=${DB_NAME}
export DB_POSTGRESDB_HOST=${DB_HOST}
export DB_POSTGRESDB_PASSWORD=${DB_PASSWORD}
export DB_POSTGRESDB_PORT=${DB_PORT}
export DB_POSTGRESDB_USER=${DB_USER}
export DB_TYPE=postgresdb
export GENERIC_TIMEZONE=America/Sao_Paulo
export N8N_ENCRYPTION_KEY=${N8N_ENCRIPT_KEY}
export TZ=America/Sao_Paulo

# kickstart nodemation
n8n