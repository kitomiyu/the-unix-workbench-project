README.md: guessinggame.sh
	echo "# the unix workbench project" > README.md
	echo "## line of code" >> README.md	
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md 
