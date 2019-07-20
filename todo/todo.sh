#!/bin/bash

#FIX:
#cant create file without sudo (tell to do custom command for that?)
#-h command and help if parameters forgotten
#delete multiple rows
#removing a number BREAKS it

#simple TODO manager by Hanki
TXT_DIR=~/todo.txt

if [ $# -eq 0 ]; then

#prints the TODO or creates file
    if [ -f "$TXT_DIR" ]; then
	nl $TXT_DIR
    else
	touch $TXT_DIR
	echo "File created at $TXT_DIR"
    fi

else

#add new task
    if [ $1 = "a" ]
      then
	echo "$2" >> $TXT_DIR
	echo "Task added"
    fi

#remove task
    if [ $1 = "r" ]
      then
	sed -i $2d $TXT_DIR
	echo "Task $2 deleted"
    fi

fi
