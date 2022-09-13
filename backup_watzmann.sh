# ########################################################################################################################################################################## #
#                                                                                                                                                                            #
# This script performs a monthly full backup of files + directoris from watzmann.abg.fsc.net to hochgern.abg.fsc.net and logs the output.                                    #
# During this time, another script runs an incremental daily backup.                                                                                                         #
# Before the next full backup, that from the previous month will be archived and moved.                                                                                      #
# A maximum of 6 archived full backups are stored                                                                                                                            #
# You can create an entry in crontab for automatic execution at a specific time (e.g. /etc/cron.weekly or "crontab -e")                                                      #
# The current entry you can find in root@watzmann.abg.fsc.net via "crontab -e" (0 12 * * 6 /home1/pe/watzmann/p.cron.watzmann.sh > /home1/pe/watzmann/p.cron.result 2>&1)    #  
# For montly backup you need e.g (0 00 1 1-12 * /home1/pe/watzmann/backup.sh > /home1/pe/watzmann/p.cron.result 2>&1)                                                        #
# At 00:00 on day-of-month 1 in every month from January through December.                                                                                                   #
#                                                                                                                                                                            #
# ########################################################################################################################################################################## #

#!/bin/bash 
set -x

# ===== Set variables ===== #

# Place for the local config-files
INFO_DIR=/home1/pe/watzmann/watzmann.info

# Place for the lists for rsync
LIST_DIR=/home1/pe/watzmann

# Logfile for backup process
BACK_LOG=backup.log

# Date for incrementell backup
DAILY_DATE=$(date +%A)

# Date for the monthly full-backup
MONTHLY_DATE=$(date +%B)

# Date for the last full-backup for archive
MONTHLY_DATE_TAR=$(date -d "last month" +%B)

# Path for the monthly full-backup
DEST_PATH_MONTH=/home2/watzman-save/backups/monthly

# Path for the daily incrementell-backup
DEST_PATH_DAILY=/home2/watzmann-save/backups/daily

# Path for the old full-backups in archive
BACKUP_PATH=/home2/watzmann-save/backups/old_full-backups

# Clean and remake "$INFODIR"
rm -rf $INFO_DIR && mkdir $INFO_DIR && date > $INFO_DIR/date && uname -a > $INFO_DIR/uname-a

# Creates a log file for the backup processes
{ echo " " ; echo "=== `date` on `hostname` ===" ; echo " " ; echo "Timestamp before work is done `date +"%D %T"`" ; echo " " ; } >> $INFO_DIR/$BACK_LOG

# Creates the list for the local rsync command
if [ -f $LIST_DIR/list.lst ]
then
        echo "list.lst already exists"
else
        echo "/etc/apache2/./httpd.conf
              \r/etc/apache2/./default-server.conf
              \r/etc/./ntp.conf
              \r/etc/./resolv.conf
              \r/etc/./passwd
              \r/etc/./crontab
              \r/var/spool/cron/tabs/./pe
              \r/var/spool/cron/tabs/./root" >> $LIST_DIR/list.lst
fi

# Creates backups from /etc/ + /var/ and copies the output in $BACKLOG #do not store the "list.lst" in $INFODIR ($INFODIR will be removed on next execution of this script)
rsync -avr --files-from=$LIST_DIR/list.lst / $INFO_DIR >> $INFO_DIR/$BACK_LOG

# Creates an archive directory on hochgern for old full-backups
ssh -T root@hochgern.abg.fsc.net <<'EOSSH'
OLD_BACKUP_PATH=/home2/watzmann-save/backups/old_full-backups
if [ -d $OLD_BACKUP_PATH ]
then
        echo "$OLD_BACKUP_PATH already exists"
else
        mkdir -p "$OLD_BACKUP_PATH"
fi
EOSSH

# Creates a directory on hochgern for monthly-backups
ssh -T root@hochgern.abg.fsc.net <<'EOSSH'
MONTHLY_BACKUP_PATH=/home2/watzmann-save/backups/monthly
if [ -d $MONTHLY_BACKUP_PATH ]
then
        echo "$MONTHLY_BACKUP_PATH already exists"
else
        mkdir -p "$MONTHLY_BACKUP_PATH"
fi
EOSSH

# Tar old_full-backup from last month on hochgern (if no full-backup exists pls comment this line out)
ssh root@hochgern.abg.fsc.net -t "cd /home2/watzmann-save/backups/monthly && tar czvf watzmann-$(date -d "last month" +%B).tar.gz $(date -d "last month" +%B)" >> $INFO_DIR/$BACK_LOG 

# Move old_full-backup on hochgern to archive and clean directory (if no full-backup exists pls comment this line out)
ssh root@192.168.178.85 -t "mv /home2/watzmann-save/backups/monthly/watzmann-* /home2/watzmann-save/backups/old_full-backups && rm -rf /home2/watzmann-save/backups/monthly/$(date -d "last month" +%B)" >> $INFO_DIR/$BACK_LOG

# Creates the include-list for the backup rsync command
if [ -f $LIST_DIR/include.lst ]
then
        echo "include.lst already exists"
else
        echo "/home1/pe/lambda/
              \r/home1/pe/watzmann/
              \r/home1/pe/htdocs/
              \r\home1/pe/bs2-config/
              \r/home1/pe/bs2-results/
              \r/home1/pe/Benchmarks/
              \r/home1/pe/PHB/
              \r/home1/pe/Performance-Team/
              \r/home1/pe/Know-how/
              \r/home1/pe/RZ_MCH-E/
              \r/home1/pe/Referenztabellen/" >> $LIST_DIR/include.lst
fi

# Creates the exclude-list for the backup rsync command
if [ -f $LIST_DIR/exclude.lst ]
then
        echo "exclude.lst already exists"
else
        echo "/home1/pe/Performance-Team/Galerie/*
              \r/home1/pe/Know-how/"Manuale, Anleitungen, Datenblaetter"
              \r/home1/pe/Know-how/Kurse/*"  >> $LIST_DIR/exclude.lst
fi

# Full-backup (monthly)
rsync -av --files-from=/root/include.lst --exclude-from=$LIST_DIR/exclude.lst / root@hochgern.abg.fsc.net:$DEST_PATH_MONTH/$MONTHLY_DATE >> $INFO_DIR/$BACK_LOG 

# Inkrementell (daily)
rsync -av --files-from=/root/include.lst --exclude-from=$LIST_DIR/exclude.lst --link-dest=$DEST_PATH_MONTH/$MONTHLY_DATE / root@hochgern.abg.fsc.net:$DEST_PATH_DAILY/$DAILY_DATE

{ echo " " ; echo "=== `date` on `hostname` ===" ; echo " " ; echo "Timestamp after work is done `date +"%D %T"`" ; echo " " ; } >> $INFO_DIR/$BACK_LOG

# Delete old full-backups from archive there older than 6 months
ssh -T root@192.168.178.85 <<'EOSSH'
OLD_BACKUP_PATH=/home2/watzmann-save/backups/old_full-backups
BACKUP_OLD=$(ls -l "$OLD_BACKUP_PATH"/*tar.gz | wc -l)
if [ "$BACKUP_OLD" -gt 6 ]
then
    find "$OLD_BACKUP_PATH" -name "watzmann*" -daystart -mtime +186 -delete
else
    echo "not enough old backups in archive"
fi
EOSSH
