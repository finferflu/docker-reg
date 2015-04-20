This image simply removes the need for a linked ambassador to tell `docker-reg` what IP port to use for `etcd`. The IP and port are now the first and second command line arguments, e.g.:

    docker run -v /var/run/docker.sock:/var/run/docker.sock --rm finferflu/docker-reg 172.17.8.101 4001 mysqld 3306 mysqld-A
