#!/bin/bash

flag=0

function isitmatch {
	ans=`ls -A | wc -l`
	if [[ $1 -eq $ans ]] ; then
		echo "Congrats!"
		flag=1
	elif [[ $1 -gt $ans ]] ; then
		echo "Incorrect. Your guess is too high."
	else 
		echo "Incorrect. Your guess is too low."
	fi	
}

while [[ flag -eq 0 ]]
do
	echo "Quiz:How many files are in the current directory?"
	read response

	if expr "$response" : '[0-9]*' > /dev/null ; then
		isitmatch $response	
	else
		echo "please input a numerical value"
	fi
done

