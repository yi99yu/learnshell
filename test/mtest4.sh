#!/bin/bash
#redirecting SQL output to a variable

#
MYSQL=$(which mysql)
#
dbs=$($MYSQL -umysql -Bse 'show databases')
#
for db in $dbs
do
	echo $db
done
