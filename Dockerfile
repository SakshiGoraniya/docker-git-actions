FROM chialab/php:8.0-fpm as php_fpm

RUN apt-get update && apt-get install -y unzip zip libaio-dev
## Install dependencies
RUN apt-get install -y vim nano supervisor sudo wget nginx

## Install composer and Symfony inside docker container
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer



# Configuration php.ini
RUN ln -s $PHP_INI_DIR/php.ini-production $PHP_INI_DIR/php.ini




WORKDIR /var/www


