FROM jeroenl/pimcore-php-base:latest

ENV MYSQL_HOST="mysql"
ENV MYSQL_PORT=3306
ENV MYSQL_USER="admin"
ENV MYSQL_PASSWORD="admin"
ENV MYSQL_DATABASE="pimcore"
ENV REDIS_HOST="redis"
ENV REDIS_PORT=6379
ENV PIMCORE_USER="admin"
ENV PIMCORE_PASSWORD="admin"
ENV PIMCORE_ENVIRONMENT="dev"

COPY "./ini/*.ini" "/usr/local/etc/php/conf.d/"
COPY "./bin/*" "/usr/local/bin/"

RUN chmod -R 755 "/usr/local/bin/" \
&&  adduser -D -u 1000 "dev" \
&&  addgroup "dev" "www-data"

USER 1000
ENTRYPOINT ["entrypoint"]
CMD ["php-fpm"]