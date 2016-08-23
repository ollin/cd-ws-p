#!/usr/bin/env bash
docker-compose -f docker-compose-backup-db.yml up &&  sudo chown ollin:ollin db/db-dump
