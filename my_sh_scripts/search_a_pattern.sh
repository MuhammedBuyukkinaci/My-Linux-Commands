#! /bin/bash

for FILE in *.ipynb; do
    if cat $FILE | grep "SEARCH_PATTERN_WRITTEN_HERE"
    then
        mv $FILE directory_to_move/
    else
        #echo $FILE
        echo "not moved"
    fi
done