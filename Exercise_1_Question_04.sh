
#Question4
#Write a bash script to count the number of “_” symbol in every file name and if it’s even, print
#it to stderr and if it’s odd print it to stdout and append it to a file.
#Hint: Use the tee command


#!/bin/bash

# Here, I changed the directory to exercise01
cd exercise01

# Here, I removed any output.txt if it exists and create a new one
rm -f output.txt
touch output.txt

# Here, I looped over all files in the directory
for file in *; do
    # Here, I counted the number of "_" in the filename
    count=$(echo $file | tr -cd '_' | wc -c)
    # Here, I checked if the count is even or odd
    if (( $count % 2 == 0 )); then
        # If  the count is even, print to stderr
        echo "The file $file has an even number of underscores: $count" >&2
    else
        # If the count is  odd, print to stdout and append to output.txt
        echo "The file $file has an odd number of underscores: $count" | tee -a output.txt
    fi
done
