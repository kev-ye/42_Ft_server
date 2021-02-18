# Init configuration #

# Creat website folder #
mkdir /var/www/website
mkdir /var/www/website/phpmyadmin

# Creat ssl folder #
mkdir /etc/nginx/ssl

# Creat website file #
touch /var/www/website/index.php
echo "<?php" >> /var/www/website/index.php
echo "phpinfo();" >> /var/www/website/index.php


# Creat ssl certificate #
## req :            creat certificate siging request
## -x509 :          sign
## -newkey rsa :    encrypt with rsa (4096 bytes)
## -sha256 :        hash with sha256
## -nodes :         no ask encryption when creat private key
## -keyout :        output key file(.pem)
## -out :           output certificate file
## -days :          valid period
## -subj :          information "/CN=Country name/ST=State/L=Locality/O=Organization/OU=Organization unit/CN=Common/emailAddress=Email"
openssl req \
        -x509 \
        -newkey rsa:4096 \
        -sha256 \
        -nodes \
        -keyout key.pem \
        -out cert.pem \
        -days 3650 \
        -subj "/CN=FR/ST=Paris/L=Paris/O=42/OU=42/CN=kaye"

# Move key file in nginx folder #
mv key.pem /etc/nginx/ssl
mv cert.pem /etc/nginx/ssl

# Download phpmyadmin #
wget https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-all-languages.tar.gz
tar -xvf phpMyAdmin-latest-all-languages.tar.gz

# Start php-fpm service #
## service php7.3-fpm stop -> to stop
## service php7.3-fpm restart -> to restart
# service php7.3-fpm start

# Start nginx service #
# service nginx start