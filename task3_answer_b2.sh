#!/bin/bash

# Part 2

for f in Zalora-*; do
    sed -i 's/./\U&/g' $f
    sed -i 's/\.//g' $f
done






































