#!/bin/sh

# script créer par ed <ed@debian-fr.org> édité sous licence GPL.
# http://old.ed.zehome.com/

################################################
# Configuration

RRDARCHIVE="./load.rrd"
# .png IS ADDED AFTER.
# ${GRAPH}-day -week -month -year will be created
GRAPH="./load.equinoxe"
GRAPHTITLE="Load Average Linux"

#
################################################

################################################
# Graph Load Linux

for i in -86400 -604800 -2592000 -31536000
  do
  if [ $i == -86400 ]
      then
      GRAPH2="${GRAPH}-day.png"
  fi
  if [ $i == -604800 ]
      then
      GRAPH2="${GRAPH}-week.png"
  fi
  if [ $i == -2592000 ]
      then
      GRAPH2="${GRAPH}-month.png"
  fi
  if [ $i == -31536000 ]
      then
      GRAPH2="${GRAPH}-year.png"
  fi

  /usr/bin/rrdtool graph "${GRAPH2}"                             \
      --start ${i}                                               \
      --vertical-label "Load Average"                            \
      --title "${GRAPHTITLE}" -w 800 -h 180  \
      --units-exponent 0 --imgformat PNG                         \
      --color CANVAS#000000                                      \
      --color BACK#101010                                        \
      --color FONT#ffffdf                                        \
      --color MGRID#337fbf                                       \
      --color GRID#615900                                        \
      --color FRAME#808080                                       \
      --color ARROW#FF0099                                       \
      --color SHADEA#000000                                      \
      --color SHADEB#000000                                      \
      DEF:5min=${RRDARCHIVE}:5min:AVERAGE                        \
      CDEF:flaming1=5min,40,*,100,/                              \
      CDEF:flaming2=5min,5,*,100,/                               \
      AREA:flaming1#ffff5f:"Utilisation CPU     "                \
      STACK:flaming2#fffc51                                      \
      STACK:flaming2#fffc51                                      \
      STACK:flaming2#fff046                                      \
      STACK:flaming2#ffe95f                                      \
      STACK:flaming2#ffd237                                      \
      STACK:flaming2#ffc832                                      \
      STACK:flaming2#ffbe2d                                      \
      STACK:flaming2#ffaa23                                      \
      STACK:flaming2#ff9619                                      \
      STACK:flaming2#ff841e                                      \
      STACK:flaming2#ff841e                                      \
      STACK:flaming2#ff6600                                      \
      GPRINT:5min:MAX:"%6.2lf %s   "                             \
      GPRINT:5min:MIN:"%6.2lf %s   "                             \
      GPRINT:5min:AVERAGE:"%6.2lf %s   "                         \
      GPRINT:5min:LAST:"%6.2lf %s   "
done

# Fin du script Load Linux.
################################################

# End of script.
