if [ $# -eq 0 ];  #The "$#" gets the number of command line arguments and checks if its zero. If it's zero, the cow will say some sentence from the fortune module.
then
    fortune | cowsay 
else
    cowsay "$1" #Else the if there are arguments provided in the CLI , then the cow says the first command line argument.
fi
