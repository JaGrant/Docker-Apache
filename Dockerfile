FROM php:7.0-apache
RUN a2enmod rewrite
COPY config/php.ini /usr/local/etc/php/
COPY config/000-default.conf /etc/apache2/sites-available/
COPY www-data /var/www/html/
