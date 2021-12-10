mkdir -p "$HOME/databases/postgres/pgdata"
sudo chown 1000:1000 "$HOME/databases/postgres/pgdata"
docker stop pg_local && docker rm pg_local
docker run -d -p 2345:5432 --name pg_local \
--user 1000:1000 \
-v "$HOME/databases/postgres/pgdata":/var/lib/postgresql/data/ \
-e POSTGRES_USER=awg -e POSTGRES_PASSWORD=pass \
--restart always postgres:latest