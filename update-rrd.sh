#!/bin/sh

load=`cat /proc/loadavg`

a=$(( `echo \`echo $load | cut -f1 -d' '\` \* 100 | bc | cut -f1 -d.` * 3 ))
b=$(( `echo \`echo $load | cut -f2 -d' '\` \* 100 | bc | cut -f1 -d.` * 3 ))
c=$(( `echo \`echo $load | cut -f3 -d' '\` \* 100 | bc | cut -f1 -d.` * 3 ))

rrdtool update ./load.rrd N:$a:$b:$c

