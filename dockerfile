FROM php:7.2-apache

COPY index.html /var/www/html/

HEALTHCHECK --retries=1 CMD php /health
