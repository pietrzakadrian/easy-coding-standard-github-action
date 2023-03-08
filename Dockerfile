FROM php:8.0-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY src /app/src
COPY tests /app/tests
COPY ecs.php /app/ecs.php
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR "/app"

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN composer global require symplify/easy-coding-standard:^11.2 --prefer-dist --dev

ENTRYPOINT ["/entrypoint.sh"]