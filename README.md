# Silent Failure in Shell Summation Script

This repository demonstrates a subtle bug in a bash script designed to sum numbers from a file. The script silently fails if any line in the input file contains non-numeric data, leading to an incorrect sum.

## Bug Description

The script uses a `while` loop to read the file line by line.  The arithmetic expansion `$((sum + line))` will fail if `line` contains anything that's not a valid integer.  Bash will not report an error, it will simply produce an incorrect result.

## Bug Reproduction

1. Create a file named `numbers.txt` with the following content:

```
10
20
abc
30
```
2. Run the `bug.sh` script. It will produce an incorrect sum because it does not handle non-numeric lines properly.

## Solution

The solution involves adding error handling to check if each line is a valid number before attempting to add it to the sum. The `bugSolution.sh` script demonstrates this improvement.
