#!/bin/bash

if [ -f $1 ]
then echo "$1 exist!"
else echo "$1 not found!"
fi

g++ -I. -I$SYSTEMC_HOME/include -L. -L$SYSTEMC_HOME/lib-linux64 -Wl,-rpath=$SYSTEMC_HOME/lib-linux64 -o exe $1 -lsystemc -lm


if [ -f exe ]
then echo build success!
else echo build failed!
fi

