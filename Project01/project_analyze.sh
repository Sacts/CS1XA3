#!/bin/bash
if [ "$1" -eq 1 ]; then
	if [[ ! -f "fixme.log" ]]; then
		touch "fixme.log"
		for file in *
		do 
			line=$(tail -n 1 "$file")
				if [[ $line = *"#FIXME"* ]]; then
					echo -e "$file\n" >> fixme.log
				fi
		done
	fi
	if [ -f "fixme.log" ]; then
		rm fixme.log
		for filez in *
		do
			line=$(tail -n 1 "$filez")
				if [[ $line = *"#FIXME"* ]]; then
					echo -e "$filez\n" >> fixme.log
				fi
		done
	fi 
elif [ "$1" -eq 2 ]; then
        for file in *
	do
		filesize=$(stat -c%s "$file")
		GB=1000000000 
		MB=1000000
		KB=1000
		if [ "$filesize" -ge "$GB" ]; then
			size=$((filesize/GB))
			echo "$file" " filesize is: "
			echo "$size" " GB"
		elif [ "$filesize" -ge "$MB" ]; then
			size=$((filesize/MB))
			echo "$file" " file size is: "
			echo "$size" " MB"
		elif [ "$filesize" -ge "$KB" ]; then
			size=$((filesize/KB))
			echo "$file" " file size is: "
			echo "$size" " KB"
		else
			echo "$file" " file size is: "
			echo "$filesize" " Bytes"
		fi
	done
elif  [ "$1" -eq 3 ]; then
	echo "Input the extension of the file"
	read input
	echo "number of files in the repo are " $(find * -type f -name "*$input"| wc -l)
fi
