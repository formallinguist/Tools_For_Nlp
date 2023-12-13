

#Question3
#Now that each file contains the filename of the file, write a command to add "This file is "
#to the beginning of the file and add "\n:)" to the end of the file without the quotes. Pay
#attention to the spaces in the string.
#Hint: Use the sed in-place editor option but first look at trial substitution to ensure it is doing
#what it is supposed to do.


#!/bin/bash

# Here, I changed the  directory to exercise01
cd exercise01

# Here, I looped over all files in the directory
for file in *; do
    # Here, I used sed to prepend "This file is " and append "\n:)" to the file content
    sed -i -e '1s/^/This file is /' -e '$a\
    \n:)' "$file"
done

