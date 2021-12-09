cp -r /var/lib/docker/volumes/pgdata_volume/_data/  /home/buana/backupdb/

crontab -e
* 23 * * *  sh /home/buana/backupdb/script.sh