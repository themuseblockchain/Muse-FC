#!/bin/sh

if [ "$#" -lt 1 -o "$1" = '--help' -o "$1" = '-h' ]; then
    echo "Usage: $0 <boost-unit-test-executable> [...]" 1>&2
    exit 1
fi

for i in "$@"; do
  "$i" --list_content 2>&1 \
    | grep '\*$' \
    | sed 's=\*$==;s=^    =/=' \
    | while read t; do
	  case "$t" in
	  /*) echo $i; echo "$pre$t"; ;;
	  *) pre="$t"; ;;
	  esac
      done
done \
  | parallel -v --group --eta -N 2 -- {1} -t {2}
