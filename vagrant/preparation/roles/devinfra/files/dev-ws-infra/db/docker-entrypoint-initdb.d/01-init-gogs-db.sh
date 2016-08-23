#!/bin/bash
set -e

psql --username "$POSTGRES_USER" -f /db-dump

# initial setup for gogs (without db-dump)

#psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
#    CREATE USER gogs WITH PASSWORD 'gogs';
#    CREATE DATABASE gogs;
#    GRANT ALL PRIVILEGES ON DATABASE gogs TO gogs;
#EOSQL
