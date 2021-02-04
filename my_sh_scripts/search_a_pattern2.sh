#! /bin/bash

for FILE in *.ipynb; do

    if cat $FILE | grep "SEARCHED_PATTERN1"
    then
        mv $FILE directory_to_move1/
    
    elif cat $FILE | grep "SEARCHED_PATTERN2"
    then
        mv $FILE directory_to_move2/

    elif cat $FILE | grep "SEARCHED_PATTERN3"
    then
        mv $FILE directory_to_move3/

    else
        echo "something_here"
    fi
done