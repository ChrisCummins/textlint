#!/usr/bin/env bash
set -eu

function usage() {
    echo "$0 <filename> <pharovm> <textlintimage>"
}

if [[ -z $1 || -z $2 || -z $3 ]]; then
    usage
    exit 1
fi

filename="$1"
pharovm="$2"
textlintimage="$3"

# Temporary buffers:
tmpdir=/tmp
input=$(mktemp $tmpdir/textlint.XXXX)
output=$(mktemp $tmpdir/textlint.XXXX)

function rm_buffers {
    rm -f "$input"
    rm -f "$output"
}
trap rm_buffers EXIT

cat > "$input" <<EOF
TLConsole checkFileNamed: '$filename' andOutputToFileNamed: '$output' withinDirectory: '$(pwd)'

EOF

# Execute textlint:
"$pharovm" -headless "$textlintimage" "$input"

# Print result:
cat "$output"
