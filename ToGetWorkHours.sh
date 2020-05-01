#!/bin/bash -x
function myfunc() {
	echo $1
}
result="$(myfunc $((workHours=8)) )"
if [ $result -eq 8 ]
then
	echo "Work hours"
else
	echo "Noy Work hours"
fi
