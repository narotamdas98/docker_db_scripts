mkdir -p "$HOME/databases/mysql/data"
docker stop mysql_local && docker rm mysql_local
docker run -d -p 6033:3306 --name mysql_local --restart=always --env-file mysql.env -v "$HOME/databases/mysql/data":/var/lib/mysql mysql:5.7