#!/bin/bash

sed 's/\"\[//' top10_sample.csv | sed 's/\]\"//' | sed 's/\[//' | sed 's/\]//' | sed 's/,/\n/g' | sort | uniq -c | sort -nr


