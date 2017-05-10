#!/bin/bash
# My little quine

H="#!/bin/bash
# My little quine
"

quine () {
echo "$H"
echo -e "H=\042$H\042"
echo "$1"
echo -e "S=\047$1\047"
echo -e 'quine \047$S\047'
}>Grace_kid.sh

S='
quine () {
echo "$H"
echo -e "H=\042$H\042"
echo "$1"
echo -e "S=\047$1\047"
echo -e quine \\047$S\\047
}>Grace_kid.sh
'

quine "$S"
