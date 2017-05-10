#!/bin/bash
# My little quine

quine () {
echo -e "#!/bin/bash\n# My little quine\n$1"
echo -e "main () {\n# Yolo"
echo "quine '$1'"
echo -e "}\n\nmain"
}

main () {
# Yolo
quine '
quine () {
echo -e "#!/bin/bash\\n# My little quine\\n$1"
echo -e "main () {\\n# Yolo"
echo "quine \047$1\047"
echo -e "}\\n\\nmain"
}
'
}

main
