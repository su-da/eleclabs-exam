#!/bin/sh
m4 -I /usr/local/lib/m4/circuit_macros cct.m4 | dpic -g > cct.tex
csplit -f fig cct.tex /^%%%%/ {*}
xelatex formb
# okular form.pdf &
