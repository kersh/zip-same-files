#!/bin/bash

# main method to find same files and then zip them
zipSameFiles () {
	file="$1"

	# get all necessary parts of the file name
	filename="${file%.*}"
	fileBaseName=${filename##*/}
	extension="${file##*.}"

	# filesToZip will contain a list of files that will go in the same ZIP
	filesToZip=""
	for foundFile in "$filename".*
	do
		if [ "$foundFile" != "$file" ]; then
			filesToZip+=" $foundFile"
		fi
	done

	# getting path to files, so we know where to save compressed output
	DIR=${file%/*}
	mkdir -p "${DIR}"/compressed


	# if found file is on it's own, then simply copy it into 'compressed' folder
	if [[ -z "${filesToZip// }" ]]
	then
		cp -R "$file" "${DIR}"/compressed/
	
	# if there are same files, then zip then and move into 'compressed' folder
	else
		# need to remove first space, otherwise zip won't find our file: ${filesToZip:1}
		zip -j -r -X "${DIR}"/compressed/"$fileBaseName".zip "$file" "${filesToZip:1}"
	fi
}

# run loop to find out if we run it against folder or selected files
argsCount=0
for file in "$@"
do
	let argsCount++
done


if [ $argsCount = 1 ]
then
	# run against folder
	if [[ -d "$file" ]]; then
		# find all jpg files in target folder
		for file in "$@"/*.jpg
		do
			zipSameFiles "$file"
		done
	else
    	exit 1
	fi
# run against files
else
	for file in "$@"
	do
		if [ "${file##*.}" = "jpg" ]
		then
			zipSameFiles "$file"
		fi
	done
fi