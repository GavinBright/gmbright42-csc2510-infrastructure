#!/bin/bash
#This will check if the there is an arguments provided.
if (( $# != 1))
then
    echo "No arguments were provided."
    exit 1
fi


#Variable is my_root_password
'{{ my_root_password }}' = $1

'{{ my_password }}' = $1

echo "The password was succesfully updated"

