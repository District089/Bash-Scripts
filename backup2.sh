#!/bin/bash

MYLOG=$1

if [ -z $1 ]
then
        echo "You need a parameter"
        exit 250
fi

function ctrlc {
        rm -rf /home/$USER/work_backup
        rm -f /home/$USER/$MYLOG
        echo "Recevied CTRL+C"
        echo exit 255
}

trap ctrlc SIGINT

echo "Timestamp before work is done $(date +"%D %T")" >> /home/$USER/$MYLOG
echo "Creating backup directory" >> /home/$USER/$MYLOG
mkdir /home/$USER/work_backup

echo "Copying Files" >> /home/$USER/$MYLOG
cp -v /home/$USER/work/* /home/$USER/work_backup/ >> /home/$USER/$MYLOG
echo "Finished Copying Files" >> /home/$USER/$MYLOG
echo "Timestamp after work is done $(date +"%D %T")" >> /home/$USER/$MYLOG
sleep 15