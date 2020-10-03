mkdir -p "$HOME/databases/redis"
docker run -d -p 6379:6379 --name redis_local -v"$HOME/databases/redis:/data" --restart always redis:latest