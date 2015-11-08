#!/bin/bash

parse(){
    tmp="$1.del"
    perf script -D -i $1 | head -n 10000000 > $tmp
    python format.py $tmp $1.txt
    #rm $tmp
}

#usage:
#./parse_lbr.sh perf.data
parse "$1"
