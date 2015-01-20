FROM php:5.6-apache

MAINTAINER Per Persson <per.persson@exertisztorm.com>

# Activate mod_rewrite
RUN a2enmod rewrite

# Install PHP zip module
RUN pecl install zip && echo "extension=zip.so" >> /usr/local/lib/php.ini

# Install PHP modules
RUN docker-php-ext-install pdo_mysql


