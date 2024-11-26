#!/bin/bash

#########################################
# Author : Markus Wildner              	#
# Created :	25.11.24		#
# Modified : 	25.11.24		#
#					#
# Description : 			#
# just a little Git starter		#
# 					#
# Usage : 				#
# ./hello_git.sh			#
# 					#
######################################### 											

clear

file_destination="$HOME/File_dump"

#echo  -e "Hello Git\nIch bin eine zweite Zeile"
echo  -e "\tNeue Zeile eingerückt"
echo  -e "Eingefügt über Laptop\nund gepusht"
echo  -e "Erste Zeile auskommentiert"

if [ -e "$file_destination" ]
then
	echo "Ordner File_dump existiert bereits"
else
	mkdir "$file_destination"
fi


for item in $( ls  "$HOME" ) 
do
	if [ -d "$HOME/$item" ]
	then
		echo "Das Item: $item ist ein Ordner"
	elif [ -f "$HOME/$item" ]
	then
		echo "Das Item: $item ist eine Datei und wird verschoben"
		mv "$HOME/$item"  "$file_destination/$item"
	fi
done

exit 0


