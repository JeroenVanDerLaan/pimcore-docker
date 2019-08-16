FROM mysql:8.0

ENV MYSQL_USER="admin"
ENV MYSQL_PASSWORD="admin"
ENV MYSQL_DATABASE="pimcore"
ENV MYSQL_RANDOM_ROOT_PASSWORD="yes"

COPY "./cnf/*.cnf" "/etc/mysql/conf.d/"