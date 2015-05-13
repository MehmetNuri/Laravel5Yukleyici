#!/usr/bin/env bash

# Project Name     : LaravelLinuxYukleyici
# Developer        : Mehmet Nuri ÖZTÜRK
# E-Mail           : info@mehmetnuriozturk.com.tr
# Time             : 23:36



# Sistem güncellemesi ve yükseltilmesi
sudo apt-get update
sudo apt-get upgrade

# Server Kurulumu
sudo apt-get install apache2
sudo apt-get install php5
sudo apt-get install mysql-server
sudo apt-get install php5-mysql

#Json eklentisinin kurulumu
sudo apt-get install php5-json
#unzip eklentisinin kurulumu
sudo apt-get install unzip
#Curl eklentisinin kurulumu
sudo apt-get install curl
#Open SSL eklentisinin kurulumu
sudo apt-get install openssl
#Mcrypt eklentisinin kurulumu
sudo apt-get install php5-mcrypt
#Mcrypt eklentisinin aktif edilmesi
sudo php5enmod mcrypt
#Git sürüm yöneticisinin kurulumu
sudo apt-get install -y git-core
# Rewrite modulünün aktif edilmesi
sudo a2enmod rewrite
# Apache sunucusunun yeniden başlatılması
sudo service apache2 restart



# Composer kurulumu
curl -k https://getcomposer.org/installer | php
# Composerin sisteme yülenmesi
sudo mv composer.phar /usr/local/bin/composer



# Laravel yükleyicisinin kurulumu
composer global require "laravel/installer=~1.1"
#Laravel kurucusunun yola eklenmesi
export PATH="~/.composer/vendor/bin:$PATH"
# Yayın klasörüne gerekli yetkilerin verilmesi
sudo chmod -R 777 /var/www/html