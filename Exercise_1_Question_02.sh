
#Question2
#The files in exercise01 folder are empty. Write a for loop to add the filename as the text
#inside the file without the extension, i.e. if the file name is file_generated_09.log, add
#file_generated_09 to the file’s content.
#Hint: Use the cut and rev commands’ combination


#!/bin/bash

# Here, I changed the directory to exercise01
cd exercise01

# Here, I looped over all files in the directory.
for file in *; do
    # Here, I used rev and cut to remove the extension from the filename
    filename=$(echo $file | rev | cut -d'.' -f2- | rev)
    # Here, I Wrote the filename to the file.
    echo $filename >> $file
done
