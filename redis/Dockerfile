FROM redis:5.0-alpine

COPY "./conf/redis.conf" "/usr/local/etc/redis/redis.conf"

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]