#!/bin/bash

COMMAND=`INSERT HERE` # eg. `java {FILENAME}` to run Java program

HEADING='\033[34;1m'
NOCOLOUR='\033[0m'
testDir=Tests/

# ./compile.sh

echo " "
echo "--- Running Tests ---"
echo " "

for file in "$testDir"/*
do
  fileName=${file#*'//'}
  testNo=${fileName%%'.'*}
  echo -e "${HEADING}Test" $testNo $NOCOLOUR
  java Assignment < $file
  echo " "
done