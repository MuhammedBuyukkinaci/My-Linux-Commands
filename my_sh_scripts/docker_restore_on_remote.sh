#!/bin/bash
docker rm -f MY_DB || true
echo "stopped and killed existent database"
docker run -d --name MY_DB -p 5432:5432 -e POSTGRES_PASSWORD=postgres postgres:latest
echo "container was created"
sleep 3
cat mydump.sql | docker exec -i MY_DB psql -U postgres &> /dev/null
echo "done"

