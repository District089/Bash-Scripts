#!/bin/bash

## Backup script

dir=/home/cloud_user
source=work
dest=backup

if [ -d $dir/$dest ]
then
        echo "backup directory exists"
        exit 10
else
        echo "making directory.." && mkdir $dir/$dest
fi

cp -r $dir/$source $dir/$dest

valid=`echo $?`

if [ $valid  -gt 1 ]
then
        echo "unseccessfull..."
else
        echo "successfull.."
fi
~