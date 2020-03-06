#!/usr/bin/env bash

compare_output() {
    OUTPUT=$1
    EXPECTED=$2
    if [ "$OUTPUT" = "$EXPECTED" ]; then
        printf "OK\n"
    else
        printf "FAIL | Expected: $EXPECTED | Actual: $OUTPUT\n"
    fi
}

printf "Test 1 - "; compare_output "$(python3 find_max.py 1)" "1"
printf "Test 2 - "; compare_output "$(python3 find_max.py 1 2)" "2"
printf "Test 3 - "; compare_output "$(python3 find_max.py 2 1)" "2"
printf "Test 4 - "; compare_output "$(python3 find_max.py -1 1)" "1"
printf "Test 5 - "; compare_output "$(python3 find_max.py 1 -1)" "1"
printf "Test 6 - "; compare_output "$(python3 find_max.py -2 -1)" "-1"
printf "Test 7 - "; compare_output "$(python3 find_max.py a  2>&1)" $'usage: find_max.py [-h] N [N ...]\nfind_max.py: error: argument N: invalid int value: \'a\''
printf "Test 8 - "; compare_output "$(python3 find_max.py 1 a 2>&1)" $'usage: find_max.py [-h] N [N ...]\nfind_max.py: error: argument N: invalid int value: \'a\''
printf "Test 9 - "; compare_output "$(python3 find_max.py a -1 2>&1)" $'usage: find_max.py [-h] N [N ...]\nfind_max.py: error: argument N: invalid int value: \'a\'' 