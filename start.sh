#!/usr/bin/env bash
#Petit script pour juste tester un petit truc en HTML, démarre simplement un serveur web minimaliste en python
#zf170712.1145

echo -e "

Afin de garder le petit serveur WEB permanent, il serait bien de le faire tourner dans un 'screen' avec:
screen -S nanoweb       pour entrer dans screen
./web_server.sh         pour lancer le serveur WEB dans screen
CTRL+a d                pour sortir de screen en laissant tourner le serveur
screen -r nanoweb       pour revenir dans screen
CTRL+d                  pour terminer screen
screen -list            pour lister tous les screen en fonctionement

votre adresse IP:
"

ifconfig | grep "inet ad" | cut -f2 -d: | awk '{print $1}'

python3 -m http.server 18080 --cgi


