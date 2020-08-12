mkdir -p "$HOME/databases/mongodb/data"
sudo chown 1000:1000 "$HOME/databases/mongodb/data"
docker stop mongo_local && docker rm mongo_local
docker run -d -p 27017:27017 --name mongo_local -v "$HOME/databases/mongodb/data":/data/db mvertes/alpine-mongo 
