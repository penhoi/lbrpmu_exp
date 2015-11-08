#!/bin/bash

#generate file  $1.txt
./parse_lbr.sh "$1"

#get the top half of LBR record; generate file $1.txt.top
./half_lbrrcd.sh $1.txt


#format
allf="$1.all.del"
topf="$1.top.del"
awk -F: '{print $2}' "$1.txt" > $allf
awk -F: '{print $2}' "$1.txt.top" > $topf

#generate report
rptf="$1.rpt"
python ./report_skid.py $allf $topf > $rptf

#rm $allf $topf
