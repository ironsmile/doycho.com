#!/usr/bin/env bash

set -e

generateLinkedImage () {
	fulln=$(basename ${0})
	basen=$(basename ${0%.*})
	dirn=$(dirname ${0})
    cat << EOL
	<a href="/${dirn}/${fulln}"
		title="">
		<img src="/${dirn}/${basen}-thumb.jpeg">
	</a>
EOL
}

export -f generateLinkedImage

echo '<div class="gallery-tiles">'

find "$1" -maxdepth 1 -type f -iname '*.jp*g' \
	-not -iname '*-thumb.*' -not -iname 'cover.*' \
	-exec bash -c 'generateLinkedImage "$0"' {} \;

echo '</div>'
