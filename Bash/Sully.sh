#!/bin/bash

NAME=Sully

typeset -i i=5

(( i == 0 )) && exit 0

[[ $(basename $0) == "Sully.sh" ]] && (( i ++ ))

(( i -- ))

quine () {
cat >${NAME}_$i.sh <<EOF
#!/bin/bash

NAME=Sully

typeset -i i=$i

(( i == 0 )) && exit 0

[[ \$(basename \$0) == "Sully.sh" ]] && (( i ++ ))

(( i -- ))

$1
EOF
echo -en "quine \047" >>${NAME}_$i.sh
echo -n "$1" >>${NAME}_$i.sh
echo -e "\047" >>${NAME}_$i.sh

bash ${NAME}_$i.sh
}

quine 'quine () {
cat >${NAME}_$i.sh <<EOF
#!/bin/bash

NAME=Sully

typeset -i i=$i

(( i == 0 )) && exit 0

[[ \$(basename \$0) == "Sully.sh" ]] && (( i ++ ))

(( i -- ))

$1
EOF
echo -en "quine \047" >>${NAME}_$i.sh
echo -n "$1" >>${NAME}_$i.sh
echo -e "\047" >>${NAME}_$i.sh

bash ${NAME}_$i.sh
}
'
