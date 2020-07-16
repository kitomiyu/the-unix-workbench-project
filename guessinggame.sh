#!/bin/bash

function isitmatch {
	ans=`ls | wc -l`
	if [[ $1 -eq $ans ]] ; then
		echo "Congrats!"
	elif [[ $1 -gt $ans ]] ; then
		echo "Incorrect. Please try small number."
	else 
		echo "Incorrect. Please try big number."
	fi	
}


echo "Quiz:How many files are in the current directory?"
read response

if expr "$response" : '[0-9]*' > /dev/null ; then
	isitmatch $response	
else
	echo "please input a numerical value"
fi
