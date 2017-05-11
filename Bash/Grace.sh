#!/bin/bash
# My little quine

H="#!/bin/bash
# My little quine
"

quine () {
echo "$H"
echo -e "H=\042$H\042"
echo "$1"
echo -en "S=\047"
echo -n "$1"
echo -e "\047\n"
echo -e "quine \042\$S\042"
}>Grace_kid.sh

S='
quine () {
echo "$H"
echo -e "H=\042$H\042"
echo "$1"
echo -en "S=\047"
echo -n "$1"
echo -e "\047\n"
echo -e "quine \042\$S\042"
}>Grace_kid.sh
'

quine "$S"
