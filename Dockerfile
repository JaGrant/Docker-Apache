FROM php:7.0-apache
# COPY config/php.ini /usr/local/etc/php/
COPY www-data /var/www/html/
