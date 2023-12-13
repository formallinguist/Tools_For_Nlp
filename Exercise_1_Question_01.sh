
#Question 1
#Exercise01.zip contains 100 empty files with 4 different extensions. Please unzip into a
#folder named exercise01 and write a bash script/pipeline to print how many files are for each
#extension.


#!/bin/bash

# Check if directory is provided
if [ -z "$1" ]
then
    echo "No directory supplied. Usage: ./apple.sh directory"
    exit 1
fi

# Here, I find all files in the provided directory.
find $1 -type f | 
# Here, I Extracted the file extensions.
awk -F. '{if (NF>1) {print $NF}}' |
# Here, I counted the occurrences of each extension.
sort | uniq -c

