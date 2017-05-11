#!/bin/bash

NAME=Sully

typeset -i i=5

[[ $(basename $0) == "Sully.sh" ]] && (( i ++ ))

(( i == 0 )) && exit 0 || (( i -- ))

quine () {

	exec >${NAME}_$i.sh

	cat <<-EOF
		#!/bin/bash

		NAME=Sully

		typeset -i i=$i

		[[ \$(basename \$0) == "Sully.sh" ]] && (( i ++ ))

		(( i == 0 )) && exit 0 || (( i -- ))

		$1
	EOF

	echo -en "quine \047"
	echo -n "$1"
	echo -e "\047"

	bash ${NAME}_$i.sh
}

quine 'quine () {

	exec >${NAME}_$i.sh

	cat <<-EOF
		#!/bin/bash

		NAME=Sully

		typeset -i i=$i

		[[ \$(basename \$0) == "Sully.sh" ]] && (( i ++ ))

		(( i == 0 )) && exit 0 || (( i -- ))

		$1
	EOF

	echo -en "quine \047"
	echo -n "$1"
	echo -e "\047"

	bash ${NAME}_$i.sh
}
'
