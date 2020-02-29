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
elif [ "$1" -eq 4 ]; then
	if [[ ! -f "permissions.log" ]]; then
		touch "permissions.log"
	fi
	echo "Type in one of the following: CHANGE or RESTORE"
	read input
	if [[ "$input" = "CHANGE" ]]; then
		rm permissions.log
		touch permissions.log
		for file in $(find * -type f -name "*.sh")
		do
			variable1=$(stat -c "%a" "$file")
			echo "$file" "$variable1" >> permissions.log
		done
		for filez in $(find * -type f -name "*.sh")
		do
			for file1 in $(find "$filez" -writable)
			do
				chmod u+x "$filez"
			done
			for file2 in $(find "$filez" -perm -020)
			do
				chmod g+x "$file2"
			done
			for file3 in $(find "$filez" -perm -002)
			do
				chmod o+x "$file3"
			done
		done
	fi
	if [[ "$input" = "RESTORE" ]]; then
		while IFS= read -r line
		do
			word1=$(echo "$line" | awk '{print $1}')
			word2=$(echo "$line" | awk '{print $2}')
			chmod "$word2" "$word1"
		done < permissions.log
	fi
elif [ "$1" -eq 5 ]; then
	echo "Type in one of the following: BACKUP or RESTORE"
	read input1
	if [[ "$input1" = "BACKUP" ]]; then

		if [[ ! -d "backup" ]]; then
			mkdir backup
		fi
		if [[ -d "backup" ]]; then
			rm -r backup
			mkdir backup
		fi
		touch restore.log
		mv restore.log backup
		for file in $( find * -type f -name "*.tmp")
		do
			cp "$file" backup
			pathoffile=$(pwd)
			echo "$file" "$pathoffile" >> /home/cheemm9/private/CS1XA3/Project01/backup/restore.log
			rm "$file"
		done
	fi
	if [[ "$input1" = "RESTORE" ]]; then
		cd backup
		while IFS= read -r line
		do
			word1=$(echo "$line" | awk '{print $1}')
			word2=$(echo "$line" | awk '{print $2}')
			if [[ ! -f "$word1" ]]; then
				echo "No such file exists in backup"
			fi
			if [[ -f "$word1" ]]; then
				mv "$word1" "$word2"
			fi
		done < restore.log
	fi
elif [ "$1" -eq 6 ]; then
	echo "Type in the name of the file that u want to convert to text"
	read input
	for file in $(find * -type f)
	do
		if [ "$file" = "$input" ]; then
			f="${input%.*}"
			f+=".txt"
			touch f
			cat "$file" >> "$f"
		fi
	done
elif [ "$1" -eq 7 ]; then
	echo "Type in the word you want to search"
	read input
	number=0
	filename=''
	for file in $(find * -type f)
	do
		a=$(grep -o -i "$input" "$file" | wc -l)
		if [ "$a" -gt "$number" ]; then
			number="$a"
			filename="$file"
		fi
	done
	echo "$filename" "number of times word is repeated is" "$number"
fi
