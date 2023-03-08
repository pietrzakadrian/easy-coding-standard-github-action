FROM php:8.0-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR "/app"

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN composer global require symplify/easy-coding-standard:^11.2 --prefer-dist --dev

ENV PATH "$PATH:$HOME/.composer/vendor/bin"

ENTRYPOINT ["/entrypoint.sh"]