#!/usr/bin/env bash

# initial question
echo "How many files are in the current directory?"
read guessfolders

#unnecessary functions in order to satisfy grading requirements
function outputresponsehigh {
  echo "Your guess was too high."
}

function outputresponselow {
  echo "Your guess was too low."
}

# collect number of files in the folder
nofolders=$(ls | wc -l)

# repeat question until correct
while [[ $guessfolders -ne $nofolders ]]
do
  if [[ $guessfolders -gt $nofolders ]]
  then
    outputresponsehigh
  elif [[ $guessfolders -lt $nofolders ]]
  then
    outputresponselow
  fi
  echo "How many files are really in the current directory?"
  read guessfolders
done

echo "Congratulations. Your guess of $guessfolders was correct."
