#!/bin/bash

### Ein Script zum Script erstellen ###

dir=/root/shell_scripts

### Editor der verwendet werden soll ###

editor=nano

# Erstes Argument muss der Script Name sein ...
# -z zero steht fuer leer, es wird ueberprueft ob  das erste Argument "$1" der Kommandozeile vorhanden ist, falls nicht wird das Script mit exit 1 beendet

[ -z "$1" ] $$ exit 1

# Editor starten und Script laden (oder erzeugen)
$editor $dir/$1

# Ausfuerrechte fuer user setzen
chmod +x $dir/$1

# Script gleich ausfuehren? Nein? Dann auskommentieren ...
$dir/$1
