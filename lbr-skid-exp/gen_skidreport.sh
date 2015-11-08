#!/bin/bash

curpwd=`pwd`
tmpdir=${curpwd}/tmp

cd ./script
./gen_report.sh ${tmpdir}/perf.data.gcc.166.indjmp_indcall.c8
#./gen_report.sh ${tmpdir}/perf.data.perl.diffmail.indjmp_indcall.c8
#./gen_report.sh ${tmpdir}/perf.data.astar.indjmp_indcall.c8
#./gen_report.sh ${tmpdir}/perf.data.ls.indjmp_indcall.c8
#./gen_report.sh ${tmpdir}/perf.data.hello.indjmp_indcall.c8
#./gen_report.sh ${tmpdir}/perf.data.bzip.text_html.indjmp_indcall.c8
#./gen_report.sh ${tmpdir}/perf.data.bzip.text_html.ret_indjmp_indcall.c8
