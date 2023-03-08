FROM php:8.0-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENV COMPOSER_ALLOW_SUPERUSER 1

ENV PATH /composer/vendor/bin:${PATH}

RUN mkdir /app && ln -s /composer/vendor/ /app/vendor

RUN composer global require symplify/easy-coding-standard:^11.2 --prefer-dist --dev

WORKDIR "/app"
ENTRYPOINT ["/entrypoint.sh"]