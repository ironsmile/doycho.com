#!/usr/bin/env bash

set -e

generateLinkedImage () {
	fulln=$(basename ${1})
	basen=$(basename ${1%.*})
	dirn=$(dirname ${1})
    cat << EOL
	<a href="/${dirn}/${fulln}"
		title="">
		<img src="/${dirn}/${basen}-thumb.jpeg">
	</a>
EOL
}

images=$(find "$1" -maxdepth 1 -type f -iname '*.jp*g' \
	-not -iname '*-thumb.*' -not -iname 'cover.*' | sort)

echo '<div class="gallery-tiles">'

for image in $images
do
	generateLinkedImage "${image}"
done

echo '</div>'
