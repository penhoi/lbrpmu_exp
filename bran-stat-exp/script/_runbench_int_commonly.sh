#!/bin/bash


#run_cmd="perf stat -e rbf88:u,r8488:u,r8888:u,ra088:u --"
if [ $# != 1 ] ; then
	echo "$0 run_cmd"
	exit
fi
run_cmd=$1

run_base_ref_path="run_base_ref_stc.0000"
bench_ext="stc"

spec_root="/home/yph/software/cpu2006/benchspec/CPU2006"
save_bench_result="/dev/null"


#${run_cmd} "/home/yph/workspace/perf/bench/hello" > ${save_bench_result}
#exit

cd ${spec_root}/400.perlbench/run/${run_base_ref_path}
${run_cmd} ./perlbench_base.${bench_ext} -I./lib splitmail.pl 1600 12 26 16 4500 > ${save_bench_result}

cd ${spec_root}/401.bzip2/run/${run_base_ref_path} 
${run_cmd} ./bzip2_base.${bench_ext} input.source 280 > ${save_bench_result}

cd ${spec_root}/403.gcc/run/${run_base_ref_path} 
${run_cmd} ./gcc_base.${bench_ext} 200.i -o 200.s > ${save_bench_result}

cd ${spec_root}/429.mcf/run/${run_base_ref_path}
${run_cmd} ./mcf_base.${bench_ext} inp.in > ${save_bench_result}

cd ${spec_root}/445.gobmk/run/${run_base_ref_path} 
${run_cmd} ./gobmk_base.${bench_ext} --quiet --mode gtp  	< nngs.tst > ${save_bench_result}

cd ${spec_root}/456.hmmer/run/${run_base_ref_path} 
${run_cmd} ./hmmer_base.${bench_ext} nph3.hmm swiss41 > ${save_bench_result}

cd ${spec_root}/458.sjeng/run/${run_base_ref_path} 
${run_cmd} ./sjeng_base.${bench_ext} ref.txt > ${save_bench_result}

cd ${spec_root}/462.libquantum/run/${run_base_ref_path} 
${run_cmd} ./libquantum_base.${bench_ext} 1397 8 > ${save_bench_result}

cd ${spec_root}/464.h264ref/run/${run_base_ref_path} 
${run_cmd} ./h264ref_base.${bench_ext} -d foreman_ref_encoder_baseline.cfg > ${save_bench_result}

cd ${spec_root}/471.omnetpp/run/${run_base_ref_path} 
${run_cmd} ./omnetpp_base.${bench_ext} omnetpp.ini > ${save_bench_result}

cd ${spec_root}/473.astar/run/${run_base_ref_path} 
${run_cmd} ./astar_base.${bench_ext} BigLakes2048.cfg > ${save_bench_result}

cd ${spec_root}/483.xalancbmk/run/${run_base_ref_path} 
${run_cmd} ./Xalan_base.${bench_ext} -v t5.xml xalanc.xsl > ${save_bench_result}

#cd ${spec_root}/998.specrand/run/${run_base_ref_path} 
#${run_cmd} ./specrand_base.${bench_ext} 1255432124 234923 > ${save_bench_result}

