#!/bin/bash

#Listet Prozessinformationen auf

echo "Anzahl laufender Prozesse:"
ps -ef | wc -l

echo "Prozessinformationen unserer Shell:"
ps $$


##### export PS4="[--- Zeile: $LINENO ---] " ########
# Hiermit wird mit dem Debug-Kommano "set -x auch die Zeilennummer" #


