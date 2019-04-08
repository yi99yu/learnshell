#/bin/bash
#send data to the table in MYSQL database

MYSQL=$(which mysql)

if [ $# -ne 4 ]
then
	echo "Usage:mtest3.sh empid lastname firstname salary"
else
	statement="insert into employees values($1,'$2','$3',$4)"
	$MYSQL mysql_db -umysql << EOF
	$statement
#EOF必须是唯一的内容，并且不可以缩进，否则报错
EOF
	if [ $? -eq 0 ]
	then
		echo "Data successfully insert!"
	else
		echo "Data add issue"
	fi
fi 
