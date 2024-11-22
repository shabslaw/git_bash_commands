#!/bin/bash

#For Loop 1 to 5
for counter in {1..5}
do
    echo "Number: $counter"
done



messages=("Super secret message" "Bash scripting is fun" "do not be a script kiddle")

#For Loop Messages
for message in "${messages[@]}"
do
    echo $message
done


directory="/c/Users/HP/scripts"

#For Loop Files inside Folders
for file in "$directory"/*
do
    echo "Making backup for: $file"
done
