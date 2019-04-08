#/bin/bash
#sending multiple commands to MYSQL

MYSQL=$(which mysql)
$MYSQL mysql_db -umysql <<EOF
show tables;
select * from employees where salary > 40000;
EOF
