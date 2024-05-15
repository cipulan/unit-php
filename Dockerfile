ARG UNIT_PHP

FROM unit:$UNIT_PHP as base

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions \
    bcmath \
    imagick \
    intl \
    opcache \
    pcntl \
    pdo_mysql \
    redis \
    soap \
    xsl
