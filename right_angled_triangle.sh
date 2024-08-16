echo "Enter the base and height (n) of the right-angled triangle: "
read n

c=0 #The variable for getting the required values inside the right angled triangle

#The two for-loops to get the skeleton of the right angled triangle
for((i=1; i<="$n"; i++)); #For the number of rows
do
    for((j=1; j<=i; j++)); #For the number of columns
    do
        echo "$((c%10)) \c"  #Dividing the value by 10 at xth position (x%10)
        c=$c+1
    done
    echo
done
