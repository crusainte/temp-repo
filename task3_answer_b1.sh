#!/bin/bash

# Part 1
for f in zalora-*; do
    a=$(echo $f | sed s/zalora-*/Zalora-/)
    mv $f $a
done





































