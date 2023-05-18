#!/bin/bash
echo -n "Enter the name of the file:"
read file
if [ -e "$file" ] && [ -s "$file" ]
then

	terminal=`tty`
	exec < $file
	while read line
		do
			echo $line
		done
	echo "No.of lines in the file:" `wc -l $file`
	echo "Size of the file:" `du -sh $file`	
	exec < $terminal
	exit
else
	echo "Invalid Input"
	exit
fi



