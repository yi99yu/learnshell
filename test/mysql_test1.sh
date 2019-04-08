#!/bin/bash
#send a command to the mysql server
#
MYSQL=$(which mysql)
#
$MYSQL DB_test1 -uroot -e 'select * from employees'

