FROM php:8-fpm-alpine
ARG UID=1001

RUN apk --update upgrade && \
    apk add --update --no-cache curl libtool

USER root

RUN curl -sS https://getcomposer.org/installer | php -- \
        --filename=composer \
        --install-dir=/usr/local/bin

RUN adduser -S -s /bin/bash -u $UID -D appuser
USER appuser


WORKDIR /spool/www/code-session

CMD ["php-fpm"]
