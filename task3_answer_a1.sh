#!/bin/bash

hostname=10.11.12.13
ftpportno=22
ftpusername=helloFTP
ftppasswd=world

dbportno=5439
db=zalora
dbusername=helloDB
dbpasswd=world

# FTP portion
ftp -in <<EOF
open $hostname:$ftpportno
user $ftpusername$ftppasswd
lcd /home/Marketing Report/Data/
mget webtrekk_marketing*
close 
bye
EOF

# Run python script
python /home/Marketing Report/Scripts/ZMR.py

# Run SQL

export PGPASSWORD=$dbpasswd;
psql -h $hostname -p $dbportno -d $db -U $helloDB -f /home/Marketing Report/Scripts/UpdateWebtrekk.sql 


