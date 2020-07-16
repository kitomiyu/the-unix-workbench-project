#!/bin/bash

echo "Quiz:How many files are in the current directory?"
read response

if expr "$response" : '[0-9]*' > /dev/null ; then
	echo "number"	
else
	echo "please input a numerical value"
fi

