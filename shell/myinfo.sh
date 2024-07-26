#! /usr/bin/bash

#Q8

echo "Please enter your logname:"
read logname

# echo $(logname)

if [ "$logname" == "$(whoami)" ]
then
    echo "Username is correct.🎉🎉"

    echo "Full info about files and directories in home directory: "
    ls -l /home/"$logname"

    echo "Copying files and directories to /tmp: "
    cp /home/"$logname"/* /tmp/

    echo "Current processes status:"
    ps -u "$logname"

else
    echo "Incorrect username."
fi 
