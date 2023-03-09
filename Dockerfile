FROM php:8.0-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

WORKDIR "/app"

ENV COMPOSER_ALLOW_SUPERUSER 1

RUN COMPOSER_HOME="/composer" \
    composer global require symplify/easy-coding-standard --prefer-dist --dev --no-progress

ENV PATH /composer/vendor/bin:${PATH}

ENTRYPOINT ["/entrypoint.sh"]