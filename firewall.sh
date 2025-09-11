#!/bin/bash

#Activar el firewall
sudo ufw enable

#Borrado completo de reglas

sudo iptables --flush
sudo iptables --delete-chain

#Politica RESTRICTIVA por defecto

sudo ufw default deny incoming

#Permitir conexiones desde nuestra ip del host anfitrion

sudo ufw allow from 10.11.0.81 proto tcp to any port 22,445
sudo ufw allow from 10.11.0.81 proto udp to any port 161

sudo ufw allow 31010:31110/tcp

sudo ufw allow 50505:50509/udp
sudo ufw allow 50505:50509/tcp

#Permitir las comunicaciones de 172.16.2.201

sudo ufw allow from 172.16.2.201 proto udp to any port 4444

sudo ufw allow from 172.16.2.201 proto tcp to any port 139
sudo ufw allow from 172.16.2.201 proto tcp to any port 445
sudo ufw allow from 172.16.2.201 proto tcp to any port 3389

#Puertos abiertos al publico

sudo ufw allow SMTP
sudo ufw allow IMAP
sudo ufw allow POP3

#Permitir la subred de SQL

sudo ufw allow from 10.11.0.0/24 to any port 3306

#Imprimir las reglas en la pantalla

sudo ufw status numbered
