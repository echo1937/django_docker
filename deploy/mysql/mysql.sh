docker run --name mysql01 -d -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=redhat \
  -e MYSQL_ROOT_HOST=% \
  -e MYSQL_DATABASE=test mysql/mysql-server:5.7

# https://stackoverflow.com/questions/45729326/how-to-change-the-default-character-set-of-mysql-using-docker-compose
# todo 要改成mysql.conf文件最方便，加入参数最容易