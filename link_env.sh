#!/bin/bash
PARENT_ENV=".env"
CHILDREN=("dbs_maria" "dbs_mongo" "dbs_postgres" "dbs_redis")

for child in "${CHILDREN[@]}"; do
    ln "$PARENT_ENV" "$child/.env"
    echo "Linked .env to $child"
done
