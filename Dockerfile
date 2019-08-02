from php 
RUN apt-get update
RUN apt-get install git libpng-dev zip unzip -y
RUN docker-php-ext-install gd
RUN docker-php-ext-install zip
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN php composer.phar -n global require -n "hirak/prestissimo"