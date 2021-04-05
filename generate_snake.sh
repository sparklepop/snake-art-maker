#!/bin/bash
if [ "$#" -ne 3 ]; then
	this_script=${0##*/}
    echo "usage:"
	echo "$this_script [height] [width] [svg path]"
	exit 1
fi

if ! command -v inkscape &> /dev/null
then
    echo "inkscape could not be found and is required"
    exit
fi

for x in $(seq "${1}")
do
	for y in $(seq "${2}")
	do
		inkscape --export-type="png" --export-id="${x}-${y}" ${3}
	done
done
