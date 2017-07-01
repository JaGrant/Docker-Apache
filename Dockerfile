FROM php:7.0-apache
RUN a2enmod rewrite
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install mysqli
COPY config/php.ini /usr/local/etc/php/
COPY config/000-default.conf /etc/apache2/sites-available/
COPY www-data /var/www/html/
