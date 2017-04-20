#!/bin/bash

FILE=$1

git diff $FILE

if [[ $FILE = ""  ]]; then
    exit
fi

echo 'What would you want me to do with this file?'
echo '1) git add'
echo '2) git checkout'
echo 'Press any other key for NO ACTION!'
echo '-------------------'
echo -n 'Enter your choice: '

read ACTION

case $ACTION in
"1")
    git add $FILE
    echo "$FILE is staged succesfully!"
    ;;
"2")
    git checkout $FILE
    echo "$FILE is discarded succesfully!"
    ;;
esac
