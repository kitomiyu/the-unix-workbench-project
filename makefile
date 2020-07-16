README.md: guessinggame.sh
	echo "# the unix workbench project" > README.md
	echo "## the date and time at which make was run " >> README.md
	date -r README.md >>  README.md	
	echo "## line of code" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md 
