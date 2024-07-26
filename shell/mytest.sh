#! /usr/bin/bash

if [ "$#" -ne 1 ]
then
    echo "Usage: $0 type file or directory"
    exit 1
fi

target="$1"

if [ -f "$target" ]
then
    echo "($target) is a file."

elif [ -d "$target" ]
then
    echo "($target) is a directory."

else
    echo "($target) is not a regular file or directory."
    exit 1
    
fi

echo "Permissions for ($target):"
[ -r "$target" ] && echo "Readable"
[ -w "$target" ] && echo "Writable"
[ -x "$target" ] && echo "Executable"