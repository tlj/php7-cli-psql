FROM php:cli


RUN apt-get update \
  && apt-get install -y libpq-dev \
  && docker-php-ext-install pdo pdo_pgsql \
  && apt-get clean \
  && apt-get purge


