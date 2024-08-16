#!/bin/bash

#Getting the current working directory using pwd command and storing it in a variable cwd
cwd=$(pwd)
echo "Are you sure you want to delete all .txt files in $cwd? [Y/N]:" #Making sure the user wants to delete all the .txt files, as this is a risky operation
read response

if [ "$response" = "Y" ] || [ "$response" = "y" ]; 
then
    rm -f "$cwd"/*.txt  #This command deletes all the .txt files in the directory, but doesn't delete the directory itself.
    echo "All .txt files have been deleted, but the directory is still present!"
else
    echo "You chose not to delete the files!"
fi