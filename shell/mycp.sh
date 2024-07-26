#! /usr/bin/bash

# Q3
#!/bin/bash


# echo "number of arguments: $#"
# -eq --> equal
# -ne --> not equal

# echo "first argument: $1"
# echo "second argument: $2"

# -d => directory 

# $() => run command 



# 1=> one file 
# touch file1.txt
# ./mycp.sh file1.txt file2.txt

# 2=> multiple files
# target_directory
# ./mycp.sh file1.txt file2.txt target_directory/
# ./mycp.sh file1.txt file2.txt ~/Documents/target_directory/



# echo '$# -->' "$#"
# echo "all arguments: $*"
# echo "all arguments: $@"

# x=$*

# echo '1-->' "${x}"


# echo "${@: 1}" # file1.txt file2.txt target_directory/
# echo "${@: -1}" # target_directory/

# echo "${@: 2}" # file2.txt target_directory/
# echo "${@: $#}" # target_directory/
# echo "${@: -2}" # target_directory/


# cp  file1.txt target_directory/




# => 5 



# Check if at least 2 arguments are provided
if [ "$#" -lt 2 ]
then
    echo "Usage: $0 source_file... destination"
    exit 1
fi

# Get the last argument as destination
dest="${@: -1}"

# Check if the destination is a directory
if [ -d "$dest" ]
then
    # Copy each source file to the directory
    for src in "$@"
    do
        [ "$src" != "$dest" ] && cp -r "$src" "$dest/"
    done
else
    # Copy the single source file to the destination
    cp "$1" "$dest"
fi







# =>4

# if [ $# -eq 0 ]
# then
#     echo "Error: Please provide source and destination files."
#     exit 1
# fi


# # -gt > 
# # -eq = 
# if [ $# -eq  2 ]
# then  # Single file copy
#     source_file="$1"
#     dest_file="$2"
#     cp "$source_file" "$dest_file"
#     echo "Copied '$source_file' to '$dest_file'."
# fi

# if [ $# -gt 2 ]
# then  # Copy to a directory
#     source_file="$*"
#     dest_file="${@: -1}"

#     cp "$source_file" "$dest_file"
#     echo "Copied '$source_file' to '$dest_file'."
# fi












# =>1

# if [ $# -eq 0 ]; 
# then
#     echo "Error: Please provide source and destination files."
#     exit 1
# fi

# source_file="$1"
# dest_file="$2"

# if [ $# -eq  2 ]; 
# then  # Single file copy
#     if [ -d "$dest_file" ]; 
#     then  # Destination is a directory
#         dest_file="$dest_file/$(basename "$source_file")"
#     fi

#     cp "$source_file" "$dest_file"
#     echo "Copied '$source_file' to '$dest_file'."
# else  # Copy to a directory
#     cp -r "$source_file" "$dest_file"
#     echo "Copied '$source_file' to directory '$dest_file'."
# fi

# if [ $# -lt 2 ]; then
#     echo "Error: Copying failed."
#     exit 1
# fi




# # =>2
# # Check if at least 2 arguments are provided
# if [ "$#" -lt 2 ]; then
#     echo "Usage: $0 source_file... destination"
#     exit 1
# fi

# # Get the last argument as destination
# dest="${@: -1}"

# # Check if the destination is a directory
# if [ -d "$dest" ]; 
# then
#     # Copy each source file to the directory
#     for src in "$@"; 
#     do
#         [ "$src" != "$dest" ] && cp "$src" "$dest/"
#     done
# else
#     # Copy the single source file to the destination
#     cp "$1" "$dest"
# fi






# =>3
# if [ $# -eq 0 ]; 
# then
#     echo "Error: Please provide source and destination files."
#     exit 1
# fi

# source_file="$1"
# dest_file="$2"

# if [ $# -eq  2 ]; 
# then  # Single file copy
#     if [ -d "$dest_file" ]; 
#     then  # Destination is a directory
#         dest_file="${@: -2}"
#         dest_file="$dest_file/$(basename "$source_file")"
#     fi

#     cp "$source_file" "$dest_file"
#     echo "Copied '$source_file' to '$dest_file'."
# else  # Copy to a directory
#     cp -r "$source_file" "$dest_file"
#     echo "Copied '$source_file' to directory '$dest_file'."
# fi

# if [ $# -lt 2 ]; then
#     echo "Error: Copying failed."
#     exit 1
# fi







