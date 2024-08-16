#!bin/bash

#A program to delete files!
for i in $( ls );   #Iterates through the files present in the directory
do
    echo "Do you want to delete this file $i? [Y/N]: "
    read response #Checks if the user wants to delete the given file or nah

    if [[ "$response" == "Y" || "$response" == "y" ]]
    then
 
        rm "$i" #The rm command deletes the given file.
        echo "Deleted the file!"
    else
        echo "Moving onto the next file!" . #If the user entered "n" then the file is skipped
    fi 
done