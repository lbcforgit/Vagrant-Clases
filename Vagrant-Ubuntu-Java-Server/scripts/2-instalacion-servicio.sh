#instalamos el java runtime environment
apt install openjdk-21-jre -y

#movemos los ficheros a su ubicación
cd /home/vagrant
mv psp_UD3_TCP_raizcuadrada_server.jar /usr/sbin/psp_UD3_TCP_raizcuadrada_server.jar
mv raiz_cuadrada_server.service /lib/systemd/system/raiz_cuadrada_server.service
chmod 644 /lib/systemd/system/raiz_cuadrada_server.service

#Recargamos demonios, habilitamos el servicio en inicio y lo iniciamos
systemctl daemon-reload
systemctl enable raiz_cuadrada_server.service
systemctl start raiz_cuadrada_server.service