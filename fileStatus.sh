#!/bin/bash
echo "Enter the file name"
read filename
if [ -e "$filename" ]; then
	if [ -f "$filename" ]; then
		echo "$filename is a regular file"
	fi
	if [ -d "$filename" ]; then
		echo "$filename is a directory"
	fi
	if [ -r "$filename" ]; then
		echo "$filename is readable"
	fi
	if [ -w "$filename" ]; then
		echo "$filename is writable"
	fi
	if [ -x "$filename" ]; then
		echo "$filename is executable"
	fi
else
	echo "File does not exist"
	exit 1
fi
exit 


