FROM php:8.0-alpine
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME="/composer"

RUN composer global require symplify/easy-coding-standard --prefer-dist --dev --no-progress

ENTRYPOINT ["/entrypoint.sh"]