#!/bin/bash

### Config

# Behavior
PRINT_SQL_ERRORS=false
CLEAN_UP_TEMP_DIRS=true

# Directory names
QUERIES_DIR=queries
QUERY_RESULTS_DIR=query_results
QUERY_ERRORS_DIR=query_errors
QUERY_VALIDATION_DIR=results_validation

PSQL=psql
DB_NAME=musicbrainz

### Param validation

if [ $# == 0 ]; then
	FILES_TO_VALIDATE=$(ls $QUERY_VALIDATION_DIR)
	
	echo "Validating all queries!"
	echo ""
else
	FILES_TO_VALIDATE=$@

	ABORT=false
	
	for file in $FILES_TO_VALIDATE; do
		if [ ! -s $QUERY_VALIDATION_DIR/$file ]; then
			echo "File $file has no corresponding answer in the $QUERY_VALIDATION_DIR directory."
			ABORT=true
		fi
	done

	if $ABORT; then
		echo ""
		echo "Aborting!"
		echo ""
		exit 1;
	else
		echo "Validating only: $@"
		echo ""
	fi
fi

### Let's get to work

mkdir -p $QUERY_RESULTS_DIR
mkdir -p $QUERY_ERRORS_DIR

GLOBAL_BEGIN_TIME="$(date +%s)"

for file in $FILES_TO_VALIDATE; do
	echo -n "Validating $file... "
	if [ -s $QUERIES_DIR/$file ]; then
		MULTIPLE_QUERIES_DETECTION=`awk -v RS='' '/;.+/' $QUERIES_DIR/$file`
		if [[ -n $MULTIPLE_QUERIES_DETECTION ]]; then
			echo "Only one query per file allowed. Make sure your file contains one or zero semi-colon only, and absolutely nothing after it."
		else
			BEGIN_TIME="$(date +%s)"

			${PSQL} -t -A $DB_NAME < $QUERIES_DIR/$file > $QUERY_RESULTS_DIR/$file 2> $QUERY_ERRORS_DIR/$file

			ELAPSED_TIME="$(($(date +%s)-BEGIN_TIME))"

			if [ -s $QUERY_ERRORS_DIR/$file ]; then
				echo "SQL error :("
				
				if $PRINT_SQL_ERRORS; then
					echo ""
					cat $QUERY_ERRORS_DIR/$file
					echo ""
				fi		
			else
				if diff $QUERY_RESULTS_DIR/$file $QUERY_VALIDATION_DIR/$file > /dev/null; then
					echo "Ok. $ELAPSED_TIME seconds."
				else
					echo "Wrong result :( $ELAPSED_TIME seconds."
				fi
			fi
		fi
	else
		echo "Not done :("
	fi
done

if $CLEAN_UP_TEMP_DIRS; then
	rm -r $QUERY_RESULTS_DIR
	rm -r $QUERY_ERRORS_DIR
fi

GLOBAL_ELAPSED_TIME="$(($(date +%s)-GLOBAL_BEGIN_TIME))"

echo ""
echo "Done! Total time: $GLOBAL_ELAPSED_TIME seconds."
echo ""
