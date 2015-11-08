#!/bin/bash

perfhome="/home/yph/workspace/perf"
curpwd=`pwd`
tmpdir=${curpwd}/tmp
mkdir -p ${tmpdir}

cd "${perfhome}/bench"
perf record -e r20cc:u -j ind_call,u -c 8 -- ./gcc_base.stc 166.i -o 166.s
mv perf.data ${tmpdir}/perf.data.gcc.166.indjmp_indcall.c8

#perf record -e r20cc:u -j ind_call,u -c 8 -- ./astar_base.stc BigLakes2048.cfg
#mv perf.data ${tmpdir}/perf.data.astar.indjmp_indcall.c8

#perf record -e r20cc:u -j ind_call,u -c 8 -- ./perlbench_base.stc -I./lib diffmail.pl 4 800 10 17 19 300 > /dev/null
#mv perf.data ${tmpdir}/perf.data.perl.diffmail.indjmp_indcall.c8

#perf record -e r20cc:u -j ind_call,u -c 8 -- ls ..
#mv perf.data ${tmpdir}/perf.data.ls.indjmp_indcall.c8

#perf record -e r20cc:u -j ind_call,u -c 8 -- ./hello
#mv perf.data ${tmpdir}/perf.data.hello.indjmp_indcall.c8

#perf record -e r20cc:u -j ind_call,u -c 8 -- ./bzip2_base.stc text.html 280 > /dev/null
#mv perf.data ${tmpdir}/perf.data.bzip.text_html.indjmp_indcall.c8

#perf record -e r20cc:u -j any_ret,ind_call,u -c 8 -- ./bzip2_base.stc text.html 280 > /dev/null
#mv perf.data ${tmpdir}/perf.data.bzip.text_html.ret_indjmp_indcall.c8



