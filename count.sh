#!/bin/bash 

count_lines(){
    filename=$1 

    if [ -f "$filename" ]; then 
        lines=$(wc -l < "$filename") 
        echo "File: $filename has $lines lines" 
    else 
        echo "File: $filename does not exist" 
    fi 
}
count_lines file1.txt 
count_lines file2.txt 
count_lines file3.txt 

