# CS 1XA3 Project01 - cheemm9
## Usage
	Execute this script from project root with:
	chmod +x CS1XA3/Project01/project_analyze.sh
	./CS1XA3/Project01/project_analyze arg1 arg2 ...
	With possible arguments
	arg1: ./project_analyze.sh 1
	arg2: ./project_analyze.sh 2
	arg3: ./project_analyze.sh 3
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
## Custom Feature SomeFeature
Description: This feature will take an input from the user asking for a word/sentence and output the
	     file in which the word/sentence is most commonly used.

##Custom Feature SomeFeature
Description: This feature will take a file as an input and create a text file of the contents
	     of the input file.  
