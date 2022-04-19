docker run --name mysql01 -d -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=redhat.com \
  -e MYSQL_ROOT_HOST=% \
  -e MYSQL_DATABASE=test mysql/mysql-server:5.7