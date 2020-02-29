# CS 1XA3 Project01 - cheemm9
## Usage
	Execute this script from project root with:
	chmod +x CS1XA3/Project01/project_analyze.sh
	./CS1XA3/Project01/project_analyze arg1 arg2 ...
	With possible arguments
	arg1: ./project_analyze.sh 1
	arg2: ./project_analyze.sh 2
	arg3: ./project_analyze.sh 3
        arg4: ./project_analyze.sh 4
	arg5: ./project_analyze.sh 5
	arg6: ./project_analyze.sh 6
	arg7: ./project_analyze.sh 7
## Feature 01
Description: this feature searches all the files in the repo which
	     includes the words "#FIXME" in the last line and creates
	     log which contains all the file names of such files and 
	     if the log exists it overwrites it by deleting it and making
	     it again.  
Execution: execute this feature by using the parameter 1. For example ./project_analyze.sh 1
Reference: some code was taken from [[https://www.baeldung.com/linux/loop-directories]],
	   [[https://tiswww.case.edu/php/chet/bash/bashref.html]]
## Feature 02
Description: This feature calculates the size of all the files in the repo in bytes
	     and converts this into KB,MB,GB or leaves it at bytes according to the 
	     size of the files and then outputs the size with the file name.
Execution: execute this feature by using the parameter 2. For example ./project_analyze.sh 2
Reference:some code was taken from [[https://www.cyberciti.biz/faq/howto-bash-check-file-size-in-linux-unix-scripting/]]
## Feature 03
Description: This feature takes an input from the user asking for a file extension.
             It then stores the file extension in a variable and searches all the
	     files in the repo which use the file extension and then counts them
	     and outputs the number of files which use that specific file extension.
Execution: execute this feature by using the paramater 3. For example ./project_analyze.sh 3
	   It will ask for an input and will enter a file extension into the terminal.
Reference: some code was taken from [[https://ryanstutorials.net/bash-scripting-tutorial/bash-input.php]],
	   [[https://math2001.github.io/article/bashs-find-command/]]
## Feature 04
Description: This feature checks if a permissions log is already present if it is it overwrites it by deleting
	     it first and then creating it again else if it is not present it creates it. It then prompts the user to
	     input one of the keywords "CHANGE" or "RESTORE" and depending on the prompt executes the part of the code 
	    which is under the CHANGE section it finds all the files in the repo(Project01) which have the extension
	    ".sh" and stores the file and its permissions in octal value in permissions.log. It then checks all the files
	    with the extension that have the user writable and converts those files into exceutable. it repeats the same 
	    with the others and group sections of files. If the user types in "RESTORE" it reads the permission.log line by line
	   and seperates the first two words in a line the first word being the filename and the second the original octal value
	   of the file and then uses chmod to convert the files back to their original permission before the last "CHANGE" call.
Execution: execute this feature by using the parameter 4. for example ./project_analyze.sh 4
	   It will then prompt for an input and the user will have to input "CHANGE" or "RESTORE"
Reference: some code was taken from [[https://unix.stackexchange.com/questions/65932/how-to-get-the-first-word-of-a-string]],
	   [[https://www.washington.edu/computing/unix/permissions.html]],[[https://linuxconfig.org/find-all-files-with-write-permission-turned-on]]    
## Feature 05
Description: This feature takes an input by using a prompt. The input options being "RESTORE" and "BACKUP".
	     If the user inputs "BACKUP" it searches the current directory for a 'backup' directory if there
	     is not one present it creates it else it deletes it and creates it again to overwrite it. It then
	     creates a restore.log and moves it to the 'backup' directory and then searches all the files with the 
	    extension '.tmp' and copies it to the 'backup' directory and saves the path of the file to the a variable 
	    prints it to the restore.log with the file name.it then removes the file from the current working directory 
	    which is the original location. If the user types "RESTORE" as an input and reads the restore.log line by line
	    and divides it into two variables and checks if the file exists in the backup if it dosent it returns an error message
	    else it uses the first variable which has the file name and the second variable the orginal location and moves it from
	   the 'backup' to the original location.
Execution: execute this feature by using parameter 5. for example ./project_analyze.sh 5
	    It will then prompt for an input and the user will have ot input "BACKUP" or "RESTORE"
Reference: some code was take from
	[[https://www.earthdatascience.org/courses/intro-to-earth-data-science/open-reproducible-science/bash/bash-commands-to-manage-directories-files/]],
	[[https://stackoverflow.com/questions/8395358/creating-a-file-in-a-specific-directory-using-bash]]
## Custom Feature 1
Description: This feature will prompt the user to input the name of the file which is to be converted to a text file.
	     It then loops through the directory and searches if the input file exists and takes the filename without 
	     the extension and attaches '.txt' to it and creates it. It then copies all the contents of the input file 
	     the new text file using the 'cat' function.
Execution: execute this feature by using paramter 6. for example ./project_analyze.sh 6
	    It will then prompt the user to input the name of the file with the extension.
Reference: some code was taken from [[https://www.cyberciti.biz/faq/how-to-copy-one-file-contents-to-another-file-in-linux/]],
	   [[https://linuxize.com/post/how-to-read-a-file-line-by-line-in-bash/]],
	   [[https://www.unix.com/shell-programming-and-scripting/260857-concat-strings-without-spaces.html]]

##Custom Feature 2
Description: This feature will prompt the user to input the word which has to be searched and declares variables.
	     It then loops through the current directory and searches how much times the input word is repeated in
	     the file and if its greater then the declared variable it replaces the previous values of the variables 
	    outputs the variables with the filename and the number of times the word is repeated 
Execution: execute this feature by using the parameter 7. for example ./project_analyze.sh 7
	   It will then prompt the user to input the word to be searched.
Reference: some code was taken from [[https://www.cyberciti.biz/faq/how-to-count-total-number-of-word-occurrences-using-grep-on-linux-or-unix/]],
	   [[https://unix.stackexchange.com/questions/398413/counting-occurrences-of-word-in-text-file]]
