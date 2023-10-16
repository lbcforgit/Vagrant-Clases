#!/bin/bash
echo "######  INSTALANDO SERVIDOR WWW  #######"

apt install apache2 -y
apt install php -y
echo "<?php \$ip = \$_SERVER['SERVER_ADDR']; printf("Servidor %s\n", \$ip); " > /var/www/html/index.php
rm /var/www/html/index.html

echo "###### SERVIDOR WWW INSTALADO  #######"