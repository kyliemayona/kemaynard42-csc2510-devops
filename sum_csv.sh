#!/bin/bash

FILE=${1:-numbers.csv}

if [[ ! -f "$FILE" ]]; then
    echo "File not found!"
    exit 1
fi

while IFS=',' read -r num1 num2
do
    sum=$((num1 + num2))
    echo "$num1 + $num2 = $sum"
done < "$FILE"
