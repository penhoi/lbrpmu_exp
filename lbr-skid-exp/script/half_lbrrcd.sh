#!/bin/bash

#generate sedcmd
gen_sedcmd() {
    ordstr=`seq $1 $2`
    ordstr=`echo ${ordstr}`' '
    sedcmd=${ordstr// /~16p;}
    echo $sedcmd
}

half_lbrrcd() {
    pf=$1
    sedcmd_top=`gen_sedcmd 1 8`
    sed -n "${sedcmd_top}" ${pf} > ${pf}.top
}

half_lbrrcd "$1"
