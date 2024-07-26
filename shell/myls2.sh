#! /usr/bin/bash

# ./myls2.sh
# ./myls2.sh ~/Documents
# ./myls2.sh -l
# ./myls2.sh -a
# ./myls2.sh -i
# ./myls2.sh -R
# ./myls2 -la
# ./myls2 -al
# ./myls2 -l -a
# ./myls2 -l -a directory_name

# Q6






# =>2
# echo "$1"

# options=""
# directory=""






# =>1
options=""
directory=""

#-
while [[ "$1" =~ ^- ]] 
do 
    options="$options $1"
    shift
done

if [ -n "$1" ]
then
    directory="$1" 
fi

#-
if [ -n "$directory" ]
then
    ls $options "$directory"
else
    ls $options
fi