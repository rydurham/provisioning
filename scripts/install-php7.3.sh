#!/bin/bash

# PHP
sudo add-apt-repository ppa:ondrej/php -y
sudo apt update
sudo apt install -y php7.3 php7.3-fpm php7.3-cli php7.3-common php7.3-mbstring php7.3-gd php7.3-intl php7.3-xml php7.3-pgsql php7.3-sqlite3 php7.3-zip php7.3-curl

# Composer
if [ ! -d ~/.composer ]
then
    mkdir ~/.composer
fi
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
sudo chown -R ryan ~/.composer/

# Refresh our working environment
source ~/.bashrc

# https://debril.org/how-to-fix-composers-slowness.html
composer config --global repo.packagist composer https://packagist.org

# PHP CS Fixer
composer global require friendsofphp/php-cs-fixer
