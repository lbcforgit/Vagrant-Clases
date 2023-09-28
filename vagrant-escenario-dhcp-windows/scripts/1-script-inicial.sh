#!/bin/bash 
#actualizar repos -----------------
apt update 
#apt upgrade -y

#Hora y fecha ---------------------
timedatectl set-timezone Europe/Madrid 

#IDIOMA ----------------------------------
# Instalar el paquete de idioma español
apt install language-pack-es -y
# Configurar el idioma en todo el sistema
update-locale LANG=es_ES.UTF-8
# Configurar la zona horaria automáticamente (opcional)
dpkg-reconfigure --frontend noninteractive tzdata
#teclado español 
L=es && sudo sed -i 's/XKBLAYOUT=\"\w*"/XKBLAYOUT=\"'$L'\"/g' /etc/default/keyboard 

#SSH  -----------------------------
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config 
systemctl reload sshd.service 

#Contraseña -----------------------
#chpasswd <<<"vagrant:nuevaContraseña"
