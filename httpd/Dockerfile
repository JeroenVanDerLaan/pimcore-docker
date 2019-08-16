FROM httpd:2.4-alpine

ENV PHP_HOST="php"
ENV PHP_PORT=9000
ENV DOCUMENT_ROOT="/pimcore/web"
ENV INDEX_FILE="app.php"
ENV ACCESS_FILE=".htaccess"

COPY "./conf/*.conf" "/usr/local/apache2/conf.d/"

RUN echo "Include /usr/local/apache2/conf.d/*.conf" >> "/usr/local/apache2/conf/httpd.conf"