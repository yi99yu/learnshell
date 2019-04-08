#!/bin/bash
#对每队的成绩进行排序，并计算总分以及平均分

team=$(gawk -F, '{print $2}' scores.txt | uniq)

for tm in $team
do
	echo $tm "\n"
	gawk -v tem=$tm 'BEGIN{FS=",";total=0}
	{
		if ($2==tem)
			{
				total=total+$3+$4+$5
			}
	}
	END{avg=total/6;print "total for" tem "is" total, "the average is" avg}' scores.txt
done
