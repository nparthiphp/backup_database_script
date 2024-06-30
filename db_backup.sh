#!/bin/bash
host="localhost"
pass=""
user="root"

db_name="urban_green"

backup="./backups-$(date +%F).sql"
mysqldump -u root --password="$pass"  urban_green > $backup
find ./ -type f -name 'backups-*.sql' -mtime +7 -exec rm {} \;
find ./ -type f -name 'backups-*.sql'  -mtime +7 -exec rm {} \; 
