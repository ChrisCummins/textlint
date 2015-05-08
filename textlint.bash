#! /bin/bash

function usage() {
    echo $0 filename pharovm textlintimage
}

if [[ -z $1 || -z $2 || -z $3 ]]; then
    usage
    exit 1
fi

filename="$1"
# The packaged distribution of pharo crashes for me. Instead, use the
# system install.
pharovm=pharo
textlintimage="$3"

buffer=$(mktemp /tmp/textlint.XXXX)

cat > "$buffer" <<EOF
TLConsole checkFileNamed: '$filename' andOutputToFileNamed: 'textlint.log' withinDirectory: '$(pwd)'

EOF

rm -f textlint.log
"$pharovm" -headless "$textlintimage" "$buffer"

rm -f "$buffer"

if [[ ! -e textlint.log ]]; then
    echo Something bad happened!
    exit 1
else
    cat textlint.log
    exit 0
fi
