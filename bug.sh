#!/bin/bash

# This script attempts to process a file containing a list of numbers,
# calculating the sum.  However, it contains a subtle error.

file=/tmp/numbers.txt

sum=0

while IFS= read -r line; do
  sum=$((sum + line))
done < "$file"

echo "The sum is: $sum"