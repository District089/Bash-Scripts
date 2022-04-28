#!/bin/bash

if [ -f test.txt ]
then
	echo "Die Datei ist vorhanden"
else
	touch test.txt
fi
	if [ ! -x test.txt ]
	then
	chmod +x test.txt
else echo "Die Permission stimmt"

fi
