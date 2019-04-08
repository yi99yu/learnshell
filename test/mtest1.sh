#/bin/bash
#send a command to the mysql server

MYSQL=$(which mysql)

#$MYSQL mysql_db -u mysql -e 'select * from employees'
$MYSQL mysql_db -u mysql -X -e 'select * from employees where empid=1'
