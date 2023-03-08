FROM php:8.0-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR "/app"

ENV COMPOSER_ALLOW_SUPERUSER 1

ENTRYPOINT ["/entrypoint.sh"]