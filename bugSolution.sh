#!/bin/bash

# This script is an improved version that handles non-numeric lines gracefully.

file=/tmp/numbers.txt

sum=0

while IFS= read -r line; do
  if [[ "$line" =~ ^[0-9]+$ ]]; then
    sum=$((sum + line))
  else
    echo "Warning: Non-numeric line encountered: $line. Skipping..."
  fi
done < "$file"

echo "The sum is: $sum"