#!/bin/bash

curpwd=`pwd`
stat_log_path="${curpwd}/stat_data.raw"
echo "wite result to ${stat_log_path}"

echo `date` > ${stat_log_path}
perf_cmd="perf stat -e rbf88:u,r8488:u,r8888:u,ra088:u -o ${stat_log_path} --append -- "

#./script/_runbench_int_commonly.sh "${perf_cmd}"
#./script/_runbench_int_commonly.sh "${perf_cmd}"
#./script/_runbench_int_commonly.sh "${perf_cmd}"
