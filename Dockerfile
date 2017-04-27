FROM php:7.1.4-alpine

RUN curl https://raw.githubusercontent.com/composer/getcomposer.org/master/web/installer | php -- --quiet && \
    mv /composer.phar /bin/composer

RUN composer global require justinwalsh/daux.io

ENV PATH /root/.composer/vendor/bin:$PATH

ENTRYPOINT ["daux"]
CMD ["generate", "--source=/input", "--destination=/output", "--no-interaction"]
