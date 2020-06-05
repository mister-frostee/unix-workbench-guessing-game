all:
	echo "Project: UNIX Workbench - Guessing Game" >> README.md
	echo "make execution time: "`date +"%Y-%m-%dT%H:%M:%S"` >> README.md
	echo "Number of lines in guessinggame.sh: "`wc -l < guessinggame.sh` >> README.md
