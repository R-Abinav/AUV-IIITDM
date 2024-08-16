#!bin/bash

#A program to rename files!
for i in $( ls );  #Iterates through the files in the directory
do
    echo "Do you want to rename this file $i? [Y/N]: "
    read response #Reads the response from the user

    if [[ "$response" == "Y" || "$response" == "y" ]]
    then
        echo "Enter the new file name: "
        read newFileName 

        mv "$i" "$newFileName" . #This command renames the file (mv $oldFile $newFile)
        echo "Renamed the file!"
    else
        echo "Moving onto the next file!" 
    fi 
done